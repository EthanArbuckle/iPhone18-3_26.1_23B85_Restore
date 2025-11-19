@interface FBAOnDemandPinParingNavigationController
- (FBAOnDemandPinParingNavigationController)initWithDevice:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)didCancelPairing:(id)a3;
- (void)didPinPair:(id)a3;
- (void)didPinPairWithDevice:(id)a3;
- (void)viewDidLoad;
@end

@implementation FBAOnDemandPinParingNavigationController

- (FBAOnDemandPinParingNavigationController)initWithDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[UIStoryboard fbaMainStoryboard];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 instantiateViewControllerWithIdentifier:v10];

  [v11 setDevice:v6];
  [v11 setContext:1];
  v15.receiver = self;
  v15.super_class = FBAOnDemandPinParingNavigationController;
  v12 = [(FBAOnDemandPinParingNavigationController *)&v15 initWithRootViewController:v11];
  v13 = v12;
  if (v12)
  {
    [(FBAOnDemandPinParingNavigationController *)v12 setCompletion:v7];
    [(FBAOnDemandPinParingNavigationController *)v13 setPairingDevice:v6];
  }

  return v13;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = FBAOnDemandPinParingNavigationController;
  [(FBAOnDemandPinParingNavigationController *)&v5 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"didPinPair:" name:FBKDeviceManagerDidPinPairWithDeviceNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"didCancelPairing:" name:@"FBAPinPairingViewControllerDidCancel" object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FBAOnDemandPinParingNavigationController;
  [(FBAOnDemandPinParingNavigationController *)&v4 dealloc];
}

- (void)didCancelPairing:(id)a3
{
  v4 = +[FBALog ded];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(FBAOnDemandPinParingNavigationController *)self pairingDevice];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "did cancel pairing with device [%{public}@]", &v6, 0xCu);
  }

  [(FBAOnDemandPinParingNavigationController *)self didPinPairWithDevice:0];
}

- (void)didPinPair:(id)a3
{
  v4 = [a3 object];
  v5 = +[FBALog ffu];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "pairing navigation controller got pairing success for device [%{public}@]", buf, 0xCu);
  }

  v6 = dispatch_time(0, 1000000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100006EEC;
  v8[3] = &unk_1000DE4D0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_after(v6, &_dispatch_main_q, v8);
}

- (void)didPinPairWithDevice:(id)a3
{
  if (a3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = +[FBKDeviceManager sharedInstance];
    v5 = [v4 configuredDevices];

    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v6)
    {
      v8 = v6;
      v23 = *v25;
      *&v7 = 138543362;
      v21 = v7;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = [v10 dedSharingDevice];
          v12 = [v11 address];
          v13 = [(FBAOnDemandPinParingNavigationController *)self pairingDevice];
          v14 = [v13 dedSharingDevice];
          v15 = [v14 address];
          v16 = [v12 isEqualToString:v15];

          if (v16)
          {
            v17 = +[FBALog ded];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v21;
              v29 = v10;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "On demand pairing found paired sharing device [%{public}@]", buf, 0xCu);
            }

            v18 = [(FBAOnDemandPinParingNavigationController *)self completion];
            (v18)[2](v18, v10);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v19 = [(FBAOnDemandPinParingNavigationController *)self completion];
    v19[2](v19, 0);
  }

  v20 = [(FBAOnDemandPinParingNavigationController *)self presentingViewController];
  [v20 dismissViewControllerAnimated:1 completion:0];
}

@end