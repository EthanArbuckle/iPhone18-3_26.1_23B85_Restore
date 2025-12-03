@interface HSPCWalletKeyViewController
+ (id)_getBundleIDForWalletAppIcon;
- (HSPCWalletKeyViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (void)_setupWalletAppIconImageView;
@end

@implementation HSPCWalletKeyViewController

- (HSPCWalletKeyViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v8 = [PRXImageView imageViewWithStyle:0];
  [v8 setContentMode:1];
  v67.receiver = self;
  v67.super_class = HSPCWalletKeyViewController;
  v9 = [(HSPCFixedSizeCenterContentViewController *)&v67 initWithCenterContentView:v8 size:185.0, 107.0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    objc_storeStrong(&v10->_coordinator, coordinator);
    objc_storeStrong(&v10->_cardImageView, v8);
    v11 = objc_alloc_init(UIImageView);
    walletAppIconImageView = v10->_walletAppIconImageView;
    v10->_walletAppIconImageView = v11;

    _getBundleIDForWalletAppIcon = [objc_opt_class() _getBundleIDForWalletAppIcon];
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v69 = "[HSPCWalletKeyViewController initWithCoordinator:config:]";
      v70 = 2112;
      v71 = _getBundleIDForWalletAppIcon;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(%s) wallet app icon's bundleID = %@", buf, 0x16u);
    }

    v45 = [[ISIcon alloc] initWithBundleIdentifier:_getBundleIDForWalletAppIcon];
    v14 = +[UIScreen mainScreen];
    [v14 scale];
    v16 = v15;

    v48 = [[ISImageDescriptor alloc] initWithSize:64.0 scale:{64.0, *&v16}];
    v17 = +[UITraitCollection currentTraitCollection];
    [v48 setAppearance:{objc_msgSend(v17, "userInterfaceStyle") != 1}];

    objc_initWeak(buf, v10);
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10005F8C0;
    v65[3] = &unk_1000C7EF0;
    objc_copyWeak(v66, buf);
    v66[1] = v16;
    [v45 getImageForImageDescriptor:v48 completion:v65];
    [v8 addSubview:v10->_walletAppIconImageView];
    v18 = sub_100063A44(@"HSProximityCardWalletKeyTitle");
    [(HSPCWalletKeyViewController *)v10 setTitle:v18];

    home = [configCopy home];
    hf_currentUserIsRestrictedGuest = [home hf_currentUserIsRestrictedGuest];

    [configCopy home];
    if (hf_currentUserIsRestrictedGuest)
      v21 = {;
      hf_hasWalletKey = [v21 hf_hasWalletKey];
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_10005FA10;
      v62[3] = &unk_1000C60C0;
      objc_copyWeak(&v64, buf);
      v63 = configCopy;
      v23 = [hf_hasWalletKey flatMap:v62];

      objc_destroyWeak(&v64);
    }

    else
      v24 = {;
      name = [v24 name];
      v32 = sub_100063B5C(@"HSProximityCardWalletKeySubitle", @"%@", v26, v27, v28, v29, v30, v31, name);
      [(HSPCWalletKeyViewController *)v10 setSubtitle:v32];
    }

    v33 = [(HSPCWalletKeyViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10005FC18;
    v59[3] = &unk_1000C7A58;
    objc_copyWeak(&v61, buf);
    v34 = v8;
    v60 = v34;
    v35 = objc_retainBlock(v59);
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_10005FD44;
    v54[3] = &unk_1000C7F68;
    v36 = configCopy;
    v55 = v36;
    objc_copyWeak(&v58, buf);
    v37 = v35;
    v57 = v37;
    v56 = v34;
    v38 = objc_retainBlock(v54);
    home2 = [v36 home];
    hf_hasWalletKey2 = [home2 hf_hasWalletKey];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000601FC;
    v49[3] = &unk_1000C7FB8;
    v50 = v36;
    v51 = v10;
    v41 = v37;
    v52 = v41;
    v42 = v38;
    v53 = v42;
    v43 = [hf_hasWalletKey2 flatMap:v49];

    objc_destroyWeak(&v58);
    objc_destroyWeak(&v61);
    objc_destroyWeak(v66);
    objc_destroyWeak(buf);
  }

  return v10;
}

- (void)_setupWalletAppIconImageView
{
  cardImageView = [(HSPCWalletKeyViewController *)self cardImageView];
  image = [cardImageView image];

  if (image)
  {
    cardImageView2 = [(HSPCWalletKeyViewController *)self cardImageView];
    [cardImageView2 frame];
    v7 = v6 * 0.5 + 84.5 + -64.0 + 16.0;

    cardImageView3 = [(HSPCWalletKeyViewController *)self cardImageView];
    [cardImageView3 frame];
    v10 = v9 * 0.5 + 53.5 + -64.0;

    walletAppIconImageView = [(HSPCWalletKeyViewController *)self walletAppIconImageView];
    [walletAppIconImageView setFrame:{v7, v10, 64.0, 64.0}];
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10007B664();
    }
  }
}

+ (id)_getBundleIDForWalletAppIcon
{
  if (+[HFUtilities isAnIPhone])
  {
    v2 = @"com.apple.Passbook";
  }

  else
  {
    v2 = @"com.apple.PassbookStub";
  }

  return v2;
}

- (id)commitConfiguration
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[HSPCWalletKeyViewController commitConfiguration]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped Continue button for HSPCWalletKeyViewController", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  config = [(HSPCWalletKeyViewController *)self config];
  home = [config home];
  hf_formattedErrorForWalletKeyDeviceStateForCurrentDevice = [home hf_formattedErrorForWalletKeyDeviceStateForCurrentDevice];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006093C;
  v15[3] = &unk_1000C5830;
  objc_copyWeak(&v16, buf);
  v7 = [hf_formattedErrorForWalletKeyDeviceStateForCurrentDevice flatMap:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100060EB0;
  v13[3] = &unk_1000C5BF0;
  objc_copyWeak(&v14, buf);
  v8 = [v7 recover:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100060F58;
  v11[3] = &unk_1000C5AB0;
  objc_copyWeak(&v12, buf);
  v9 = [v8 addCompletionBlock:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);

  objc_destroyWeak(buf);

  return v9;
}

@end