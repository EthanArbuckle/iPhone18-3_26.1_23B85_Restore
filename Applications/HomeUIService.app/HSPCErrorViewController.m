@interface HSPCErrorViewController
+ (id)_findAccessoryInHomeForCoordinator:(id)a3 config:(id)a4;
+ (id)viewControllerForCoordinator:(id)a3 config:(id)a4;
- (BOOL)_isErrorInPublicHomeDomain:(id)a3;
- (HSPCErrorViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)handleLearnMoreURL;
- (id)iconDescriptor;
- (id)launchAdditionalSettings;
- (id)retry;
- (void)configureCard;
@end

@implementation HSPCErrorViewController

+ (id)viewControllerForCoordinator:(id)a3 config:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 pairingError];
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Presenting error card with error %@", &v14, 0xCu);
  }

  v9 = [v6 pairingError];
  v10 = [v9 hf_isThreadNetworkRequiredError];

  if (v10)
  {
    v11 = HSPCThreadNetworkRequiredViewController;
  }

  else
  {
    v11 = objc_opt_class();
  }

  v12 = [[v11 alloc] initWithCoordinator:v5 config:v6];

  return v12;
}

- (BOOL)_isErrorInPublicHomeDomain:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:HFErrorDomain])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 hf_isPublicHMError];
  }

  return v5;
}

- (HSPCErrorViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 pairingError];
  if (![v8 hf_isAlreadyPairedError])
  {
    v15.receiver = self;
    v15.super_class = HSPCErrorViewController;
    v13 = [(HSPCCenterIconViewController *)&v15 initWithCoordinator:v6 config:v7];
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = [HSPCErrorViewController _findAccessoryInHomeForCoordinator:v6 config:v7];
  if (v9)
  {
    v10 = [v7 category];
    v11 = [v10 categoryType];

    v12 = [[HUHomeAccessoryTileView alloc] initWithFrame:v11 categoryType:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v17.receiver = self;
    v17.super_class = HSPCErrorViewController;
    v13 = [(HSPCCenterIconViewController *)&v17 initWithCoordinator:v6 config:v7 iconView:v12];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HSPCErrorViewController;
    v13 = [(HSPCCenterIconViewController *)&v16 initWithCoordinator:v6 config:v7];
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

+ (id)_findAccessoryInHomeForCoordinator:(id)a3 config:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 home];
  v8 = [v7 accessories];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001BFD0;
  v17[3] = &unk_1000C61F8;
  v9 = v5;
  v18 = v9;
  v10 = [v8 na_firstObjectPassingTest:v17];

  if (!v10)
  {
    v11 = [v6 pairingError];
    v12 = [v11 code];

    if (v12 == 13)
    {
      v13 = [v7 accessories];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10001C044;
      v15[3] = &unk_1000C61F8;
      v16 = v9;
      v10 = [v13 na_firstObjectPassingTest:v15];
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
  v3 = [(HSPCCenterIconViewController *)self config];
  v4 = [v3 pairingError];

  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:?];

  if ([(HSPCErrorViewController *)self _isErrorInPublicHomeDomain:v6])
  {
    v7 = v6;

    v4 = v7;
  }

  if (!v4)
  {
    NSLog(@"HSPCErrorViewController introduced into flow without an error object.  In production this will recover with a generic error");
    v4 = [NSError hf_errorWithCode:69];
  }

  v8 = [v4 userInfo];
  v9 = HFErrorUserInfoOptionsKey;
  v10 = [v8 objectForKeyedSubscript:HFErrorUserInfoOptionsKey];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [(HSPCCenterIconViewController *)self config];
    v14 = [v13 pairingError];
    v15 = [v14 userInfo];
    v16 = [v15 objectForKeyedSubscript:v9];

    v12 = v16;
  }

  v17 = HFLocalizedString();
  if ([v4 hf_isHMErrorWithCode:52])
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
    v20 = [(HSPCCenterIconViewController *)self coordinator];
    if ([v20 launchReason])
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

  if ([v4 hf_isAlreadyPairedError])
  {
    v25 = [(HSPCCenterIconViewController *)self coordinator];
    v26 = [(HSPCCenterIconViewController *)self config];
    v27 = [HSPCErrorViewController _findAccessoryInHomeForCoordinator:v25 config:v26];

    if (v27)
    {
      v28 = v17;
      [(HSPCErrorViewController *)self setAccessoryAlreadyAdded:1];
      v29 = [v27 name];
      v30 = HFLocalizedStringWithFormat();
      [(HSPCErrorViewController *)self setSubtitle:v30, v29];

      v31 = [(HSPCErrorViewController *)self subtitle];
      v32 = [v27 isReachable];
      v33 = v12;
      if (v32)
      {
        v34 = &stru_1000C89F8;
      }

      else
      {
        v34 = HFLocalizedString();
      }

      v36 = [v31 stringByAppendingString:v34];
      [(HSPCErrorViewController *)self setSubtitle:v36];

      if ((v32 & 1) == 0)
      {
      }

      v12 = v33;
      v17 = v28;
    }

    else
    {
      v35 = HFLocalizedString();
      [(HSPCErrorViewController *)self setTitle:v35];

      v31 = HFLocalizedString();
      [(HSPCErrorViewController *)self setSubtitle:v31];
    }
  }

  if ([v4 hf_isHMErrorWithCodePrivate:2015])
  {
    v37 = [(HSPCErrorViewController *)self addProminentButtonWithTitleKey:@"HUProximityCardSetupAccessoryErrorRetryButton" target:self futureSelector:"retry"];
    v38 = "dismissFuture";
    v39 = @"HUProximityCardSetupAccessoryErrorSetupLaterLink";
LABEL_31:
    v40 = [(HSPCErrorViewController *)self addOptionalButtonWithTitleKey:v39 target:self futureSelector:v38];
    goto LABEL_36;
  }

  if ([v4 hf_isHMErrorWithCode:105])
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
    v44 = [(HSPCErrorViewController *)self title];
    [(HSPCErrorViewController *)self subtitle];
    v45 = v54 = v12;
    [(HSPCCenterIconViewController *)self config];
    v52 = v46 = v17;
    v47 = [v52 pairingError];
    v48 = [(HSPCCenterIconViewController *)self config];
    v49 = [v48 pairingError];
    [v49 userInfo];
    v50 = v53 = v6;
    v51 = [v50 objectForKeyedSubscript:NSUnderlyingErrorKey];
    *buf = 138413314;
    v56 = v44;
    v57 = 2112;
    v58 = v45;
    v59 = 2112;
    v60 = v47;
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
    v14 = self;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v13, 0x16u);
  }

  v6 = [(HSPCCenterIconViewController *)self coordinator];
  [v6 resetForRetry];

  v7 = [(HSPCCenterIconViewController *)self coordinator];
  v8 = [(HSPCCenterIconViewController *)self coordinator];
  v9 = [v8 setupCode];
  v10 = [v7 didReceiveSetupCode:v9 withPayload:0 fromViewController:self];

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

    v6 = [(HSPCCenterIconViewController *)self config];
    v7 = [v6 pairingError];
    v8 = [v7 hf_isHMErrorWithCode:105];

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
  v3 = [(HSPCCenterIconViewController *)self config];
  v4 = [v3 home];

  v5 = [(HSPCCenterIconViewController *)self coordinator];
  v6 = [(HSPCCenterIconViewController *)self config];
  v7 = [HSPCErrorViewController _findAccessoryInHomeForCoordinator:v5 config:v6];

  v8 = [HFSetupPairingControllerUtilities urlComponentHomeSettingsForAccessory:v7 forHome:v4];
  v9 = [(HSPCErrorViewController *)self commitConfiguration];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001CB18;
  v13[3] = &unk_1000C5658;
  v14 = v8;
  v10 = v8;
  v11 = [v9 addCompletionBlock:v13];

  return v9;
}

@end