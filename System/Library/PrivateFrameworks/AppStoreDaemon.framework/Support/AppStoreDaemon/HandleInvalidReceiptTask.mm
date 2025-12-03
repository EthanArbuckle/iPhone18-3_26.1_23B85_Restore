@interface HandleInvalidReceiptTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation HandleInvalidReceiptTask

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = *(&self->super._finished + 1);
  v5 = +[FBSSystemService sharedService];
  [v5 terminateApplication:v4 forReason:5 andReport:0 withDescription:@"StoreKit invalid receipt"];

  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(&self->super._finished + 1);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Terminated app with bundle identifier:%{public}@ due to invalid receipt.", &buf, 0xCu);
  }

  v8 = [ApplicationProxy proxyForBundleID:*(&self->super._finished + 1)];
  v9 = v8;
  if (*(&self->_bundleIdentifier + 2))
  {
    v10 = [ASFReceipt receiptFromBundleAtURL:?];
  }

  else
  {
    v11 = sub_1003D24E8(v8);
    v10 = [ASFReceipt receiptFromBundleAtURL:v11];
  }

  expirationDate = [v10 expirationDate];
  v13 = +[NSDate date];
  v14 = [expirationDate compare:v13];

  if (v9)
  {
    localizedName = [v9[15] localizedName];
    v41 = sub_1003D26D4(v9);
    iTunesMetadata = [v9[15] iTunesMetadata];
    storeItemIdentifier = [iTunesMetadata storeItemIdentifier];

    v18 = [NSString stringWithFormat:@"%lld", storeItemIdentifier];
    iTunesMetadata2 = [v9[15] iTunesMetadata];
    storeItemIdentifier2 = [iTunesMetadata2 storeItemIdentifier];

    v21 = storeItemIdentifier2 != 0;
  }

  else
  {
    v41 = 0;
    v18 = 0;
    localizedName = 0;
    v21 = 1;
  }

  if ([v10 isVPPLicensed] && (objc_msgSend(v10, "isRevoked") & 1) != 0 || objc_msgSend(v10, "isVPPLicensed") && v14 == -1)
  {
    ASDLocalizedString();
    if (localizedName)
      v22 = {;
      v39 = [NSString localizedStringWithFormat:v22, localizedName];
    }

    else
      v39 = {;
    }

    ASDLocalizedString();
    if (v41)
      v23 = {;
      v24 = [NSString localizedStringWithFormat:v23, v41];
    }

    else
      v24 = {;
    }

    v40 = localizedName;
    if (v21)
    {
      v25 = [NSString stringWithFormat:@"itms-apps:///app/%@", v18];
      v26 = [NSURL URLWithString:v25];
    }

    else
    {
      v26 = [NSURL URLWithString:@"itms-appss://?action=software"];
    }

    v27 = v26;
    v28 = handlerCopy;
    v29 = [AMSDialogRequest requestWithTitle:v39 message:v24];
    ASDLocalizedString();
    v31 = v30 = v24;
    v32 = [AMSDialogAction actionWithTitle:v31 identifier:@"InvalidReceiptPromptOKAction"];

    v33 = ASDLocalizedString();
    v34 = [AMSDialogAction actionWithTitle:v33 identifier:@"InvalidReceiptPromptCancelAction"];

    [v29 addButtonAction:v32];
    [v29 addButtonAction:v34];

    v35 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v29];
    present = [v35 present];
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v44 = sub_10039F5A8;
    v45 = &unk_100521178;
    v37 = v28;
    v47 = v37;
    v38 = v27;
    v46 = v38;
    [present addFinishBlock:&buf];

    localizedName = v40;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

@end