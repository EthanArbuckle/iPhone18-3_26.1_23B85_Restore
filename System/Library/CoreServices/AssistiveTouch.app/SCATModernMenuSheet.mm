@interface SCATModernMenuSheet
- (BOOL)shouldIncludeTextLabels;
- (CGRect)rectToClear;
- (NSArray)menuItems;
- (NSString)description;
- (SCATModernMenuSheet)init;
- (SCATModernMenuSheet)initWithMenu:(id)menu;
- (SCATModernMenuSheetElementProviderDelegate)elementProviderDelegate;
- (SCATStaticElementProvider)elementProvider;
- (id)_filteredMenuItems:(id)items;
- (id)backTitle;
- (id)itemWithIdentifier:(id)identifier;
- (void)_insertObjectsOnSameRow:(id)row intoArray:(id)array itemsPerRow:(unint64_t)perRow;
- (void)_listenForMuteSwitchChangeIfNecessaryForItems:(id)items;
- (void)dealloc;
- (void)didFocusOnContext:(id)context oldContext:(id)oldContext;
- (void)invalidateMenuItems;
- (void)menuItemWasActivated:(id)activated;
- (void)reload;
- (void)sortMenuItemsForNumberOfItemsPerRow:(unint64_t)row;
@end

@implementation SCATModernMenuSheet

- (SCATModernMenuSheet)init
{
  [NSException raise:@"NotImplemented" format:@"Use initWithMenu:"];

  return 0;
}

- (SCATModernMenuSheet)initWithMenu:(id)menu
{
  menuCopy = menu;
  v8.receiver = self;
  v8.super_class = SCATModernMenuSheet;
  v5 = [(SCATModernMenuSheet *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SCATModernMenuSheet *)v5 setMenu:menuCopy];
  }

  return v6;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  menuItems = [(SCATModernMenuSheet *)self menuItems];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [menuItems count]);
  v7 = [NSString stringWithFormat:@"%@<%p> items:%@", v4, self, v6];

  return v7;
}

- (void)dealloc
{
  if (+[AXSpringBoardServer isAvailable])
  {
    v3 = +[AXSpringBoardServer server];
    springBoardActionHandlerIdentifier = [(SCATModernMenuSheet *)self springBoardActionHandlerIdentifier];
    [v3 removeActionHandler:springBoardActionHandlerIdentifier];
  }

  v5.receiver = self;
  v5.super_class = SCATModernMenuSheet;
  [(SCATModernMenuSheet *)&v5 dealloc];
}

- (SCATStaticElementProvider)elementProvider
{
  elementProviderDelegate = [(SCATModernMenuSheet *)self elementProviderDelegate];
  elementProvider = [elementProviderDelegate elementProvider];

  return elementProvider;
}

- (NSArray)menuItems
{
  menuItems = self->_menuItems;
  if (!menuItems)
  {
    v4 = +[NSMutableArray array];
    if ([(SCATModernMenuSheet *)self shouldIncludeBackItem])
    {
      backTitle = [(SCATModernMenuSheet *)self backTitle];
      shouldUseBackItemAsDoneItem = [(SCATModernMenuSheet *)self shouldUseBackItemAsDoneItem];
      if (shouldUseBackItemAsDoneItem)
      {
        v7 = @"SCATIcon_general_exit";
      }

      else
      {
        v7 = @"SCATIcon_general_back";
      }

      LOBYTE(v22) = 1;
      v8 = [(objc_class *)[(SCATModernMenuSheet *)self _menuItemClass] itemWithIdentifier:@"private_back" delegate:self title:backTitle imageName:v7 activateBehavior:2 allowedWithGuidedAccess:1 allowedWithAssistiveAccess:v22];
      [v8 setShouldFlipForRTL:shouldUseBackItemAsDoneItem ^ 1];
      [(NSArray *)v4 addObject:v8];
    }

    makeMenuItemsIfNeeded = [(SCATModernMenuSheet *)self makeMenuItemsIfNeeded];
    v10 = [(SCATModernMenuSheet *)self _filteredMenuItems:makeMenuItemsIfNeeded];

    [(SCATModernMenuSheet *)self _listenForMuteSwitchChangeIfNecessaryForItems:v10];
    [(NSArray *)v4 addObjectsFromArray:v10];
    if (![(NSArray *)v4 count])
    {
      _menuItemClass = [(SCATModernMenuSheet *)self _menuItemClass];
      v12 = sub_100042B24(@"NO_ITEMS");
      v13 = [(objc_class *)_menuItemClass itemWithIdentifier:@"private_empty" delegate:self title:v12 imageName:0 activateBehavior:2];

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

- (void)_listenForMuteSwitchChangeIfNecessaryForItems:(id)items
{
  itemsCopy = items;
  if (+[AXSpringBoardServer isAvailable])
  {
    v5 = [itemsCopy axFilterObjectsUsingBlock:&stru_1001D7370];
    firstObject = [v5 firstObject];

    v7 = +[AXSpringBoardServer server];
    springBoardActionHandlerIdentifier = [(SCATModernMenuSheet *)self springBoardActionHandlerIdentifier];
    [v7 removeActionHandler:springBoardActionHandlerIdentifier];

    if (firstObject)
    {
      objc_initWeak(&location, self);
      v9 = +[AXSpringBoardServer server];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000D6434;
      v12[3] = &unk_1001D48F0;
      v13 = firstObject;
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

- (void)sortMenuItemsForNumberOfItemsPerRow:(unint64_t)row
{
  if (![(SCATModernMenuSheet *)self areItemsSorted])
  {
    v5 = objc_alloc_init(NSMutableArray);
    menuItems = [(SCATModernMenuSheet *)self menuItems];
    v7 = [menuItems count];

    if (v7)
    {
      v8 = 0;
      do
      {
        menuItems2 = [(SCATModernMenuSheet *)self menuItems];
        v10 = [menuItems2 objectAtIndex:v8];

        menuItemGroupName = [v10 menuItemGroupName];

        if (menuItemGroupName)
        {
          menuItems3 = [(SCATModernMenuSheet *)self menuItems];
          v13 = v8 + 1;
          v14 = [menuItems3 axSafeObjectAtIndex:v8 + 1];

          menuItemGroupName2 = [v10 menuItemGroupName];
          menuItemGroupName3 = [v14 menuItemGroupName];
          v17 = [menuItemGroupName2 isEqualToString:menuItemGroupName3];

          if (v17)
          {
            v18 = [NSArray axArrayByIgnoringNilElementsWithCount:2, v10, v14];
            [(SCATModernMenuSheet *)self _insertObjectsOnSameRow:v18 intoArray:v5 itemsPerRow:row];

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
        menuItems4 = [(SCATModernMenuSheet *)self menuItems];
        v20 = [menuItems4 count];
      }

      while (v8 < v20);
    }

    menuItems = self->_menuItems;
    self->_menuItems = v5;
  }
}

- (void)_insertObjectsOnSameRow:(id)row intoArray:(id)array itemsPerRow:(unint64_t)perRow
{
  rowCopy = row;
  arrayCopy = array;
  v10 = [arrayCopy count];
  numberOfItemsInFirstPage = [(SCATModernMenuSheet *)self numberOfItemsInFirstPage];
  v12 = v10;
  if (v10 >= numberOfItemsInFirstPage)
  {
    v12 = v10 - [(SCATModernMenuSheet *)self numberOfItemsInFirstPage];
  }

  v22 = 0u;
  v23 = 0u;
  v13 = v12 % perRow == perRow - 1;
  *(&v20 + 1) = 0;
  v21 = 0u;
  reverseObjectEnumerator = [rowCopy reverseObjectEnumerator];
  v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        [arrayCopy insertObject:*(*(&v20 + 1) + 8 * v19) atIndex:v17];
        v19 = v19 + 1;
      }

      while (v16 != v19);
      v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }
}

- (id)itemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  menuItems = [(SCATModernMenuSheet *)self menuItems];
  v6 = [menuItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(menuItems);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [menuItems countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  menu = [(SCATModernMenuSheet *)self menu];
  menuVisualProvider = [menu menuVisualProvider];
  [menuVisualProvider didReloadSheet:self];
}

- (id)_filteredMenuItems:(id)items
{
  itemsCopy = items;
  v4 = itemsCopy;
  if (AXAssistiveAccessEnabled())
  {
    v5 = [NSPredicate predicateWithBlock:&stru_1001D73D8];
    v4 = [itemsCopy filteredArrayUsingPredicate:v5];
  }

  v6 = +[AXBackBoardServer server];
  isGuidedAccessActive = [v6 isGuidedAccessActive];

  if (isGuidedAccessActive)
  {
    v8 = [NSPredicate predicateWithBlock:&stru_1001D73F8];
    v9 = [v4 filteredArrayUsingPredicate:v8];

    v4 = v9;
  }

  return v4;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  v6 = [identifier isEqualToString:@"private_back"];

  if (v6)
  {
    shouldUseBackItemAsDoneItem = [(SCATModernMenuSheet *)self shouldUseBackItemAsDoneItem];
    menu = [(SCATModernMenuSheet *)self menu];
    v9 = menu;
    if (shouldUseBackItemAsDoneItem)
    {
      [menu hideWithCompletion:0];
LABEL_10:

      goto LABEL_11;
    }

    popSheet = [menu popSheet];

    if ((popSheet & 1) == 0)
    {
      v9 = SWCHLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10012B19C(self, activatedCopy, v9);
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
      v13 = activatedCopy;
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

- (void)didFocusOnContext:(id)context oldContext:(id)oldContext
{
  contextCopy = context;
  element = [contextCopy element];
  v7 = +[AXSettings sharedInstance];
  switchControlScanningStyle = [v7 switchControlScanningStyle];

  objc_opt_class();
  v51 = element;
  if (objc_opt_isKindOfClass())
  {
    menuItem = [element menuItem];
    v10 = 1;
  }

  else
  {
    menuItem = 0;
    v10 = [contextCopy selectBehavior] != 4;
  }

  parentGroup = [contextCopy parentGroup];
  v52 = contextCopy;
  if (!parentGroup)
  {
    goto LABEL_25;
  }

  v12 = parentGroup;
  menu = [(SCATModernMenuSheet *)self menu];
  exitActionElement = [menu exitActionElement];
  v15 = exitActionElement;
  if (v51 == exitActionElement)
  {

LABEL_25:
    if ([v51 isGroup])
    {
      menuItems2 = v51;
    }

    else
    {
      menuItems2 = 0;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    menuItems = [(SCATModernMenuSheet *)self menuItems];
    v33 = [menuItems countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (!v33)
    {
LABEL_58:

      contextCopy = v52;
      goto LABEL_59;
    }

    v34 = v33;
    v35 = *v60;
    v36 = switchControlScanningStyle != 2 || v10;
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
        objc_enumerationMutation(menuItems);
      }

      v40 = *(*(&v59 + 1) + 8 * v39);
      if (([v40 isDisabled] & 1) == 0)
      {
        if (v40 == menuItem)
        {
          v41 = 2;
          goto LABEL_49;
        }

        if (menuItem)
        {
          scatElement = [menuItem scatElement];
          parentGroup2 = [scatElement parentGroup];
          if (!parentGroup2)
          {
            scatElement2 = [v40 scatElement];
            parentGroup3 = [scatElement2 parentGroup];

            if (parentGroup3)
            {
              v41 = 3;
            }

            else
            {
              v41 = 4;
            }

            if (!parentGroup3 || !menuItems2)
            {
              goto LABEL_49;
            }

LABEL_45:
            scatElement3 = [v40 scatElement];
            parentGroup4 = [scatElement3 parentGroup];
            v46 = [parentGroup4 isEqual:menuItems2];

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

        if (menuItems2)
        {
          goto LABEL_45;
        }
      }

      v41 = 3;
LABEL_49:
      [v40 setStyle:v41];
      if (v34 == ++v39)
      {
        v49 = [menuItems countByEnumeratingWithState:&v59 objects:v64 count:16];
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
  selfCopy = self;
  v16 = v10;
  v18 = v17 = switchControlScanningStyle;
  menuVisualProvider = [v18 menuVisualProvider];
  v20 = [menuVisualProvider isElementTopLevelInMenu:v51];

  switchControlScanningStyle = v17;
  v10 = v16;
  self = selfCopy;

  if (v20)
  {
    goto LABEL_25;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  menuItems2 = [(SCATModernMenuSheet *)selfCopy menuItems];
  v22 = [menuItems2 countByEnumeratingWithState:&v55 objects:v63 count:16];
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
          objc_enumerationMutation(menuItems2);
        }

        v26 = *(*(&v55 + 1) + 8 * i);
        if (!menuItem)
        {
          v50 = contextCopy;
          _AXAssert();
        }

        if ([v26 isDisabled])
        {
          v27 = 3;
        }

        else if (v26 == menuItem)
        {
          v27 = 2;
        }

        else
        {
          scatElement4 = [menuItem scatElement];
          parentGroup5 = [scatElement4 parentGroup];
          scatElement5 = [v26 scatElement];
          parentGroup6 = [scatElement5 parentGroup];

          contextCopy = v52;
          if (parentGroup5 == parentGroup6)
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

      v23 = [menuItems2 countByEnumeratingWithState:&v55 objects:v63 count:16];
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
  assistiveTouchScannerMenuLabelsEnabled = [v2 assistiveTouchScannerMenuLabelsEnabled];

  return assistiveTouchScannerMenuLabelsEnabled;
}

@end