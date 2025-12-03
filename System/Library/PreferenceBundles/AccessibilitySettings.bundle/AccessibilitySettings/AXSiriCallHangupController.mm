@interface AXSiriCallHangupController
- (id)_localizedFooterText;
- (id)_localizedHangUpTriggerPhrase;
- (id)_siriCallHangup:(id)hangup;
- (id)specifiers;
- (void)_setSiriCallHangup:(id)hangup specifier:(id)specifier;
@end

@implementation AXSiriCallHangupController

- (id)_localizedHangUpTriggerPhrase
{
  v2 = +[AFPreferences sharedPreferences];
  languageCode = [v2 languageCode];

  v4 = +[VTPreferences sharedPreferences];
  v5 = [v4 localizedTriggerPhraseForLanguageCode:languageCode];

  v6 = +[AFLocalization sharedInstance];
  v7 = [NSBundle bundleWithIdentifier:@"com.apple.siri.assistant-settings-support"];
  v8 = [v6 localizedStringForKey:@"CALL_HANG_UP_TRIGGER_PHRASE" table:@"AssistantSettings" bundle:v7 languageCode:languageCode];

  if ([v5 length] && objc_msgSend(v8, "length"))
  {
    v9 = [NSString stringWithFormat:v8, v5];
    v10 = [v9 stringByReplacingOccurrencesOfString:@" " withString:@" "];
  }

  else
  {
    v10 = &stru_25D420;
  }

  return v10;
}

- (id)_localizedFooterText
{
  _localizedHangUpTriggerPhrase = [(AXSiriCallHangupController *)self _localizedHangUpTriggerPhrase];
  AFDeviceSupportsEchoCancellation();
  v3 = AXLocStringKeyForModel();
  v4 = settingsLocString(v3, @"Accessibility");
  v5 = [NSString stringWithFormat:v4, _localizedHangUpTriggerPhrase];

  return v5;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    _localizedFooterText = [(AXSiriCallHangupController *)self _localizedFooterText];
    [v6 setProperty:_localizedFooterText forKey:PSFooterTextGroupKey];

    [v6 setIdentifier:@"SIRI_CALL_HANGUP_GROUP_ID"];
    [v5 addObject:v6];
    v8 = settingsLocString(@"CALL_HANG_UP", @"Accessibility");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"_setSiriCallHangup:specifier:" get:"_siriCallHangup:" detail:0 cell:6 edit:0];

    [v9 setIdentifier:@"SIRI_CALL_HANGUP_ID"];
    [v5 addObject:v9];
    v10 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsListController_opaque[v3];
  }

  return v4;
}

- (void)_setSiriCallHangup:(id)hangup specifier:(id)specifier
{
  hangupCopy = hangup;
  v6 = +[VTPreferences sharedPreferences];
  bOOLValue = [hangupCopy BOOLValue];

  [v6 setCanUseVoiceTriggerDuringPhoneCall:bOOLValue];
  parentController = [(AXSiriCallHangupController *)self parentController];
  [parentController reloadSpecifiers];
}

- (id)_siriCallHangup:(id)hangup
{
  v3 = +[VTPreferences sharedPreferences];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 canUseVoiceTriggerDuringPhoneCall]);

  return v4;
}

@end