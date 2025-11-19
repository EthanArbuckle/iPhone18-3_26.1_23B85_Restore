@interface InAppPaymentSceneDelegate
- (InAppPaymentSceneDelegate)init;
- (void)_dismissWithReason:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidEnterBackground:(id)a3;
@end

@implementation InAppPaymentSceneDelegate

- (InAppPaymentSceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = InAppPaymentSceneDelegate;
  return [(InAppPaymentSceneDelegate *)&v3 init];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v8;
    v11 = [v10 userActivities];
    v26 = [v11 pk_anyObjectPassingTest:&stru_10000C560];

    v27 = [v26 userInfo];
    v12 = objc_opt_class();
    v13 = [v27 objectForKey:@"context"];
    v14 = [NSKeyedUnarchiver unarchivedObjectOfClass:v12 fromData:v13 error:0];

    v15 = [v14 sceneIdentifier];
    v16 = [v14 sceneBundleIdentifier];
    if ([v16 length])
    {
      v25 = v16;
    }

    else
    {
      v25 = [v14 bundleIdentifier];
    }

    if ([v15 length] && objc_msgSend(v25, "length"))
    {
      objc_initWeak(location, self);
      objc_initWeak(&from, v9);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100004F44;
      v37[3] = &unk_10000C430;
      objc_copyWeak(&v38, location);
      objc_copyWeak(&v39, &from);
      v17 = objc_retainBlock(v37);
      v18 = +[UIApplication sharedApplication];
      val = [v18 delegate];

      objc_initWeak(&v36, val);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100005108;
      v28[3] = &unk_10000C5B0;
      objc_copyWeak(&v33, location);
      v29 = v27;
      v19 = v17;
      v32 = v19;
      v30 = v24;
      v31 = v15;
      objc_copyWeak(&v34, &v36);
      objc_copyWeak(&v35, &from);
      v20 = objc_retainBlock(v28);
      (v20[2])(v20, 0);

      objc_destroyWeak(&v35);
      objc_destroyWeak(&v34);

      objc_destroyWeak(&v33);
      objc_destroyWeak(&v36);

      objc_destroyWeak(&v39);
      objc_destroyWeak(&v38);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }

    else
    {
      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138412546;
        *&location[4] = v15;
        v44 = 2112;
        v45 = v25;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Destroying in-app payment scene due to missing hostSceneIdentifier %@ or hostBundleIdentifier %@", location, 0x16u);
      }

      v22 = +[UIApplication sharedApplication];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100004E80;
      v41[3] = &unk_10000C408;
      v42 = v9;
      [v22 requestSceneSessionDestruction:v42 options:0 errorHandler:v41];
    }
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(InAppPaymentSceneDelegate *)self _dismissWithReason:@"scene did enter background"];
  }
}

- (void)_dismissWithReason:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    inAppPaymentViewController = self->_inAppPaymentViewController;
    v8 = 134349314;
    v9 = inAppPaymentViewController;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationRemoteAlertViewController (%{public}p): Dismissing with reason: %@", &v8, 0x16u);
  }

  [(PKPaymentAuthorizationRemoteAlertViewController *)self->_inAppPaymentViewController dismissWithReason:1 completion:0];
  hostSceneIdentifier = self->_hostSceneIdentifier;
  self->_hostSceneIdentifier = 0;
}

@end