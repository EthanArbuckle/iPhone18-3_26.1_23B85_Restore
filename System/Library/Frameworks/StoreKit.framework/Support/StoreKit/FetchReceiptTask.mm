@interface FetchReceiptTask
- (BOOL)_isUnifiedReceiptValidAndCurrentAtBundleURL:(id)l;
- (FetchReceiptTask)initWithClient:(id)client;
- (id)_requestBodyWithAccount:(id)account;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion;
- (void)_URLRequestWithBag:(id)bag completionHandler:(id)handler;
- (void)_accountWithCompletionHandler:(id)handler;
- (void)_authenticateAndRequestReceiptWithCompletionHandler:(id)handler;
- (void)_requestReceiptStringWithCompletionHandler:(id)handler;
- (void)main;
@end

@implementation FetchReceiptTask

- (FetchReceiptTask)initWithClient:(id)client
{
  clientCopy = client;
  v6 = [(Task *)self init];
  v7 = v6;
  if (v6)
  {
    *(&v6->_forceAuth + 2) = 1;
    objc_storeStrong((&v6->_apiVersion + 2), client);
  }

  return v7;
}

- (void)main
{
  if (!*(&self->_dialogContext + 2))
  {
    v3 = [NSUUID lib_shortLogKeyWithAPIVersion:[(FetchReceiptTask *)self apiVersion]];
    v4 = *(&self->_dialogContext + 2);
    *(&self->_dialogContext + 2) = v3;
  }

  if (qword_1003D3EE8 != -1)
  {
    sub_1002C9D00();
  }

  v5 = qword_1003D3EC8;
  if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    logKey = [(FetchReceiptTask *)self logKey];
    *buf = 138543618;
    v33 = logKey;
    v34 = 2114;
    v35 = objc_opt_class();
    v8 = v35;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@]: Started task", buf, 0x16u);
  }

  if ([(FetchReceiptTask *)self apiVersion]!= 1)
  {
    goto LABEL_16;
  }

  client = [(FetchReceiptTask *)self client];
  if ([client objc_clientType] == 3)
  {

    goto LABEL_16;
  }

  client2 = [(FetchReceiptTask *)self client];
  callerBundleURL = [client2 callerBundleURL];
  v12 = [(FetchReceiptTask *)self _isUnifiedReceiptValidAndCurrentAtBundleURL:callerBundleURL];

  if (!v12)
  {
LABEL_16:
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10002A1C8;
    v31[3] = &unk_100380E10;
    v31[4] = self;
    v20 = objc_retainBlock(v31);
    if ([(FetchReceiptTask *)self forceAuth])
    {
      dialogContext = [(FetchReceiptTask *)self dialogContext];

      if (dialogContext)
      {
        client3 = [(FetchReceiptTask *)self client];
        dialogContext2 = [(FetchReceiptTask *)self dialogContext];
        logKey2 = [(FetchReceiptTask *)self logKey];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10002A348;
        v29[3] = &unk_100380E38;
        v29[4] = self;
        v30 = v20;
        [_TtC9storekitd19objc_AccountManager authenticateWithClient:client3 reason:@"StoreKit client initiated for refreshing AppTransaction" dialogContext:dialogContext2 logKey:logKey2 completionHandler:v29];
      }

      else
      {
        if (qword_1003D3EE8 != -1)
        {
          sub_1002C9D14();
        }

        v25 = qword_1003D3EC8;
        if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
          logKey3 = [(FetchReceiptTask *)self logKey];
          *buf = 138543362;
          v33 = logKey3;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] No context available to force authentication", buf, 0xCu);
        }

        v28 = ASDErrorWithDescription();
        [(AsyncTask *)self completeWithError:v28];
      }
    }

    else
    {
      [(FetchReceiptTask *)self _requestReceiptStringWithCompletionHandler:v20];
    }

    goto LABEL_25;
  }

  if (qword_1003D3EE8 != -1)
  {
    sub_1002C9D14();
  }

  v13 = qword_1003D3EC8;
  if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    logKey4 = [(FetchReceiptTask *)self logKey];
    client4 = [(FetchReceiptTask *)self client];
    requestBundleID = [client4 requestBundleID];
    client5 = [(FetchReceiptTask *)self client];
    callerBundleURL2 = [client5 callerBundleURL];
    *buf = 138543874;
    v33 = logKey4;
    v34 = 2114;
    v35 = requestBundleID;
    v36 = 2114;
    v37 = callerBundleURL2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Receipt is valid and current at %{public}@. Skipping refresh.", buf, 0x20u);
  }

  v20 = ASDErrorWithTitleAndMessage();
  [(AsyncTask *)self completeWithError:v20];
LABEL_25:
}

- (void)_accountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  client = [(FetchReceiptTask *)self client];
  objc_clientType = [client objc_clientType];

  if (objc_clientType == 3 || [(FetchReceiptTask *)self _useVPPBagURL])
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    client2 = [(FetchReceiptTask *)self client];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002A468;
    v8[3] = &unk_100380E60;
    v8[4] = self;
    v9 = handlerCopy;
    [_TtC9storekitd19objc_AccountManager accountWithClient:client2 completionHandler:v8];
  }
}

- (void)_authenticateAndRequestReceiptWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dialogContext = [(FetchReceiptTask *)self dialogContext];

  if (dialogContext)
  {
    if (qword_1003D3EE8 != -1)
    {
      sub_1002C9D00();
    }

    v6 = qword_1003D3EC8;
    if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      logKey = [(FetchReceiptTask *)self logKey];
      client = [(FetchReceiptTask *)self client];
      requestBundleID = [client requestBundleID];
      *buf = 138543618;
      v21 = logKey;
      v22 = 2114;
      v23 = requestBundleID;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Handling authentication request", buf, 0x16u);
    }

    client2 = [(FetchReceiptTask *)self client];
    dialogContext2 = [(FetchReceiptTask *)self dialogContext];
    logKey2 = [(FetchReceiptTask *)self logKey];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002AAC0;
    v18[3] = &unk_100380EB0;
    v18[4] = self;
    v19 = handlerCopy;
    [_TtC9storekitd19objc_AccountManager authenticateWithClient:client2 reason:@"Receipt renewal" dialogContext:dialogContext2 logKey:logKey2 completionHandler:v18];

    v14 = v19;
  }

  else
  {
    if (qword_1003D3EE8 != -1)
    {
      sub_1002C9D00();
    }

    v15 = qword_1003D3EC8;
    if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      logKey3 = [(FetchReceiptTask *)self logKey];
      *buf = 138543362;
      v21 = logKey3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] No client available to handle authentication request", buf, 0xCu);
    }

    v14 = ASDErrorWithDescription();
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

- (void)_requestReceiptStringWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  client = [(FetchReceiptTask *)self client];
  v6 = [client bag];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002AC44;
  v8[3] = &unk_100380F00;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(FetchReceiptTask *)self _URLRequestWithBag:v6 completionHandler:v8];
}

- (BOOL)_isUnifiedReceiptValidAndCurrentAtBundleURL:(id)l
{
  v4 = [ASFReceipt receiptFromBundleAtURL:l];
  if (v4)
  {
    client = [(FetchReceiptTask *)self client];
    requestBundleID = [client requestBundleID];
    bundleID = [v4 bundleID];
    LODWORD(v8) = [requestBundleID isEqualToString:bundleID];

    client2 = [(FetchReceiptTask *)self client];
    requestBundleVersion = [client2 requestBundleVersion];
    bundleVersion = [v4 bundleVersion];
    LODWORD(v12) = [requestBundleVersion isEqualToString:bundleVersion];

    expirationDate = [v4 expirationDate];
    [expirationDate timeIntervalSinceNow];
    v15 = v14;

    v16 = objc_opt_new();
    *buf = 0;
    *&buf[8] = 0;
    client3 = [(FetchReceiptTask *)self client];
    deviceVendorID = [client3 deviceVendorID];
    [deviceVendorID getUUIDBytes:buf];

    v19 = [NSData dataWithBytes:buf length:16];
    [v16 appendData:v19];

    opaqueDSIDData = [v4 opaqueDSIDData];
    [v16 appendData:opaqueDSIDData];

    bundleIDData = [v4 bundleIDData];
    [v16 appendData:bundleIDData];

    *md = 0;
    v66 = 0;
    v67 = 0;
    CC_SHA1([v16 bytes], objc_msgSend(v16, "length"), md);
    sha1 = [v4 sha1];
    v23 = [NSData dataWithBytes:md length:20];
    LODWORD(v24) = [sha1 isEqualToData:v23];

    client4 = [(FetchReceiptTask *)self client];
    v26 = [client4 bag];

    v27 = +[_TtC9storekitd6BagKey receiptRefreshMinAge];
    v52 = v26;
    v28 = [v26 integerForKey:v27];

    v53 = 0;
    v51 = v28;
    v29 = [v28 valueWithError:&v53];
    v30 = v53;
    if (!v29)
    {
      if (ASDErrorIsEqual())
      {
        v29 = &off_1003A13C0;
      }

      else
      {
        v29 = 0;
      }
    }

    v50 = v30;
    [v29 doubleValue];
    v32 = [NSDate dateWithTimeIntervalSinceNow:-v31];
    creationDate = [v4 creationDate];
    v34 = [v32 compare:creationDate];

    if (qword_1003D3EE8 != -1)
    {
      sub_1002C9D14();
    }

    v35 = qword_1003D3EC8;
    if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
    {
      log = v35;
      [(FetchReceiptTask *)self logKey];
      v36 = v47 = v16;
      client5 = [(FetchReceiptTask *)self client];
      [client5 requestBundleID];
      v37 = v49 = v24;
      v24 = v34;
      if (v8)
      {
        v38 = @"PASS";
      }

      else
      {
        v38 = @"FAIL";
      }

      v44 = v12;
      if (v12)
      {
        v12 = @"PASS";
      }

      else
      {
        v12 = @"FAIL";
      }

      if (v49)
      {
        v39 = @"PASS";
      }

      else
      {
        v39 = @"FAIL";
      }

      if (v15 < 0.0)
      {
        v40 = @"FAIL";
      }

      else
      {
        v40 = @"PASS";
      }

      [v4 creationDate];
      v8 = v48 = v8;
      *buf = 138544898;
      *&buf[4] = v36;
      *&buf[12] = 2114;
      *&buf[14] = v37;
      v55 = 2114;
      v56 = v38;
      v34 = v24;
      v57 = 2114;
      v58 = v12;
      LOBYTE(v12) = v44;
      v59 = 2114;
      v60 = v39;
      v61 = 2114;
      v62 = v40;
      v63 = 2114;
      v64 = v8;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Receipt Validation \n\tBundle ID Check: %{public}@\n\tBundle Version Check: %{public}@\n\tGUID Check: %{public}@\n\tExpiration Check: %{public}@\n\tCreation Date: %{public}@", buf, 0x48u);

      LOBYTE(v8) = v48;
      LOBYTE(v24) = v49;

      v16 = v47;
    }

    v41 = v8 & v12 & v24;
    if (v15 < 0.0)
    {
      v41 = 0;
    }

    if (v34 == -1)
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (void)_URLRequestWithBag:(id)bag completionHandler:(id)handler
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002B564;
  v8[3] = &unk_10037FDF0;
  bagCopy = bag;
  handlerCopy = handler;
  v8[4] = self;
  v6 = bagCopy;
  v7 = handlerCopy;
  [(FetchReceiptTask *)self _accountWithCompletionHandler:v8];
}

- (id)_requestBodyWithAccount:(id)account
{
  accountCopy = account;
  v5 = objc_alloc_init(NSMutableDictionary);
  if (accountCopy)
  {
    v6 = +[ACAccountStore ams_sharedAccountStore];
    v7 = [v6 ams_secureTokenForAccount:accountCopy];

    if (v7)
    {
      [v5 setObject:v7 forKeyedSubscript:@"xToken"];
    }
  }

  v8 = +[AMSDevice deviceGUID];
  [v5 setObject:v8 forKeyedSubscript:@"guid"];

  v9 = +[AMSDevice serialNumber];
  [v5 setObject:v9 forKeyedSubscript:@"serialNumber"];

  client = [(FetchReceiptTask *)self client];
  deviceVendorID = [client deviceVendorID];
  uUIDString = [deviceVendorID UUIDString];
  [v5 setObject:uUIDString forKeyedSubscript:@"vid"];

  if ([(FetchReceiptTask *)self apiVersion]!= 1)
  {
    client2 = [(FetchReceiptTask *)self client];
    deviceVendorID2 = [client2 deviceVendorID];
    uUIDString2 = [deviceVendorID2 UUIDString];
    lowercaseString = [uUIDString2 lowercaseString];
    [v5 setObject:lowercaseString forKeyedSubscript:@"deviceVerification"];
  }

  client3 = [(FetchReceiptTask *)self client];
  isBeta = [client3 isBeta];

  if (isBeta)
  {
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:off_1003CAFD8];
  }

  v19 = [(FetchReceiptTask *)self receiptFlags]& 1;
  if (v19)
  {
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"want-expired"];
  }

  if (([(FetchReceiptTask *)self receiptFlags]& 2) != 0)
  {
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"want-revoked"];
    v19 = 1;
  }

  v20 = v19 | ([(FetchReceiptTask *)self receiptFlags]>> 3) & 1;
  if (v20 == 1)
  {
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"want-vpp"];
  }

  client4 = [(FetchReceiptTask *)self client];
  callerBundleURL = [client4 callerBundleURL];
  v23 = [ASFReceipt receiptFromBundleAtURL:callerBundleURL];

  if ([v23 isVPPLicensed] && objc_msgSend(v23, "isRevoked"))
  {
    [v5 setObject:&__kCFBooleanTrue forKey:@"revoked"];
  }

  client5 = [(FetchReceiptTask *)self client];
  objc_clientType = [client5 objc_clientType];

  if (objc_clientType == 1)
  {
    v26 = @"adam-id";
    if (v20)
    {
      v26 = @"appAdamId";
      v27 = @"appExtVrsId";
    }

    else
    {
      v27 = @"software-version-external-identifier";
    }

    v28 = v26;
    client6 = [(FetchReceiptTask *)self client];
    v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [client6 storeItemID]);
    [v5 setObject:v30 forKeyedSubscript:v28];

    v31 = v27;
    client7 = [(FetchReceiptTask *)self client];
    requestBundleVersion = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [client7 storeExternalVersionID]);
    [v5 setObject:requestBundleVersion forKeyedSubscript:v31];
  }

  else
  {
    client8 = [(FetchReceiptTask *)self client];
    requestBundleID = [client8 requestBundleID];
    [v5 setObject:requestBundleID forKeyedSubscript:@"bundle-id"];

    client7 = [(FetchReceiptTask *)self client];
    requestBundleVersion = [client7 requestBundleVersion];
    [v5 setObject:requestBundleVersion forKeyedSubscript:@"version-id"];
  }

  return v5;
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  dialogContext = [(FetchReceiptTask *)self dialogContext];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (qword_1003D3EE8 != -1)
    {
      sub_1002C9D00();
    }

    v12 = qword_1003D3EC8;
    if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      logKey = [(FetchReceiptTask *)self logKey];
      client = [(FetchReceiptTask *)self client];
      requestBundleID = [client requestBundleID];
      v19 = 138543618;
      v20 = logKey;
      v21 = 2114;
      v22 = requestBundleID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Handling dialog request", &v19, 0x16u);
    }

    dialogContext2 = [(FetchReceiptTask *)self dialogContext];
    [dialogContext2 handleDialogRequest:requestCopy completionHandler:completionCopy];
  }

  else
  {
    if (qword_1003D3EE8 != -1)
    {
      sub_1002C9D00();
    }

    v18 = qword_1003D3EC8;
    if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_ERROR))
    {
      sub_1002C9FB8(v18, self);
    }

    dialogContext2 = ASDErrorWithDescription();
    completionCopy[2](completionCopy, 0, dialogContext2);
  }
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  dialogContext = [(FetchReceiptTask *)self dialogContext];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (qword_1003D3EE8 != -1)
    {
      sub_1002C9D00();
    }

    v12 = qword_1003D3EC8;
    if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      logKey = [(FetchReceiptTask *)self logKey];
      client = [(FetchReceiptTask *)self client];
      requestBundleID = [client requestBundleID];
      v20 = 138543618;
      v21 = logKey;
      v22 = 2114;
      v23 = requestBundleID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Handling authentication request", &v20, 0x16u);
    }

    dialogContext2 = [(FetchReceiptTask *)self dialogContext];
    logKey2 = [(FetchReceiptTask *)self logKey];
    [_TtC9storekitd19objc_AccountManager authenticateWithRequest:requestCopy dialogContext:dialogContext2 logKey:logKey2 completionHandler:completionCopy];

    completionCopy = logKey2;
  }

  else
  {
    if (qword_1003D3EE8 != -1)
    {
      sub_1002C9D00();
    }

    v19 = qword_1003D3EC8;
    if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CA080(v19, self);
    }

    dialogContext2 = ASDErrorWithDescription();
    (*(completionCopy + 2))(completionCopy, 0, dialogContext2);
  }
}

- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  dialogContext = [(FetchReceiptTask *)self dialogContext];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (qword_1003D3EE8 != -1)
    {
      sub_1002C9D00();
    }

    v12 = qword_1003D3EC8;
    if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      logKey = [(FetchReceiptTask *)self logKey];
      client = [(FetchReceiptTask *)self client];
      requestBundleID = [client requestBundleID];
      v21 = 138543618;
      v22 = logKey;
      v23 = 2114;
      v24 = requestBundleID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Handling engagement request", &v21, 0x16u);
    }

    dialogContext2 = [(FetchReceiptTask *)self dialogContext];
    client2 = [(FetchReceiptTask *)self client];
    v19 = [client2 bag];
    [dialogContext2 handleEngagementRequest:requestCopy bag:v19 completionHandler:completionCopy];

    completionCopy = client2;
  }

  else
  {
    if (qword_1003D3EE8 != -1)
    {
      sub_1002C9D00();
    }

    v20 = qword_1003D3EC8;
    if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_ERROR))
    {
      sub_1002CA148(v20, self);
    }

    dialogContext2 = ASDErrorWithDescription();
    (*(completionCopy + 2))(completionCopy, 0, dialogContext2);
  }
}

@end