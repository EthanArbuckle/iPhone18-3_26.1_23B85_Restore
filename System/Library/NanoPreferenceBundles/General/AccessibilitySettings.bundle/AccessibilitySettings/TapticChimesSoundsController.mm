@interface TapticChimesSoundsController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation TapticChimesSoundsController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TapticChimesSoundsController;
  [(AccessibilityBridgeBaseController *)&v5 viewDidLoad];
  mEMORY[0x277CE6FA8] = [MEMORY[0x277CE6FA8] sharedInstance];
  tapticChimesSoundsLocalizedTitle = [mEMORY[0x277CE6FA8] tapticChimesSoundsLocalizedTitle];
  [(TapticChimesSoundsController *)self setTitle:tapticChimesSoundsLocalizedTitle];
}

- (id)specifiers
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v25 = *MEMORY[0x277D3FC48];
    selfCopy = self;
    mEMORY[0x277CE6FA8] = [MEMORY[0x277CE6FA8] sharedInstance];
    tapticChimesSoundsOptions = [mEMORY[0x277CE6FA8] tapticChimesSoundsOptions];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(tapticChimesSoundsOptions, "count") + 1}];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [emptyGroupSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v24 = emptyGroupSpecifier;
    [v6 addObject:emptyGroupSpecifier];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = tapticChimesSoundsOptions;
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

          integerValue = [*(*(&v28 + 1) + 8 * i) integerValue];
          v15 = MEMORY[0x277D3FAD8];
          v16 = [mEMORY[0x277CE6FA8] localizedStringForTapticChimesSoundType:integerValue];
          v17 = [v15 preferenceSpecifierNamed:v16 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

          v18 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
          [v17 setProperty:v18 forKey:v12];

          [v6 addObject:v17];
          if ([mEMORY[0x277CE6FA8] voiceOverTapticChimesSoundType] == integerValue)
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
    v20 = *(&selfCopy->super.super.super.super.super.super.isa + v25);
    *(&selfCopy->super.super.super.super.super.super.isa + v25) = v6;
    v21 = v6;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v25);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = TapticChimesSoundsController;
  pathCopy = path;
  [(TapticChimesSoundsController *)&v18 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(TapticChimesSoundsController *)self indexForIndexPath:pathCopy, v18.receiver, v18.super_class];
  specifiers = [(TapticChimesSoundsController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(TapticChimesSoundsController *)self specifierAtIndex:[(TapticChimesSoundsController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    v15 = v14;
    if (v14)
    {
      integerValue = [v14 integerValue];
      mEMORY[0x277CE6FA8] = [MEMORY[0x277CE6FA8] sharedInstance];
      [mEMORY[0x277CE6FA8] setVoiceOverTapticChimesSoundType:integerValue];

      [(TapticChimesSoundsController *)self reloadSpecifiers];
    }
  }
}

@end