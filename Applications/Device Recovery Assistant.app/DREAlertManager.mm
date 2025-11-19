@interface DREAlertManager
+ (id)sharedInstance;
- (BOOL)_isAnyAlertOrModalVisible;
- (DREAlertManager)init;
- (UIViewController)presentedPowerDownVC;
- (id)_findTopViewController:(id)a3;
- (id)_getTopViewController;
- (void)powerDownViewRequestCancel:(id)a3;
- (void)powerDownViewRequestPowerDown:(id)a3;
- (void)showMenuSheetWithOptions:(unint64_t)a3 completion:(id)a4 response:(id)a5;
- (void)showPowerDownWithCompletion:(id)a3 response:(id)a4;
@end

@implementation DREAlertManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000073F0;
  block[3] = &unk_100028880;
  block[4] = a1;
  if (qword_100032150 != -1)
  {
    dispatch_once(&qword_100032150, block);
  }

  v2 = qword_100032148;

  return v2;
}

- (DREAlertManager)init
{
  v3.receiver = self;
  v3.super_class = DREAlertManager;
  result = [(DREAlertManager *)&v3 init];
  if (result)
  {
    *&result->_alertVisible = 0;
  }

  return result;
}

- (id)_findTopViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v6 = [v4 presentedViewController];

  if (v6)
  {
    v7 = [v5 presentedViewController];
LABEL_9:
    v9 = v7;
    v8 = [(DREAlertManager *)self _findTopViewController:v7];

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 visibleViewController];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 selectedViewController];
    goto LABEL_9;
  }

  v8 = v5;
LABEL_10:

  return v8;
}

- (id)_getTopViewController
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 connectedScenes];

  v5 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        if (![v9 activationState])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v9 keyWindow];
            if (v10)
            {
              v12 = v10;
              goto LABEL_25;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = +[UIApplication sharedApplication];
  v12 = [v11 keyWindow];

  if (!v12 || [v12 isHidden])
  {
    v13 = +[UIApplication sharedApplication];
    v14 = [v13 windows];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = v14;
    v15 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      while (2)
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v4);
          }

          v19 = *(*(&v25 + 1) + 8 * j);
          if (([v19 isHidden] & 1) == 0)
          {
            v20 = v19;

            v12 = v20;
            goto LABEL_24;
          }
        }

        v16 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:

LABEL_25:
  }

  v21 = [v12 rootViewController];
  if (v21)
  {
    v22 = [(DREAlertManager *)self _findTopViewController:v21];
  }

  else
  {
    v23 = sub_100012608();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000129B4();
    }

    v22 = 0;
  }

  return v22;
}

- (void)showMenuSheetWithOptions:(unint64_t)a3 completion:(id)a4 response:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if ([(DREAlertManager *)self _isAnyAlertOrModalVisible])
  {
    if (v8)
    {
      v8[2](v8, 0);
    }
  }

  else
  {
    v10 = sub_100012608();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v41 = "[DREAlertManager showMenuSheetWithOptions:completion:response:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Presenting menu sheet…", buf, 0xCu);
    }

    v11 = +[UIDevice currentDevice];
    v12 = [v11 userInterfaceIdiom] == 1;

    v13 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:v12];
    v14 = MSUCopyInstalledRecoveryOSVersion();
    v15 = [v14 length];
    if ((v6 & 4) != 0 && v15)
    {
      v16 = +[NSBundle mainBundle];
      v17 = [v16 localizedStringForKey:@"NEARBY_DEVICE_RECOVERY_MENU" value:&stru_100028E90 table:0];

      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100007D98;
      v38[3] = &unk_1000288A8;
      v38[4] = self;
      v39 = v9;
      v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:v38];
      [v13 addAction:v18];
    }

    if ((v6 & 2) != 0)
    {
      v19 = +[NSBundle mainBundle];
      v20 = [v19 localizedStringForKey:@"RESTART_ALERT_BUTTON" value:&stru_100028E90 table:0];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100007E64;
      v36[3] = &unk_1000288A8;
      v36[4] = self;
      v37 = v9;
      v21 = [UIAlertAction actionWithTitle:v20 style:2 handler:v36];
      [v13 addAction:v21];
    }

    if (v6)
    {
      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"SHUT_DOWN" value:&stru_100028E90 table:0];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100007F30;
      v34[3] = &unk_1000288A8;
      v34[4] = self;
      v35 = v9;
      v24 = [UIAlertAction actionWithTitle:v23 style:0 handler:v34];
      [v13 addAction:v24];
    }

    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_100028E90 table:0];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100007FFC;
    v32[3] = &unk_1000288A8;
    v32[4] = self;
    v33 = v9;
    v27 = [UIAlertAction actionWithTitle:v26 style:1 handler:v32];
    [v13 addAction:v27];

    v28 = [(DREAlertManager *)self _getTopViewController];
    if (v28)
    {
      [(DREAlertManager *)self setAlertVisible:1];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000080C8;
      v30[3] = &unk_1000288D0;
      v31 = v8;
      [v28 presentViewController:v13 animated:1 completion:v30];
    }

    else
    {
      v29 = sub_100012608();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100012A34();
      }

      if (v8)
      {
        v8[2](v8, 0);
      }
    }
  }
}

- (void)showPowerDownWithCompletion:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_100028910;
  }

  if ([(DREAlertManager *)self _isAnyAlertOrModalVisible])
  {
    v8->invoke(v8, 0);
  }

  else
  {
    v9 = sub_100012608();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = "[DREAlertManager showPowerDownWithCompletion:response:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Presenting power down UI…", buf, 0xCu);
    }

    [(DREAlertManager *)self setPowerDownResponse:v7];
    v10 = +[SBUIPowerDownViewControllerFactory newPowerDownViewController];
    if (v10)
    {
      v11 = +[UIColor lightGrayColor];
      v12 = [v10 view];
      [v12 setBackgroundColor:v11];

      [v10 setPowerDownDelegate:self];
      [v10 setModalPresentationStyle:5];
      [v10 setModalTransitionStyle:2];
      v13 = [(DREAlertManager *)self _getTopViewController];
      if (v13)
      {
        [(DREAlertManager *)self setPowerDownVisible:1];
        [(DREAlertManager *)self setPresentedPowerDownVC:v10];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100008448;
        v16[3] = &unk_1000288D0;
        v17 = v8;
        [v13 presentViewController:v10 animated:1 completion:v16];
      }

      else
      {
        v15 = sub_100012608();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100012AB4();
        }

        v8->invoke(v8, 0);
        [(DREAlertManager *)self setPowerDownResponse:0];
      }
    }

    else
    {
      v14 = sub_100012608();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100012B34();
      }

      v8->invoke(v8, 0);
      [(DREAlertManager *)self setPowerDownResponse:0];
    }
  }
}

- (void)powerDownViewRequestCancel:(id)a3
{
  v4 = a3;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[DREAlertManager powerDownViewRequestCancel:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Power down request canceled - dismissing power down UI.", buf, 0xCu);
  }

  v6 = [(DREAlertManager *)self presentedPowerDownVC];

  if (v6 == v4)
  {
    [(DREAlertManager *)self setPowerDownVisible:0];
    [(DREAlertManager *)self setPresentedPowerDownVC:0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100008684;
    v8[3] = &unk_100028938;
    v8[4] = self;
    [v4 dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    v7 = sub_100012608();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100012BB4();
    }
  }
}

- (void)powerDownViewRequestPowerDown:(id)a3
{
  v4 = a3;
  v5 = sub_100012608();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446210;
    v11 = "[DREAlertManager powerDownViewRequestPowerDown:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Power down requested.", &v10, 0xCu);
  }

  v6 = [(DREAlertManager *)self presentedPowerDownVC];

  if (v6 == v4)
  {
    [(DREAlertManager *)self setPowerDownVisible:0];
    [(DREAlertManager *)self setPresentedPowerDownVC:0];
    v8 = [(DREAlertManager *)self powerDownResponse];

    if (v8)
    {
      v9 = [(DREAlertManager *)self powerDownResponse];
      v9[2](v9, 0);

      [(DREAlertManager *)self setPowerDownResponse:0];
    }
  }

  else
  {
    v7 = sub_100012608();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100012C30();
    }
  }
}

- (BOOL)_isAnyAlertOrModalVisible
{
  if ([(DREAlertManager *)self alertVisible]|| (v3 = [(DREAlertManager *)self powerDownVisible]))
  {
    v4 = sub_100012608();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136446210;
      v7 = "[DREAlertManager _isAnyAlertOrModalVisible]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: An alert or modal managed by DREAlertManager is already visible.", &v6, 0xCu);
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (UIViewController)presentedPowerDownVC
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedPowerDownVC);

  return WeakRetained;
}

@end