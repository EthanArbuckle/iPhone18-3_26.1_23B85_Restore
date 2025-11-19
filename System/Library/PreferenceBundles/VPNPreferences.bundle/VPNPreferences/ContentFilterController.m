@interface ContentFilterController
- (ContentFilterController)init;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ContentFilterController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:off_49D50 object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"VPNNEConfigurationChangedNotification" object:0];

  v5.receiver = self;
  v5.super_class = ContentFilterController;
  [(ContentFilterController *)&v5 dealloc];
}

- (ContentFilterController)init
{
  v6.receiver = self;
  v6.super_class = ContentFilterController;
  v2 = [(ContentFilterController *)&v6 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"someStatusChanged:" name:off_49D50 object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"someConfigurationChanged:" name:@"VPNNEConfigurationChangedNotification" object:0];
  }

  return v2;
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  [(ContentFilterController *)self setPerAppSpecifiers:v3];

  v4 = objc_alloc_init(NSMutableArray);
  [(ContentFilterController *)self setSystemSpecifiers:v4];

  v5 = objc_alloc_init(NSMutableArray);
  v6 = +[VPNConnectionStore sharedInstance];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_2716C;
  v29[3] = &unk_41070;
  v29[4] = self;
  [v6 iterateContentFilterServicesWithBlock:v29];

  v7 = +[PSSpecifier emptyGroupSpecifier];
  v30 = PSFooterTextGroupKey;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CONTENT_FILTER_FOOTER" value:&stru_411E8 table:@"MobileVPN"];
  v31 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [v7 setProperties:v10];

  [v5 addObject:v7];
  v11 = [(ContentFilterController *)self perAppSpecifiers];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"APP_CONTENT_FILTER_GROUP_TITLE" value:&stru_411E8 table:@"MobileVPN"];
    v15 = [PSSpecifier groupSpecifierWithName:v14];
    [v5 addObject:v15];

    v16 = [(ContentFilterController *)self perAppSpecifiers];
    [v5 addObjectsFromArray:v16];
  }

  v17 = [(ContentFilterController *)self systemSpecifiers];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CONTENT_FILTER_GROUP_TITLE" value:&stru_411E8 table:@"MobileVPN"];
    v21 = [PSSpecifier groupSpecifierWithName:v20];
    [v5 addObject:v21];

    v22 = [(ContentFilterController *)self systemSpecifiers];
    [v5 addObjectsFromArray:v22];
  }

  v23 = OBJC_IVAR___PSListController__specifiers;
  v24 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v5;
  v25 = v5;

  v26 = *&self->PSListController_opaque[v23];
  v27 = v26;

  return v26;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v4.receiver = self;
  v4.super_class = ContentFilterController;
  [(ContentFilterController *)&v4 tableView:a3 didSelectRowAtIndexPath:a4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = ContentFilterController;
  v6 = a4;
  v7 = [(ContentFilterController *)&v14 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(ContentFilterController *)self indexForIndexPath:v6, v14.receiver, v14.super_class];

  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 userInfo];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 objectForKey:@"vpn-organization"];
    [v7 setSubtitle:v11];
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v10 objectForKey:@"vpn-status"];
    [v7 setVpnPrimaryTableCellStatus:v12];
  }

  return v7;
}

@end