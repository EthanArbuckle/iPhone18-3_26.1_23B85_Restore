@interface PassbookUISSApplicationDelegate
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
- (void)inAppPaymentInterfaceWillPresentWithSceneSession:(id)a3;
@end

@implementation PassbookUISSApplicationDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [a5 userActivities];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    v11 = PKPassbookUISSUserActivityTypeInAppPayment;
    v12 = PKPassbookUISSUserActivityTypePeerPaymentRegistration;
    v13 = @"InAppPaymentConfiguration";
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v15 = [*(*(&v22 + 1) + 8 * v14) activityType];
      if ([v15 isEqualToString:v11])
      {
        break;
      }

      if ([v15 isEqualToString:v12])
      {
        v13 = @"PeerPaymentRegistrationConfiguration";
        break;
      }

      if (v9 == ++v14)
      {
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v16 = [UISceneConfiguration alloc];
    v17 = [v6 role];
    v18 = [v16 initWithName:v13 sessionRole:v17];

    if (v18)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_10:
  }

  v19 = [UISceneConfiguration alloc];
  v20 = [v6 role];
  v18 = [v19 initWithName:@"Default Configuration" sessionRole:v20];

LABEL_14:

  return v18;
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_inAppSceneSession);
  if (WeakRetained && [v6 containsObject:WeakRetained])
  {
    objc_storeWeak(&self->_inAppSceneSession, 0);

    WeakRetained = 0;
  }
}

- (void)inAppPaymentInterfaceWillPresentWithSceneSession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_inAppSceneSession);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained == v4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = +[UIApplication sharedApplication];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000037D4;
    v9[3] = &unk_10000C408;
    v10 = v6;
    [v8 requestSceneSessionDestruction:v10 options:0 errorHandler:v9];
  }

  objc_storeWeak(&self->_inAppSceneSession, v4);
}

@end