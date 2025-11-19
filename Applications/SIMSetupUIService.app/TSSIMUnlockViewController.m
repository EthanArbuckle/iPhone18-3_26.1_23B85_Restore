@interface TSSIMUnlockViewController
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (TSSIMUnlockViewController)init;
- (id)_presentedUnlockViewController;
- (unint64_t)_indexForSubscriptionContextWithUUID:(id)a3;
- (unint64_t)_numberOfLockedSubscriptionContexts;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applySubscriptionContext:(id)a3 withSubscriptionAction:(id)a4;
- (void)_deactivate;
- (void)_dismissUnlockViewControllerAndDeactivate;
- (void)_presentUnlockViewController;
- (void)_queue_processSubscriptionContext:(id)a3 withSubscriptionSIMStatus:(id)a4;
- (void)carrierBundleChange:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)phoneNumberChanged:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)screenLockDidUpdate:(BOOL)a3;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
- (void)unlockDetailViewController:(id)a3 didCompleteWithResult:(int64_t)a4;
- (void)unlockListViewControllerDidComplete:(id)a3;
- (void)viewDidLoad;
@end

@implementation TSSIMUnlockViewController

- (TSSIMUnlockViewController)init
{
  v12.receiver = self;
  v12.super_class = TSSIMUnlockViewController;
  v2 = [(TSSIMUnlockViewController *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    subscriptionContexts = v2->_subscriptionContexts;
    v2->_subscriptionContexts = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    subscriptionActions = v2->_subscriptionActions;
    v2->_subscriptionActions = v5;

    v7 = [[CoreTelephonyClient alloc] initWithQueue:0];
    telephonyClient = v2->_telephonyClient;
    v2->_telephonyClient = v7;

    [(CoreTelephonyClient *)v2->_telephonyClient setDelegate:v2];
    v9 = [[TSScreenLockObserver alloc] initWithDelegate:v2];
    screenLockObserver = v2->_screenLockObserver;
    v2->_screenLockObserver = v9;
  }

  return v2;
}

- (void)viewDidLoad
{
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(TSSIMUnlockViewController *)self navigationController];
  v5 = [v4 view];
  [v5 setBackgroundColor:v3];

  v8.receiver = self;
  v8.super_class = TSSIMUnlockViewController;
  [(TSSIMUnlockViewController *)&v8 viewDidLoad];
  v6 = +[UINavigationBar appearance];
  [v6 _setHidesShadow:1];

  if ((+[TSUtilities isSolariumEnabled]& 1) == 0)
  {
    v7 = +[UINavigationBar appearance];
    [v7 setTranslucent:0];
  }

  [(TSScreenLockObserver *)self->_screenLockObserver registerForLockNotifications];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (+[SSServiceUtilities isPad])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (BOOL)canResignFirstResponder
{
  v2 = [(TSSIMUnlockViewController *)self _presentedUnlockViewController];
  v3 = [v2 canResignFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = [(TSSIMUnlockViewController *)self _presentedUnlockViewController];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(TSSIMUnlockViewController *)self _presentedUnlockViewController];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
}

- (BOOL)becomeFirstResponder
{
  v2 = [(TSSIMUnlockViewController *)self _presentedUnlockViewController];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)isFirstResponder
{
  v2 = [(TSSIMUnlockViewController *)self _presentedUnlockViewController];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TSSIMUnlockViewController *)self _remoteViewControllerProxy];
  [v8 setWallpaperTunnelActive:0];
  [v8 setWallpaperStyle:1 withDuration:0.0];
  [v8 setDesiredHardwareButtonEvents:16];
  [v8 setAllowsMenuButtonDismissal:0];
  [v8 setAllowsAlertStacking:1];
  v9 = [v7 userInfo];

  v10 = sub_10000C1BC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v9;
    v15 = 2080;
    v16 = "[TSSIMUnlockViewController configureWithContext:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User info: %@ @%s", &v13, 0x16u);
  }

  if (v9)
  {
    v11 = [v9 objectForKey:kCTSubscriberUnlockPromptReasonKey];
    v12 = [v9 objectForKey:kCTSubscriberSuppressUnlockCancellationKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_userSelectedSlot = [v11 integerValue];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_suppressCancellation = [v12 BOOLValue];
    }
  }

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = dispatch_group_create();
  subscriptionInfoAndDidAppearGroup = self->_subscriptionInfoAndDidAppearGroup;
  self->_subscriptionInfoAndDidAppearGroup = v8;

  dispatch_group_enter(self->_subscriptionInfoAndDidAppearGroup);
  dispatch_group_enter(self->_subscriptionInfoAndDidAppearGroup);
  v10 = self->_subscriptionInfoAndDidAppearGroup;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003FB8;
  block[3] = &unk_10001C698;
  objc_copyWeak(&v15, &location);
  dispatch_group_notify(v10, &_dispatch_main_q, block);
  telephonyClient = self->_telephonyClient;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003FFC;
  v12[3] = &unk_10001C750;
  objc_copyWeak(&v13, &location);
  [(CoreTelephonyClient *)telephonyClient getSubscriptionInfo:v12];
  if (v7)
  {
    v7[2](v7);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)handleButtonActions:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000420C;
  v3[3] = &unk_10001C778;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

- (void)unlockListViewControllerDidComplete:(id)a3
{
  v4 = sub_10000C1BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TSSIMUnlockViewController unlockListViewControllerDidComplete:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " @%s", &v5, 0xCu);
  }

  [(TSSIMUnlockViewController *)self _dismissUnlockViewControllerAndDeactivate];
}

- (void)unlockDetailViewController:(id)a3 didCompleteWithResult:(int64_t)a4
{
  v6 = a3;
  v7 = sub_10000C1BC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v10 = a4;
    v11 = 2080;
    v12 = "[TSSIMUnlockViewController unlockDetailViewController:didCompleteWithResult:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "result %ld @%s", buf, 0x16u);
  }

  if (a4 < 3)
  {
    goto LABEL_6;
  }

  if (a4 == 3)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000446C;
    v8[3] = &unk_10001C7A0;
    v8[4] = self;
    [(TSSIMUnlockViewController *)self dismissViewControllerAnimated:1 completion:v8];
    goto LABEL_7;
  }

  if (a4 == 6)
  {
LABEL_6:
    [v6 resignFirstResponder];
    [(TSSIMUnlockViewController *)self _dismissUnlockViewControllerAndDeactivate];
  }

LABEL_7:
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000C1BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [v6 slotID];
    v9 = 136315650;
    v10 = CTSubscriptionSlotAsString();
    v11 = 2112;
    v12 = v7;
    v13 = 2080;
    v14 = "[TSSIMUnlockViewController simStatusDidChange:status:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "context %s, status %@ @%s", &v9, 0x20u);
  }

  [(TSSIMUnlockViewController *)self _queue_processSubscriptionContext:v6 withSubscriptionSIMStatus:v7];
}

- (void)carrierBundleChange:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  if ([(TSSIMUnlockViewController *)self _indexForSubscriptionContextWithUUID:v5]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = sub_10000C1BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000EF08(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v6 = [[CTBundle alloc] initWithBundleType:1];
    v14 = [(CoreTelephonyClient *)self->_telephonyClient copyCarrierBundleValue:v4 key:@"CarrierName" bundleType:v6 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_initWeak(&location, self);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100004744;
      block[3] = &unk_10001C7C8;
      objc_copyWeak(&v27, &location);
      v24 = v5;
      v25 = v14;
      v26 = v4;
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    else
    {
      v15 = sub_10000C1BC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10000EE90(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }
}

- (void)phoneNumberChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  if ([(TSSIMUnlockViewController *)self _indexForSubscriptionContextWithUUID:v5]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = sub_10000C1BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000EFF8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v6 = [(CoreTelephonyClient *)self->_telephonyClient getPhoneNumber:v4 error:0];
    v14 = [v6 number];
    if (v14)
    {
      objc_initWeak(&location, self);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100004A38;
      block[3] = &unk_10001C7C8;
      objc_copyWeak(&v27, &location);
      v24 = v5;
      v25 = v14;
      v26 = v4;
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    else
    {
      v15 = sub_10000C1BC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10000EF80(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }
  }
}

- (void)screenLockDidUpdate:(BOOL)a3
{
  if (a3)
  {
    v4 = sub_10000C1BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[TSSIMUnlockViewController screenLockDidUpdate:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " @%s", &v5, 0xCu);
    }

    [(TSSIMUnlockViewController *)self _dismissUnlockViewControllerAndDeactivate];
  }
}

- (void)_queue_processSubscriptionContext:(id)a3 withSubscriptionSIMStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000C1BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F070(v6, v7, v8);
  }

  if (([v7 isEqualToString:kCTSIMSupportSIMStatusNotReady] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", kCTSIMSupportSIMStatusInserted) & 1) == 0)
  {
    v9 = [TSSubscriptionAction subscriptionActionForSubscriptionSIMStatus:v7];
    if (v9)
    {
      v10 = [[CTBundle alloc] initWithBundleType:1];
      v11 = [(CoreTelephonyClient *)self->_telephonyClient copyCarrierBundleValue:v6 key:@"CarrierName" bundleType:v10 error:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 setCarrierName:v11];
      }

      v12 = [(CoreTelephonyClient *)self->_telephonyClient getPhoneNumber:v6 error:0];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 number];

        if (v14)
        {
          v15 = [v13 displayPhoneNumber];
          [v9 setPhoneNumber:v15];
        }
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004E60;
    block[3] = &unk_10001C7F0;
    block[4] = self;
    v18 = v6;
    v19 = v9;
    v16 = v9;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_applySubscriptionContext:(id)a3 withSubscriptionAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000C1BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v7;
    v16 = 2080;
    v17 = "[TSSIMUnlockViewController _applySubscriptionContext:withSubscriptionAction:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ @%s", &v14, 0x16u);
  }

  v9 = [v6 uuid];
  v10 = [(TSSIMUnlockViewController *)self _indexForSubscriptionContextWithUUID:v9];
  v11 = [(TSSIMUnlockViewController *)self _presentedUnlockViewController];
  if (v7 && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(NSMutableArray *)self->_subscriptionContexts indexOfObject:v6 inSortedRange:0 options:[(NSMutableArray *)self->_subscriptionContexts count] usingComparator:1024, &stru_10001C728];
    [(NSMutableArray *)self->_subscriptionContexts insertObject:v6 atIndex:v12];
    [(NSMutableDictionary *)self->_subscriptionActions setObject:v7 forKeyedSubscript:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 addSubscriptionContext:v6 withSubscriptionAction:v7 atIndex:v12];
    }
  }

  else if (!v7 || v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v7 && v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_subscriptionContexts removeObjectAtIndex:v10];
      [(NSMutableDictionary *)self->_subscriptionActions setObject:0 forKeyedSubscript:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 removeSubscriptionContextAtIndex:v10];
      }
    }
  }

  else
  {
    [(NSMutableArray *)self->_subscriptionContexts replaceObjectAtIndex:v10 withObject:v6];
    [(NSMutableDictionary *)self->_subscriptionActions setObject:v7 forKeyedSubscript:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 updateSubscriptionContext:v6 withSubscriptionAction:v7 atIndex:v10];
    }
  }

  v13 = [(TSSIMUnlockViewController *)self _numberOfLockedSubscriptionContexts];
  if (!v11 || v13)
  {
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    [(TSSIMUnlockViewController *)self _dismissUnlockViewControllerAndDeactivate];
  }

  if (![(NSMutableArray *)self->_subscriptionContexts count])
  {
    [(TSSIMUnlockViewController *)self _dismissUnlockViewControllerAndDeactivate];
  }

LABEL_21:
}

- (unint64_t)_numberOfLockedSubscriptionContexts
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMutableDictionary *)self->_subscriptionActions allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(*(&v9 + 1) + 8 * i) actionType] & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          ++v5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_presentUnlockViewController
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = sub_10000C1BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[TSSIMUnlockViewController _presentUnlockViewController]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, " @%s", &v13, 0xCu);
  }

  if (SBSGetScreenLockStatus())
  {
    v4 = sub_10000C1BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[TSSIMUnlockViewController _presentUnlockViewController]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "coversheet active, not initializing @%s", &v13, 0xCu);
    }

    [(TSSIMUnlockViewController *)self _deactivate];
    return;
  }

  v5 = [(TSSIMUnlockViewController *)self presentedViewController];

  if (v5)
  {
    return;
  }

  v6 = [(NSMutableArray *)self->_subscriptionContexts count];
  v7 = sub_10000C1BC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218242;
    v14 = v6;
    v15 = 2080;
    v16 = "[TSSIMUnlockViewController _presentUnlockViewController]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Number of subscription contexts %lu @%s", &v13, 0x16u);
  }

  if (v6 > 1 || +[TSUtilities inBuddy])
  {
    v8 = [[TSSIMUnlockListViewController alloc] initWithSubscriptionContexts:self->_subscriptionContexts subscriptionActions:self->_subscriptionActions suppressCancellation:self->_suppressCancellation delegate:self];
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_19:
    [(TSSIMUnlockViewController *)self _dismissUnlockViewControllerAndDeactivate];
    return;
  }

  if (v6 != 1)
  {
    goto LABEL_19;
  }

  v10 = [(NSMutableArray *)self->_subscriptionContexts firstObject];
  v11 = [v10 uuid];
  v12 = [(NSMutableDictionary *)self->_subscriptionActions objectForKeyedSubscript:v11];
  v8 = [[TSSIMUnlockDetailViewController alloc] initWithSubscriptionContext:v10 subscriptionAction:v12 suppressCancellation:self->_suppressCancellation delegate:self];

  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_13:
  v9 = [[UINavigationController alloc] initWithRootViewController:v8];
  [v9 setModalPresentationStyle:0];
  if (+[SSServiceUtilities isPad])
  {
    [v9 setPreferredContentSize:{320.0, 480.0}];
  }

  else
  {
    [v9 setModalTransitionStyle:0];
  }

  [(TSSIMUnlockViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_dismissUnlockViewControllerAndDeactivate
{
  v3 = sub_10000C1BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[TSSIMUnlockViewController _dismissUnlockViewControllerAndDeactivate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, " @%s", buf, 0xCu);
  }

  [(TSScreenLockObserver *)self->_screenLockObserver unregisterFromLockNotifications];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000057CC;
  v4[3] = &unk_10001C7A0;
  v4[4] = self;
  [(TSSIMUnlockViewController *)self dismissViewControllerAnimated:1 completion:v4];
}

- (void)_deactivate
{
  v3 = sub_10000C1BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000F124(v3);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000058BC;
  block[3] = &unk_10001C7A0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (unint64_t)_indexForSubscriptionContextWithUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  subscriptionContexts = self->_subscriptionContexts;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005A00;
  v9[3] = &unk_10001C818;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)subscriptionContexts enumerateObjectsUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (id)_presentedUnlockViewController
{
  v2 = [(TSSIMUnlockViewController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 viewControllers];
    v4 = [v3 firstObject];

    v2 = v4;
  }

  return v2;
}

@end