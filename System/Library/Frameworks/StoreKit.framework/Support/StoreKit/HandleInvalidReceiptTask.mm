@interface HandleInvalidReceiptTask
- (HandleInvalidReceiptTask)initWithClient:(id)client pid:(int)pid;
- (id)dialogRequestWithTitle:(id)title dialogMessage:(id)message;
- (id)productURLForAppWithID:(id)d;
- (void)_presentSystemDialogWithTitle:(id)title dialogMessage:(id)message actionURL:(id)l;
- (void)main;
- (void)terminateClientApplication;
@end

@implementation HandleInvalidReceiptTask

- (HandleInvalidReceiptTask)initWithClient:(id)client pid:(int)pid
{
  clientCopy = client;
  v11.receiver = self;
  v11.super_class = HandleInvalidReceiptTask;
  v8 = [(Task *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 50), client);
    *(v9 + 42) = pid;
  }

  return v9;
}

- (void)main
{
  [(HandleInvalidReceiptTask *)self terminateClientApplication];
  client = [(HandleInvalidReceiptTask *)self client];
  callerBundleURL = [client callerBundleURL];
  v24 = [ASFReceipt receiptFromBundleAtURL:callerBundleURL];

  expirationDate = [v24 expirationDate];
  v6 = +[NSDate date];
  v7 = [expirationDate compare:v6];

  client2 = [(HandleInvalidReceiptTask *)self client];
  localizedName = [client2 localizedName];

  client3 = [(HandleInvalidReceiptTask *)self client];
  vendorName = [client3 vendorName];

  client4 = [(HandleInvalidReceiptTask *)self client];
  v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [client4 storeItemID]);
  stringValue = [v13 stringValue];

  client5 = [(HandleInvalidReceiptTask *)self client];
  storeItemID = [client5 storeItemID];

  if ([v24 isVPPLicensed] && (objc_msgSend(v24, "isRevoked") & 1) != 0 || objc_msgSend(v24, "isVPPLicensed") && v7 == -1)
  {
    v17 = [NSBundle bundleWithIdentifier:@"com.apple.AppStoreDaemon"];
    if (localizedName)
    {
      v18 = [v17 localizedStringForKey:@"RECEIPT_REVOKED_TITLE" value:&stru_10039AA00 table:0];
      v19 = [NSString localizedStringWithFormat:v18, localizedName];
    }

    else
    {
      v19 = [v17 localizedStringForKey:@"RECEIPT_REVOKED_FALLBACK_TITLE" value:&stru_10039AA00 table:0];
    }

    v20 = [NSBundle bundleWithIdentifier:@"com.apple.AppStoreDaemon"];
    if (vendorName)
    {
      v21 = [v20 localizedStringForKey:@"RECEIPT_REVOKED_MESSAGE" value:&stru_10039AA00 table:0];
      v22 = [NSString localizedStringWithFormat:v21, vendorName];
    }

    else
    {
      v22 = [v20 localizedStringForKey:@"RECEIPT_REVOKED_FALLBACK_MESSAGE" value:&stru_10039AA00 table:0];
    }

    if (storeItemID)
    {
      [(HandleInvalidReceiptTask *)self productURLForAppWithID:stringValue];
    }

    else
    {
      [NSURL URLWithString:@"itms-appss://?action=software"];
    }
    v23 = ;
    [(HandleInvalidReceiptTask *)self _presentSystemDialogWithTitle:v19 dialogMessage:v22 actionURL:v23];
  }

  else
  {
    [(AsyncTask *)self completeWithSuccess];
  }
}

- (id)dialogRequestWithTitle:(id)title dialogMessage:(id)message
{
  v4 = [AMSDialogRequest requestWithTitle:title message:message];
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.AppStoreDaemon"];
  v6 = [v5 localizedStringForKey:@"VIEW_IN_APP_STORE" value:&stru_10039AA00 table:0];
  v7 = [AMSDialogAction actionWithTitle:v6 identifier:@"InvalidReceiptPromptOKAction"];

  v8 = [NSBundle bundleWithIdentifier:@"com.apple.AppStoreDaemon"];
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_10039AA00 table:0];
  v10 = [AMSDialogAction actionWithTitle:v9 identifier:@"InvalidReceiptPromptCancelAction"];

  [v4 addButtonAction:v7];
  [v4 addButtonAction:v10];

  return v4;
}

- (void)terminateClientApplication
{
  v3 = [[RBSTerminateContext alloc] initWithExplanation:@"StoreKit invalid receipt"];
  v4 = [RBSProcessIdentifier identifierWithPid:[(HandleInvalidReceiptTask *)self pid]];
  v5 = [RBSProcessPredicate predicateMatchingIdentifier:v4];
  v6 = [[RBSTerminateRequest alloc] initWithPredicate:v5 context:v3];
  v14 = 0;
  v7 = [v6 execute:&v14];
  v8 = v14;
  if (v7)
  {
    if (qword_1003D4A68 != -1)
    {
      sub_1002D16EC();
    }

    v9 = qword_1003D4A20;
    if (os_log_type_enabled(qword_1003D4A20, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      client = [(HandleInvalidReceiptTask *)self client];
      callerBundleID = [client callerBundleID];
      *buf = 138543362;
      v16 = callerBundleID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Terminated app with bundle identifier:%{public}@ for invalid receipt.", buf, 0xCu);
    }
  }

  else
  {
    if (qword_1003D4A68 != -1)
    {
      sub_1002D16EC();
    }

    v13 = qword_1003D4A20;
    if (os_log_type_enabled(qword_1003D4A20, OS_LOG_TYPE_ERROR))
    {
      sub_1002D1714(v13, self, v8);
    }
  }
}

- (id)productURLForAppWithID:(id)d
{
  v3 = [NSString stringWithFormat:@"itms-apps:///app/%@", d];
  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (void)_presentSystemDialogWithTitle:(id)title dialogMessage:(id)message actionURL:(id)l
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  v11 = [(HandleInvalidReceiptTask *)self dialogRequestWithTitle:titleCopy dialogMessage:messageCopy];
  v12 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v11];
  objc_initWeak(&location, self);
  present = [v12 present];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000768F0;
  v15[3] = &unk_100382FF8;
  objc_copyWeak(&v18, &location);
  v14 = lCopy;
  v16 = v14;
  selfCopy = self;
  [present addFinishBlock:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

@end