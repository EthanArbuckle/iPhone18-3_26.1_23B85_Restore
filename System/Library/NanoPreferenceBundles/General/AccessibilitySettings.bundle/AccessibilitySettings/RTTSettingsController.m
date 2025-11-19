@interface RTTSettingsController
- (id)createSpecifiersForRTTEnabled;
- (id)rttEnabled:(id)a3;
- (id)rttRelayNumber:(id)a3;
- (id)shouldSendImmediately:(id)a3;
- (id)specifiers;
- (void)didReceiveNPSValueChangedNotificationWithName:(id)a3;
- (void)setRTTEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setRTTRelayNumber:(id)a3 specifier:(id)a4;
- (void)setSendImmediately:(id)a3 forSpecifier:(id)a4;
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
      v6 = [v5 firstObject];
      v7 = settingsLocString(@"RTT_NO_EMERGENCY_FOOTER", @"RTTSettings");
      [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];
    }

    v8 = [(RTTSettingsController *)self createSpecifiersForRTTEnabled];
    [v5 addObjectsFromArray:v8];

    v9 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)createSpecifiersForRTTEnabled
{
  v3 = [MEMORY[0x277D440C0] sharedInstance];
  v4 = [v3 TTYSoftwareEnabled];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"TTY_RELAY_FOOTER", @"RTTSettings");
    v8 = *MEMORY[0x277D3FF88];
    [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    v9 = *MEMORY[0x277D3FFB8];
    [v6 setProperty:@"RTT_RELAY_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    [v5 addObject:v6];
    v10 = MEMORY[0x277D3FAD8];
    v11 = settingsLocString(@"TTY_RELAY_LABEL", @"RTTSettings");
    v12 = [v10 preferenceSpecifierNamed:v11 target:self set:0 get:sel_rttRelayNumber_ detail:objc_opt_class() cell:2 edit:0];

    [v12 setProperty:@"RTT_RELAY_NUMBER" forKey:v9];
    [v5 addObject:v12];
    v13 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v14 = settingsLocString(@"TTY_REALTIME_FOOTER", @"RTTSettings");
    [v13 setProperty:v14 forKey:v8];

    [v13 setProperty:@"RTT_REALTIME_GROUP" forKey:v9];
    [v5 addObject:v13];
    v15 = MEMORY[0x277D3FAD8];
    v16 = settingsLocString(@"TTY_REALTIME_LABEL", @"RTTSettings");
    v17 = [v15 preferenceSpecifierNamed:v16 target:self set:sel_setSendImmediately_forSpecifier_ get:sel_shouldSendImmediately_ detail:0 cell:6 edit:0];

    [v17 setProperty:@"RTT_REALTIME_SWITCH" forKey:v9];
    [v5 addObject:v17];
    v18 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v18 setProperty:@"RTT_DEFAULT_REPLIES_GROUP" forKey:v9];
    [v5 addObject:v18];
    v19 = MEMORY[0x277D3FAD8];
    v20 = settingsLocString(@"RTT_CANNED_TEXT_TITLE", @"RTTSettings");
    v21 = [v19 preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v21 setProperty:@"RTT_DEFAULT_REPLIES_LINK" forKey:v9];
    [v5 addObject:v21];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)rttRelayNumber:(id)a3
{
  v3 = [MEMORY[0x277D440C0] sharedInstance];
  v4 = [v3 preferredRelayNumber];

  if (![v4 length])
  {
    v5 = [MEMORY[0x277D440D8] sharedInstance];
    v6 = [v5 preferredRelayNumber];

    v7 = [MEMORY[0x277D440C0] sharedInstance];
    [v7 setPreferredRelayNumber:v6];

    v4 = v6;
  }

  return v4;
}

- (void)setRTTRelayNumber:(id)a3 specifier:(id)a4
{
  v4 = MEMORY[0x277D440C0];
  v5 = a3;
  v7 = [v4 sharedInstance];
  v6 = [MEMORY[0x277D440B0] phoneNumberStringFromString:v5];

  [v7 setPreferredRelayNumber:v6];
}

- (id)shouldSendImmediately:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277D440C0] sharedInstance];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "ttyShouldBeRealtime")}];

  return v5;
}

- (void)setSendImmediately:(id)a3 forSpecifier:(id)a4
{
  v4 = MEMORY[0x277D440C0];
  v5 = a3;
  v7 = [v4 sharedInstance];
  v6 = [v5 BOOLValue];

  [v7 setTtyShouldBeRealtime:v6];
}

- (id)rttEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277D440C0] sharedInstance];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "TTYSoftwareEnabled")}];

  return v5;
}

- (void)setRTTEnabled:(id)a3 forSpecifier:(id)a4
{
  v9 = a3;
  v5 = [MEMORY[0x277D440C0] sharedInstance];
  [v5 setTTYSoftwareEnabled:{objc_msgSend(v9, "BOOLValue")}];

  if ([v9 BOOLValue])
  {
    v6 = [(RTTSettingsController *)self specifierForID:@"RTT_RELAY_GROUP"];

    if (!v6)
    {
      v8 = [(RTTSettingsController *)self createSpecifiersForRTTEnabled];
      -[RTTSettingsController insertContiguousSpecifiers:atIndex:](self, "insertContiguousSpecifiers:atIndex:", v8, [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) count]);
      goto LABEL_7;
    }
  }

  if (([v9 BOOLValue] & 1) == 0)
  {
    v7 = [(RTTSettingsController *)self specifierForID:@"RTT_RELAY_GROUP"];

    if (v7)
    {
      v8 = [(RTTSettingsController *)self specifiersForIDs:&unk_284E7E6D0];
      [(RTTSettingsController *)self removeContiguousSpecifiers:v8];
LABEL_7:
    }
  }
}

- (void)didReceiveNPSValueChangedNotificationWithName:(id)a3
{
  v6.receiver = self;
  v6.super_class = RTTSettingsController;
  v4 = a3;
  [(AccessibilityBridgeBaseController *)&v6 didReceiveNPSValueChangedNotificationWithName:v4];
  v5 = [v4 isEqualToString:{@"NanoRTTDefaultsChanged", v6.receiver, v6.super_class}];

  if (v5)
  {
    [(RTTSettingsController *)self reloadSpecifiers];
  }
}

@end