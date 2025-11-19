@interface HSPCPINCodeViewController
- (HSPCPINCodeViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
@end

@implementation HSPCPINCodeViewController

- (HSPCPINCodeViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [[HUIconView alloc] initWithFrame:1 contentMode:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v24.receiver = self;
  v24.super_class = HSPCPINCodeViewController;
  v10 = [(HSPCFixedSizeCenterContentViewController *)&v24 initWithCenterContentView:v9 size:120.0, 132.0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_config, a4);
    objc_storeStrong(&v11->_coordinator, a3);
    v12 = sub_100063A44(@"HSProximityCardPINCodeTitle");
    [(HSPCPINCodeViewController *)v11 setTitle:v12];

    v13 = sub_100063A44(@"HSProximityCardPINCodeSubtitle");
    [(HSPCPINCodeViewController *)v11 setSubtitle:v13];

    v14 = [v8 home];
    v15 = [v14 hf_currentUserIsRestrictedGuest];

    if (v15)
    {
      v16 = sub_100063A44(@"HSProximityCardPINCodeSubtitle_RestrictedGuest");
      [(HSPCPINCodeViewController *)v11 setSubtitle:v16];
    }

    v17 = [(HSPCPINCodeViewController *)v11 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v11 futureSelector:"commitConfiguration"];
    v18 = [v8 home];
    v19 = [HFWalletUtilities packageIconIdentifierForHome:v18 shouldUseKeyholeAsset:0];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100019700;
    v22[3] = &unk_1000C6058;
    v23 = v9;
    v20 = [v19 flatMap:v22];
  }

  return v11;
}

- (id)commitConfiguration
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v32 = self;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%@:%@) User tapped Continue button", buf, 0x16u);
  }

  v6 = objc_alloc_init(NAFuture);
  if ((+[HFUtilities isUsingiCloud]& 1) != 0)
  {
    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    v8 = [(HSPCPINCodeViewController *)self config];
    v9 = [v8 home];
    v10 = [v7 pinCodeManagerForHome:v9];

    objc_initWeak(buf, self);
    v11 = [v10 hasValidConstraints];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100019C68;
    v22[3] = &unk_1000C60C0;
    objc_copyWeak(&v24, buf);
    v23 = v6;
    v12 = [v11 flatMap:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100019C58;
    v25[3] = &unk_1000C5970;
    v26 = v6;
    v13 = objc_retainBlock(v25);
    v14 = HFLocalizedString();
    v15 = HFLocalizedString();
    v29[0] = HFErrorHandlerOptionRetryButtonTextKey;
    v29[1] = HFErrorHandlerOptionCancelButtonTextKey;
    v30[0] = v14;
    v30[1] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
    v27[0] = HFErrorUserInfoOptionsKey;
    v27[1] = HFErrorUserInfoOperationTypeKey;
    v28[0] = v16;
    v28[1] = HFOperationAddPINCode;
    v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    v18 = [NSError alloc];
    v19 = [v18 initWithDomain:HFErrorDomain code:79 userInfo:v17];
    v20 = +[HFErrorHandler sharedHandler];
    [v20 handleError:v19 retryBlock:&stru_1000C6098 cancelBlock:v13];

    v10 = v26;
  }

  return v6;
}

@end