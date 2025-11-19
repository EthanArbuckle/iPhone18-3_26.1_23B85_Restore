@interface WFNightShiftSettingsClient
+ (void)createClientWithCompletionHandler:(id)a3;
- (WFNightShiftSettingsClient)initWithBlueLightClient:(id)a3;
- (void)getStateWithCompletionHandler:(id)a3;
@end

@implementation WFNightShiftSettingsClient

- (void)getStateWithCompletionHandler:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFNightShiftSettingsClient *)self blueLightClient:0];
  v6 = [v5 getBlueLightStatus:&v11];

  v7 = getWFActionsLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[WFNightShiftSettingsClient getStateWithCompletionHandler:]";
      v14 = 1024;
      v15 = BYTE1(v11);
      _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_DEFAULT, "%s Current Night Shift State: %d", buf, 0x12u);
    }

    (*(v4 + 2))(v4, BYTE1(v11), 0);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[WFNightShiftSettingsClient getStateWithCompletionHandler:]";
      _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_ERROR, "%s Failed to fetch current Night Shift state", buf, 0xCu);
    }

    v9 = WFSettingsClientError();
    (*(v4 + 2))(v4, 0, v9);

    v4 = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (WFNightShiftSettingsClient)initWithBlueLightClient:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFNightShiftSettingsClient.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"blueLightClient"}];
  }

  v11.receiver = self;
  v11.super_class = WFNightShiftSettingsClient;
  v7 = [(WFNightShiftSettingsClient *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_blueLightClient, a3);
  }

  return v8;
}

+ (void)createClientWithCompletionHandler:(id)a3
{
  v8 = a3;
  v4 = objc_alloc_init(getCBClientClass());
  v5 = [v4 blueLightClient];
  if (v5 && ([getCBClientClass() supportsBlueLightReduction] & 1) != 0)
  {
    v6 = [[a1 alloc] initWithBlueLightClient:v5];
    v7 = v8[2];
  }

  else
  {
    v6 = WFSettingsClientError();
    v7 = v8[2];
  }

  v7();
}

@end