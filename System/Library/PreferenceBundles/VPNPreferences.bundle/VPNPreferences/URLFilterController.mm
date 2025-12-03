@interface URLFilterController
- (URLFilterController)init;
- (id)getURLFilterState:(id)state;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)setURLFilterState:(id)state forSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)urlFilterStatusChanged:(id)changed;
@end

@implementation URLFilterController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:off_49D50 object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"VPNNEConfigurationChangedNotification" object:0];

  v5.receiver = self;
  v5.super_class = URLFilterController;
  [(URLFilterController *)&v5 dealloc];
}

- (URLFilterController)init
{
  v6.receiver = self;
  v6.super_class = URLFilterController;
  v2 = [(URLFilterController *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"someStatusChanged:" name:off_49D50 object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"someConfigurationChanged:" name:@"VPNNEConfigurationChangedNotification" object:0];
  }

  return v2;
}

- (void)urlFilterStatusChanged:(id)changed
{
  changedCopy = changed;
  currentConnection = [(URLFilterController *)self currentConnection];
  object = [changedCopy object];
  if ([currentConnection isEqual:object])
  {
    v16 = object;
    v17 = changedCopy;
    [(URLFilterController *)self beginUpdates];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [(URLFilterController *)self systemSpecifiers];
    v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      v10 = PSTableCellKey;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 propertyForKey:v10];
          statusText = [currentConnection statusText];
          detailTextLabel = [v13 detailTextLabel];
          [detailTextLabel setText:statusText];

          [(URLFilterController *)self reloadSpecifier:v12 animated:0];
        }

        v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    [(URLFilterController *)self endUpdates];
    object = v16;
    changedCopy = v17;
  }
}

- (void)setURLFilterState:(id)state forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  -[URLFilterController setURLFilterActive:specifier:](self, "setURLFilterActive:specifier:", [state BOOLValue], specifierCopy);
}

- (id)getURLFilterState:(id)state
{
  currentConnection = [(URLFilterController *)self currentConnection];

  if (currentConnection)
  {
    currentConnection2 = [(URLFilterController *)self currentConnection];
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [currentConnection2 notDisconnectedOrDisconnecting]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  [(URLFilterController *)self setSystemSpecifiers:v3];

  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[VPNConnectionStore sharedInstance];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1A200;
  v22[3] = &unk_41070;
  v22[4] = self;
  [v5 iterateURLFilterServicesWithBlock:v22];

  v6 = +[PSSpecifier emptyGroupSpecifier];
  v23 = PSFooterTextGroupKey;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"URL_FILTER_FOOTER" value:&stru_411E8 table:@"MobileVPN"];
  v24 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  [v6 setProperties:v9];

  [v4 addObject:v6];
  systemSpecifiers = [(URLFilterController *)self systemSpecifiers];
  v11 = [systemSpecifiers count];

  if (v11)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"URL_FILTER_GROUP_TITLE" value:&stru_411E8 table:@"MobileVPN"];
    v14 = [PSSpecifier groupSpecifierWithName:v13];
    [v4 addObject:v14];

    systemSpecifiers2 = [(URLFilterController *)self systemSpecifiers];
    [v4 addObjectsFromArray:systemSpecifiers2];
  }

  v16 = OBJC_IVAR___PSListController__specifiers;
  v17 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v4;
  v18 = v4;

  v19 = *&self->PSListController_opaque[v16];
  v20 = v19;

  return v19;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v4.receiver = self;
  v4.super_class = URLFilterController;
  [(URLFilterController *)&v4 tableView:view didSelectRowAtIndexPath:path];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = URLFilterController;
  pathCopy = path;
  v7 = [(URLFilterController *)&v18 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(URLFilterController *)self indexForIndexPath:pathCopy, v18.receiver, v18.super_class];

  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  userInfo = [v9 userInfo];
  currentConnection = [(URLFilterController *)self currentConnection];

  if (currentConnection)
  {
    currentConnection2 = [(URLFilterController *)self currentConnection];
    statusText = [currentConnection2 statusText];
    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setText:statusText];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [userInfo objectForKey:@"vpn-organization"];
    [v7 setSubtitle:v15];
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = [userInfo objectForKey:@"vpn-status"];
    [v7 setVpnPrimaryTableCellStatus:v16];
  }

  return v7;
}

@end