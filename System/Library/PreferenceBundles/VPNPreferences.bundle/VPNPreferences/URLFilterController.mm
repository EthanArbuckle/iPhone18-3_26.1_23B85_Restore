@interface URLFilterController
- (URLFilterController)init;
- (id)getURLFilterState:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)setURLFilterState:(id)a3 forSpecifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)urlFilterStatusChanged:(id)a3;
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

- (void)urlFilterStatusChanged:(id)a3
{
  v4 = a3;
  v5 = [(URLFilterController *)self currentConnection];
  v6 = [v4 object];
  if ([v5 isEqual:v6])
  {
    v16 = v6;
    v17 = v4;
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
          v14 = [v5 statusText];
          v15 = [v13 detailTextLabel];
          [v15 setText:v14];

          [(URLFilterController *)self reloadSpecifier:v12 animated:0];
        }

        v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    [(URLFilterController *)self endUpdates];
    v6 = v16;
    v4 = v17;
  }
}

- (void)setURLFilterState:(id)a3 forSpecifier:(id)a4
{
  v6 = a4;
  -[URLFilterController setURLFilterActive:specifier:](self, "setURLFilterActive:specifier:", [a3 BOOLValue], v6);
}

- (id)getURLFilterState:(id)a3
{
  v4 = [(URLFilterController *)self currentConnection];

  if (v4)
  {
    v5 = [(URLFilterController *)self currentConnection];
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 notDisconnectedOrDisconnecting]);
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
  v10 = [(URLFilterController *)self systemSpecifiers];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"URL_FILTER_GROUP_TITLE" value:&stru_411E8 table:@"MobileVPN"];
    v14 = [PSSpecifier groupSpecifierWithName:v13];
    [v4 addObject:v14];

    v15 = [(URLFilterController *)self systemSpecifiers];
    [v4 addObjectsFromArray:v15];
  }

  v16 = OBJC_IVAR___PSListController__specifiers;
  v17 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v4;
  v18 = v4;

  v19 = *&self->PSListController_opaque[v16];
  v20 = v19;

  return v19;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v4.receiver = self;
  v4.super_class = URLFilterController;
  [(URLFilterController *)&v4 tableView:a3 didSelectRowAtIndexPath:a4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = URLFilterController;
  v6 = a4;
  v7 = [(URLFilterController *)&v18 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(URLFilterController *)self indexForIndexPath:v6, v18.receiver, v18.super_class];

  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 userInfo];
  v11 = [(URLFilterController *)self currentConnection];

  if (v11)
  {
    v12 = [(URLFilterController *)self currentConnection];
    v13 = [v12 statusText];
    v14 = [v7 detailTextLabel];
    [v14 setText:v13];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v10 objectForKey:@"vpn-organization"];
    [v7 setSubtitle:v15];
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = [v10 objectForKey:@"vpn-status"];
    [v7 setVpnPrimaryTableCellStatus:v16];
  }

  return v7;
}

@end