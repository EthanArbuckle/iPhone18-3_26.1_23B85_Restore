@interface CLPHController
- (id)_axLoadSpecifiersFromPlist;
- (id)actionTypes;
- (id)bundleIdentifiers;
- (id)contactPickerPrompt;
- (id)favoritesFooterText;
- (id)incomingHeaderText;
- (id)isInCallKeypadEnabled:(id)a3;
- (id)isSpeakerOptionEnabled:(id)a3;
- (id)outgoingHeaderText;
- (id)showRecentsEnabled:(id)a3;
- (id)specifiers;
- (void)reload;
- (void)setInCallKeypadEnabled:(id)a3 specifier:(id)a4;
- (void)setShowRecentsEnabled:(id)a3 specifier:(id)a4;
- (void)setSpeakerOptionEnabled:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation CLPHController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = CLPHController;
  [(CLPHController *)&v6 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CALLS" value:&stru_4160 table:@"CLPHController"];
  v5 = [(CLPHController *)self navigationItem];
  [v5 setTitle:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXCLFCommunicationLimitController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CLPHController *)self communicationLimitSpecifiers];
    v6 = [v5 mutableCopy];

    v7 = [(CLPHController *)self _axLoadSpecifiersFromPlist];
    [v6 addObjectsFromArray:v7];

    v8 = +[CLFPhoneFaceTimeSettings sharedInstance];
    v9 = [v8 outgoingCommunicationLimit];
    v10 = CLFCommunicationLimitSelectedContacts;

    if (v9 != v10)
    {
      v11 = [PSSpecifier groupSpecifierWithID:@"ClarityUIFullScreenCompatibilityModeSpecifierID"];
      [v6 addObject:v11];
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"SHOW_RECENTS" value:&stru_4160 table:@"CLPHController"];
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"setShowRecentsEnabled:specifier:" get:"showRecentsEnabled:" detail:0 cell:6 edit:0];

      [v6 addObject:v14];
    }

    v15 = *&self->AXCLFCommunicationLimitController_opaque[v3];
    *&self->AXCLFCommunicationLimitController_opaque[v3] = v6;

    v4 = *&self->AXCLFCommunicationLimitController_opaque[v3];
  }

  return v4;
}

- (void)reload
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *&self->AXCLFCommunicationLimitController_opaque[OBJC_IVAR___PSListController__specifiers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = PSAllowMultilineTitleKey;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v8) setObject:&__kCFBooleanTrue forKeyedSubscript:v7];
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = CLPHController;
  [(CLPHController *)&v9 reload];
}

- (id)_axLoadSpecifiersFromPlist
{
  v2 = [(CLPHController *)self loadSpecifiersFromPlistName:@"CLPHController" target:self];
  if (AXDeviceIsPad())
  {
    [v2 ax_removeObjectsFromArrayUsingBlock:&stru_4120];
  }

  return v2;
}

- (id)outgoingHeaderText
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"OUTGOING_CALLS" value:&stru_4160 table:@"CLPHController"];

  return v3;
}

- (id)incomingHeaderText
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INCOMING_CALLS" value:&stru_4160 table:@"CLPHController"];

  return v3;
}

- (id)favoritesFooterText
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FAVORITES_FOOTER" value:&stru_4160 table:@"CLPHController"];

  return v3;
}

- (id)contactPickerPrompt
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CONTACT_PICKER_PROMPT" value:&stru_4160 table:@"CLPHController"];

  return v3;
}

- (id)actionTypes
{
  v4[0] = CNActionTypeAudioCall;
  v4[1] = CNActionTypeVideoCall;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (id)bundleIdentifiers
{
  v4[0] = AX_MobilePhoneBundleName;
  v4[1] = AX_FaceTimeBundleName;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (void)setInCallKeypadEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFPhoneFaceTimeSettings sharedInstance];
  [v5 setInCallKeypadEnabled:v4];
}

- (id)isInCallKeypadEnabled:(id)a3
{
  v3 = +[CLFPhoneFaceTimeSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 inCallKeypadEnabled]);

  return v4;
}

- (void)setSpeakerOptionEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFPhoneFaceTimeSettings sharedInstance];
  [v5 setSpeakerOptionEnabled:v4];
}

- (id)isSpeakerOptionEnabled:(id)a3
{
  v3 = +[CLFPhoneFaceTimeSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 speakerOptionEnabled]);

  return v4;
}

- (void)setShowRecentsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFPhoneFaceTimeSettings sharedInstance];
  [v5 setRecentsEnabled:v4];
}

- (id)showRecentsEnabled:(id)a3
{
  v3 = +[CLFPhoneFaceTimeSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 recentsEnabled]);

  return v4;
}

@end