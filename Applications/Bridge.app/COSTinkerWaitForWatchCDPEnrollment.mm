@interface COSTinkerWaitForWatchCDPEnrollment
- (COSBuddyControllerDelegate)waitDelegate;
- (COSTinkerWaitForWatchCDPEnrollment)init;
- (id)detailString;
- (id)imageResource;
- (id)localizedWaitScreenDescription;
- (id)titleString;
- (void)_learnMoreTapped:(id)tapped;
- (void)didPushWaitScreen;
- (void)handleSignInResultWithStatus:(int64_t)status errorDescription:(id)description detailedError:(id)error;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSTinkerWaitForWatchCDPEnrollment

- (COSTinkerWaitForWatchCDPEnrollment)init
{
  v5.receiver = self;
  v5.super_class = COSTinkerWaitForWatchCDPEnrollment;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSTinkerWaitForWatchCDPEnrollment *)v2 setStyle:64];
  }

  return v3;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = COSTinkerWaitForWatchCDPEnrollment;
  [(COSTinkerWaitForWatchCDPEnrollment *)&v7 viewDidLoad];
  v3 = +[OBHeaderAccessoryButton accessoryButton];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"TINKER_CDP_ENROLLMENT_LEARN_MORE" value:&stru_10026E598 table:@"Localizable-tinker"];
  [v3 setTitle:v5 forState:0];

  [v3 addTarget:self action:"_learnMoreTapped:" forControlEvents:0x2000];
  headerView = [(COSTinkerWaitForWatchCDPEnrollment *)self headerView];
  [headerView addAccessoryButton:v3];
}

- (void)_learnMoreTapped:(id)tapped
{
  v3 = objc_alloc_init(COSAboutTextViewController);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"TINKER_CDP_ENROLLMENT_LEARN_MORE_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];
  [(COSAboutTextViewController *)v3 setTitleString:v5];

  v16[0] = BPSAboutTextViewParagraphHeaderKey;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"TINKER_CDP_ENROLLMENT_LEARN_MORE_HEADER" value:&stru_10026E598 table:@"Localizable-tinker"];
  v17[0] = v7;
  v16[1] = BPSAboutTextViewParagraphTextKey;
  v8 = +[NSBundle mainBundle];
  v9 = SFLocalizableWAPIStringKeyForKey();
  v10 = [v8 localizedStringForKey:v9 value:&stru_10026E598 table:@"Localizable-tinker"];
  v17[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v18 = v11;
  v12 = [NSArray arrayWithObjects:&v18 count:1];

  [(COSAboutTextViewController *)v3 setParagraphs:v12];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"TINKER_CDP_ENROLLMENT_LEARN_MORE_FOOTER" value:&stru_10026E598 table:@"Localizable-tinker"];
  [(COSAboutTextViewController *)v3 setFooterString:v14];

  [(COSAboutTextViewController *)v3 presentWithController:self];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_CDP_ENROLLMENT_ON_WATCH_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];

  return v3;
}

- (id)detailString
{
  setupController = [UIApp setupController];
  tinkerUserName = [setupController tinkerUserName];
  localizedCapitalizedString = [tinkerUserName localizedCapitalizedString];
  v5 = localizedCapitalizedString;
  if (localizedCapitalizedString)
  {
    v6 = localizedCapitalizedString;
  }

  else
  {
    v6 = &stru_10026E598;
  }

  v7 = v6;

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"TINKER_CDP_ENROLLMENT_ON_WATCH_INFO_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
  v10 = [NSString stringWithFormat:v9, v7];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"TINKER_CDP_ENROLLMENT_ON_WATCH_ADDITIONAL_INFO_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
  v13 = [NSString stringWithFormat:v12, v7];

  v14 = [NSString stringWithFormat:@"%@\n\n%@", v10, v13];

  return v14;
}

- (id)imageResource
{
  v2 = sub_10002D528(@"Screen-Passcode");
  activeWatch = [UIApp activeWatch];
  v4 = BPSIsDeviceCompatibleWithVersions();

  if (v4)
  {
    v5 = [v2 stringByAppendingString:@"-v4"];

    v2 = v5;
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = COSTinkerWaitForWatchCDPEnrollment;
  [(COSTinkerWaitForWatchCDPEnrollment *)&v10 viewWillAppear:appear];
  if (self->_appearingFromBackNavigation)
  {
    self->_appearingFromBackNavigation = 0;
    WeakRetained = objc_loadWeakRetained(&self->_waitDelegate);
    [WeakRetained buddyControllerReleaseHold:self];

    v5 = pbb_accountsignin_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Navigated back to cdp enrollment", buf, 2u);
    }

    setupController = [UIApp setupController];
    tinkerAuthenticationController = [setupController tinkerAuthenticationController];

    self->_currentStatus = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BD160;
    v8[3] = &unk_10026B080;
    v8[4] = self;
    [tinkerAuthenticationController waitForSatelliteSigninWithProgressCompletion:v8];
  }
}

- (void)handleSignInResultWithStatus:(int64_t)status errorDescription:(id)description detailedError:(id)error
{
  descriptionCopy = description;
  errorCopy = error;
  v10 = pbb_accountsignin_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    currentStatus = self->_currentStatus;
    *buf = 134218240;
    statusCopy2 = status;
    v38 = 2048;
    v39 = currentStatus;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Got progress update from watch: %ld, Current status: %ld", buf, 0x16u);
  }

  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  if (self->_currentStatus != status)
  {
    switch(status)
    {
      case 3:
        WeakRetained = objc_loadWeakRetained(&self->_waitDelegate);
        [WeakRetained buddyControllerDone:self];

        objc_storeWeak(&self->_waitDelegate, 0);
        [pairingReportManager addPairingTimeEventToPairingReportPlist:42 withValue:&__kCFBooleanTrue withError:0];
        break;
      case 2:
        v15 = pbb_accountsignin_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "CDP enrollment finished on the watch", buf, 2u);
        }

        v16 = objc_loadWeakRetained(&self->_waitDelegate);
        [v16 buddyControllerDone:self];

        objc_storeWeak(&self->_waitDelegate, 0);
        [pairingReportManager addPairingTimeEventToPairingReportPlist:63 withValue:&__kCFBooleanTrue withError:0];
        [pairingReportManager checkInWithClosingPairingTimeEvent:64];
        break;
      case 1:
        v14 = objc_loadWeakRetained(&self->_waitDelegate);
        [v14 buddyControllerReleaseHold:self];

        [pairingReportManager addPairingTimeEventToPairingReportPlist:62 withValue:&__kCFBooleanTrue withError:0];
        [pairingReportManager checkInWithOpenPairingTimeEvent:64];
        break;
      default:
        v18 = pbb_accountsignin_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          statusCopy2 = status;
          v38 = 2112;
          v39 = descriptionCopy;
          v40 = 2112;
          v41 = errorCopy;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Canceling pairing due to status %ld - Message: %@ error: %@", buf, 0x20u);
        }

        if (errorCopy)
        {
          v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
          [pairingReportManager addPairingTimeEventToPairingReportPlist:65 withValue:v19 withError:0];

          domain = [errorCopy domain];
          [pairingReportManager addPairingTimeEventStringToPairingReportPlist:66 withValue:domain withError:0];
        }

        domain2 = [errorCopy domain];
        v22 = domain2;
        if (domain2 == @"com.aple.COSSatelliteSignInErrorDomain")
        {
          code = [errorCopy code];

          if (code == 1)
          {
            v24 = objc_loadWeakRetained(&self->_waitDelegate);
            [v24 buddyControllerCancelAnyHold];

            [COSSatellitePairingHelper popToLoginControllerFromController:self];
            break;
          }
        }

        else
        {
        }

        if ((sub_100009A74() & 1) == 0)
        {
          v25 = +[NSBundle mainBundle];
          v26 = [v25 localizedStringForKey:@"CANT_LOGIN_UNKNOWN_ERROR" value:&stru_10026E598 table:@"Localizable"];

          descriptionCopy = v26;
        }

        v27 = +[NSBundle mainBundle];
        v28 = [v27 localizedStringForKey:@"CANT_LOGIN_GENERIC_TITLE" value:&stru_10026E598 table:@"Localizable"];
        v29 = [UIAlertController alertControllerWithTitle:v28 message:descriptionCopy preferredStyle:1];

        setupController2 = [UIApp setupController];
        navigationController = [setupController2 navigationController];

        v32 = +[NSBundle mainBundle];
        v33 = [v32 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_1000BD6D4;
        v35[3] = &unk_100268580;
        v35[4] = self;
        v34 = [UIAlertAction actionWithTitle:v33 style:0 handler:v35];
        [v29 addAction:v34];

        [navigationController presentViewController:v29 animated:1 completion:0];
        break;
    }
  }
}

- (void)didPushWaitScreen
{
  setupController = [UIApp setupController];
  tinkerAuthenticationController = [setupController tinkerAuthenticationController];

  self->_currentStatus = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BD7EC;
  v5[3] = &unk_10026B080;
  v5[4] = self;
  [tinkerAuthenticationController startSatelliteSigninWithProgressCompletion:v5];
}

- (id)localizedWaitScreenDescription
{
  setupController = [UIApp setupController];
  tinkerUserName = [setupController tinkerUserName];
  localizedCapitalizedString = [tinkerUserName localizedCapitalizedString];

  v5 = +[NSBundle mainBundle];
  if (localizedCapitalizedString)
  {
    v6 = [v5 localizedStringForKey:@"APPLEID_ACCOUNT_HOLD_DESCRIPTION_TINKER_USER_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
    v7 = [NSString stringWithFormat:v6, localizedCapitalizedString];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"APPLEID_ACCOUNT_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];
  }

  return v7;
}

- (COSBuddyControllerDelegate)waitDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_waitDelegate);

  return WeakRetained;
}

@end