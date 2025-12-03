@interface WFTrueToneSettingsClient
+ (void)createClientWithCompletionHandler:(id)handler;
- (WFTrueToneSettingsClient)initWithBrightnessClient:(id)client adaptationClient:(id)adaptationClient;
- (void)getStateWithCompletionHandler:(id)handler;
@end

@implementation WFTrueToneSettingsClient

- (void)getStateWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  adaptationClient = [(WFTrueToneSettingsClient *)self adaptationClient];
  available = [adaptationClient available];

  if (available)
  {
    adaptationClient2 = [(WFTrueToneSettingsClient *)self adaptationClient];
    getEnabled = [adaptationClient2 getEnabled];

    v9 = getWFActionsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[WFTrueToneSettingsClient getStateWithCompletionHandler:]";
      v15 = 1024;
      v16 = getEnabled;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_DEFAULT, "%s Current True Tone State: %d", &v13, 0x12u);
    }

    handlerCopy[2](handlerCopy, getEnabled, 0);
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
    handlerCopy[2](handlerCopy, 0, v11);

    handlerCopy = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (WFTrueToneSettingsClient)initWithBrightnessClient:(id)client adaptationClient:(id)adaptationClient
{
  clientCopy = client;
  adaptationClientCopy = adaptationClient;
  v10 = adaptationClientCopy;
  if (clientCopy)
  {
    if (adaptationClientCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTrueToneSettingsClient.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"brightnessClient"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTrueToneSettingsClient.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"adaptationClient"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = WFTrueToneSettingsClient;
  v11 = [(WFTrueToneSettingsClient *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_brightnessClient, client);
    objc_storeStrong(&v12->_adaptationClient, adaptationClient);
  }

  return v12;
}

+ (void)createClientWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(getCBClientClass_23066());
  adaptationClient = [v4 adaptationClient];
  if (adaptationClient && ([getCBClientClass_23066() supportsAdaptation] & 1) != 0)
  {
    v6 = [[self alloc] initWithBrightnessClient:v4 adaptationClient:adaptationClient];
    v7 = handlerCopy[2];
  }

  else
  {
    v6 = WFSettingsClientError();
    v7 = handlerCopy[2];
  }

  v7();
}

@end