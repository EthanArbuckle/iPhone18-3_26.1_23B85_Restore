@interface COSTinkerWaitForWatchCDPEnrollment
- (COSBuddyControllerDelegate)waitDelegate;
- (COSTinkerWaitForWatchCDPEnrollment)init;
- (id)detailString;
- (id)imageResource;
- (id)localizedWaitScreenDescription;
- (id)titleString;
- (void)_learnMoreTapped:(id)a3;
- (void)didPushWaitScreen;
- (void)handleSignInResultWithStatus:(int64_t)a3 errorDescription:(id)a4 detailedError:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v6 = [(COSTinkerWaitForWatchCDPEnrollment *)self headerView];
  [v6 addAccessoryButton:v3];
}

- (void)_learnMoreTapped:(id)a3
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
  v2 = [UIApp setupController];
  v3 = [v2 tinkerUserName];
  v4 = [v3 localizedCapitalizedString];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
  v3 = [UIApp activeWatch];
  v4 = BPSIsDeviceCompatibleWithVersions();

  if (v4)
  {
    v5 = [v2 stringByAppendingString:@"-v4"];

    v2 = v5;
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = COSTinkerWaitForWatchCDPEnrollment;
  [(COSTinkerWaitForWatchCDPEnrollment *)&v10 viewWillAppear:a3];
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

    v6 = [UIApp setupController];
    v7 = [v6 tinkerAuthenticationController];

    self->_currentStatus = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BD160;
    v8[3] = &unk_10026B080;
    v8[4] = self;
    [v7 waitForSatelliteSigninWithProgressCompletion:v8];
  }
}

- (void)handleSignInResultWithStatus:(int64_t)a3 errorDescription:(id)a4 detailedError:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = pbb_accountsignin_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    currentStatus = self->_currentStatus;
    *buf = 134218240;
    v37 = a3;
    v38 = 2048;
    v39 = currentStatus;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Got progress update from watch: %ld, Current status: %ld", buf, 0x16u);
  }

  v12 = [UIApp setupController];
  v13 = [v12 pairingReportManager];

  if (self->_currentStatus != a3)
  {
    switch(a3)
    {
      case 3:
        WeakRetained = objc_loadWeakRetained(&self->_waitDelegate);
        [WeakRetained buddyControllerDone:self];

        objc_storeWeak(&self->_waitDelegate, 0);
        [v13 addPairingTimeEventToPairingReportPlist:42 withValue:&__kCFBooleanTrue withError:0];
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
        [v13 addPairingTimeEventToPairingReportPlist:63 withValue:&__kCFBooleanTrue withError:0];
        [v13 checkInWithClosingPairingTimeEvent:64];
        break;
      case 1:
        v14 = objc_loadWeakRetained(&self->_waitDelegate);
        [v14 buddyControllerReleaseHold:self];

        [v13 addPairingTimeEventToPairingReportPlist:62 withValue:&__kCFBooleanTrue withError:0];
        [v13 checkInWithOpenPairingTimeEvent:64];
        break;
      default:
        v18 = pbb_accountsignin_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v37 = a3;
          v38 = 2112;
          v39 = v8;
          v40 = 2112;
          v41 = v9;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Canceling pairing due to status %ld - Message: %@ error: %@", buf, 0x20u);
        }

        if (v9)
        {
          v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 code]);
          [v13 addPairingTimeEventToPairingReportPlist:65 withValue:v19 withError:0];

          v20 = [v9 domain];
          [v13 addPairingTimeEventStringToPairingReportPlist:66 withValue:v20 withError:0];
        }

        v21 = [v9 domain];
        v22 = v21;
        if (v21 == @"com.aple.COSSatelliteSignInErrorDomain")
        {
          v23 = [v9 code];

          if (v23 == 1)
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

          v8 = v26;
        }

        v27 = +[NSBundle mainBundle];
        v28 = [v27 localizedStringForKey:@"CANT_LOGIN_GENERIC_TITLE" value:&stru_10026E598 table:@"Localizable"];
        v29 = [UIAlertController alertControllerWithTitle:v28 message:v8 preferredStyle:1];

        v30 = [UIApp setupController];
        v31 = [v30 navigationController];

        v32 = +[NSBundle mainBundle];
        v33 = [v32 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_1000BD6D4;
        v35[3] = &unk_100268580;
        v35[4] = self;
        v34 = [UIAlertAction actionWithTitle:v33 style:0 handler:v35];
        [v29 addAction:v34];

        [v31 presentViewController:v29 animated:1 completion:0];
        break;
    }
  }
}

- (void)didPushWaitScreen
{
  v3 = [UIApp setupController];
  v4 = [v3 tinkerAuthenticationController];

  self->_currentStatus = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BD7EC;
  v5[3] = &unk_10026B080;
  v5[4] = self;
  [v4 startSatelliteSigninWithProgressCompletion:v5];
}

- (id)localizedWaitScreenDescription
{
  v2 = [UIApp setupController];
  v3 = [v2 tinkerUserName];
  v4 = [v3 localizedCapitalizedString];

  v5 = +[NSBundle mainBundle];
  if (v4)
  {
    v6 = [v5 localizedStringForKey:@"APPLEID_ACCOUNT_HOLD_DESCRIPTION_TINKER_USER_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
    v7 = [NSString stringWithFormat:v6, v4];
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