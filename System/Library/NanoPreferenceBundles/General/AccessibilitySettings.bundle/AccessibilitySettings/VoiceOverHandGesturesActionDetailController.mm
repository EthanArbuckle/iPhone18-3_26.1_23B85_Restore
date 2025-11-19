@interface VoiceOverHandGesturesActionDetailController
- (VoiceOverHandGesturesActionDetailControllerDelegate)delegate;
- (id)_mapVOTActionToWCImage:(id)a3;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation VoiceOverHandGesturesActionDetailController

- (id)actionDetailControllerDelegate
{
  v2 = [(VoiceOverHandGesturesActionDetailController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"VoiceOverHandGesturesActionDetailDelegate"];

  return v4;
}

- (id)specifiers
{
  v2 = self;
  v36 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v24 = *MEMORY[0x277D3FC48];
    v23 = [MEMORY[0x277CBEB18] array];
    v4 = [(VoiceOverHandGesturesActionDetailController *)v2 actionDetailControllerDelegate];
    v30 = [v4 selectedActionForDetailController:v2];

    v29 = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [MEMORY[0x277D798D0] defaultActions];
    v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v5)
    {
      v6 = v5;
      v27 = *v32;
      v28 = 0;
      v26 = *MEMORY[0x277D3FFC0];
      v7 = *MEMORY[0x277D401A8];
      v8 = *MEMORY[0x277D3FD80];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v11 = [MEMORY[0x277D798D0] nameForAction:v10];
          v12 = settingsLocString(v11, @"VoiceOverSettings");
          if (([v11 isEqualToString:*MEMORY[0x277D79908]] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", *MEMORY[0x277D79900]))
          {
            v13 = WCNameForAction();

            v12 = v13;
          }

          v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          v15 = v2;
          v16 = [(VoiceOverHandGesturesActionDetailController *)v2 _mapVOTActionToWCImage:v10];
          [v14 setProperty:v16 forKey:v26];
          [v14 setProperty:v10 forKey:v7];
          [v14 setProperty:MEMORY[0x277CBEC38] forKey:v8];
          if ([v10 isEqualToString:v30])
          {
            v17 = v14;

            v28 = v17;
          }

          [v29 addObject:v14];

          v2 = v15;
        }

        v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v6);
    }

    else
    {
      v28 = 0;
    }

    if ([v29 count])
    {
      v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:v2 set:0 get:0 detail:0 cell:0 edit:0];
      [v18 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
      [v23 addObject:v18];
      if (v28)
      {
        [v18 setProperty:v28 forKey:*MEMORY[0x277D40090]];
      }

      [v23 addObjectsFromArray:v29];
    }

    v19 = *(&v2->super.super.super.super.super.super.isa + v24);
    *(&v2->super.super.super.super.super.super.isa + v24) = v23;
    v20 = v23;

    v3 = *(&v2->super.super.super.super.super.super.isa + v24);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16.receiver = self;
  v16.super_class = VoiceOverHandGesturesActionDetailController;
  v6 = a4;
  [(VoiceOverHandGesturesActionDetailController *)&v16 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(VoiceOverHandGesturesActionDetailController *)self indexForIndexPath:v6, v16.receiver, v16.super_class];
  v8 = [(VoiceOverHandGesturesActionDetailController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(VoiceOverHandGesturesActionDetailController *)self specifierAtIndex:[(VoiceOverHandGesturesActionDetailController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      v15 = [(VoiceOverHandGesturesActionDetailController *)self actionDetailControllerDelegate];
      [v15 setAction:v14 forDetailController:self];

      [(VoiceOverHandGesturesActionDetailController *)self reloadSpecifiers];
    }
  }
}

- (id)_mapVOTActionToWCImage:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D798D8]] || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D798F0]) || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D798E0]) || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D798E8]))
  {
    goto LABEL_5;
  }

  if (([v3 isEqualToString:*MEMORY[0x277D79910]] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D798F8]))
  {
    v6 = MEMORY[0x277D755B8];
    v7 = [MEMORY[0x277D798D0] symbolNameForAction:v3];
    v8 = [v6 systemImageNamed:v7];

    v9 = [MEMORY[0x277D75348] whiteColor];
    v4 = [v8 imageWithTintColor:v9 renderingMode:1];
  }

  else
  {
    if ([v3 isEqualToString:*MEMORY[0x277D79908]] || objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D79900]))
    {
LABEL_5:
      v4 = WCImageForAction();
      goto LABEL_6;
    }

    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (VoiceOverHandGesturesActionDetailControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end