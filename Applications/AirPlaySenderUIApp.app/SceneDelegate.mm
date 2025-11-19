@interface SceneDelegate
- (BOOL)_setupAssistantEnabled;
- (void)_handleURL:(id)a3;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation SceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = [a5 URLContexts];
  v7 = [v6 allObjects];
  v9 = [v7 firstObject];

  if (dword_100022820 <= 30 && (dword_100022820 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D49C(v9);
  }

  v8 = [v9 URL];
  [(SceneDelegate *)self _handleURL:v8];
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v5 = [a4 allObjects];
  v7 = [v5 firstObject];

  if (dword_100022820 <= 30 && (dword_100022820 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D4FC(v7);
  }

  v6 = [v7 URL];
  [(SceneDelegate *)self _handleURL:v6];
}

- (void)_handleURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (dword_100022820 <= 30 && (dword_100022820 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D670();
    }

    goto LABEL_23;
  }

  if (![(SceneDelegate *)self _setupAssistantEnabled])
  {
    if (dword_100022820 <= 60 && (dword_100022820 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D55C();
    }

    goto LABEL_23;
  }

  if (dword_100022820 <= 50 && (dword_100022820 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D57C();
  }

  v5 = [v4 absoluteString];
  v6 = [APUIAirPlayURLParser setupPayloadFromAirPlayURL:v5];

  if (!v6)
  {
    if (dword_100022820 <= 50 && (dword_100022820 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D614();
    }

LABEL_23:
    v9 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_24;
  }

  v11 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = v8;
    if (dword_100022820 <= 50 && (dword_100022820 != -1 || _LogCategory_Initialize()))
    {
      sub_10000D5D8();
    }
  }

  else
  {
    v12 = @"setupPayload";
    v13 = v7;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [APUIAirPlaySetupFlowLauncher launchAirPlaySetupFlowWithUserInfo:v10];

    v9 = 0;
  }

LABEL_24:
}

- (BOOL)_setupAssistantEnabled
{
  IsFeatureEnabled = 0;
  if (!APSRemoteConfigGetShared() || !APSRemoteConfigGetBooleanIfPresent())
  {
    IsFeatureEnabled = APSSettingsIsFeatureEnabled();
  }

  if (dword_100022820 <= 50 && (dword_100022820 != -1 || _LogCategory_Initialize()))
  {
    sub_10000D690(&IsFeatureEnabled);
  }

  return IsFeatureEnabled != 0;
}

@end