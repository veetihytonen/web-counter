*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***

After set counter is set to right value
    Go To  ${HOME_URL}
    Input Text    arvo    12
    Click Button    aseta
    Page Should Contain    nappia painettu 12 kertaa
