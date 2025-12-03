@interface ShareUserLocationActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation ShareUserLocationActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  contextCopy = context;
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    chrome = [contextCopy chrome];
    mapView = [chrome mapView];
    if ([mapView isUserLocationVisible])
    {
      chrome2 = [contextCopy chrome];
      userLocationView = [chrome2 userLocationView];
    }

    else
    {
      userLocationView = 0;
    }

    appCoordinator = [contextCopy appCoordinator];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100903914;
    v22[3] = &unk_10162E490;
    v13 = userLocationView;
    v23 = v13;
    v14 = appCoordinator;
    v24 = v14;
    v15 = objc_retainBlock(v22);
    v16 = +[MKLocationManager sharedLocationManager];
    isAuthorizedForPreciseLocation = [v16 isAuthorizedForPreciseLocation];

    if (isAuthorizedForPreciseLocation)
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