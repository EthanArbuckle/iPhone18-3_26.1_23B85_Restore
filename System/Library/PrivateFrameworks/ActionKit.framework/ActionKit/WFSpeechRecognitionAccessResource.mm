@interface WFSpeechRecognitionAccessResource
- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)status;
- (id)localizedProtectedResourceDescriptionWithContext:(id)context;
- (unint64_t)status;
- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler;
@end

@implementation WFSpeechRecognitionAccessResource

- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=Keyboard/DictationSettings"];
  mEMORY[0x277CFC248] = [MEMORY[0x277CFC248] sharedContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __109__WFSpeechRecognitionAccessResource_attemptRecoveryFromErrorWithOptionIndex_userInterface_completionHandler___block_invoke;
  v9[3] = &unk_278C1CBC0;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [mEMORY[0x277CFC248] openURL:v6 completionHandler:v9];
}

- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)status
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = WFLocalizedString(@"Enable Dictation");
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (unint64_t)status
{
  sharedPreferences = [getAFPreferencesClass_7598() sharedPreferences];
  if ([sharedPreferences dictationIsEnabled])
  {
    v3 = 4;
  }

  else
  {
    sharedPreferences2 = [getAFPreferencesClass_7598() sharedPreferences];
    if ([sharedPreferences2 suppressDictationOptIn])
    {
      v3 = 3;
    }

    else
    {
      v3 = 4;
    }
  }

  return v3;
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"speech recognition", @"speech recognition");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end