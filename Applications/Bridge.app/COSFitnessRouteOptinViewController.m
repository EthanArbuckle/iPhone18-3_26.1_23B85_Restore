@interface COSFitnessRouteOptinViewController
+ (BOOL)controllerNeedsToRun;
- (COSFitnessRouteOptinViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)detailTitleString;
- (id)imageResource;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)selectedOptinChoice:(BOOL)a3;
@end

@implementation COSFitnessRouteOptinViewController

+ (BOOL)controllerNeedsToRun
{
  v3 = [UIApp activeWatch];
  v4 = [[NSUUID alloc] initWithUUIDString:@"7664BE48-77C3-48E5-BEE7-7EB383BA163C"];
  v5 = [v3 supportsCapability:v4];

  if (!v5)
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = a1;
      v9 = "Skipping (%@); Paired Watch does not have capability";
      goto LABEL_7;
    }

LABEL_8:

    v10 = 0;
    goto LABEL_15;
  }

  v6 = [v3 valueForProperty:NRDevicePropertyGreenTeaDevice];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = a1;
      v9 = "Skipping (%@); Not supported for Watch region";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v21, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v11 = +[COSLocationOptinViewController locationServicesEnabled];
  v12 = +[COSLocationOptinViewController locationRestricted];
  if (v11)
  {
    v13 = sub_1000E1E58();
    v14 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/AppleWatchWorkout.bundle"];
    LODWORD(v13) = [v13 authorizationStatusForBundle:v14];

    v15 = v13 != 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = pbb_bridge_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [NSNumber numberWithBool:v11];
    v18 = [NSNumber numberWithBool:v12];
    v19 = [NSNumber numberWithBool:v15];
    v21 = 138412802;
    v22 = v17;
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "locationServicesEnabledOnPhone: %@, locationServicesIsRestricted: %@, needsUpSell: %@", &v21, 0x20u);
  }

  v10 = !v12 && v11 && v15;
LABEL_15:

  return v10;
}

- (COSFitnessRouteOptinViewController)init
{
  v5.receiver = self;
  v5.super_class = COSFitnessRouteOptinViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSFitnessRouteOptinViewController *)v2 setStyle:74];
  }

  return v3;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ROUTE_GPS_TITLE" value:&stru_10026E598 table:@"BrooklynLocalizable-n75"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ROUTE_GPS_DETAIL" value:&stru_10026E598 table:@"BrooklynLocalizable-n75"];

  return v3;
}

- (id)imageResource
{
  v2 = [UIApp activeWatch];
  v3 = sub_100059F28(v2);

  return v3;
}

- (void)selectedOptinChoice:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1000E1E58();
  if (v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  v7 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/AppleWatchWorkout.bundle"];
  [v5 setAuthorizationStatusByType:v6 forBundle:v7];

  v8 = [(COSFitnessRouteOptinViewController *)self delegate];
  [v8 buddyControllerDone:self];
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ROUTE_GPS_ACCEPT" value:&stru_10026E598 table:@"BrooklynLocalizable-n75"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ROUTE_GPS_DECLINE" value:&stru_10026E598 table:@"BrooklynLocalizable-n75"];

  return v3;
}

- (id)detailTitleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"WHAT_IS_ROUTE_GPS" value:&stru_10026E598 table:@"BrooklynLocalizable-n75"];

  return v3;
}

@end