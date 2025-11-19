@interface APUIAirPlaySetupFlowLauncher
+ (BOOL)launchAirPlayAutomaticSetupFlowWithConfiguration:(id)a3;
+ (BOOL)launchAirPlayManualSetupFlowForDiscoveryBroker:(id)a3;
+ (void)launchAirPlaySetupFlowWithUserInfo:(id)a3;
@end

@implementation APUIAirPlaySetupFlowLauncher

+ (BOOL)launchAirPlayAutomaticSetupFlowWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  if (APSSettingsIsFeatureEnabled())
  {
    if (gLogCategory_APUIAirPlaySetupFlowLauncher <= 50 && (gLogCategory_APUIAirPlaySetupFlowLauncher != -1 || _LogCategory_Initialize()))
    {
      +[APUIAirPlaySetupFlowLauncher launchAirPlayAutomaticSetupFlowWithConfiguration:];
    }

    v5 = [v3 urlString];
    if (v5)
    {
      v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
      if (v6)
      {
        v7 = v6;
        if (gLogCategory_APUIAirPlaySetupFlowLauncher <= 50 && (gLogCategory_APUIAirPlaySetupFlowLauncher != -1 || _LogCategory_Initialize()))
        {
          +[APUIAirPlaySetupFlowLauncher launchAirPlayAutomaticSetupFlowWithConfiguration:];
        }

        [v4 openSensitiveURL:v7 withOptions:0];

        LOBYTE(v5) = 1;
      }

      else
      {
        [APUIAirPlaySetupFlowLauncher launchAirPlayAutomaticSetupFlowWithConfiguration:v5];
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      +[APUIAirPlaySetupFlowLauncher launchAirPlayAutomaticSetupFlowWithConfiguration:];
    }
  }

  else
  {
    [gLogCategory_APUIAirPlaySetupFlowLauncher launchAirPlayAutomaticSetupFlowWithConfiguration:?];
    LOBYTE(v5) = v9;
  }

  return v5;
}

+ (BOOL)launchAirPlayManualSetupFlowForDiscoveryBroker:(id)a3
{
  v3 = a3;
  if (gLogCategory_APUIAirPlaySetupFlowLauncher <= 50 && (gLogCategory_APUIAirPlaySetupFlowLauncher != -1 || _LogCategory_Initialize()))
  {
    [APUIAirPlaySetupFlowLauncher launchAirPlayManualSetupFlowForDiscoveryBroker:v3];
  }

  return 0;
}

+ (void)launchAirPlaySetupFlowWithUserInfo:(id)a3
{
  v7 = a3;
  v3 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.APSUIApp" viewControllerClassName:@"APUISetupViewController"];
  v4 = objc_alloc_init(MEMORY[0x277D66BD0]);
  v5 = objc_alloc_init(MEMORY[0x277D66BC0]);
  [v5 setReason:@"Display AirPlay user experience"];
  [v5 setUserInfo:v7];
  if (gLogCategory_APUIAirPlaySetupFlowLauncher <= 50 && (gLogCategory_APUIAirPlaySetupFlowLauncher != -1 || _LogCategory_Initialize()))
  {
    [APUIAirPlaySetupFlowLauncher launchAirPlaySetupFlowWithUserInfo:v7];
  }

  v6 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v3 configurationContext:v4];
  [v6 activateWithContext:v5];
}

+ (void)launchAirPlayAutomaticSetupFlowWithConfiguration:(void *)a1 .cold.3(void *a1)
{
  APSLogErrorAt();
}

+ (uint64_t)launchAirPlayAutomaticSetupFlowWithConfiguration:(uint64_t)result .cold.5(uint64_t result, _BYTE *a2)
{
  if (result <= 60)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

+ (uint64_t)launchAirPlayManualSetupFlowForDiscoveryBroker:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (a1)
  {
    IsAppleInternalBuild();
  }

  return OUTLINED_FUNCTION_0();
}

+ (uint64_t)launchAirPlaySetupFlowWithUserInfo:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (a1)
  {
    IsAppleInternalBuild();
  }

  return OUTLINED_FUNCTION_0();
}

@end