@interface AssistantBridgeTriggerPhrasesController
- (AssistantBridgeTriggerPhrasesController)init;
- (id)specifiers;
- (void)_refreshFooters;
- (void)_setupPhraseChoiceSpecifiers;
- (void)_updateFootersWithFooterType:(int64_t)a3;
- (void)setConnectedDeviceInfo:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation AssistantBridgeTriggerPhrasesController

- (AssistantBridgeTriggerPhrasesController)init
{
  v7.receiver = self;
  v7.super_class = AssistantBridgeTriggerPhrasesController;
  v2 = [(AssistantBridgeTriggerPhrasesController *)&v7 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"preferencesDidChange" name:AFNanoPreferencesDidChangeNotification object:0];

    v4 = objc_alloc_init(AFSettingsConnection);
    settingsConnection = v2->_settingsConnection;
    v2->_settingsConnection = v4;
  }

  return v2;
}

- (void)setConnectedDeviceInfo:(id)a3
{
  v5 = a3;
  if (self->_connectedDeviceInfo != v5)
  {
    objc_storeStrong(&self->_connectedDeviceInfo, a3);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_377C;
    block[3] = &unk_10540;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(AssistantBridgeTriggerPhrasesController *)self loadSpecifiersFromPlistName:@"AssistantBridgeTriggerPhrases" target:self];
    v6 = [v5 copy];
    v7 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v6;

    [(AssistantBridgeTriggerPhrasesController *)self _setupPhraseChoiceSpecifiers];
    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)_setupPhraseChoiceSpecifiers
{
  v11 = [(AssistantBridgeTriggerPhrasesController *)self specifierForID:@"HS_JS_ID"];
  v3 = +[AssistantBridgeSettingsUtilities triggerPhraseChoiceHSJS];
  [v11 setName:v3];

  v4 = [(AssistantBridgeTriggerPhrasesController *)self specifierForID:@"HEY_SIRI_ID"];
  v5 = +[AssistantBridgeSettingsUtilities triggerPhraseChoiceHS];
  [v4 setName:v5];

  if (+[AssistantBridgeSettingsUtilities voiceTriggerEnabled])
  {
    v6 = +[AFPreferences sharedPreferences];
    v7 = [v6 nanoVTPhraseType];

    if (v7 == &dword_0 + 1)
    {
      v8 = v11;
      v9 = 2;
      goto LABEL_9;
    }

    if (!v7)
    {
      v8 = v4;
      v9 = 1;
      goto LABEL_9;
    }

    v8 = 0;
  }

  else
  {
    v8 = [(AssistantBridgeTriggerPhrasesController *)self specifierForID:@"VOICE_TRIGGER_DISABLED_ID"];
  }

  v9 = 0;
LABEL_9:
  v10 = [(AssistantBridgeTriggerPhrasesController *)self triggerPhrasesGroupSpecifier];
  [v10 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];

  [(AssistantBridgeTriggerPhrasesController *)self _updateFootersWithFooterType:v9];
}

- (void)_refreshFooters
{
  v6 = +[AFPreferences sharedPreferences];
  if ([v6 nanoPhraseSpotterEnabled])
  {
    v3 = [v6 nanoVTPhraseType];
    if (v3)
    {
      v4 = 2 * (v3 == &dword_0 + 1);
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  [(AssistantBridgeTriggerPhrasesController *)self _updateFootersWithFooterType:v4];
  v5 = [(AssistantBridgeTriggerPhrasesController *)self triggerPhrasesGroupSpecifier];
  [(AssistantBridgeTriggerPhrasesController *)self reloadSpecifier:v5 animated:0];
}

- (void)_updateFootersWithFooterType:(int64_t)a3
{
  if (a3 == 2)
  {
    connectedDeviceInfo = self->_connectedDeviceInfo;
    if (connectedDeviceInfo && ![(AFBluetoothDeviceInfo *)connectedDeviceInfo supportsJustSiri])
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = [v4 localizedStringForKey:@"TRIGGER_PHRASE_SETTING_FOOTER_ENABLED_WITH_UNSUPPORTED_CONNECTED_HEADPHONES" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
      v8 = +[AssistantBridgeSettingsUtilities triggerPhraseChoiceHSJS];
      v9 = [(AFBluetoothDeviceInfo *)self->_connectedDeviceInfo name];
      v10 = +[AssistantBridgeSettingsUtilities triggerPhraseChoiceHS];
      [NSString stringWithFormat:v6, v8, v9, v10];
      v15 = LABEL_12:;

      goto LABEL_13;
    }

    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v4 localizedStringForKey:@"TRIGGER_PHRASE_SETTING_FOOTER_ENABLED" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
    v11 = +[AssistantBridgeSettingsUtilities triggerPhraseChoiceHSJS];
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        v15 = 0;
        goto LABEL_14;
      }

      v4 = +[AssistantBridgeSettingsUtilities languageCode];
      v5 = +[VTPreferences sharedPreferences];
      v6 = [v5 localizedTriggerPhraseForLanguageCode:v4];

      v7 = +[VTPreferences sharedPreferences];
      v8 = [v7 localizedCompactTriggerPhraseForLanguageCode:v4];

      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"TRIGGER_PHRASE_SETTING_FOOTER_DISABLED" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
      [NSString stringWithFormat:v10, v8, v6, v14];
      goto LABEL_12;
    }

    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v4 localizedStringForKey:@"TRIGGER_PHRASE_SETTING_FOOTER_ENABLED" value:&stru_10AF0 table:@"AssistantBridgeSettings"];
    v11 = +[AssistantBridgeSettingsUtilities triggerPhraseChoiceHS];
  }

  v8 = v11;
  v15 = [NSString stringWithFormat:v6, v11];
LABEL_13:

LABEL_14:
  v13 = [(AssistantBridgeTriggerPhrasesController *)self triggerPhrasesGroupSpecifier];
  [v13 setProperty:v15 forKey:PSFooterTextGroupKey];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AssistantBridgeTriggerPhrasesController *)self specifierAtIndex:[(AssistantBridgeTriggerPhrasesController *)self indexForIndexPath:v7]];
  v9 = [v8 identifier];

  v10 = +[AssistantBridgeSettingsUtilities voiceTriggerEnabled];
  v11 = [v9 isEqualToString:@"VOICE_TRIGGER_DISABLED_ID"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_3F88;
  v19[3] = &unk_10568;
  v12 = v6;
  v20 = v12;
  v13 = v7;
  v21 = v13;
  v22 = self;
  v14 = v9;
  v23 = v14;
  v15 = objc_retainBlock(v19);
  if (+[AssistantBridgeSettingsUtilities raiseToSpeakEnabled](AssistantBridgeSettingsUtilities, "raiseToSpeakEnabled") || +[AssistantBridgeSettingsUtilities digitalCrownEnabled]|| ((v10 ^ v11) & 1) != 0)
  {
    (v15[2])(v15, v11 ^ 1);
  }

  else
  {
    objc_initWeak(&location, self);
    [v12 deselectRowAtIndexPath:v13 animated:0];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_4070;
    v16[3] = &unk_10420;
    objc_copyWeak(&v17, &location);
    [AssistantBridgeSettingsUtilities setAssistantEnabled:v11 ^ 1 alertPresenter:self confirmationAction:v15 alertPresentationCompletion:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

@end