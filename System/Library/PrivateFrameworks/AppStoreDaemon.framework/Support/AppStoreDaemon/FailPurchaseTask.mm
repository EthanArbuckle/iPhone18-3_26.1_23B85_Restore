@interface FailPurchaseTask
- (void)main;
@end

@implementation FailPurchaseTask

- (void)main
{
  if ([(PurchaseInfo *)self->_purchaseInfo discoveredUpdate])
  {
    v3 = [(PurchaseInfo *)self->_purchaseInfo bundleID];

    if (v3)
    {
      *v47 = 0;
      *&v47[8] = v47;
      *&v47[16] = 0x2020000000;
      LOBYTE(v48) = 1;
      v4 = sub_1002BB3F0();
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10036485C;
      v44[3] = &unk_100521610;
      v44[4] = self;
      v44[5] = v47;
      [v4 modifyUsingTransaction:v44];

      if (*(*&v47[8] + 24) == 1)
      {
        v5 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [(PurchaseInfo *)self->_purchaseInfo logKey];
          *buf = 138412290;
          v46 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Resetting update after purchase failed", buf, 0xCu);
        }

        v7 = sub_1002BB3F0();
        v8 = [(PurchaseInfo *)self->_purchaseInfo bundleID];
        v9 = [(PurchaseInfo *)self->_purchaseInfo logKey];
        sub_1002BBC18(v7, v8, v9);
      }

      v10 = +[UpdatesManager sharedManager];
      v11 = [(PurchaseInfo *)self->_purchaseInfo logKey];
      [v10 noteUpdatesStateChanged:@"Purchase Failure" logKey:v11];

      _Block_object_dispose(v47, 8);
    }
  }

  if ([(PurchaseInfo *)self->_purchaseInfo generatedVendorID])
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(PurchaseInfo *)self->_purchaseInfo logKey];
      *v47 = 138412290;
      *&v47[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Removing generated vendor identifier", v47, 0xCu);
    }

    v14 = +[LSApplicationWorkspace defaultWorkspace];
    v15 = [(PurchaseInfo *)self->_purchaseInfo bundleID];

    if (v15)
    {
      v16 = [(PurchaseInfo *)self->_purchaseInfo vendorName];
      v17 = [(PurchaseInfo *)self->_purchaseInfo bundleID];
      [v14 removeDeviceIdentifierForVendorName:v16 bundleIdentifier:v17];
    }

    v18 = [(PurchaseInfo *)self->_purchaseInfo temporaryBundleID];

    if (v18)
    {
      v19 = [(PurchaseInfo *)self->_purchaseInfo vendorName];
      v20 = [(PurchaseInfo *)self->_purchaseInfo temporaryBundleID];
      [v14 removeDeviceIdentifierForVendorName:v19 bundleIdentifier:v20];
    }
  }

  v21 = [(PurchaseInfo *)self->_purchaseInfo coordinator];
  v22 = v21 == 0;

  if (!v22)
  {
    v23 = self->_purchaseError;
    v24 = [(NSError *)v23 domain];
    v25 = [v24 isEqualToString:IXUserPresentableErrorDomain];

    if ((v25 & 1) == 0)
    {
      v26 = IXCreateUserPresentableError();

      v23 = v26;
    }

    v27 = [(PurchaseInfo *)self->_purchaseInfo coordinator];
    v28 = ASDErrorWithSafeUserInfo();
    v43 = 0;
    v29 = sub_100249ACC(v27, v28, &v43);
    v30 = v43;

    if ((v29 & 1) == 0)
    {
      v31 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v41 = [(PurchaseInfo *)self->_purchaseInfo logKey];
        v42 = [(PurchaseInfo *)self->_purchaseInfo coordinator];
        *v47 = 138412802;
        *&v47[4] = v41;
        *&v47[12] = 2114;
        *&v47[14] = v42;
        *&v47[22] = 2114;
        v48 = v30;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%@] Canceling coordinator: %{public}@ failed: %{public}@", v47, 0x20u);
      }
    }
  }

  v32 = [(PurchaseInfo *)self->_purchaseInfo bundleID];

  if (v32)
  {
    v33 = sub_1003649C8();
    v34 = [(PurchaseInfo *)self->_purchaseInfo bundleID];
    sub_100365318(v33, v34);
  }

  if (![(PurchaseInfo *)self->_purchaseInfo purchaseType])
  {
    v35 = [(PurchaseInfo *)self->_purchaseInfo bag];
    if (sub_1003A575C(InstallAttributionManager, v35))
    {
      +[_TtC9appstored12SkannerEvent resultTypeTokenReceived];
    }

    else
    {
      +[_TtC9appstored12SkannerEvent resultTypeTransmission];
    }
    v36 = ;

    v37 = +[_TtC9appstored12SkannerEvent destinationCommerce];
    v38 = [_TtC9appstored12SkannerEvent requestWithResult:v36 destination:v37 responseCode:0 postback:0 error:self->_purchaseError];

    v39 = +[_TtC9appstored18SkannerCoordinator sharedInstance];
    v40 = [(PurchaseInfo *)self->_purchaseInfo itemID];
    [v39 logEvent:v38 forAdvertisedAppAdamID:objc_msgSend(v40 synchronizeWithSnout:"longLongValue") completionHandler:{1, &stru_100524A48}];
  }

  [(Task *)self completeWithSuccess];
}

@end