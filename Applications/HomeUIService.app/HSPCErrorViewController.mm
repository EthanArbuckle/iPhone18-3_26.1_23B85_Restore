@interface HSPCErrorViewController
+ (id)_findAccessoryInHomeForCoordinator:(id)coordinator config:(id)config;
+ (id)viewControllerForCoordinator:(id)coordinator config:(id)config;
- (BOOL)_isErrorInPublicHomeDomain:(id)domain;
- (HSPCErrorViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)handleLearnMoreURL;
- (id)iconDescriptor;
- (id)launchAdditionalSettings;
- (id)retry;
- (void)configureCard;
@end

@implementation HSPCErrorViewController

+ (id)viewControllerForCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    pairingError = [configCopy pairingError];
    v14 = 138412290;
    v15 = pairingError;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Presenting error card with error %@", &v14, 0xCu);
  }

  pairingError2 = [configCopy pairingError];
  hf_isThreadNetworkRequiredError = [pairingError2 hf_isThreadNetworkRequiredError];

  if (hf_isThreadNetworkRequiredError)
  {
    v11 = HSPCThreadNetworkRequiredViewController;
  }

  else
  {
    v11 = objc_opt_class();
  }

  v12 = [[v11 alloc] initWithCoordinator:coordinatorCopy config:configCopy];

  return v12;
}

- (BOOL)_isErrorInPublicHomeDomain:(id)domain
{
  domainCopy = domain;
  domain = [domainCopy domain];
  if ([domain isEqualToString:HFErrorDomain])
  {
    hf_isPublicHMError = 1;
  }

  else
  {
    hf_isPublicHMError = [domainCopy hf_isPublicHMError];
  }

  return hf_isPublicHMError;
}

- (HSPCErrorViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  pairingError = [configCopy pairingError];
  if (![pairingError hf_isAlreadyPairedError])
  {
    v15.receiver = self;
    v15.super_class = HSPCErrorViewController;
    v13 = [(HSPCCenterIconViewController *)&v15 initWithCoordinator:coordinatorCopy config:configCopy];
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = [HSPCErrorViewController _findAccessoryInHomeForCoordinator:coordinatorCopy config:configCopy];
  if (v9)
  {
    category = [configCopy category];
    categoryType = [category categoryType];

    v12 = [[HUHomeAccessoryTileView alloc] initWithFrame:categoryType categoryType:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v17.receiver = self;
    v17.super_class = HSPCErrorViewController;
    v13 = [(HSPCCenterIconViewController *)&v17 initWithCoordinator:coordinatorCopy config:configCopy iconView:v12];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HSPCErrorViewController;
    v13 = [(HSPCCenterIconViewController *)&v16 initWithCoordinator:coordinatorCopy config:configCopy];
  }

  if (v13)
  {
LABEL_8:
    v13->_accessoryAlreadyAdded = 0;
    [(HSPCErrorViewController *)v13 configureCard];
  }

LABEL_9:

  return v13;
}

+ (id)_findAccessoryInHomeForCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  home = [configCopy home];
  accessories = [home accessories];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001BFD0;
  v17[3] = &unk_1000C61F8;
  v9 = coordinatorCopy;
  v18 = v9;
  v10 = [accessories na_firstObjectPassingTest:v17];

  if (!v10)
  {
    pairingError = [configCopy pairingError];
    code = [pairingError code];

    if (code == 13)
    {
      accessories2 = [home accessories];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10001C044;
      v15[3] = &unk_1000C61F8;
      v16 = v9;
      v10 = [accessories2 na_firstObjectPassingTest:v15];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)configureCard
{
  config = [(HSPCCenterIconViewController *)self config];
  pairingError = [config pairingError];

  userInfo = [pairingError userInfo];
  v6 = [userInfo objectForKeyedSubscript:?];

  if ([(HSPCErrorViewController *)self _isErrorInPublicHomeDomain:v6])
  {
    v7 = v6;

    pairingError = v7;
  }

  if (!pairingError)
  {
    NSLog(@"HSPCErrorViewController introduced into flow without an error object.  In production this will recover with a generic error");
    pairingError = [NSError hf_errorWithCode:69];
  }

  userInfo2 = [pairingError userInfo];
  v9 = HFErrorUserInfoOptionsKey;
  v10 = [userInfo2 objectForKeyedSubscript:HFErrorUserInfoOptionsKey];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    config2 = [(HSPCCenterIconViewController *)self config];
    pairingError2 = [config2 pairingError];
    userInfo3 = [pairingError2 userInfo];
    v16 = [userInfo3 objectForKeyedSubscript:v9];

    v12 = v16;
  }

  v17 = HFLocalizedString();
  if ([pairingError hf_isHMErrorWithCode:52])
  {
    v18 = HFLocalizedString();

    v17 = v18;
  }

  v19 = [v12 objectForKeyedSubscript:HFErrorUserInfoOptionTitleKey];
  if (v19)
  {
    [(HSPCErrorViewController *)self setTitle:v19];
  }

  else
  {
    coordinator = [(HSPCCenterIconViewController *)self coordinator];
    if ([coordinator launchReason])
    {
      HULocalizedString();
    }

    else
    {
      HFLocalizedString();
    }
    v21 = ;
    [(HSPCErrorViewController *)self setTitle:v21];
  }

  v22 = [v12 objectForKeyedSubscript:HFErrorUserInfoOptionDescriptionKey];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v17;
  }

  [(HSPCErrorViewController *)self setSubtitle:v24];

  if ([pairingError hf_isAlreadyPairedError])
  {
    coordinator2 = [(HSPCCenterIconViewController *)self coordinator];
    config3 = [(HSPCCenterIconViewController *)self config];
    v27 = [HSPCErrorViewController _findAccessoryInHomeForCoordinator:coordinator2 config:config3];

    if (v27)
    {
      v28 = v17;
      [(HSPCErrorViewController *)self setAccessoryAlreadyAdded:1];
      name = [v27 name];
      v30 = HFLocalizedStringWithFormat();
      [(HSPCErrorViewController *)self setSubtitle:v30, name];

      subtitle = [(HSPCErrorViewController *)self subtitle];
      isReachable = [v27 isReachable];
      v33 = v12;
      if (isReachable)
      {
        v34 = &stru_1000C89F8;
      }

      else
      {
        v34 = HFLocalizedString();
      }

      v36 = [subtitle stringByAppendingString:v34];
      [(HSPCErrorViewController *)self setSubtitle:v36];

      if ((isReachable & 1) == 0)
      {
      }

      v12 = v33;
      v17 = v28;
    }

    else
    {
      v35 = HFLocalizedString();
      [(HSPCErrorViewController *)self setTitle:v35];

      subtitle = HFLocalizedString();
      [(HSPCErrorViewController *)self setSubtitle:subtitle];
    }
  }

  if ([pairingError hf_isHMErrorWithCodePrivate:2015])
  {
    v37 = [(HSPCErrorViewController *)self addProminentButtonWithTitleKey:@"HUProximityCardSetupAccessoryErrorRetryButton" target:self futureSelector:"retry"];
    v38 = "dismissFuture";
    v39 = @"HUProximityCardSetupAccessoryErrorSetupLaterLink";
LABEL_31:
    v40 = [(HSPCErrorViewController *)self addOptionalButtonWithTitleKey:v39 target:self futureSelector:v38];
    goto LABEL_36;
  }

  if ([pairingError hf_isHMErrorWithCode:105])
  {
    v41 = [(HSPCErrorViewController *)self addProminentButtonWithTitleKey:@"HULearnMoreTitle" target:self futureSelector:"handleLearnMoreURL"];
  }

  else
  {
    v42 = [(HSPCErrorViewController *)self addProminentDismissButtonWithTitleKey:@"HUOkTitle"];
    if ([(HSPCErrorViewController *)self accessoryAlreadyAdded])
    {
      v38 = "launchAdditionalSettings";
      v39 = @"HUProximityCardSetupAccessoryErrorVCAdditionalSettingsButton";
      goto LABEL_31;
    }
  }

LABEL_36:
  v43 = HFLogForCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    title = [(HSPCErrorViewController *)self title];
    [(HSPCErrorViewController *)self subtitle];
    v45 = v54 = v12;
    [(HSPCCenterIconViewController *)self config];
    v52 = v46 = v17;
    pairingError3 = [v52 pairingError];
    config4 = [(HSPCCenterIconViewController *)self config];
    pairingError4 = [config4 pairingError];
    [pairingError4 userInfo];
    v50 = v53 = v6;
    v51 = [v50 objectForKeyedSubscript:NSUnderlyingErrorKey];
    *buf = 138413314;
    v56 = title;
    v57 = 2112;
    v58 = v45;
    v59 = 2112;
    v60 = pairingError3;
    v61 = 2112;
    v62 = v51;
    v63 = 2112;
    v64 = v46;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Presenting error screen w/ title %@, subtitle %@, pairing error %@, underlyingError %@, errorLocalizedDescription %@", buf, 0x34u);

    v17 = v46;
    v6 = v53;

    v12 = v54;
  }
}

- (id)retry
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v13 = 138412546;
    selfCopy = self;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v13, 0x16u);
  }

  coordinator = [(HSPCCenterIconViewController *)self coordinator];
  [coordinator resetForRetry];

  coordinator2 = [(HSPCCenterIconViewController *)self coordinator];
  coordinator3 = [(HSPCCenterIconViewController *)self coordinator];
  setupCode = [coordinator3 setupCode];
  v10 = [coordinator2 didReceiveSetupCode:setupCode withPayload:0 fromViewController:self];

  v11 = [NAFuture futureWithResult:&off_1000CD4E0];

  return v11;
}

- (id)iconDescriptor
{
  if ([(HSPCErrorViewController *)self accessoryAlreadyAdded])
  {
    v3 = 0;
  }

  else
  {
    v4 = +[UIColor hf_keyColor];
    v5 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v4];

    config = [(HSPCCenterIconViewController *)self config];
    pairingError = [config pairingError];
    v8 = [pairingError hf_isHMErrorWithCode:105];

    if (v8)
    {
      v9 = HFSymbolIconIdentifierHomeKit;
    }

    else
    {
      v9 = @"exclamationmark.triangle.fill";
    }

    v3 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v9 configuration:v5];
  }

  return v3;
}

- (id)handleLearnMoreURL
{
  v2 = +[HFOpenURLRouter sharedInstance];
  v3 = +[HFURLComponents homeHub2OnboardingURL];
  v4 = [v2 openSensitiveURL:v3];

  return [NAFuture futureWithResult:&off_1000CD4C8];
}

- (id)launchAdditionalSettings
{
  config = [(HSPCCenterIconViewController *)self config];
  home = [config home];

  coordinator = [(HSPCCenterIconViewController *)self coordinator];
  config2 = [(HSPCCenterIconViewController *)self config];
  v7 = [HSPCErrorViewController _findAccessoryInHomeForCoordinator:coordinator config:config2];

  v8 = [HFSetupPairingControllerUtilities urlComponentHomeSettingsForAccessory:v7 forHome:home];
  commitConfiguration = [(HSPCErrorViewController *)self commitConfiguration];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001CB18;
  v13[3] = &unk_1000C5658;
  v14 = v8;
  v10 = v8;
  v11 = [commitConfiguration addCompletionBlock:v13];

  return commitConfiguration;
}

@end