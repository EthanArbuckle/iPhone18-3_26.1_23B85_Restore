@interface SCATModernMenuSheet
- (BOOL)shouldIncludeTextLabels;
- (CGRect)rectToClear;
- (NSArray)menuItems;
- (NSString)description;
- (SCATModernMenuSheet)init;
- (SCATModernMenuSheet)initWithMenu:(id)a3;
- (SCATModernMenuSheetElementProviderDelegate)elementProviderDelegate;
- (SCATStaticElementProvider)elementProvider;
- (id)_filteredMenuItems:(id)a3;
- (id)backTitle;
- (id)itemWithIdentifier:(id)a3;
- (void)_insertObjectsOnSameRow:(id)a3 intoArray:(id)a4 itemsPerRow:(unint64_t)a5;
- (void)_listenForMuteSwitchChangeIfNecessaryForItems:(id)a3;
- (void)dealloc;
- (void)didFocusOnContext:(id)a3 oldContext:(id)a4;
- (void)invalidateMenuItems;
- (void)menuItemWasActivated:(id)a3;
- (void)reload;
- (void)sortMenuItemsForNumberOfItemsPerRow:(unint64_t)a3;
@end

@implementation SCATModernMenuSheet

- (SCATModernMenuSheet)init
{
  [NSException raise:@"NotImplemented" format:@"Use initWithMenu:"];

  return 0;
}

- (SCATModernMenuSheet)initWithMenu:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SCATModernMenuSheet;
  v5 = [(SCATModernMenuSheet *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SCATModernMenuSheet *)v5 setMenu:v4];
  }

  return v6;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(SCATModernMenuSheet *)self menuItems];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
  v7 = [NSString stringWithFormat:@"%@<%p> items:%@", v4, self, v6];

  return v7;
}

- (void)dealloc
{
  if (+[AXSpringBoardServer isAvailable])
  {
    v3 = +[AXSpringBoardServer server];
    v4 = [(SCATModernMenuSheet *)self springBoardActionHandlerIdentifier];
    [v3 removeActionHandler:v4];
  }

  v5.receiver = self;
  v5.super_class = SCATModernMenuSheet;
  [(SCATModernMenuSheet *)&v5 dealloc];
}

- (SCATStaticElementProvider)elementProvider
{
  v2 = [(SCATModernMenuSheet *)self elementProviderDelegate];
  v3 = [v2 elementProvider];

  return v3;
}

- (NSArray)menuItems
{
  menuItems = self->_menuItems;
  if (!menuItems)
  {
    v4 = +[NSMutableArray array];
    if ([(SCATModernMenuSheet *)self shouldIncludeBackItem])
    {
      v5 = [(SCATModernMenuSheet *)self backTitle];
      v6 = [(SCATModernMenuSheet *)self shouldUseBackItemAsDoneItem];
      if (v6)
      {
        v7 = @"SCATIcon_general_exit";
      }

      else
      {
        v7 = @"SCATIcon_general_back";
      }

      LOBYTE(v22) = 1;
      v8 = [(objc_class *)[(SCATModernMenuSheet *)self _menuItemClass] itemWithIdentifier:@"private_back" delegate:self title:v5 imageName:v7 activateBehavior:2 allowedWithGuidedAccess:1 allowedWithAssistiveAccess:v22];
      [v8 setShouldFlipForRTL:v6 ^ 1];
      [(NSArray *)v4 addObject:v8];
    }

    v9 = [(SCATModernMenuSheet *)self makeMenuItemsIfNeeded];
    v10 = [(SCATModernMenuSheet *)self _filteredMenuItems:v9];

    [(SCATModernMenuSheet *)self _listenForMuteSwitchChangeIfNecessaryForItems:v10];
    [(NSArray *)v4 addObjectsFromArray:v10];
    if (![(NSArray *)v4 count])
    {
      v11 = [(SCATModernMenuSheet *)self _menuItemClass];
      v12 = sub_100042B24(@"NO_ITEMS");
      v13 = [(objc_class *)v11 itemWithIdentifier:@"private_empty" delegate:self title:v12 imageName:0 activateBehavior:2];

      +[SCATModernMenuItem imageSize];
      v15 = round(v14 * 44.0 / 60.0);
      v16 = [UIImage systemImageNamed:@"exclamationmark.circle"];
      v17 = [UIFont systemFontOfSize:v15];
      v18 = [UIImageSymbolConfiguration configurationWithFont:v17];
      v19 = [v16 imageWithConfiguration:v18];
      [v13 setImage:v19];

      [v13 setDisabled:1];
      [(NSArray *)v4 addObject:v13];
    }

    v20 = self->_menuItems;
    self->_menuItems = v4;

    menuItems = self->_menuItems;
  }

  return menuItems;
}

- (void)_listenForMuteSwitchChangeIfNecessaryForItems:(id)a3
{
  v4 = a3;
  if (+[AXSpringBoardServer isAvailable])
  {
    v5 = [v4 axFilterObjectsUsingBlock:&stru_1001D7370];
    v6 = [v5 firstObject];

    v7 = +[AXSpringBoardServer server];
    v8 = [(SCATModernMenuSheet *)self springBoardActionHandlerIdentifier];
    [v7 removeActionHandler:v8];

    if (v6)
    {
      objc_initWeak(&location, self);
      v9 = +[AXSpringBoardServer server];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000D6434;
      v12[3] = &unk_1001D48F0;
      v13 = v6;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000D6448;
      v10[3] = &unk_1001D7398;
      objc_copyWeak(&v11, &location);
      [v9 registerSpringBoardActionHandler:v12 withIdentifierCallback:v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

- (void)sortMenuItemsForNumberOfItemsPerRow:(unint64_t)a3
{
  if (![(SCATModernMenuSheet *)self areItemsSorted])
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [(SCATModernMenuSheet *)self menuItems];
    v7 = [v6 count];

    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [(SCATModernMenuSheet *)self menuItems];
        v10 = [v9 objectAtIndex:v8];

        v11 = [v10 menuItemGroupName];

        if (v11)
        {
          v12 = [(SCATModernMenuSheet *)self menuItems];
          v13 = v8 + 1;
          v14 = [v12 axSafeObjectAtIndex:v8 + 1];

          v15 = [v10 menuItemGroupName];
          v16 = [v14 menuItemGroupName];
          v17 = [v15 isEqualToString:v16];

          if (v17)
          {
            v18 = [NSArray axArrayByIgnoringNilElementsWithCount:2, v10, v14];
            [(SCATModernMenuSheet *)self _insertObjectsOnSameRow:v18 intoArray:v5 itemsPerRow:a3];

            v8 = v13;
          }

          else
          {
            [(NSArray *)v5 addObject:v10];
          }
        }

        else
        {
          [(NSArray *)v5 addObject:v10];
        }

        ++v8;
        v19 = [(SCATModernMenuSheet *)self menuItems];
        v20 = [v19 count];
      }

      while (v8 < v20);
    }

    menuItems = self->_menuItems;
    self->_menuItems = v5;
  }
}

- (void)_insertObjectsOnSameRow:(id)a3 intoArray:(id)a4 itemsPerRow:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 count];
  v11 = [(SCATModernMenuSheet *)self numberOfItemsInFirstPage];
  v12 = v10;
  if (v10 >= v11)
  {
    v12 = v10 - [(SCATModernMenuSheet *)self numberOfItemsInFirstPage];
  }

  v22 = 0u;
  v23 = 0u;
  v13 = v12 % a5 == a5 - 1;
  *(&v20 + 1) = 0;
  v21 = 0u;
  v14 = [v8 reverseObjectEnumerator];
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = &v10[-v13];
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v14);
        }

        [v9 insertObject:*(*(&v20 + 1) + 8 * v19) atIndex:v17];
        v19 = v19 + 1;
      }

      while (v16 != v19);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }
}

- (id)itemWithIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SCATModernMenuSheet *)self menuItems];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)invalidateMenuItems
{
  [(SCATModernMenuSheet *)self setMenuItems:0];

  [(SCATModernMenuSheet *)self setAreItemsSorted:0];
}

- (void)reload
{
  [(SCATModernMenuSheet *)self invalidateMenuItems];
  v4 = [(SCATModernMenuSheet *)self menu];
  v3 = [v4 menuVisualProvider];
  [v3 didReloadSheet:self];
}

- (id)_filteredMenuItems:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (AXAssistiveAccessEnabled())
  {
    v5 = [NSPredicate predicateWithBlock:&stru_1001D73D8];
    v4 = [v3 filteredArrayUsingPredicate:v5];
  }

  v6 = +[AXBackBoardServer server];
  v7 = [v6 isGuidedAccessActive];

  if (v7)
  {
    v8 = [NSPredicate predicateWithBlock:&stru_1001D73F8];
    v9 = [v4 filteredArrayUsingPredicate:v8];

    v4 = v9;
  }

  return v4;
}

- (void)menuItemWasActivated:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"private_back"];

  if (v6)
  {
    v7 = [(SCATModernMenuSheet *)self shouldUseBackItemAsDoneItem];
    v8 = [(SCATModernMenuSheet *)self menu];
    v9 = v8;
    if (v7)
    {
      [v8 hideWithCompletion:0];
LABEL_10:

      goto LABEL_11;
    }

    v11 = [v8 popSheet];

    if ((v11 & 1) == 0)
    {
      v9 = SWCHLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10012B19C(self, v4, v9);
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = SWCHLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Nobody handled this menu item activated: %@", &v12, 0xCu);
    }
  }

LABEL_11:
}

- (SCATModernMenuSheetElementProviderDelegate)elementProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_elementProviderDelegate);

  return WeakRetained;
}

- (void)didFocusOnContext:(id)a3 oldContext:(id)a4
{
  v5 = a3;
  v6 = [v5 element];
  v7 = +[AXSettings sharedInstance];
  v8 = [v7 switchControlScanningStyle];

  objc_opt_class();
  v51 = v6;
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 menuItem];
    v10 = 1;
  }

  else
  {
    v9 = 0;
    v10 = [v5 selectBehavior] != 4;
  }

  v11 = [v5 parentGroup];
  v52 = v5;
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v11;
  v13 = [(SCATModernMenuSheet *)self menu];
  v14 = [v13 exitActionElement];
  v15 = v14;
  if (v51 == v14)
  {

LABEL_25:
    if ([v51 isGroup])
    {
      v21 = v51;
    }

    else
    {
      v21 = 0;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v32 = [(SCATModernMenuSheet *)self menuItems];
    v33 = [v32 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (!v33)
    {
LABEL_58:

      v5 = v52;
      goto LABEL_59;
    }

    v34 = v33;
    v35 = *v60;
    v36 = v8 != 2 || v10;
    v37 = v36 == 0;
    v38 = 4;
    if (!v37)
    {
      v38 = 0;
    }

    v54 = v38;
LABEL_35:
    v39 = 0;
    while (1)
    {
      if (*v60 != v35)
      {
        objc_enumerationMutation(v32);
      }

      v40 = *(*(&v59 + 1) + 8 * v39);
      if (([v40 isDisabled] & 1) == 0)
      {
        if (v40 == v9)
        {
          v41 = 2;
          goto LABEL_49;
        }

        if (v9)
        {
          v42 = [v9 scatElement];
          v43 = [v42 parentGroup];
          if (!v43)
          {
            v47 = [v40 scatElement];
            v48 = [v47 parentGroup];

            if (v48)
            {
              v41 = 3;
            }

            else
            {
              v41 = 4;
            }

            if (!v48 || !v21)
            {
              goto LABEL_49;
            }

LABEL_45:
            v44 = [v40 scatElement];
            v45 = [v44 parentGroup];
            v46 = [v45 isEqual:v21];

            if (v46)
            {
              v41 = v54;
            }

            else
            {
              v41 = 3;
            }

            goto LABEL_49;
          }
        }

        if (v21)
        {
          goto LABEL_45;
        }
      }

      v41 = 3;
LABEL_49:
      [v40 setStyle:v41];
      if (v34 == ++v39)
      {
        v49 = [v32 countByEnumeratingWithState:&v59 objects:v64 count:16];
        v34 = v49;
        if (!v49)
        {
          goto LABEL_58;
        }

        goto LABEL_35;
      }
    }
  }

  [(SCATModernMenuSheet *)self menu];
  v53 = self;
  v16 = v10;
  v18 = v17 = v8;
  v19 = [v18 menuVisualProvider];
  v20 = [v19 isElementTopLevelInMenu:v51];

  v8 = v17;
  v10 = v16;
  self = v53;

  if (v20)
  {
    goto LABEL_25;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = [(SCATModernMenuSheet *)v53 menuItems];
  v22 = [v21 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v56;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v55 + 1) + 8 * i);
        if (!v9)
        {
          v50 = v5;
          _AXAssert();
        }

        if ([v26 isDisabled])
        {
          v27 = 3;
        }

        else if (v26 == v9)
        {
          v27 = 2;
        }

        else
        {
          v28 = [v9 scatElement];
          v29 = [v28 parentGroup];
          v30 = [v26 scatElement];
          v31 = [v30 parentGroup];

          v5 = v52;
          if (v29 == v31)
          {
            v27 = 4;
          }

          else
          {
            v27 = 3;
          }
        }

        [v26 setStyle:v27];
      }

      v23 = [v21 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v23);
  }

LABEL_59:
}

- (CGRect)rectToClear
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)backTitle
{
  if ([(SCATModernMenuSheet *)self shouldUseBackItemAsDoneItem])
  {
    v2 = @"EXIT";
  }

  else
  {
    v2 = @"BACK";
  }

  v3 = sub_100042B24(v2);

  return v3;
}

- (BOOL)shouldIncludeTextLabels
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchScannerMenuLabelsEnabled];

  return v3;
}

@end