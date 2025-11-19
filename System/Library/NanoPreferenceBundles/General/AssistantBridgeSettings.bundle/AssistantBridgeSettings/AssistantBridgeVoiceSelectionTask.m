@interface AssistantBridgeVoiceSelectionTask
- (AssistantBridgeVoiceSelectionTask)init;
- (NSString)_languageCode;
- (void)_dismissLoadedViewController;
- (void)_loadStateWithCompletion:(id)a3;
- (void)logWhetherSiriWasEnabledAfterCompleted:(BOOL)a3;
- (void)presentVoiceSelectionIfNecessaryFromViewController:(id)a3 completion:(id)a4;
@end

@implementation AssistantBridgeVoiceSelectionTask

- (AssistantBridgeVoiceSelectionTask)init
{
  v6.receiver = self;
  v6.super_class = AssistantBridgeVoiceSelectionTask;
  v2 = [(AssistantBridgeVoiceSelectionTask *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AFEnablementFlowConfigurationProvider);
    flowConfigurationProvider = v2->_flowConfigurationProvider;
    v2->_flowConfigurationProvider = v3;
  }

  return v2;
}

- (void)presentVoiceSelectionIfNecessaryFromViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  [(AssistantBridgeVoiceSelectionTask *)self _setPendingVoiceSelectionCompletion:a4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7C38;
  v8[3] = &unk_106B0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(AssistantBridgeVoiceSelectionTask *)self _loadStateWithCompletion:v8];
}

- (void)_dismissLoadedViewController
{
  v2 = [(AssistantBridgeVoiceSelectionTask *)self _loadedViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_loadStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AssistantBridgeVoiceSelectionTask *)self _loadedConfiguration];
  if (v5)
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v6 = [(AssistantBridgeVoiceSelectionTask *)self _languageCode];
    v7 = [(AssistantBridgeVoiceSelectionTask *)self _flowConfigurationProvider];
    v13 = v6;
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_7EA4;
    v10[3] = &unk_10700;
    v10[4] = self;
    v11 = v6;
    v12 = v4;
    v9 = v6;
    [v7 configurationForEnablementFlow:7 recognitionLanguageCodes:v8 completion:v10];
  }
}

- (NSString)_languageCode
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 nanoLanguageCode];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 bestSupportedLanguageCodeForLanguageCode:0];
  }

  v6 = v5;

  return v6;
}

- (void)logWhetherSiriWasEnabledAfterCompleted:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_82C4;
  v3[3] = &unk_10728;
  v3[4] = self;
  v4 = a3;
  [(AssistantBridgeVoiceSelectionTask *)self _loadStateWithCompletion:v3];
}

@end