@interface StoreKitServiceConnection
- (void)addPostbacksFromDictionaries:(id)dictionaries forBundleID:(id)d completion:(id)completion;
- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)configureSourceForTestPostbackDictionaries:(id)dictionaries forBundleID:(id)d completion:(id)completion;
- (void)developerPostbackURLForBundleID:(id)d completion:(id)completion;
- (void)handleAuthenticateRequest:(id)request resultHandler:(id)handler;
- (void)handleDialogRequest:(id)request resultHandler:(id)handler;
- (void)handleEngagementRequest:(id)request resultHandler:(id)handler;
- (void)retrieveTestPostbacksForBundleID:(id)d completion:(id)completion;
- (void)sendTestPingbackForBundleID:(id)d completion:(id)completion;
- (void)validateSKAdNetworkImpression:(id)impression withPublicKey:(id)key forBundleID:(id)d source:(int64_t)source completion:(id)completion;
@end

@implementation StoreKitServiceConnection

- (void)addPostbacksFromDictionaries:(id)dictionaries forBundleID:(id)d completion:(id)completion
{
  dictionariesCopy = dictionaries;
  dCopy = d;
  completionCopy = completion;
  v11 = sub_10024E8E0(self, @"com.apple.private.storekit.octane-ad-network");
  v12 = ASDLogHandleForCategory();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v38 = 2082;
      v39 = "[StoreKitServiceConnection addPostbacksFromDictionaries:forBundleID:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
    }

    v14 = sub_1003A4EE0();
    v15 = sub_1003AEC50(v14, dCopy);

    v16 = ASDLogHandleForCategory();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Prior mock postbacks cleared.", buf, 2u);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = dictionariesCopy;
      v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v30 = dictionariesCopy;
        v20 = *v32;
        while (1)
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = sub_10024BCE8(InstallAttributionPingback, *(*(&v31 + 1) + 8 * i));
            sub_10024D43C(v22, dCopy);
            v23 = sub_1003A4EE0();
            v24 = sub_1003AE708(v23, v22);

            v25 = ASDLogHandleForCategory();
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            if (v24)
            {
              if (!v26)
              {
                goto LABEL_18;
              }

              *buf = 0;
              v27 = v25;
              v28 = "Mock postback added.";
            }

            else
            {
              if (!v26)
              {
                goto LABEL_18;
              }

              *buf = 0;
              v27 = v25;
              v28 = "Adding mock postback failed.";
            }

            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
LABEL_18:
          }

          v19 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (!v19)
          {
            dictionariesCopy = v30;
            break;
          }
        }
      }
    }

    else if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Clearing prior postbacks failed. Not adding new ones", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for SKAdNetwork test methods", buf, 0xCu);
    }

    v29 = ASDErrorWithTitleAndMessage();
    (completionCopy)[2](completionCopy, v29);
  }
}

- (void)developerPostbackURLForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = sub_10024E8E0(self, @"com.apple.private.storekit.octane-ad-network");
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v22 = 2082;
      v23 = "[StoreKitServiceConnection developerPostbackURLForBundleID:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
    }

    v19 = 0;
    v11 = [[LSApplicationRecord alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v19];
    v12 = v11;
    if (v11)
    {
      v13 = sub_100268548(v11);
      v14 = v13;
      if (v13)
      {
        v15 = sub_1002C5338(v13);
        v16 = sub_10024C53C(InstallAttributionPingback, v15);
        v17 = [NSURL URLWithString:v16];
      }

      else
      {
        v17 = 0;
      }

      completionCopy[2](completionCopy, v17);
    }

    else
    {
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy2 = v19;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "App record not found:%@", buf, 0xCu);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for SKAdNetwork test methods", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (void)retrieveTestPostbacksForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = sub_10024E8E0(self, @"com.apple.private.storekit.octane-ad-network");
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      selfCopy2 = self;
      v15 = 2082;
      v16 = "[StoreKitServiceConnection retrieveTestPostbacksForBundleID:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v13, 0x16u);
    }

    v11 = sub_1003A4EE0();
    v12 = sub_1003AE9B0(v11, dCopy);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      selfCopy2 = self;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for SKAdNetwork test methods", &v13, 0xCu);
    }

    v12 = objc_opt_new();
  }

  completionCopy[2](completionCopy, v12);
}

- (void)sendTestPingbackForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = sub_10024E8E0(self, @"com.apple.private.storekit.octane-ad-network");
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v16 = 2082;
      v17 = "[StoreKitServiceConnection sendTestPingbackForBundleID:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
    }

    v11 = sub_1003A4EE0();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10024EF60;
    v12[3] = &unk_10051E8A8;
    v13 = completionCopy;
    sub_1003B09D4(v11, dCopy, v12);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for SKAdNetwork test methods", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)validateSKAdNetworkImpression:(id)impression withPublicKey:(id)key forBundleID:(id)d source:(int64_t)source completion:(id)completion
{
  impressionCopy = impression;
  keyCopy = key;
  dCopy = d;
  completionCopy = completion;
  v16 = sub_10024E8E0(self, @"com.apple.private.storekit.octane-ad-network");
  v17 = ASDLogHandleForCategory();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2082;
      *&buf[14] = "[StoreKitServiceConnection validateSKAdNetworkImpression:withPublicKey:forBundleID:source:completion:]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v37 = sub_10024F4B8;
    v38 = sub_10024F4C8;
    v39 = 0;
    if (source == 4)
    {
      v19 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Validating test impression from web", v34, 0xCu);
      }

      v20 = sub_1003BC9A0();
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10024F4D0;
      v33[3] = &unk_10051E8D0;
      v33[4] = buf;
      [v20 validateWebAdImpressionResponseProperties:impressionCopy completionHandler:v33];
    }

    else
    {
      v22 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Validating test web impression from app", v34, 0xCu);
      }

      v20 = [impressionCopy objectForKeyedSubscript:@"adNetworkAttributionSignature"];
      if (!v20)
      {
        v31 = ASDErrorWithDescription();
        completionCopy[2](completionCopy, v31);

        goto LABEL_22;
      }

      v23 = [ASDInstallAttributionParamsConfig paramsFromDictionary:impressionCopy];
      [v23 setSourceAppBundleId:dCopy];
      v24 = [impressionCopy objectForKeyedSubscript:@"fidelity-type"];
      v25 = sub_1003BC9A0();
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10024F4E0;
      v32[3] = &unk_10051E8D0;
      v32[4] = buf;
      [v25 validateImpression:v23 withFidelityType:v24 completionHandler:v32];
    }

    if (*(*&buf[8] + 40))
    {
      v26 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(*&buf[8] + 40);
        *v34 = 138412290;
        selfCopy2 = v27;
        v28 = "Validation failed with error:%@";
        v29 = v26;
        v30 = 12;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, v34, v30);
      }
    }

    else
    {
      v26 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        v28 = "Validation passed.";
        v29 = v26;
        v30 = 2;
        goto LABEL_20;
      }
    }

    completionCopy[2](completionCopy, *(*&buf[8] + 40));
LABEL_22:
    _Block_object_dispose(buf, 8);

    goto LABEL_23;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for SKAdNetwork test methods", buf, 0xCu);
  }

  v21 = ASDErrorWithTitleAndMessage();
  completionCopy[2](completionCopy, v21);

LABEL_23:
}

- (void)configureSourceForTestPostbackDictionaries:(id)dictionaries forBundleID:(id)d completion:(id)completion
{
  dictionariesCopy = dictionaries;
  completionCopy = completion;
  v9 = sub_10024E8E0(self, @"com.apple.private.storekit.octane-ad-network");
  v10 = ASDLogHandleForCategory();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      selfCopy2 = self;
      v15 = 2082;
      v16 = "[StoreKitServiceConnection configureSourceForTestPostbackDictionaries:forBundleID:completion:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v13, 0x16u);
    }

    v12 = sub_1003A4EE0();
    sub_1003AEFC0(v12, dictionariesCopy, completionCopy);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      selfCopy2 = self;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for SKAdNetwork test methods", &v13, 0xCu);
    }

    v12 = ASDErrorWithTitleAndMessage();
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }
}

- (void)handleAuthenticateRequest:(id)request resultHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = sub_10024E8E0(self, @"com.apple.private.storekit.background-auth");
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting authenticate task", buf, 0xCu);
    }

    v11 = [[AMSAuthenticateTask alloc] initWithRequest:requestCopy];
    [v11 setDelegate:self];
    performAuthentication = [v11 performAuthentication];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10024F8BC;
    v13[3] = &unk_10051E040;
    v13[4] = self;
    v14 = handlerCopy;
    [performAuthentication addFinishBlock:v13];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for background authentication", buf, 0xCu);
    }

    v11 = ASDErrorWithTitleAndMessage();
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)handleDialogRequest:(id)request resultHandler:(id)handler
{
  handlerCopy = handler;
  v6 = ASDErrorWithTitleAndMessage();
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)handleEngagementRequest:(id)request resultHandler:(id)handler
{
  handlerCopy = handler;
  v6 = ASDErrorWithTitleAndMessage();
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting dialog task", buf, 0xCu);
  }

  v10 = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];
  present = [v10 present];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10024FC40;
  v13[3] = &unk_10051E068;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [present addFinishBlock:v13];
}

@end