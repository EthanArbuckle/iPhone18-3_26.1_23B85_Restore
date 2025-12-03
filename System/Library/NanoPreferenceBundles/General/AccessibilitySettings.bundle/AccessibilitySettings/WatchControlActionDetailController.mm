@interface WatchControlActionDetailController
- (WatchControlActionDetailControllerDelegate)delegate;
- (id)_createGenericSpecifiersForActionGroup:(unint64_t)group;
- (id)_createSiriShortcutsSpecifiersForActionGroup:(unint64_t)group;
- (id)_createSpecifiersForActionGroup:(unint64_t)group;
- (id)actionDetailControllerDelegate;
- (id)customActionDetailControllerDelegate;
- (id)specifiers;
- (int64_t)greyEvent;
- (int64_t)motionPointerEdge;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WatchControlActionDetailController

- (id)actionDetailControllerDelegate
{
  specifier = [(WatchControlActionDetailController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"ActionDetailDelegate"];

  return v4;
}

- (id)customActionDetailControllerDelegate
{
  actionDetailControllerDelegate = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
  v4 = [actionDetailControllerDelegate conformsToProtocol:&unk_284E9CC60];

  if (v4)
  {
    actionDetailControllerDelegate2 = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
  }

  else
  {
    actionDetailControllerDelegate2 = 0;
  }

  return actionDetailControllerDelegate2;
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

  actionDetailControllerDelegate = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
  v41 = [actionDetailControllerDelegate selectedActionForDetailController:self];

  array = [MEMORY[0x277CBEB18] array];
  specifier = [(WatchControlActionDetailController *)self specifier];
  userInfo = [specifier userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"AdditionalActions"];

  if ([v8 count])
  {
    v9 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
    [v9 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    [array addObject:v9];
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

          unsignedIntegerValue = [*(*(&v47 + 1) + 8 * i) unsignedIntegerValue];
          v19 = MEMORY[0x277D3FAD8];
          v20 = WCNameForAction();
          v21 = [v19 preferenceSpecifierNamed:v20 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v22 = WCImageForAction();
          [v21 setProperty:v22 forKey:v15];

          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
          [v21 setProperty:v23 forKey:v16];

          if (unsignedIntegerValue == v41)
          {
            v24 = v21;

            v13 = v24;
          }

          [array addObject:v21];
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

        unsignedIntegerValue2 = [*(*(&v43 + 1) + 8 * j) unsignedIntegerValue];
        actionDetailControllerDelegate2 = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
        v32 = [actionDetailControllerDelegate2 canShowActionGroup:unsignedIntegerValue2 forDetailController:self];

        if (v32)
        {
          v33 = [(WatchControlActionDetailController *)self _createSpecifiersForActionGroup:unsignedIntegerValue2];
          if ([v33 count])
          {
            [array addObjectsFromArray:v33];
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v27);
  }

  v34 = *(&self->super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.isa + v3) = array;

  v4 = *(&self->super.super.super.super.super.super.isa + v3);
LABEL_29:
  v35 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_createSpecifiersForActionGroup:(unint64_t)group
{
  if (group == 10002)
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

- (id)_createGenericSpecifiersForActionGroup:(unint64_t)group
{
  v35 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  actionDetailControllerDelegate = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
  v26 = [actionDetailControllerDelegate selectedActionForDetailController:self];

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

        unsignedIntegerValue = [*(*(&v30 + 1) + 8 * i) unsignedIntegerValue];
        actionDetailControllerDelegate2 = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
        v13 = [actionDetailControllerDelegate2 canShowAction:unsignedIntegerValue forDetailController:self];

        if (v13)
        {
          v14 = MEMORY[0x277D3FAD8];
          v15 = WCNameForAction();
          v16 = [v14 preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          v17 = WCImageForAction();
          [v16 setProperty:v17 forKey:v25];
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
          [v16 setProperty:v18 forKey:v8];

          [v16 setProperty:MEMORY[0x277CBEC38] forKey:v9];
          if (unsignedIntegerValue == v26)
          {
            v19 = v16;

            v27 = v19;
          }

          [array addObject:v16];
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

  if ([array count])
  {
    v20 = MEMORY[0x277D3FAD8];
    v21 = WCNameForActionGroup();
    v22 = [v20 preferenceSpecifierNamed:v21 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v22 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    if (v27)
    {
      [v22 setProperty:v27 forKey:*MEMORY[0x277D40090]];
    }

    [array insertObject:v22 atIndex:0];
  }

  v23 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_createSiriShortcutsSpecifiersForActionGroup:(unint64_t)group
{
  v46 = *MEMORY[0x277D85DE8];
  customActionDetailControllerDelegate = [(WatchControlActionDetailController *)self customActionDetailControllerDelegate];

  if (customActionDetailControllerDelegate)
  {
    array = [MEMORY[0x277CBEB18] array];
    customActionDetailControllerDelegate2 = [(WatchControlActionDetailController *)self customActionDetailControllerDelegate];
    v39 = [customActionDetailControllerDelegate2 selectedActionForDetailController:self];

    customActionDetailControllerDelegate3 = [(WatchControlActionDetailController *)self customActionDetailControllerDelegate];
    selfCopy = self;
    v7 = [customActionDetailControllerDelegate3 selectedCustomActionIdentifierForCustomActionType:1 forDetailController:self];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = [MEMORY[0x277CE7E38] shortcutsManagerForSource:1];
    shortcuts = [v8 shortcuts];

    obj = shortcuts;
    v10 = [shortcuts countByEnumeratingWithState:&v41 objects:v45 count:16];
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
          shortcutName = [v14 shortcutName];
          v17 = [v15 preferenceSpecifierNamed:shortcutName target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v14 glyphCharacter];
          v18 = WFSystemImageNameForGlyphCharacter();
          if ([v18 length])
          {
            v19 = MEMORY[0x277D755B8];
            v20 = [MEMORY[0x277D755D0] configurationWithTextStyle:v37];
            v21 = [v19 _systemImageNamed:v18 withConfiguration:v20];

            whiteColor = [MEMORY[0x277D75348] whiteColor];
            v23 = [v21 imageWithTintColor:whiteColor renderingMode:1];

            [v17 setProperty:v23 forKey:v36];
          }

          identifier = [v14 identifier];
          [v17 setProperty:identifier forKey:v12];

          if (v39 == 10020)
          {
            if ([v7 length])
            {
              identifier2 = [v14 identifier];
              v26 = [identifier2 isEqualToString:v7];

              if (v26)
              {
                v27 = v17;

                v34 = v27;
              }
            }
          }

          [array addObject:v17];
        }

        v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v11);
    }

    else
    {
      v34 = 0;
    }

    if ([array count])
    {
      v28 = MEMORY[0x277D3FAD8];
      v29 = WCNameForActionGroup();
      v30 = [v28 preferenceSpecifierNamed:v29 target:selfCopy set:0 get:0 detail:0 cell:0 edit:0];

      [v30 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
      [v30 setProperty:&unk_284E7E408 forKey:@"CustomActionType"];
      if (v34)
      {
        [v30 setProperty:v34 forKey:*MEMORY[0x277D40090]];
      }

      [array insertObject:v30 atIndex:0];
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  v31 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = WatchControlActionDetailController;
  pathCopy = path;
  [(WatchControlActionDetailController *)&v18 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(WatchControlActionDetailController *)self indexForIndexPath:pathCopy, v18.receiver, v18.super_class];
  specifiers = [(WatchControlActionDetailController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(WatchControlActionDetailController *)self specifierAtIndex:[(WatchControlActionDetailController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
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
      integerValue = [v15 integerValue];
      customActionDetailControllerDelegate = [(WatchControlActionDetailController *)self customActionDetailControllerDelegate];
      [customActionDetailControllerDelegate setCustomActionType:integerValue withCustomActionIdentifier:v14 forDetailController:self];
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

      customActionDetailControllerDelegate = [(WatchControlActionDetailController *)self actionDetailControllerDelegate];
      [customActionDetailControllerDelegate setAction:objc_msgSend(v14 forDetailController:{"unsignedIntegerValue"), self}];
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
  specifier = [(WatchControlActionDetailController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"GreyEvent"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (int64_t)motionPointerEdge
{
  specifier = [(WatchControlActionDetailController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"MotionPointerEdge"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end