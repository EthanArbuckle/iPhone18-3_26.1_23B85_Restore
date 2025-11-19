@interface HSPCWalletKeyExpressModeViewController
+ (id)_expresssModePassConflictError:(id)a3;
- (HSPCWalletKeyExpressModeViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)_addWalletKeyWithExpressMode;
- (id)_addWalletKeyWithiPhoneExpressModeOptions:(int64_t)a3 pairedWatchesExpressModeOptions:(int64_t)a4;
- (id)_enableExpressModeButtonTapped;
- (id)_requireAuthenticationButtonTapped;
- (id)_shouldShowSingleContinueButton;
- (id)commitConfiguration;
- (id)dismissButtonBlock;
- (void)_enableExpressModeAfterAuthWithPromise:(id)a3;
- (void)_sendAnalytics:(unint64_t)a3;
- (void)_updateHasOnboardedForWalletKey:(id)a3;
@end

@implementation HSPCWalletKeyExpressModeViewController

- (HSPCWalletKeyExpressModeViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [[HUIconView alloc] initWithFrame:1 contentMode:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v27.receiver = self;
  v27.super_class = HSPCWalletKeyExpressModeViewController;
  v10 = [(HSPCFixedSizeCenterContentViewController *)&v27 initWithCenterContentView:v9 size:120.0, 132.0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_config, a4);
    objc_storeStrong(&v11->_coordinator, a3);
    objc_storeStrong(&v11->_iconImageView, v9);
    v12 = sub_100063A44(@"HSProximityCardWalletKeyExpressModeTapToUnlockTitle");
    [(HSPCWalletKeyExpressModeViewController *)v11 setTitle:v12];

    objc_initWeak(&location, v11);
    v13 = [v8 home];
    v14 = [v13 hf_fetchWalletKeyDeviceStateForCurrentDevice];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100026F08;
    v24[3] = &unk_1000C6740;
    objc_copyWeak(&v25, &location);
    v15 = [v14 flatMap:v24];
    v16 = [v15 recover:&stru_1000C6760];

    v17 = [v8 home];
    v18 = [HFWalletUtilities walletKeyIconDescriptorForHome:v17 shouldUseKeyholeAsset:0 foriPhoneDevice:1];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100027390;
    v21[3] = &unk_1000C6788;
    v22 = v11;
    v23 = v9;
    v19 = [v18 addCompletionBlock:v21];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (id)commitConfiguration
{
  v4 = [(HSPCWalletKeyExpressModeViewController *)self continueAction];

  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      v9 = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped Continue button", &v9, 0x16u);
    }

    [(HSPCWalletKeyExpressModeViewController *)self _sendAnalytics:2];
    [(HSPCWalletKeyExpressModeViewController *)self _updateHasOnboardedForWalletKey:0];
    v7 = [NAFuture futureWithResult:&off_1000CD5E8];
  }

  else
  {
    v7 = [(HSPCWalletKeyExpressModeViewController *)self _enableExpressModeButtonTapped];
  }

  return v7;
}

- (id)_enableExpressModeButtonTapped
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v26 = self;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped Enable Express Mode button", buf, 0x16u);
  }

  [(HSPCWalletKeyExpressModeViewController *)self _sendAnalytics:0];
  v6 = [(HSPCWalletKeyExpressModeViewController *)self walletKeyDeviceState];
  v7 = [v6 walletKey];
  v8 = [v7 isExpressEnabled];

  if (v8)
  {
    v9 = [NAFuture futureWithResult:&off_1000CD5E8];
  }

  else
  {
    v10 = [(HSPCWalletKeyExpressModeViewController *)self walletKeyDeviceState];
    v11 = [v10 walletKey];
    v12 = v11 == 0;

    v13 = [(HSPCWalletKeyExpressModeViewController *)self walletKeyDeviceState];
    v14 = [v13 expressEnablementConflictingPassDescription];

    if (v12)
    {
      if (v14)
      {
        objc_initWeak(buf, self);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100027AAC;
        v22[3] = &unk_1000C67B0;
        objc_copyWeak(&v24, buf);
        v23 = v14;
        v9 = [NAFuture futureWithBlock:v22];

        objc_destroyWeak(&v24);
        objc_destroyWeak(buf);
      }

      else
      {
        v9 = [(HSPCWalletKeyExpressModeViewController *)self _addWalletKeyWithExpressMode];
      }
    }

    else
    {
      objc_initWeak(buf, self);
      if (v14)
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100027C74;
        v19[3] = &unk_1000C67B0;
        v15 = &v21;
        objc_copyWeak(&v21, buf);
        v20 = v14;
        v9 = [NAFuture futureWithBlock:v19];
      }

      else
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100027DD4;
        v17[3] = &unk_1000C6580;
        v15 = &v18;
        objc_copyWeak(&v18, buf);
        v9 = [NAFuture futureWithBlock:v17];
      }

      objc_destroyWeak(v15);
      objc_destroyWeak(buf);
    }
  }

  return v9;
}

- (void)_enableExpressModeAfterAuthWithPromise:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(LAContext);
  v15 = 0;
  v6 = [v5 canEvaluatePolicy:2 error:&v15];
  v7 = v15;
  if (v6)
  {
    v8 = sub_100063A44(@"HSProximityCardWalletKeyExpressModeTapToUnlock_ExpressModeAuthString");
    objc_initWeak(location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100028070;
    v11[3] = &unk_1000C6828;
    objc_copyWeak(&v14, location);
    v12 = v5;
    v13 = v4;
    [v12 evaluatePolicy:2 localizedReason:v8 reply:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138412802;
      *&location[4] = self;
      v17 = 2080;
      v18 = "[HSPCWalletKeyExpressModeViewController _enableExpressModeAfterAuthWithPromise:]";
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(%@:%s) cannot local authenticate. error = %@", location, 0x20u);
    }

    if (v7)
    {
      v10 = +[HFErrorHandler sharedHandler];
      [v10 handleError:v7];
    }

    [v5 invalidate];
    [v4 finishWithResult:&off_1000CD600];
  }
}

- (id)_requireAuthenticationButtonTapped
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v13 = 138412546;
    v14 = self;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped Require Authentication button", &v13, 0x16u);
  }

  [(HSPCWalletKeyExpressModeViewController *)self _sendAnalytics:1];
  v6 = [(HSPCWalletKeyExpressModeViewController *)self walletKeyDeviceState];
  v7 = [v6 walletKey];

  if (v7)
  {
    v8 = [(HSPCWalletKeyExpressModeViewController *)self walletKeyDeviceState];
    v9 = [v8 walletKey];
    v10 = [v9 UUID];
    [(HSPCWalletKeyExpressModeViewController *)self _updateHasOnboardedForWalletKey:v10];

    [NAFuture futureWithResult:&off_1000CD5E8];
  }

  else
  {
    [(HSPCWalletKeyExpressModeViewController *)self _addWalletKeyWithoutExpressMode];
  }
  v11 = ;

  return v11;
}

- (id)_shouldShowSingleContinueButton
{
  if (+[HFUtilities isAnIPad])
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = self;
      v31 = 2080;
      v32 = "[HSPCWalletKeyExpressModeViewController _shouldShowSingleContinueButton]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%@:%s) Showing single continue button for iPad", buf, 0x16u);
    }

    v4 = [NAFuture futureWithResult:&__kCFBooleanTrue];
  }

  else
  {
    v5 = [(HSPCWalletKeyExpressModeViewController *)self config];
    v6 = [v5 delegate];
    v7 = [(HSPCWalletKeyExpressModeViewController *)self config];
    v8 = [v6 stateMachineConfigurationGetLaunchReason:v7];

    if (v8)
    {
      v9 = objc_alloc_init(LAContext);
      v28 = 0;
      v10 = [v9 canEvaluatePolicy:2 error:&v28];
      v11 = v28;
      if (v10)
      {
        v12 = [(HSPCWalletKeyExpressModeViewController *)self walletKeyDeviceState];
        v13 = [v12 walletKey];
        v14 = [v13 isExpressEnabled];

        v15 = HFLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if (v14)
          {
            v16 = @"single continue button";
          }

          else
          {
            v16 = @"two buttons";
          }

          v17 = [(HSPCWalletKeyExpressModeViewController *)self walletKeyDeviceState];
          v18 = [v17 walletKey];
          *buf = 138413058;
          v30 = self;
          v31 = 2080;
          v32 = "[HSPCWalletKeyExpressModeViewController _shouldShowSingleContinueButton]";
          v33 = 2112;
          v34 = v16;
          v35 = 2112;
          v36 = v18;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(%@:%s) Showing %@ because walletKeyState = %@", buf, 0x2Au);
        }

        v19 = [NSNumber numberWithBool:v14];
        v4 = [NAFuture futureWithResult:v19];
      }

      else
      {
        v26 = HFLogForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v30 = self;
          v31 = 2080;
          v32 = "[HSPCWalletKeyExpressModeViewController _shouldShowSingleContinueButton]";
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "(%@:%s) Showing single continue button because cannot do local authentication", buf, 0x16u);
        }

        v4 = [NAFuture futureWithResult:&__kCFBooleanTrue];
      }
    }

    else
    {
      v20 = [(HSPCWalletKeyExpressModeViewController *)self walletKeyDeviceState];
      v21 = [v20 walletKey];

      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = @"NO";
        if (v21)
        {
          v23 = @"YES";
        }

        *buf = 138413058;
        v30 = self;
        v31 = 2080;
        v32 = "[HSPCWalletKeyExpressModeViewController _shouldShowSingleContinueButton]";
        v33 = 2112;
        v34 = v23;
        if (v21)
        {
          v24 = @"single continue button";
        }

        else
        {
          v24 = @"two buttons";
        }

        v35 = 2112;
        v36 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "(%@:%s) hasWalletKey is %@, so showing %@", buf, 0x2Au);
      }

      v25 = [NSNumber numberWithBool:v21 != 0];
      v4 = [NAFuture futureWithResult:v25];
    }
  }

  return v4;
}

- (id)_addWalletKeyWithExpressMode
{
  v3 = [(HSPCWalletKeyExpressModeViewController *)self config];
  v4 = [v3 delegate];
  v5 = [(HSPCWalletKeyExpressModeViewController *)self config];
  v6 = [v4 stateMachineConfigurationGetLaunchReason:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  return [(HSPCWalletKeyExpressModeViewController *)self _addWalletKeyWithiPhoneExpressModeOptions:3 pairedWatchesExpressModeOptions:v7];
}

- (id)_addWalletKeyWithiPhoneExpressModeOptions:(int64_t)a3 pairedWatchesExpressModeOptions:(int64_t)a4
{
  v7 = [(HSPCWalletKeyExpressModeViewController *)self config];
  v8 = [v7 home];
  v9 = [v8 hf_addWalletKeyWithOptions:a3];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100029194;
  v25[3] = &unk_1000C6850;
  v25[4] = self;
  v10 = [v9 addCompletionBlock:v25];

  v11 = [(HSPCWalletKeyExpressModeViewController *)self config];
  v12 = [v11 home];
  v13 = [v12 hf_addWalletKeyToPairedWatchesWithOptions:a4 | 1];
  v14 = [v13 recoverIgnoringError];
  v15 = [v14 flatMap:&stru_1000C6890];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000291B4;
  v23[3] = &unk_1000C68B8;
  v16 = v15;
  v24 = v16;
  v17 = [v10 flatMap:v23];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100029294;
  v21[3] = &unk_1000C5998;
  v22 = v16;
  v18 = v16;
  v19 = [v17 recover:v21];

  return v19;
}

- (void)_updateHasOnboardedForWalletKey:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HSPCWalletKeyExpressModeViewController *)self config];
    v7 = [v6 home];
    v19 = 136315650;
    v20 = "[HSPCWalletKeyExpressModeViewController _updateHasOnboardedForWalletKey:]";
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Updating hasOnboarded for Wallet Key (%@) for home %@", &v19, 0x20u);
  }

  v8 = [(HSPCWalletKeyExpressModeViewController *)self config];
  v9 = [v8 home];
  v10 = [v9 hf_setHasOnboardedForWalletKey];

  v11 = [HFUserItem alloc];
  v12 = [(HSPCWalletKeyExpressModeViewController *)self config];
  v13 = [v12 home];
  v14 = [(HSPCWalletKeyExpressModeViewController *)self config];
  v15 = [v14 home];
  v16 = [v15 currentUser];
  v17 = [v11 initWithHome:v13 user:v16 nameStyle:0];

  v18 = [v17 setDismissWalletKeyExpressModeOnboarding:1 forWalletKeyUUID:v4];
}

- (void)_sendAnalytics:(unint64_t)a3
{
  v6 = [(HSPCWalletKeyExpressModeViewController *)self config];
  v7 = [v6 delegate];
  v8 = [(HSPCWalletKeyExpressModeViewController *)self config];
  v9 = [v7 stateMachineConfigurationGetLaunchReason:v8];

  if (v9 > 9)
  {
    goto LABEL_4;
  }

  if (((1 << v9) & 0x3CC) != 0)
  {
    v10 = NSStringFromSelector(a2);
    NSLog(@"Encountered unexpected launchReason while in %@: %ld", v10, v9);

LABEL_4:
    v11 = 0;
    goto LABEL_10;
  }

  v12 = 2;
  if (v9 != 5)
  {
    v12 = 0;
  }

  if (v9 == 4)
  {
    v11 = 1;
  }

  else
  {
    v11 = v12;
  }

LABEL_10:
  if (a3 >= 4)
  {
    NSLog(@"(%@:%s) express mode selection %lu is invalid", self, "[HSPCWalletKeyExpressModeViewController _sendAnalytics:]", a3);
  }

  v15 = objc_opt_new();
  v13 = [NSNumber numberWithUnsignedInteger:a3];
  [v15 na_safeSetObject:v13 forKey:HFAnalyticsWalletKeyExpressModeSelectionKey];

  v14 = [NSNumber numberWithUnsignedInteger:v11];
  [v15 na_safeSetObject:v14 forKey:HFAnalyticsWalletKeyExpressModeLocationKey];

  [HFAnalytics sendEvent:27 withData:v15];
}

- (id)dismissButtonBlock
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000298A4;
  v4[3] = &unk_1000C5970;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

+ (id)_expresssModePassConflictError:(id)a3
{
  v14 = HFErrorHandlerOptionFailedItemNameKey;
  v15 = a3;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v5 = [v4 mutableCopy];

  v12[0] = HFErrorUserInfoOptionsKey;
  v6 = [v5 copy];
  v12[1] = HFErrorUserInfoOperationTypeKey;
  v13[0] = v6;
  v13[1] = HFOperationAddWalletKey;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v8 = [v7 mutableCopy];

  v9 = [NSError alloc];
  v10 = [v9 initWithDomain:HFErrorDomain code:81 userInfo:v8];

  return v10;
}

@end