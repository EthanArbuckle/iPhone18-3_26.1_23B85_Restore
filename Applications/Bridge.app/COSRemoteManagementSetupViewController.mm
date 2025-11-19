@interface COSRemoteManagementSetupViewController
+ (BOOL)controllerNeedsToRun;
- (COSRemoteManagementSetupViewController)init;
- (id)localizedWaitScreenDescription;
- (void)_attemptEnrollmentAfterGeneratingPairingTokenWithSigningInfo:(id)a3;
- (void)_handleEnrollmentError:(id)a3;
- (void)_proceedToEnrollWithPairingToken:(id)a3;
- (void)didEstablishHold;
- (void)informWatchToConfigureDeviceManagementWithData:(id)a3;
@end

@implementation COSRemoteManagementSetupViewController

+ (BOOL)controllerNeedsToRun
{
  v2 = [UIApp setupController];
  v3 = [v2 offerYorktownForCurrentPairing];

  return v3;
}

- (COSRemoteManagementSetupViewController)init
{
  v7.receiver = self;
  v7.super_class = COSRemoteManagementSetupViewController;
  v2 = [(COSOptinViewController *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.Bridge.enrollmentQueue", v3);
    enrollmentQueue = v2->_enrollmentQueue;
    v2->_enrollmentQueue = v4;
  }

  return v2;
}

- (void)didEstablishHold
{
  v3 = [UIApp setupController];
  v4 = [v3 stagedEnrollmentDataForCurrentPairing];

  if (v4)
  {
    [(COSRemoteManagementSetupViewController *)self informWatchToConfigureDeviceManagementWithData:v4];
  }

  else
  {
    v5 = pbb_devicemanagement_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001885DC();
    }

    v6 = [(COSRemoteManagementSetupViewController *)self delegate];
    [v6 buddyControllerReleaseHoldAndSkip:self];
  }
}

- (void)informWatchToConfigureDeviceManagementWithData:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 bridgeController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100082ECC;
  v7[3] = &unk_100269FC0;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [v6 tellWatchToConfigureDeviceManagementWithData:v4 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_attemptEnrollmentAfterGeneratingPairingTokenWithSigningInfo:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  enrollmentQueue = self->_enrollmentQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083240;
  block[3] = &unk_100269DD0;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_async(enrollmentQueue, block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)_proceedToEnrollWithPairingToken:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  enrollmentQueue = self->_enrollmentQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083548;
  block[3] = &unk_100269DD0;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_async(enrollmentQueue, block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)_handleEnrollmentError:(id)a3
{
  v4 = a3;
  v5 = pbb_devicemanagement_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1001886D0();
  }

  v6 = [UIApp setupController];
  v7 = [v6 pairingReportManager];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
  [v7 addPairingTimeEventToPairingReportPlist:76 withValue:v8 withError:0];

  [v6 setAnalyticsEnrollmentRetryCount:{objc_msgSend(v6, "analyticsEnrollmentRetryCount") + 1}];
  [v6 setAnalyticsEnrollmentFailed:1];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 analyticsEnrollmentRetryCount]);
  [v7 addPairingTimeEventToPairingReportPlist:77 withValue:v9 withError:0];

  v10 = [(COSRemoteManagementSetupViewController *)self delegate];
  [v10 buddyControllerCancelAnyHold];

  v11 = [v4 localizedDescription];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = +[NSBundle mainBundle];
    v13 = [v14 localizedStringForKey:@"REMOTE_MANAGEMENT_SETUP_FAILED_DEFAULT_MESSAGE" value:&stru_10026E598 table:@"Localizable-yorktown"];
  }

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"REMOTE_MANAGEMENT_SETUP_FAILED_TITLE" value:&stru_10026E598 table:@"Localizable-yorktown"];
  v17 = [UIAlertController alertControllerWithTitle:v16 message:v13 preferredStyle:1];

  v18 = [UIApp setupController];
  v19 = [v18 navigationController];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100083A94;
  v24[3] = &unk_100268580;
  v25 = v19;
  v22 = v19;
  v23 = [UIAlertAction actionWithTitle:v21 style:0 handler:v24];
  [v17 addAction:v23];

  [v22 presentViewController:v17 animated:1 completion:0];
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"INSTALLING_CONFIGURATION" value:&stru_10026E598 table:@"Localizable-yorktown"];

  return v3;
}

@end