@interface MarkUserLocationActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation MarkUserLocationActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  contextCopy = context;
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100F30944;
    v18[3] = &unk_10165D540;
    v19 = contextCopy;
    v8 = objc_retainBlock(v18);
    v9 = +[MKLocationManager sharedLocationManager];
    if ([v9 isAuthorizedForPreciseLocation])
    {
    }

    else
    {
      v10 = +[MKLocationManager sharedLocationManager];
      isLocationServicesApproved = [v10 isLocationServicesApproved];

      if (isLocationServicesApproved)
      {
        v12 = +[MKMapService sharedService];
        [v12 captureUserAction:56 onTarget:691 eventValue:0];

        v13 = +[MKLocationManager sharedLocationManager];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100F30B94;
        v16[3] = &unk_1016610B8;
        v17 = v8;
        [v13 requestTemporaryPreciseLocationAuthorizationWithPurposeKey:@"AppInfoTemporaryPreciseLocationAuthorizationForMarkLocationPurposeKey" completion:v16];

        v14 = v17;
LABEL_7:

        goto LABEL_8;
      }
    }

    v14 = +[MKLocationManager sharedLocationManager];
    lastLocation = [v14 lastLocation];
    (v8[2])(v8, lastLocation);

    goto LABEL_7;
  }

LABEL_8:
}

@end