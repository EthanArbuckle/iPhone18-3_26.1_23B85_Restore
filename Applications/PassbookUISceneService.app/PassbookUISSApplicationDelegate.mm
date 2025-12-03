@interface PassbookUISSApplicationDelegate
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)inAppPaymentInterfaceWillPresentWithSceneSession:(id)session;
@end

@implementation PassbookUISSApplicationDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  userActivities = [options userActivities];
  v8 = [userActivities countByEnumeratingWithState:&v22 objects:v26 count:16];
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
        objc_enumerationMutation(userActivities);
      }

      activityType = [*(*(&v22 + 1) + 8 * v14) activityType];
      if ([activityType isEqualToString:v11])
      {
        break;
      }

      if ([activityType isEqualToString:v12])
      {
        v13 = @"PeerPaymentRegistrationConfiguration";
        break;
      }

      if (v9 == ++v14)
      {
        v9 = [userActivities countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v16 = [UISceneConfiguration alloc];
    role = [sessionCopy role];
    v18 = [v16 initWithName:v13 sessionRole:role];

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
  role2 = [sessionCopy role];
  v18 = [v19 initWithName:@"Default Configuration" sessionRole:role2];

LABEL_14:

  return v18;
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  sessionsCopy = sessions;
  WeakRetained = objc_loadWeakRetained(&self->_inAppSceneSession);
  if (WeakRetained && [sessionsCopy containsObject:WeakRetained])
  {
    objc_storeWeak(&self->_inAppSceneSession, 0);

    WeakRetained = 0;
  }
}

- (void)inAppPaymentInterfaceWillPresentWithSceneSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_inAppSceneSession);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained == sessionCopy;
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

  objc_storeWeak(&self->_inAppSceneSession, sessionCopy);
}

@end