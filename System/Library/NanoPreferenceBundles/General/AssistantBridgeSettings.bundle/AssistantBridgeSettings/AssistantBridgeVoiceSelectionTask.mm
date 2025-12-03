@interface AssistantBridgeVoiceSelectionTask
- (AssistantBridgeVoiceSelectionTask)init;
- (NSString)_languageCode;
- (void)_dismissLoadedViewController;
- (void)_loadStateWithCompletion:(id)completion;
- (void)logWhetherSiriWasEnabledAfterCompleted:(BOOL)completed;
- (void)presentVoiceSelectionIfNecessaryFromViewController:(id)controller completion:(id)completion;
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

- (void)presentVoiceSelectionIfNecessaryFromViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  [(AssistantBridgeVoiceSelectionTask *)self _setPendingVoiceSelectionCompletion:completion];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7C38;
  v8[3] = &unk_106B0;
  v8[4] = self;
  v9 = controllerCopy;
  v7 = controllerCopy;
  [(AssistantBridgeVoiceSelectionTask *)self _loadStateWithCompletion:v8];
}

- (void)_dismissLoadedViewController
{
  _loadedViewController = [(AssistantBridgeVoiceSelectionTask *)self _loadedViewController];
  [_loadedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_loadStateWithCompletion:(id)completion
{
  completionCopy = completion;
  _loadedConfiguration = [(AssistantBridgeVoiceSelectionTask *)self _loadedConfiguration];
  if (_loadedConfiguration)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    _languageCode = [(AssistantBridgeVoiceSelectionTask *)self _languageCode];
    _flowConfigurationProvider = [(AssistantBridgeVoiceSelectionTask *)self _flowConfigurationProvider];
    v13 = _languageCode;
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_7EA4;
    v10[3] = &unk_10700;
    v10[4] = self;
    v11 = _languageCode;
    v12 = completionCopy;
    v9 = _languageCode;
    [_flowConfigurationProvider configurationForEnablementFlow:7 recognitionLanguageCodes:v8 completion:v10];
  }
}

- (NSString)_languageCode
{
  v2 = +[AFPreferences sharedPreferences];
  nanoLanguageCode = [v2 nanoLanguageCode];
  v4 = nanoLanguageCode;
  if (nanoLanguageCode)
  {
    v5 = nanoLanguageCode;
  }

  else
  {
    v5 = [v2 bestSupportedLanguageCodeForLanguageCode:0];
  }

  v6 = v5;

  return v6;
}

- (void)logWhetherSiriWasEnabledAfterCompleted:(BOOL)completed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_82C4;
  v3[3] = &unk_10728;
  v3[4] = self;
  completedCopy = completed;
  [(AssistantBridgeVoiceSelectionTask *)self _loadStateWithCompletion:v3];
}

@end