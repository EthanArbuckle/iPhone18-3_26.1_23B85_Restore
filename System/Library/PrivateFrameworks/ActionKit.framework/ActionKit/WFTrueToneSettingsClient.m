@interface WFTrueToneSettingsClient
+ (void)createClientWithCompletionHandler:(id)a3;
- (WFTrueToneSettingsClient)initWithBrightnessClient:(id)a3 adaptationClient:(id)a4;
- (void)getStateWithCompletionHandler:(id)a3;
@end

@implementation WFTrueToneSettingsClient

- (void)getStateWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFTrueToneSettingsClient *)self adaptationClient];
  v6 = [v5 available];

  if (v6)
  {
    v7 = [(WFTrueToneSettingsClient *)self adaptationClient];
    v8 = [v7 getEnabled];

    v9 = getWFActionsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[WFTrueToneSettingsClient getStateWithCompletionHandler:]";
      v15 = 1024;
      v16 = v8;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_DEFAULT, "%s Current True Tone State: %d", &v13, 0x12u);
    }

    v4[2](v4, v8, 0);
  }

  else
  {
    v10 = getWFActionsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[WFTrueToneSettingsClient getStateWithCompletionHandler:]";
      _os_log_impl(&dword_23DE30000, v10, OS_LOG_TYPE_ERROR, "%s True Tone is not currently available", &v13, 0xCu);
    }

    v11 = WFSettingsClientError();
    v4[2](v4, 0, v11);

    v4 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (WFTrueToneSettingsClient)initWithBrightnessClient:(id)a3 adaptationClient:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFTrueToneSettingsClient.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"brightnessClient"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"WFTrueToneSettingsClient.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"adaptationClient"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = WFTrueToneSettingsClient;
  v11 = [(WFTrueToneSettingsClient *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_brightnessClient, a3);
    objc_storeStrong(&v12->_adaptationClient, a4);
  }

  return v12;
}

+ (void)createClientWithCompletionHandler:(id)a3
{
  v8 = a3;
  v4 = objc_alloc_init(getCBClientClass_23066());
  v5 = [v4 adaptationClient];
  if (v5 && ([getCBClientClass_23066() supportsAdaptation] & 1) != 0)
  {
    v6 = [[a1 alloc] initWithBrightnessClient:v4 adaptationClient:v5];
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