@interface AssistantBridgeSettingsUtilities
+ (BOOL)digitalCrownEnabled;
+ (BOOL)isCompactVoiceTriggerAvailable;
+ (BOOL)raiseToSpeakEnabled;
+ (BOOL)voiceTriggerEnabled;
+ (id)languageCode;
+ (id)triggerPhraseChoiceHS;
+ (id)triggerPhraseChoiceHSJS;
+ (void)setAssistantEnabled:(BOOL)enabled alertPresenter:(id)presenter confirmationAction:(id)action alertPresentationCompletion:(id)completion;
@end

@implementation AssistantBridgeSettingsUtilities

+ (id)languageCode
{
  v2 = +[AFPreferences sharedPreferences];
  languageCode = [v2 languageCode];

  if (!languageCode)
  {
    v4 = +[AFPreferences sharedPreferences];
    languageCode = [v4 bestSupportedLanguageCodeForLanguageCode:0];
  }

  return languageCode;
}

+ (BOOL)isCompactVoiceTriggerAvailable
{
  v2 = +[AFPreferences sharedPreferences];
  nanoJSSupported = [v2 nanoJSSupported];

  return nanoJSSupported;
}

+ (id)triggerPhraseChoiceHSJS
{
  languageCode = [self languageCode];
  v3 = +[VTPreferences sharedPreferences];
  v4 = [v3 localizedTriggerPhraseForLanguageCode:languageCode];

  v5 = +[VTPreferences sharedPreferences];
  v6 = [v5 localizedCompactTriggerPhraseForLanguageCode:languageCode];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TRIGGER_PHRASE_CHOICE_TWO_PHRASES" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
  v9 = [NSString stringWithFormat:v8, v6, v4];

  return v9;
}

+ (id)triggerPhraseChoiceHS
{
  v3 = +[VTPreferences sharedPreferences];
  languageCode = [self languageCode];
  v5 = [v3 localizedTriggerPhraseForLanguageCode:languageCode];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TRIGGER_PHRASE_CHOICE_ONE_PHRASE" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
  v8 = [NSString stringWithFormat:v7, v5];

  return v8;
}

+ (BOOL)voiceTriggerEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  if ([v2 nanoAssistantEnabled])
  {
    v3 = +[AFPreferences sharedPreferences];
    nanoPhraseSpotterEnabled = [v3 nanoPhraseSpotterEnabled];
  }

  else
  {
    nanoPhraseSpotterEnabled = 0;
  }

  return nanoPhraseSpotterEnabled;
}

+ (BOOL)raiseToSpeakEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  if ([v2 nanoAssistantEnabled])
  {
    v3 = +[AFPreferences sharedPreferences];
    nanoRaiseToSpeakEnabled = [v3 nanoRaiseToSpeakEnabled];
  }

  else
  {
    nanoRaiseToSpeakEnabled = 0;
  }

  return nanoRaiseToSpeakEnabled;
}

+ (BOOL)digitalCrownEnabled
{
  v2 = +[AFPreferences sharedPreferences];
  if ([v2 nanoAssistantEnabled])
  {
    v3 = +[AFPreferences sharedPreferences];
    nanoCrownActivationEnabled = [v3 nanoCrownActivationEnabled];
  }

  else
  {
    nanoCrownActivationEnabled = 0;
  }

  return nanoCrownActivationEnabled;
}

+ (void)setAssistantEnabled:(BOOL)enabled alertPresenter:(id)presenter confirmationAction:(id)action alertPresentationCompletion:(id)completion
{
  enabledCopy = enabled;
  presenterCopy = presenter;
  actionCopy = action;
  completionCopy = completion;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = v10;
  v36 = enabledCopy;
  if (enabledCopy)
  {
    v12 = [v10 localizedStringForKey:@"ASSISTANT_ENABLE_TITLE" value:&stru_10AF0 table:@"AssistantBridgeSettings"];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"ASSISTANT_ENABLE_WARNING" value:&stru_10AF0 table:@"AssistantBridgeSettings"];

    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"ASSISTANT_ENABLE_CONFIRMATION" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
    v17 = 0;
  }

  else
  {
    v12 = [v10 localizedStringForKey:@"ASSISTANT_DISABLE_TITLE" value:&stru_10AF0 table:@"AssistantBridgeSettings"];

    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v18 localizedStringForKey:@"ASSISTANT_DISABLE_CONFIRMATION" value:&stru_10AF0 table:@"AssistantBridgeSettings"];

    v19 = +[AFPreferences sharedPreferences];
    nanoDictationEnabled = [v19 nanoDictationEnabled];

    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = v21;
    if (nanoDictationEnabled)
    {
      v22 = @"ASSISTANT_DISABLE_WARNING_DICTATION_ENABLED";
    }

    else
    {
      v22 = @"ASSISTANT_DISABLE_WARNING_DICTATION_DISABLED";
    }

    v14 = [v21 localizedStringForKey:v22 value:&stru_10AF0 table:@"AssistantBridgeSettings"];
    v17 = 2;
  }

  v32 = v12;

  v33 = v14;
  v23 = [UIAlertController alertControllerWithTitle:v12 message:v14 preferredStyle:0];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_72D4;
  v39[3] = &unk_10648;
  v41 = actionCopy;
  v24 = completionCopy;
  v43 = v36;
  v42 = v24;
  v40 = presenterCopy;
  v25 = presenterCopy;
  v26 = actionCopy;
  v27 = [UIAlertAction actionWithTitle:v16 style:v17 handler:v39];
  [v23 addAction:v27];

  v28 = [NSBundle bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:@"ASSISTANT_ENABLE_DISABLE_CANCEL" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_7564;
  v37[3] = &unk_10670;
  v38 = v24;
  v30 = v24;
  v31 = [UIAlertAction actionWithTitle:v29 style:1 handler:v37];
  [v23 addAction:v31];

  [v25 presentViewController:v23 animated:1 completion:0];
}

@end