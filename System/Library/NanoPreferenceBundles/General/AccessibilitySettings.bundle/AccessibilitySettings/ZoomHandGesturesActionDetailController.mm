@interface ZoomHandGesturesActionDetailController
- (id)_mapZoomActionToWCImage:(unint64_t)a3;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ZoomHandGesturesActionDetailController

- (id)actionDetailControllerDelegate
{
  v2 = [(ZoomHandGesturesActionDetailController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"ZoomHandGesturesActionDetailDelegate"];

  return v4;
}

- (id)specifiers
{
  v2 = self;
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v26 = *MEMORY[0x277D3FC48];
    v25 = [MEMORY[0x277CBEB18] array];
    v4 = [(ZoomHandGesturesActionDetailController *)v2 actionDetailControllerDelegate];
    v31 = [v4 selectedActionForDetailController:v2];

    v5 = [MEMORY[0x277CBEB18] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [MEMORY[0x277D7EA40] defaultActions];
    v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v29 = *v33;
      v30 = 0;
      v28 = *MEMORY[0x277D3FFC0];
      v8 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          v10 = v2;
          if (*v33 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = [v11 unsignedIntegerValue];
          v13 = [MEMORY[0x277D7EA40] nameForAction:v12];
          v14 = MEMORY[0x277D3FAD8];
          v15 = settingsLocString(v13, @"ZoomSettings");
          v16 = [v14 preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v2 = v10;
          v17 = [(ZoomHandGesturesActionDetailController *)v10 _mapZoomActionToWCImage:v12];
          [v16 setProperty:v17 forKey:v28];
          [v16 setProperty:v11 forKey:v8];
          if ([v11 isEqualToNumber:v31])
          {
            v18 = v16;

            v30 = v18;
          }

          [v5 addObject:v16];
        }

        v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v7);
    }

    else
    {
      v30 = 0;
    }

    if ([v5 count])
    {
      v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:v2 set:0 get:0 detail:0 cell:0 edit:0];
      [v19 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
      [v25 addObject:v19];
      if (v30)
      {
        [v19 setProperty:v30 forKey:*MEMORY[0x277D40090]];
      }

      [v25 addObjectsFromArray:v5];
    }

    v20 = v2;
    v21 = *(&v2->super.super.super.super.super.super.isa + v26);
    *(&v20->super.super.super.super.super.super.isa + v26) = v25;
    v22 = v25;

    v3 = *(&v20->super.super.super.super.super.super.isa + v26);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16.receiver = self;
  v16.super_class = ZoomHandGesturesActionDetailController;
  v6 = a4;
  [(ZoomHandGesturesActionDetailController *)&v16 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(ZoomHandGesturesActionDetailController *)self indexForIndexPath:v6, v16.receiver, v16.super_class];
  v8 = [(ZoomHandGesturesActionDetailController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(ZoomHandGesturesActionDetailController *)self specifierAtIndex:[(ZoomHandGesturesActionDetailController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      v15 = [(ZoomHandGesturesActionDetailController *)self actionDetailControllerDelegate];
      [v15 setAction:v14 forDetailController:self];

      [(ZoomHandGesturesActionDetailController *)self reloadSpecifiers];
    }
  }
}

- (id)_mapZoomActionToWCImage:(unint64_t)a3
{
  v3 = 0;
  if (a3 > 1)
  {
    if (a3 != 2 && a3 != 3)
    {
      goto LABEL_8;
    }

LABEL_7:
    v3 = WCImageForAction();
    goto LABEL_8;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v4 = MEMORY[0x277D755B8];
    v5 = [MEMORY[0x277D7EA40] symbolNameForAction:?];
    v6 = [v4 _systemImageNamed:v5];

    v7 = [MEMORY[0x277D75348] whiteColor];
    v3 = [v6 imageWithTintColor:v7 renderingMode:1];
  }

LABEL_8:

  return v3;
}

@end