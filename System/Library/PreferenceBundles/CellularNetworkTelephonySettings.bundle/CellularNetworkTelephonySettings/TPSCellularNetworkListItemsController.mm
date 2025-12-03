@interface TPSCellularNetworkListItemsController
- (NSArray)networkSpecifiers;
- (PSSpecifier)mainSwitchSpecifier;
- (TPSCellularNetworkController)cellularNetworkController;
- (id)mainSwitchOn:(id)on;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view networkItemCellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view networkSelectionModeForRowAtIndexPath:(id)path;
- (int64_t)networkSelectionMode;
- (void)handleTPSCellularNetworkControllerNetworkItemsDidChangeNotification:(id)notification;
- (void)handleTPSCellularNetworkControllerNetworkSelectionModeDidChangeNotification:(id)notification;
- (void)handleTPSCellularNetworkControllerSelectedNetworkItemDidChangeNotification:(id)notification;
- (void)listItemSelected:(id)selected;
- (void)removeNetworkSpecifiers;
- (void)setMainSwitchOn:(id)on specifier:(id)specifier;
@end

@implementation TPSCellularNetworkListItemsController

- (TPSCellularNetworkController)cellularNetworkController
{
  cellularNetworkController = self->_cellularNetworkController;
  if (!cellularNetworkController)
  {
    v4 = [TPSCellularNetworkController alloc];
    subscriptionContext = [(TPSCellularNetworkListItemsController *)self subscriptionContext];
    v6 = [(TPSCellularNetworkController *)v4 initWithSubscriptionContext:subscriptionContext];
    v7 = self->_cellularNetworkController;
    self->_cellularNetworkController = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"handleTPSCellularNetworkControllerNetworkItemsDidChangeNotification:" name:@"TPSCellularNetworkControllerNetworkItemsDidChangeNotification" object:self->_cellularNetworkController];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"handleTPSCellularNetworkControllerNetworkSelectionModeDidChangeNotification:" name:@"TPSCellularNetworkControllerNetworkSelectionModeDidChangeNotification" object:self->_cellularNetworkController];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"handleTPSCellularNetworkControllerSelectedNetworkItemDidChangeNotification:" name:@"TPSCellularNetworkControllerSelectedNetworkItemDidChangeNotification" object:self->_cellularNetworkController];

    cellularNetworkController = self->_cellularNetworkController;
  }

  return cellularNetworkController;
}

- (int64_t)networkSelectionMode
{
  result = self->_networkSelectionMode;
  if (!result)
  {
    cellularNetworkController = [(TPSCellularNetworkListItemsController *)self cellularNetworkController];
    self->_networkSelectionMode = [cellularNetworkController networkSelectionMode];

    return self->_networkSelectionMode;
  }

  return result;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->TPSListItemsController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    mainSwitchSpecifier = [(TPSCellularNetworkListItemsController *)self mainSwitchSpecifier];
    [v5 addObject:mainSwitchSpecifier];

    if ([(TPSCellularNetworkListItemsController *)self networkSelectionMode]== &dword_0 + 2)
    {
      networkSpecifiers = [(TPSCellularNetworkListItemsController *)self networkSpecifiers];
      if (networkSpecifiers)
      {
        [v5 addObjectsFromArray:networkSpecifiers];
      }
    }

    v8 = [v5 copy];
    v9 = *&self->TPSListItemsController_opaque[v3];
    *&self->TPSListItemsController_opaque[v3] = v8;

    v4 = *&self->TPSListItemsController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == &dword_0 + 1)
  {
    v9 = [(TPSCellularNetworkListItemsController *)self tableView:viewCopy networkItemCellForRowAtIndexPath:pathCopy];
    goto LABEL_5;
  }

  if (!section)
  {
    v9 = [(TPSCellularNetworkListItemsController *)self tableView:viewCopy networkSelectionModeForRowAtIndexPath:pathCopy];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)tableView:(id)view networkItemCellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = TPSCellularNetworkListItemsController;
  v7 = [(TPSCellularNetworkListItemsController *)&v14 tableView:view cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cellularNetworkController = [(TPSCellularNetworkListItemsController *)self cellularNetworkController];
    v9 = [cellularNetworkController networkItemAtIndex:{objc_msgSend(pathCopy, "row")}];

    if (v9)
    {
      cellularNetworkController2 = [(TPSCellularNetworkListItemsController *)self cellularNetworkController];
      selectedNetworkItem = [cellularNetworkController2 selectedNetworkItem];
      v12 = [selectedNetworkItem isEqualToCellularNetworkItem:v9];
    }

    else
    {
      v12 = 0;
    }

    [v7 setChecked:v12];
  }

  return v7;
}

- (id)tableView:(id)view networkSelectionModeForRowAtIndexPath:(id)path
{
  v24.receiver = self;
  v24.super_class = TPSCellularNetworkListItemsController;
  v5 = [(TPSCellularNetworkListItemsController *)&v24 tableView:view cellForRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    specifier = [v6 specifier];
    mainSwitchSpecifier = [(TPSCellularNetworkListItemsController *)self mainSwitchSpecifier];

    if (specifier != mainSwitchSpecifier)
    {
LABEL_22:

      goto LABEL_23;
    }

    networkSelectionMode = [(TPSCellularNetworkListItemsController *)self networkSelectionMode];
    if (networkSelectionMode == 2)
    {
      networkSpecifiers = [(TPSCellularNetworkListItemsController *)self networkSpecifiers];

      v10 = TPSCellularNetworkLog();
      v14 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (!networkSpecifiers)
      {
        if (!v14)
        {
LABEL_19:
          v15 = 1;
          goto LABEL_20;
        }

        *v23 = 0;
        v11 = "Displaying the loading indicator; network selection mode is manual but network list is empty.";
LABEL_18:
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v11, v23, 2u);
        goto LABEL_19;
      }

      if (v14)
      {
        *v23 = 0;
        v12 = "Hiding the loading indicator; network selection mode is manual and network list is not empty.";
        goto LABEL_13;
      }
    }

    else
    {
      if (networkSelectionMode != 1)
      {
        if (networkSelectionMode)
        {
          v15 = 0;
LABEL_21:
          v16 = v6;
          [v16 setLoading:v15];
          cellularNetworkController = [(TPSCellularNetworkListItemsController *)self cellularNetworkController];
          isNetworkSelectionEnabled = [cellularNetworkController isNetworkSelectionEnabled];
          control = [v16 control];

          [control setEnabled:isNetworkSelectionEnabled];
          v20 = [specifier propertyForKey:PSControlKey];
          cellularNetworkController2 = [(TPSCellularNetworkListItemsController *)self cellularNetworkController];
          [v20 setEnabled:{objc_msgSend(cellularNetworkController2, "isNetworkSelectionEnabled")}];

          goto LABEL_22;
        }

        v10 = TPSCellularNetworkLog();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *v23 = 0;
        v11 = "Displaying the loading indicator; network selection mode is unknown.";
        goto LABEL_18;
      }

      v10 = TPSCellularNetworkLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        v12 = "Hiding the loading indicator; network selection mode is automatic.";
LABEL_13:
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v12, v23, 2u);
      }
    }

    v15 = 0;
LABEL_20:

    goto LABEL_21;
  }

LABEL_23:

  return v5;
}

- (void)listItemSelected:(id)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = TPSCellularNetworkListItemsController;
  [(TPSCellularNetworkListItemsController *)&v7 listItemSelected:selectedCopy];
  v5 = TPSCellularNetworkLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = selectedCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "List item selected at index path %@", buf, 0xCu);
  }

  if ([selectedCopy section] == &dword_0 + 1)
  {
    cellularNetworkController = [(TPSCellularNetworkListItemsController *)self cellularNetworkController];
    [cellularNetworkController selectNetworkItemAtIndex:{objc_msgSend(selectedCopy, "row")}];
  }
}

- (PSSpecifier)mainSwitchSpecifier
{
  mainSwitchSpecifier = self->_mainSwitchSpecifier;
  if (!mainSwitchSpecifier)
  {
    v4 = [TPSCellularNetworkStrings localizedStringForKey:@"MAIN_SWITCH_SPECIFIER_TITLE"];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setMainSwitchOn:specifier:" get:"mainSwitchOn:" detail:0 cell:6 edit:0];
    v6 = self->_mainSwitchSpecifier;
    self->_mainSwitchSpecifier = v5;

    mainSwitchSpecifier = self->_mainSwitchSpecifier;
  }

  return mainSwitchSpecifier;
}

- (id)mainSwitchOn:(id)on
{
  v3 = [(TPSCellularNetworkListItemsController *)self networkSelectionMode]!= &dword_0 + 2;

  return [NSNumber numberWithBool:v3];
}

- (void)setMainSwitchOn:(id)on specifier:(id)specifier
{
  onCopy = on;
  v6 = PSControlKey;
  specifierCopy = specifier;
  v8 = [specifierCopy propertyForKey:v6];
  [v8 setOn:objc_msgSend(onCopy animated:{"BOOLValue"), 1}];
  v9 = [(TPSCellularNetworkListItemsController *)self cachedCellForSpecifier:specifierCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setLoading:1];
  }

  if ([onCopy BOOLValue])
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  [(TPSCellularNetworkListItemsController *)self setNetworkSelectionMode:v10];
  cellularNetworkController = [(TPSCellularNetworkListItemsController *)self cellularNetworkController];
  [cellularNetworkController selectNetworkSelectionMode:v10];
}

- (NSArray)networkSpecifiers
{
  networkSpecifiers = self->_networkSpecifiers;
  if (!networkSpecifiers)
  {
    cellularNetworkController = [(TPSCellularNetworkListItemsController *)self cellularNetworkController];
    networkItems = [cellularNetworkController networkItems];

    if (networkItems)
    {
      v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [networkItems count] + 1);
      v7 = +[PSSpecifier emptyGroupSpecifier];
      [v6 addObject:v7];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = networkItems;
      v8 = networkItems;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          v12 = 0;
          do
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            localizedName = [*(*(&v19 + 1) + 8 * v12) localizedName];
            v14 = [PSSpecifier preferenceSpecifierNamed:localizedName target:0 set:0 get:0 detail:0 cell:3 edit:0];

            [v6 addObject:v14];
            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v10);
      }

      v15 = [v6 copy];
      v16 = self->_networkSpecifiers;
      self->_networkSpecifiers = v15;

      networkItems = v18;
    }

    networkSpecifiers = self->_networkSpecifiers;
  }

  return networkSpecifiers;
}

- (void)removeNetworkSpecifiers
{
  networkSpecifiers = [(TPSCellularNetworkListItemsController *)self networkSpecifiers];
  v4 = networkSpecifiers;
  if (networkSpecifiers)
  {
    v5 = networkSpecifiers;
    [(TPSCellularNetworkListItemsController *)self removeContiguousSpecifiers:networkSpecifiers];
    networkSpecifiers = [(TPSCellularNetworkListItemsController *)self setNetworkSpecifiers:0];
    v4 = v5;
  }

  _objc_release_x1(networkSpecifiers, v4);
}

- (void)handleTPSCellularNetworkControllerNetworkItemsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = TPSCellularNetworkLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2112;
    v10 = notificationCopy;
    v6 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@.", &v7, 0x16u);
  }

  [(TPSCellularNetworkListItemsController *)self setNetworkSpecifiers:0];
  [(TPSCellularNetworkListItemsController *)self reloadSpecifiers];
}

- (void)handleTPSCellularNetworkControllerNetworkSelectionModeDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = TPSCellularNetworkLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = notificationCopy;
    v6 = v10;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@.", &v9, 0x16u);
  }

  cellularNetworkController = [(TPSCellularNetworkListItemsController *)self cellularNetworkController];
  networkSelectionMode = [cellularNetworkController networkSelectionMode];

  if ([(TPSCellularNetworkListItemsController *)self networkSelectionMode]!= networkSelectionMode)
  {
    [(TPSCellularNetworkListItemsController *)self setNetworkSelectionMode:networkSelectionMode];
    [(TPSCellularNetworkListItemsController *)self reloadSpecifiers];
  }
}

- (void)handleTPSCellularNetworkControllerSelectedNetworkItemDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = TPSCellularNetworkLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2112;
    v10 = notificationCopy;
    v6 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@.", &v7, 0x16u);
  }

  [(TPSCellularNetworkListItemsController *)self reloadSpecifiers];
}

@end