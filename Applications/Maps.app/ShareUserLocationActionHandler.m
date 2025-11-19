@interface ShareUserLocationActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation ShareUserLocationActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 chrome];
    v9 = [v8 mapView];
    if ([v9 isUserLocationVisible])
    {
      v10 = [v5 chrome];
      v11 = [v10 userLocationView];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v5 appCoordinator];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100903914;
    v22[3] = &unk_10162E490;
    v13 = v11;
    v23 = v13;
    v14 = v12;
    v24 = v14;
    v15 = objc_retainBlock(v22);
    v16 = +[MKLocationManager sharedLocationManager];
    v17 = [v16 isAuthorizedForPreciseLocation];

    if (v17)
    {
      (v15[2])(v15, 0);
    }

    else
    {
      v18 = +[MKMapService sharedService];
      [v18 captureUserAction:56 onTarget:690 eventValue:0];

      v19 = +[MKLocationManager sharedLocationManager];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10090399C;
      v20[3] = &unk_1016610B8;
      v21 = v15;
      [v19 requestTemporaryPreciseLocationAuthorizationWithPurposeKey:@"AppInfoTemporaryPreciseLocationAuthorizationForShareLocationPurposeKey" completion:v20];
    }
  }
}

@end