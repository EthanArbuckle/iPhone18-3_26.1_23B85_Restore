@interface COSRemoteManagementSetupViewController
+ (BOOL)controllerNeedsToRun;
- (COSRemoteManagementSetupViewController)init;
- (id)localizedWaitScreenDescription;
- (void)_attemptEnrollmentAfterGeneratingPairingTokenWithSigningInfo:(id)info;
- (void)_handleEnrollmentError:(id)error;
- (void)_proceedToEnrollWithPairingToken:(id)token;
- (void)didEstablishHold;
- (void)informWatchToConfigureDeviceManagementWithData:(id)data;
@end

@implementation COSRemoteManagementSetupViewController

+ (BOOL)controllerNeedsToRun
{
  setupController = [UIApp setupController];
  offerYorktownForCurrentPairing = [setupController offerYorktownForCurrentPairing];

  return offerYorktownForCurrentPairing;
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
  setupController = [UIApp setupController];
  stagedEnrollmentDataForCurrentPairing = [setupController stagedEnrollmentDataForCurrentPairing];

  if (stagedEnrollmentDataForCurrentPairing)
  {
    [(COSRemoteManagementSetupViewController *)self informWatchToConfigureDeviceManagementWithData:stagedEnrollmentDataForCurrentPairing];
  }

  else
  {
    v5 = pbb_devicemanagement_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001885DC();
    }

    delegate = [(COSRemoteManagementSetupViewController *)self delegate];
    [delegate buddyControllerReleaseHoldAndSkip:self];
  }
}

- (void)informWatchToConfigureDeviceManagementWithData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  v5 = +[UIApplication sharedApplication];
  bridgeController = [v5 bridgeController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100082ECC;
  v7[3] = &unk_100269FC0;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [bridgeController tellWatchToConfigureDeviceManagementWithData:dataCopy completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_attemptEnrollmentAfterGeneratingPairingTokenWithSigningInfo:(id)info
{
  infoCopy = info;
  objc_initWeak(&location, self);
  enrollmentQueue = self->_enrollmentQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083240;
  block[3] = &unk_100269DD0;
  v8 = infoCopy;
  v6 = infoCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(enrollmentQueue, block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)_proceedToEnrollWithPairingToken:(id)token
{
  tokenCopy = token;
  objc_initWeak(&location, self);
  enrollmentQueue = self->_enrollmentQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083548;
  block[3] = &unk_100269DD0;
  v8 = tokenCopy;
  v6 = tokenCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(enrollmentQueue, block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)_handleEnrollmentError:(id)error
{
  errorCopy = error;
  v5 = pbb_devicemanagement_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1001886D0();
  }

  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
  [pairingReportManager addPairingTimeEventToPairingReportPlist:76 withValue:v8 withError:0];

  [setupController setAnalyticsEnrollmentRetryCount:{objc_msgSend(setupController, "analyticsEnrollmentRetryCount") + 1}];
  [setupController setAnalyticsEnrollmentFailed:1];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [setupController analyticsEnrollmentRetryCount]);
  [pairingReportManager addPairingTimeEventToPairingReportPlist:77 withValue:v9 withError:0];

  delegate = [(COSRemoteManagementSetupViewController *)self delegate];
  [delegate buddyControllerCancelAnyHold];

  localizedDescription = [errorCopy localizedDescription];
  v12 = localizedDescription;
  if (localizedDescription)
  {
    v13 = localizedDescription;
  }

  else
  {
    v14 = +[NSBundle mainBundle];
    v13 = [v14 localizedStringForKey:@"REMOTE_MANAGEMENT_SETUP_FAILED_DEFAULT_MESSAGE" value:&stru_10026E598 table:@"Localizable-yorktown"];
  }

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"REMOTE_MANAGEMENT_SETUP_FAILED_TITLE" value:&stru_10026E598 table:@"Localizable-yorktown"];
  v17 = [UIAlertController alertControllerWithTitle:v16 message:v13 preferredStyle:1];

  setupController2 = [UIApp setupController];
  navigationController = [setupController2 navigationController];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100083A94;
  v24[3] = &unk_100268580;
  v25 = navigationController;
  v22 = navigationController;
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