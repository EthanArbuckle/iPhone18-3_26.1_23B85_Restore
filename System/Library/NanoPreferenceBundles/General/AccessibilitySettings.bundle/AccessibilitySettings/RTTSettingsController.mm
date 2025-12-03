@interface RTTSettingsController
- (id)createSpecifiersForRTTEnabled;
- (id)rttEnabled:(id)enabled;
- (id)rttRelayNumber:(id)number;
- (id)shouldSendImmediately:(id)immediately;
- (id)specifiers;
- (void)didReceiveNPSValueChangedNotificationWithName:(id)name;
- (void)setRTTEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setRTTRelayNumber:(id)number specifier:(id)specifier;
- (void)setSendImmediately:(id)immediately forSpecifier:(id)specifier;
@end

@implementation RTTSettingsController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(RTTSettingsController *)self loadSpecifiersFromPlistName:@"RTTSettings" target:self];
    if (([MEMORY[0x277D440E0] isEmergencyRTTSupported] & 1) == 0 && (objc_msgSend(MEMORY[0x277D440E0], "isEmergencyRelayRTTSupported") & 1) == 0)
    {
      firstObject = [v5 firstObject];
      v7 = settingsLocString(@"RTT_NO_EMERGENCY_FOOTER", @"RTTSettings");
      [firstObject setProperty:v7 forKey:*MEMORY[0x277D3FF88]];
    }

    createSpecifiersForRTTEnabled = [(RTTSettingsController *)self createSpecifiersForRTTEnabled];
    [v5 addObjectsFromArray:createSpecifiersForRTTEnabled];

    v9 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)createSpecifiersForRTTEnabled
{
  mEMORY[0x277D440C0] = [MEMORY[0x277D440C0] sharedInstance];
  tTYSoftwareEnabled = [mEMORY[0x277D440C0] TTYSoftwareEnabled];

  if (tTYSoftwareEnabled)
  {
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"TTY_RELAY_FOOTER", @"RTTSettings");
    v8 = *MEMORY[0x277D3FF88];
    [emptyGroupSpecifier setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    v9 = *MEMORY[0x277D3FFB8];
    [emptyGroupSpecifier setProperty:@"RTT_RELAY_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    [array addObject:emptyGroupSpecifier];
    v10 = MEMORY[0x277D3FAD8];
    v11 = settingsLocString(@"TTY_RELAY_LABEL", @"RTTSettings");
    v12 = [v10 preferenceSpecifierNamed:v11 target:self set:0 get:sel_rttRelayNumber_ detail:objc_opt_class() cell:2 edit:0];

    [v12 setProperty:@"RTT_RELAY_NUMBER" forKey:v9];
    [array addObject:v12];
    emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v14 = settingsLocString(@"TTY_REALTIME_FOOTER", @"RTTSettings");
    [emptyGroupSpecifier2 setProperty:v14 forKey:v8];

    [emptyGroupSpecifier2 setProperty:@"RTT_REALTIME_GROUP" forKey:v9];
    [array addObject:emptyGroupSpecifier2];
    v15 = MEMORY[0x277D3FAD8];
    v16 = settingsLocString(@"TTY_REALTIME_LABEL", @"RTTSettings");
    v17 = [v15 preferenceSpecifierNamed:v16 target:self set:sel_setSendImmediately_forSpecifier_ get:sel_shouldSendImmediately_ detail:0 cell:6 edit:0];

    [v17 setProperty:@"RTT_REALTIME_SWITCH" forKey:v9];
    [array addObject:v17];
    emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier3 setProperty:@"RTT_DEFAULT_REPLIES_GROUP" forKey:v9];
    [array addObject:emptyGroupSpecifier3];
    v19 = MEMORY[0x277D3FAD8];
    v20 = settingsLocString(@"RTT_CANNED_TEXT_TITLE", @"RTTSettings");
    v21 = [v19 preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v21 setProperty:@"RTT_DEFAULT_REPLIES_LINK" forKey:v9];
    [array addObject:v21];
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

- (id)rttRelayNumber:(id)number
{
  mEMORY[0x277D440C0] = [MEMORY[0x277D440C0] sharedInstance];
  preferredRelayNumber = [mEMORY[0x277D440C0] preferredRelayNumber];

  if (![preferredRelayNumber length])
  {
    mEMORY[0x277D440D8] = [MEMORY[0x277D440D8] sharedInstance];
    preferredRelayNumber2 = [mEMORY[0x277D440D8] preferredRelayNumber];

    mEMORY[0x277D440C0]2 = [MEMORY[0x277D440C0] sharedInstance];
    [mEMORY[0x277D440C0]2 setPreferredRelayNumber:preferredRelayNumber2];

    preferredRelayNumber = preferredRelayNumber2;
  }

  return preferredRelayNumber;
}

- (void)setRTTRelayNumber:(id)number specifier:(id)specifier
{
  v4 = MEMORY[0x277D440C0];
  numberCopy = number;
  sharedInstance = [v4 sharedInstance];
  v6 = [MEMORY[0x277D440B0] phoneNumberStringFromString:numberCopy];

  [sharedInstance setPreferredRelayNumber:v6];
}

- (id)shouldSendImmediately:(id)immediately
{
  v3 = MEMORY[0x277CCABB0];
  mEMORY[0x277D440C0] = [MEMORY[0x277D440C0] sharedInstance];
  v5 = [v3 numberWithBool:{objc_msgSend(mEMORY[0x277D440C0], "ttyShouldBeRealtime")}];

  return v5;
}

- (void)setSendImmediately:(id)immediately forSpecifier:(id)specifier
{
  v4 = MEMORY[0x277D440C0];
  immediatelyCopy = immediately;
  sharedInstance = [v4 sharedInstance];
  bOOLValue = [immediatelyCopy BOOLValue];

  [sharedInstance setTtyShouldBeRealtime:bOOLValue];
}

- (id)rttEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  mEMORY[0x277D440C0] = [MEMORY[0x277D440C0] sharedInstance];
  v5 = [v3 numberWithBool:{objc_msgSend(mEMORY[0x277D440C0], "TTYSoftwareEnabled")}];

  return v5;
}

- (void)setRTTEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  mEMORY[0x277D440C0] = [MEMORY[0x277D440C0] sharedInstance];
  [mEMORY[0x277D440C0] setTTYSoftwareEnabled:{objc_msgSend(enabledCopy, "BOOLValue")}];

  if ([enabledCopy BOOLValue])
  {
    v6 = [(RTTSettingsController *)self specifierForID:@"RTT_RELAY_GROUP"];

    if (!v6)
    {
      createSpecifiersForRTTEnabled = [(RTTSettingsController *)self createSpecifiersForRTTEnabled];
      -[RTTSettingsController insertContiguousSpecifiers:atIndex:](self, "insertContiguousSpecifiers:atIndex:", createSpecifiersForRTTEnabled, [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) count]);
      goto LABEL_7;
    }
  }

  if (([enabledCopy BOOLValue] & 1) == 0)
  {
    v7 = [(RTTSettingsController *)self specifierForID:@"RTT_RELAY_GROUP"];

    if (v7)
    {
      createSpecifiersForRTTEnabled = [(RTTSettingsController *)self specifiersForIDs:&unk_284E7E6D0];
      [(RTTSettingsController *)self removeContiguousSpecifiers:createSpecifiersForRTTEnabled];
LABEL_7:
    }
  }
}

- (void)didReceiveNPSValueChangedNotificationWithName:(id)name
{
  v6.receiver = self;
  v6.super_class = RTTSettingsController;
  nameCopy = name;
  [(AccessibilityBridgeBaseController *)&v6 didReceiveNPSValueChangedNotificationWithName:nameCopy];
  v5 = [nameCopy isEqualToString:{@"NanoRTTDefaultsChanged", v6.receiver, v6.super_class}];

  if (v5)
  {
    [(RTTSettingsController *)self reloadSpecifiers];
  }
}

@end