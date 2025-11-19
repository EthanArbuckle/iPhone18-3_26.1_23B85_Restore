@interface HKHealthPrivacyServiceRecalibrateEstimatesViewController
- (void)_configureAlertControllerWithSourceName:(id)a3 sampleType:(id)a4 effectiveDate:(id)a5;
- (void)_configureApplicationStateMonitor;
- (void)_finishRequestWithError:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_hostApplicationStateDidChange:(unsigned int)a3;
- (void)_hostDidTerminate;
- (void)setRequestRecord:(id)a3 completion:(id)a4;
@end

@implementation HKHealthPrivacyServiceRecalibrateEstimatesViewController

- (void)setRequestRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = objc_retainBlock(a4);
  requestCompletion = self->_requestCompletion;
  self->_requestCompletion = v7;

  v9 = [HKAuthorizationStore alloc];
  v10 = objc_alloc_init(HKHealthStore);
  v11 = [v9 initWithHealthStore:v10];
  authorizationStore = self->_authorizationStore;
  self->_authorizationStore = v11;

  v13 = self->_authorizationStore;
  v19 = 0;
  LOBYTE(v10) = [(HKAuthorizationStore *)v13 validateRecalibrateEstimatesRequestRecord:v6 error:&v19];
  v14 = v19;
  if (v10)
  {
    [(HKHealthPrivacyServiceRecalibrateEstimatesViewController *)self _configureApplicationStateMonitor];
    v15 = [v6 source];
    v16 = [v15 name];
    v17 = [v6 sampleType];
    v18 = [v6 effectiveDate];
    [(HKHealthPrivacyServiceRecalibrateEstimatesViewController *)self _configureAlertControllerWithSourceName:v16 sampleType:v17 effectiveDate:v18];
  }

  else
  {
    [(HKHealthPrivacyServiceRecalibrateEstimatesViewController *)self _finishRequestWithError:v14];
  }
}

- (void)_hostApplicationStateDidChange:(unsigned int)a3
{
  if (a3 <= 3)
  {
    block[9] = v3;
    block[10] = v4;
    _HKInitializeLogging();
    v7 = HKLogAuthorization();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v8)
    {
      v9 = HKLogAuthorization();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100005DC0(a3, v9);
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000103C;
    block[3] = &unk_10000C370;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_configureApplicationStateMonitor
{
  objc_initWeak(&location, self);
  v3 = [BKSApplicationStateMonitor alloc];
  v4 = [(HKHealthPrivacyServiceRecalibrateEstimatesViewController *)self _hostApplicationBundleIdentifier];
  v12 = v4;
  v5 = [NSArray arrayWithObjects:&v12 count:1];
  v6 = [v3 initWithBundleIDs:v5 states:BKSApplicationStateAll];
  applicationStateMonitor = self->_applicationStateMonitor;
  self->_applicationStateMonitor = v6;

  v8 = self->_applicationStateMonitor;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000011BC;
  v9[3] = &unk_10000C398;
  objc_copyWeak(&v10, &location);
  [(BKSApplicationStateMonitor *)v8 setHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_hostDidTerminate
{
  applicationStateMonitor = self->_applicationStateMonitor;
  self->_applicationStateMonitor = 0;

  v4 = [NSError errorWithDomain:HKErrorDomain code:5 userInfo:0];
  [(HKHealthPrivacyServiceRecalibrateEstimatesViewController *)self _finishRequestWithError:v4];
}

- (void)_configureAlertControllerWithSourceName:(id)a3 sampleType:(id)a4 effectiveDate:(id)a5
{
  v32 = a4;
  v34 = a5;
  v8 = a3;
  v9 = HKLocalizedStringForDateAndTemplate();
  if ([v32 code] == 183)
  {
    v10 = @"6MWD";
  }

  else
  {
    v10 = &stru_10000C6A8;
  }

  v11 = [@"RECALIBRATE_ESTIMATES_ALERT_TITLE_%@_" stringByAppendingString:v10];
  v12 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v35 = v11;
  v13 = [v12 localizedStringForKey:v11 value:&stru_10000C6A8 table:@"HealthUI-Localizable"];
  v14 = [NSString stringWithFormat:v13, v8];

  v15 = [@"RECALIBRATE_ESTIMATES_ALERT_MESSAGE_%@_" stringByAppendingString:v10];
  v16 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v33 = v15;
  v17 = [v16 localizedStringForKey:v15 value:&stru_10000C6A8 table:@"HealthUI-Localizable"];
  v18 = [NSString stringWithFormat:v17, v9];

  v31 = v18;
  v19 = [UIAlertController alertControllerWithTitle:v14 message:v18 preferredStyle:1];
  alertViewController = self->_alertViewController;
  self->_alertViewController = v19;

  v21 = self->_alertViewController;
  v22 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v23 = [v22 localizedStringForKey:@"RECALIBRATE_ESTIMATES_ALERT_CANCEL" value:&stru_10000C6A8 table:@"HealthUI-Localizable"];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000017AC;
  v39[3] = &unk_10000C3C0;
  v39[4] = self;
  v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:v39];
  [(UIAlertController *)v21 addAction:v24];

  v25 = self->_alertViewController;
  v26 = [NSBundle bundleWithIdentifier:@"com.apple.HealthUI"];
  v27 = [v26 localizedStringForKey:@"RECALIBRATE_ESTIMATES_ALERT_RESET" value:&stru_10000C6A8 table:@"HealthUI-Localizable"];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100001814;
  v36[3] = &unk_10000C438;
  v36[4] = self;
  v28 = v32;
  v37 = v28;
  v29 = v34;
  v38 = v29;
  v30 = [UIAlertAction actionWithTitle:v27 style:0 handler:v36];
  [(UIAlertController *)v25 addAction:v30];

  if ([(HKHealthPrivacyServiceRecalibrateEstimatesViewController *)self isViewLoaded])
  {
    [(HKHealthPrivacyServiceRecalibrateEstimatesViewController *)self presentViewController:self->_alertViewController animated:1 completion:0];
  }
}

- (void)_finishRequestWithError:(id)a3
{
  v4 = a3;
  [(HKHealthPrivacyServiceRecalibrateEstimatesViewController *)self _finishWithError:v4];
  (*(self->_requestCompletion + 2))(self->_requestCompletion, v4 == 0);
}

- (void)_finishWithError:(id)a3
{
  objc_storeStrong(&self->_transactionError, a3);
  v5 = a3;
  v6 = [(HKHealthPrivacyServiceRecalibrateEstimatesViewController *)self _healthPrivacyHostViewController];
  [v6 didFinishWithError:v5];
}

@end