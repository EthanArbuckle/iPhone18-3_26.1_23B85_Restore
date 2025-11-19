@interface StoreKitServiceConnection
- (void)addPostbacksFromDictionaries:(id)a3 forBundleID:(id)a4 completion:(id)a5;
- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)configureSourceForTestPostbackDictionaries:(id)a3 forBundleID:(id)a4 completion:(id)a5;
- (void)developerPostbackURLForBundleID:(id)a3 completion:(id)a4;
- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4;
- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4;
- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4;
- (void)retrieveTestPostbacksForBundleID:(id)a3 completion:(id)a4;
- (void)sendTestPingbackForBundleID:(id)a3 completion:(id)a4;
- (void)validateSKAdNetworkImpression:(id)a3 withPublicKey:(id)a4 forBundleID:(id)a5 source:(int64_t)a6 completion:(id)a7;
@end

@implementation StoreKitServiceConnection

- (void)addPostbacksFromDictionaries:(id)a3 forBundleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10024E8E0(self, @"com.apple.private.storekit.octane-ad-network");
  v12 = ASDLogHandleForCategory();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v37 = self;
      v38 = 2082;
      v39 = "[StoreKitServiceConnection addPostbacksFromDictionaries:forBundleID:completion:]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
    }

    v14 = sub_1003A4EE0();
    v15 = sub_1003AEC50(v14, v9);

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
      v16 = v8;
      v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v30 = v8;
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
            sub_10024D43C(v22, v9);
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
            v8 = v30;
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

    v10[2](v10, 0);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v37 = self;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for SKAdNetwork test methods", buf, 0xCu);
    }

    v29 = ASDErrorWithTitleAndMessage();
    (v10)[2](v10, v29);
  }
}

- (void)developerPostbackURLForBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10024E8E0(self, @"com.apple.private.storekit.octane-ad-network");
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v21 = self;
      v22 = 2082;
      v23 = "[StoreKitServiceConnection developerPostbackURLForBundleID:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
    }

    v19 = 0;
    v11 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v19];
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

      v7[2](v7, v17);
    }

    else
    {
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v19;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "App record not found:%@", buf, 0xCu);
      }

      if (v7)
      {
        v7[2](v7, 0);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = self;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for SKAdNetwork test methods", buf, 0xCu);
    }

    v7[2](v7, 0);
  }
}

- (void)retrieveTestPostbacksForBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10024E8E0(self, @"com.apple.private.storekit.octane-ad-network");
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = self;
      v15 = 2082;
      v16 = "[StoreKitServiceConnection retrieveTestPostbacksForBundleID:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v13, 0x16u);
    }

    v11 = sub_1003A4EE0();
    v12 = sub_1003AE9B0(v11, v6);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = self;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for SKAdNetwork test methods", &v13, 0xCu);
    }

    v12 = objc_opt_new();
  }

  v7[2](v7, v12);
}

- (void)sendTestPingbackForBundleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10024E8E0(self, @"com.apple.private.storekit.octane-ad-network");
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = self;
      v16 = 2082;
      v17 = "[StoreKitServiceConnection sendTestPingbackForBundleID:completion:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", buf, 0x16u);
    }

    v11 = sub_1003A4EE0();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10024EF60;
    v12[3] = &unk_10051E8A8;
    v13 = v7;
    sub_1003B09D4(v11, v6, v12);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = self;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for SKAdNetwork test methods", buf, 0xCu);
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)validateSKAdNetworkImpression:(id)a3 withPublicKey:(id)a4 forBundleID:(id)a5 source:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
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
    if (a6 == 4)
    {
      v19 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 138543362;
        v35 = self;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Validating test impression from web", v34, 0xCu);
      }

      v20 = sub_1003BC9A0();
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10024F4D0;
      v33[3] = &unk_10051E8D0;
      v33[4] = buf;
      [v20 validateWebAdImpressionResponseProperties:v12 completionHandler:v33];
    }

    else
    {
      v22 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 138543362;
        v35 = self;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Validating test web impression from app", v34, 0xCu);
      }

      v20 = [v12 objectForKeyedSubscript:@"adNetworkAttributionSignature"];
      if (!v20)
      {
        v31 = ASDErrorWithDescription();
        v15[2](v15, v31);

        goto LABEL_22;
      }

      v23 = [ASDInstallAttributionParamsConfig paramsFromDictionary:v12];
      [v23 setSourceAppBundleId:v14];
      v24 = [v12 objectForKeyedSubscript:@"fidelity-type"];
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
        v35 = v27;
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

    v15[2](v15, *(*&buf[8] + 40));
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
  v15[2](v15, v21);

LABEL_23:
}

- (void)configureSourceForTestPostbackDictionaries:(id)a3 forBundleID:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = sub_10024E8E0(self, @"com.apple.private.storekit.octane-ad-network");
  v10 = ASDLogHandleForCategory();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = self;
      v15 = 2082;
      v16 = "[StoreKitServiceConnection configureSourceForTestPostbackDictionaries:forBundleID:completion:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}s", &v13, 0x16u);
    }

    v12 = sub_1003A4EE0();
    sub_1003AEFC0(v12, v7, v8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = self;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for SKAdNetwork test methods", &v13, 0xCu);
    }

    v12 = ASDErrorWithTitleAndMessage();
    (*(v8 + 2))(v8, 0, v12);
  }
}

- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10024E8E0(self, @"com.apple.private.storekit.background-auth");
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting authenticate task", buf, 0xCu);
    }

    v11 = [[AMSAuthenticateTask alloc] initWithRequest:v6];
    [v11 setDelegate:self];
    v12 = [v11 performAuthentication];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10024F8BC;
    v13[3] = &unk_10051E040;
    v13[4] = self;
    v14 = v7;
    [v12 addFinishBlock:v13];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = self;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Process is not entitled for background authentication", buf, 0xCu);
    }

    v11 = ASDErrorWithTitleAndMessage();
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4
{
  v5 = a4;
  v6 = ASDErrorWithTitleAndMessage();
  (*(a4 + 2))(v5, 0, v6);
}

- (void)handleEngagementRequest:(id)a3 resultHandler:(id)a4
{
  v5 = a4;
  v6 = ASDErrorWithTitleAndMessage();
  (*(a4 + 2))(v5, 0, v6);
}

- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting dialog task", buf, 0xCu);
  }

  v10 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v8];
  v11 = [v10 present];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10024FC40;
  v13[3] = &unk_10051E068;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v11 addFinishBlock:v13];
}

@end