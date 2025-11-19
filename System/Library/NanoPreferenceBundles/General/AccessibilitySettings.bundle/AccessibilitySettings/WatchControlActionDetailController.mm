@interface WatchControlActionDetailController
- (WatchControlActionDetailControllerDelegate)delegate;
- (id)_createGenericSpecifiersForActionGroup:(unint64_t)a3;
- (id)_createSiriShortcutsSpecifiersForActionGroup:(unint64_t)a3;
- (id)_createSpecifiersForActionGroup:(unint64_t)a3;
- (id)actionDetailControllerDelegate;
- (id)customActionDetailControllerDelegate;
- (id)specifiers;
- (int64_t)greyEvent;
- (int64_t)motionPointerEdge;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation WatchControlActionDetailController

- (id)actionDetailControllerDelegate
{
  v2 = [(WatchControlActionDetailController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"ActionDetailDelegate"];

  return v4;
}

- (id)customActionDetailControllerDelegate
{
  v3 = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
  v4 = [v3 conformsToProtocol:&unk_284E9CC60];

  if (v4)
  {
    v5 = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)specifiers
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_29;
  }

  v5 = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
  v41 = [v5 selectedActionForDetailController:self];

  v42 = [MEMORY[0x277CBEB18] array];
  v6 = [(WatchControlActionDetailController *)self specifier];
  v7 = [v6 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"AdditionalActions"];

  if ([v8 count])
  {
    v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
    [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    [v42 addObject:v9];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v39 = v8;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v11)
    {
      v12 = v11;
      v37 = v9;
      v38 = v3;
      v13 = 0;
      v14 = *v48;
      v15 = *MEMORY[0x277D3FFC0];
      v16 = *MEMORY[0x277D401A8];
      obj = v10;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v48 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v18 = [*(*(&v47 + 1) + 8 * i) unsignedIntegerValue];
          v19 = MEMORY[0x277D3FAD8];
          v20 = WCNameForAction();
          v21 = [v19 preferenceSpecifierNamed:v20 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v22 = WCImageForAction();
          [v21 setProperty:v22 forKey:v15];

          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
          [v21 setProperty:v23 forKey:v16];

          if (v18 == v41)
          {
            v24 = v21;

            v13 = v24;
          }

          [v42 addObject:v21];
        }

        v12 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v12);

      v3 = v38;
      v8 = v39;
      v9 = v37;
      if (!v13)
      {
        goto LABEL_16;
      }

      [v37 setProperty:v13 forKey:*MEMORY[0x277D40090]];
    }

    else
    {
      v13 = v10;
    }

LABEL_16:
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = WCAvailableActionGroupsForSettings();
  v26 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v44;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v43 + 1) + 8 * j) unsignedIntegerValue];
        v31 = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
        v32 = [v31 canShowActionGroup:v30 forDetailController:self];

        if (v32)
        {
          v33 = [(WatchControlActionDetailController *)self _createSpecifiersForActionGroup:v30];
          if ([v33 count])
          {
            [v42 addObjectsFromArray:v33];
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v27);
  }

  v34 = *(&self->super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.isa + v3) = v42;

  v4 = *(&self->super.super.super.super.super.super.isa + v3);
LABEL_29:
  v35 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_createSpecifiersForActionGroup:(unint64_t)a3
{
  if (a3 == 10002)
  {
    [(WatchControlActionDetailController *)self _createSiriShortcutsSpecifiersForActionGroup:10002];
  }

  else
  {
    [(WatchControlActionDetailController *)self _createGenericSpecifiersForActionGroup:?];
  }
  v3 = ;

  return v3;
}

- (id)_createGenericSpecifiersForActionGroup:(unint64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277CBEB18] array];
  v4 = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
  v26 = [v4 selectedActionForDetailController:self];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = WCDefaultActionsForActionGroup();
  v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v27 = 0;
    v7 = *v31;
    v25 = *MEMORY[0x277D3FFC0];
    v8 = *MEMORY[0x277D401A8];
    v9 = *MEMORY[0x277D3FD80];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v30 + 1) + 8 * i) unsignedIntegerValue];
        v12 = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
        v13 = [v12 canShowAction:v11 forDetailController:self];

        if (v13)
        {
          v14 = MEMORY[0x277D3FAD8];
          v15 = WCNameForAction();
          v16 = [v14 preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v17 = WCImageForAction();
          [v16 setProperty:v17 forKey:v25];
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
          [v16 setProperty:v18 forKey:v8];

          [v16 setProperty:MEMORY[0x277CBEC38] forKey:v9];
          if (v11 == v26)
          {
            v19 = v16;

            v27 = v19;
          }

          [v28 addObject:v16];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  else
  {
    v27 = 0;
  }

  if ([v28 count])
  {
    v20 = MEMORY[0x277D3FAD8];
    v21 = WCNameForActionGroup();
    v22 = [v20 preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v22 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    if (v27)
    {
      [v22 setProperty:v27 forKey:*MEMORY[0x277D40090]];
    }

    [v28 insertObject:v22 atIndex:0];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)_createSiriShortcutsSpecifiersForActionGroup:(unint64_t)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = [(WatchControlActionDetailController *)self customActionDetailControllerDelegate];

  if (v4)
  {
    v40 = [MEMORY[0x277CBEB18] array];
    v5 = [(WatchControlActionDetailController *)self customActionDetailControllerDelegate];
    v39 = [v5 selectedActionForDetailController:self];

    v6 = [(WatchControlActionDetailController *)self customActionDetailControllerDelegate];
    v33 = self;
    v7 = [v6 selectedCustomActionIdentifierForCustomActionType:1 forDetailController:self];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = [MEMORY[0x277CE7E38] shortcutsManagerForSource:1];
    v9 = [v8 shortcuts];

    obj = v9;
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v34 = 0;
      v37 = *MEMORY[0x277D76A28];
      v38 = *v42;
      v36 = *MEMORY[0x277D3FFC0];
      v12 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v42 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          v15 = MEMORY[0x277D3FAD8];
          v16 = [v14 shortcutName];
          v17 = [v15 preferenceSpecifierNamed:v16 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v14 glyphCharacter];
          v18 = WFSystemImageNameForGlyphCharacter();
          if ([v18 length])
          {
            v19 = MEMORY[0x277D755B8];
            v20 = [MEMORY[0x277D755D0] configurationWithTextStyle:v37];
            v21 = [v19 _systemImageNamed:v18 withConfiguration:v20];

            v22 = [MEMORY[0x277D75348] whiteColor];
            v23 = [v21 imageWithTintColor:v22 renderingMode:1];

            [v17 setProperty:v23 forKey:v36];
          }

          v24 = [v14 identifier];
          [v17 setProperty:v24 forKey:v12];

          if (v39 == 10020)
          {
            if ([v7 length])
            {
              v25 = [v14 identifier];
              v26 = [v25 isEqualToString:v7];

              if (v26)
              {
                v27 = v17;

                v34 = v27;
              }
            }
          }

          [v40 addObject:v17];
        }

        v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v11);
    }

    else
    {
      v34 = 0;
    }

    if ([v40 count])
    {
      v28 = MEMORY[0x277D3FAD8];
      v29 = WCNameForActionGroup();
      v30 = [v28 preferenceSpecifierNamed:v29 target:v33 set:0 get:0 detail:0 cell:0 edit:0];

      [v30 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
      [v30 setProperty:&unk_284E7E408 forKey:@"CustomActionType"];
      if (v34)
      {
        [v30 setProperty:v34 forKey:*MEMORY[0x277D40090]];
      }

      [v40 insertObject:v30 atIndex:0];
    }
  }

  else
  {
    v40 = MEMORY[0x277CBEBF8];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v40;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = WatchControlActionDetailController;
  v6 = a4;
  [(WatchControlActionDetailController *)&v18 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(WatchControlActionDetailController *)self indexForIndexPath:v6, v18.receiver, v18.super_class];
  v8 = [(WatchControlActionDetailController *)self specifiers];
  v9 = [v8 objectAtIndex:v7];

  v10 = [v6 section];
  v11 = [(WatchControlActionDetailController *)self specifierAtIndex:[(WatchControlActionDetailController *)self indexOfGroup:v10]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (!v14)
    {
LABEL_10:

      goto LABEL_11;
    }

    v15 = [v11 propertyForKey:@"CustomActionType"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = [v15 integerValue];
      v17 = [(WatchControlActionDetailController *)self customActionDetailControllerDelegate];
      [v17 setCustomActionType:v16 withCustomActionIdentifier:v14 forDetailController:self];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_9:
        [(WatchControlActionDetailController *)self reloadSpecifiers];

        goto LABEL_10;
      }

      v17 = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
      [v17 setAction:objc_msgSend(v14 forDetailController:{"unsignedIntegerValue"), self}];
    }

    goto LABEL_9;
  }

LABEL_11:
}

- (WatchControlActionDetailControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)greyEvent
{
  v2 = [(WatchControlActionDetailController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"GreyEvent"];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (int64_t)motionPointerEdge
{
  v2 = [(WatchControlActionDetailController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"MotionPointerEdge"];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

@end