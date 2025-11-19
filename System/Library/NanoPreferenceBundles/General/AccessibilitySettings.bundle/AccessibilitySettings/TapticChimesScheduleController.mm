@interface TapticChimesScheduleController
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation TapticChimesScheduleController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TapticChimesScheduleController;
  [(AccessibilityBridgeBaseController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277CE6FA8] sharedInstance];
  v4 = [v3 tapticChimesScheduleLocalizedTitle];
  [(TapticChimesScheduleController *)self setTitle:v4];
}

- (id)specifiers
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v25 = *MEMORY[0x277D3FC48];
    v27 = self;
    v4 = [MEMORY[0x277CE6FA8] sharedInstance];
    v5 = [v4 tapticChimesFrequencyOptions];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count") + 1}];
    v7 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v24 = v7;
    [v6 addObject:v7];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v29;
      v12 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v28 + 1) + 8 * i) integerValue];
          v15 = MEMORY[0x277D3FAD8];
          v16 = [v4 localizedStringForTapticChimesFrequencyEncoding:v14];
          v17 = [v15 preferenceSpecifierNamed:v16 target:v27 set:0 get:0 detail:0 cell:3 edit:0];

          v18 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
          [v17 setProperty:v18 forKey:v12];

          [v6 addObject:v17];
          if ([v4 voiceOverTapticChimesFrequencyEncoding] == v14)
          {
            v19 = v17;

            v10 = v19;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    [v24 setProperty:v10 forKey:*MEMORY[0x277D40090]];
    v20 = *(&v27->super.super.super.super.super.super.isa + v25);
    *(&v27->super.super.super.super.super.super.isa + v25) = v6;
    v21 = v6;

    v3 = *(&v27->super.super.super.super.super.super.isa + v25);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = TapticChimesScheduleController;
  v6 = a4;
  [(TapticChimesScheduleController *)&v18 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(TapticChimesScheduleController *)self indexForIndexPath:v6, v18.receiver, v18.super_class];
  v8 = [(TapticChimesScheduleController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(TapticChimesScheduleController *)self specifierAtIndex:[(TapticChimesScheduleController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 integerValue];
      v17 = [MEMORY[0x277CE6FA8] sharedInstance];
      [v17 setVoiceOverTapticChimesFrequencyEncoding:v16];

      [(TapticChimesScheduleController *)self reloadSpecifiers];
    }
  }
}

@end