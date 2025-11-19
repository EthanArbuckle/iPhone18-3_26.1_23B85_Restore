@interface AXSiriCallHangupController
- (id)_localizedFooterText;
- (id)_localizedHangUpTriggerPhrase;
- (id)_siriCallHangup:(id)a3;
- (id)specifiers;
- (void)_setSiriCallHangup:(id)a3 specifier:(id)a4;
@end

@implementation AXSiriCallHangupController

- (id)_localizedHangUpTriggerPhrase
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 languageCode];

  v4 = +[VTPreferences sharedPreferences];
  v5 = [v4 localizedTriggerPhraseForLanguageCode:v3];

  v6 = +[AFLocalization sharedInstance];
  v7 = [NSBundle bundleWithIdentifier:@"com.apple.siri.assistant-settings-support"];
  v8 = [v6 localizedStringForKey:@"CALL_HANG_UP_TRIGGER_PHRASE" table:@"AssistantSettings" bundle:v7 languageCode:v3];

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
  v2 = [(AXSiriCallHangupController *)self _localizedHangUpTriggerPhrase];
  AFDeviceSupportsEchoCancellation();
  v3 = AXLocStringKeyForModel();
  v4 = settingsLocString(v3, @"Accessibility");
  v5 = [NSString stringWithFormat:v4, v2];

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
    v7 = [(AXSiriCallHangupController *)self _localizedFooterText];
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

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

- (void)_setSiriCallHangup:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[VTPreferences sharedPreferences];
  v7 = [v5 BOOLValue];

  [v6 setCanUseVoiceTriggerDuringPhoneCall:v7];
  v8 = [(AXSiriCallHangupController *)self parentController];
  [v8 reloadSpecifiers];
}

- (id)_siriCallHangup:(id)a3
{
  v3 = +[VTPreferences sharedPreferences];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 canUseVoiceTriggerDuringPhoneCall]);

  return v4;
}

@end