@interface FetchReceiptTask
- (BOOL)_isUnifiedReceiptValidAndCurrentAtBundleURL:(id)a3;
- (FetchReceiptTask)initWithClient:(id)a3;
- (id)_requestBodyWithAccount:(id)a3;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6;
- (void)_URLRequestWithBag:(id)a3 completionHandler:(id)a4;
- (void)_accountWithCompletionHandler:(id)a3;
- (void)_authenticateAndRequestReceiptWithCompletionHandler:(id)a3;
- (void)_requestReceiptStringWithCompletionHandler:(id)a3;
- (void)main;
@end

@implementation FetchReceiptTask

- (FetchReceiptTask)initWithClient:(id)a3
{
  v5 = a3;
  v6 = [(Task *)self init];
  v7 = v6;
  if (v6)
  {
    *(&v6->_forceAuth + 2) = 1;
    objc_storeStrong((&v6->_apiVersion + 2), a3);
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
    v7 = [(FetchReceiptTask *)self logKey];
    *buf = 138543618;
    v33 = v7;
    v34 = 2114;
    v35 = objc_opt_class();
    v8 = v35;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@]: Started task", buf, 0x16u);
  }

  if ([(FetchReceiptTask *)self apiVersion]!= 1)
  {
    goto LABEL_16;
  }

  v9 = [(FetchReceiptTask *)self client];
  if ([v9 objc_clientType] == 3)
  {

    goto LABEL_16;
  }

  v10 = [(FetchReceiptTask *)self client];
  v11 = [v10 callerBundleURL];
  v12 = [(FetchReceiptTask *)self _isUnifiedReceiptValidAndCurrentAtBundleURL:v11];

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
      v21 = [(FetchReceiptTask *)self dialogContext];

      if (v21)
      {
        v22 = [(FetchReceiptTask *)self client];
        v23 = [(FetchReceiptTask *)self dialogContext];
        v24 = [(FetchReceiptTask *)self logKey];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10002A348;
        v29[3] = &unk_100380E38;
        v29[4] = self;
        v30 = v20;
        [_TtC9storekitd19objc_AccountManager authenticateWithClient:v22 reason:@"StoreKit client initiated for refreshing AppTransaction" dialogContext:v23 logKey:v24 completionHandler:v29];
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
          v27 = [(FetchReceiptTask *)self logKey];
          *buf = 138543362;
          v33 = v27;
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
    v15 = [(FetchReceiptTask *)self logKey];
    v16 = [(FetchReceiptTask *)self client];
    v17 = [v16 requestBundleID];
    v18 = [(FetchReceiptTask *)self client];
    v19 = [v18 callerBundleURL];
    *buf = 138543874;
    v33 = v15;
    v34 = 2114;
    v35 = v17;
    v36 = 2114;
    v37 = v19;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Receipt is valid and current at %{public}@. Skipping refresh.", buf, 0x20u);
  }

  v20 = ASDErrorWithTitleAndMessage();
  [(AsyncTask *)self completeWithError:v20];
LABEL_25:
}

- (void)_accountWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FetchReceiptTask *)self client];
  v6 = [v5 objc_clientType];

  if (v6 == 3 || [(FetchReceiptTask *)self _useVPPBagURL])
  {
    (*(v4 + 2))(v4, 0, 0);
  }

  else
  {
    v7 = [(FetchReceiptTask *)self client];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002A468;
    v8[3] = &unk_100380E60;
    v8[4] = self;
    v9 = v4;
    [_TtC9storekitd19objc_AccountManager accountWithClient:v7 completionHandler:v8];
  }
}

- (void)_authenticateAndRequestReceiptWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FetchReceiptTask *)self dialogContext];

  if (v5)
  {
    if (qword_1003D3EE8 != -1)
    {
      sub_1002C9D00();
    }

    v6 = qword_1003D3EC8;
    if (os_log_type_enabled(qword_1003D3EC8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(FetchReceiptTask *)self logKey];
      v9 = [(FetchReceiptTask *)self client];
      v10 = [v9 requestBundleID];
      *buf = 138543618;
      v21 = v8;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Handling authentication request", buf, 0x16u);
    }

    v11 = [(FetchReceiptTask *)self client];
    v12 = [(FetchReceiptTask *)self dialogContext];
    v13 = [(FetchReceiptTask *)self logKey];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002AAC0;
    v18[3] = &unk_100380EB0;
    v18[4] = self;
    v19 = v4;
    [_TtC9storekitd19objc_AccountManager authenticateWithClient:v11 reason:@"Receipt renewal" dialogContext:v12 logKey:v13 completionHandler:v18];

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
      v17 = [(FetchReceiptTask *)self logKey];
      *buf = 138543362;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] No client available to handle authentication request", buf, 0xCu);
    }

    v14 = ASDErrorWithDescription();
    (*(v4 + 2))(v4, 0, v14);
  }
}

- (void)_requestReceiptStringWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(FetchReceiptTask *)self client];
  v6 = [v5 bag];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002AC44;
  v8[3] = &unk_100380F00;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(FetchReceiptTask *)self _URLRequestWithBag:v6 completionHandler:v8];
}

- (BOOL)_isUnifiedReceiptValidAndCurrentAtBundleURL:(id)a3
{
  v4 = [ASFReceipt receiptFromBundleAtURL:a3];
  if (v4)
  {
    v5 = [(FetchReceiptTask *)self client];
    v6 = [v5 requestBundleID];
    v7 = [v4 bundleID];
    LODWORD(v8) = [v6 isEqualToString:v7];

    v9 = [(FetchReceiptTask *)self client];
    v10 = [v9 requestBundleVersion];
    v11 = [v4 bundleVersion];
    LODWORD(v12) = [v10 isEqualToString:v11];

    v13 = [v4 expirationDate];
    [v13 timeIntervalSinceNow];
    v15 = v14;

    v16 = objc_opt_new();
    *buf = 0;
    *&buf[8] = 0;
    v17 = [(FetchReceiptTask *)self client];
    v18 = [v17 deviceVendorID];
    [v18 getUUIDBytes:buf];

    v19 = [NSData dataWithBytes:buf length:16];
    [v16 appendData:v19];

    v20 = [v4 opaqueDSIDData];
    [v16 appendData:v20];

    v21 = [v4 bundleIDData];
    [v16 appendData:v21];

    *md = 0;
    v66 = 0;
    v67 = 0;
    CC_SHA1([v16 bytes], objc_msgSend(v16, "length"), md);
    v22 = [v4 sha1];
    v23 = [NSData dataWithBytes:md length:20];
    LODWORD(v24) = [v22 isEqualToData:v23];

    v25 = [(FetchReceiptTask *)self client];
    v26 = [v25 bag];

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
    v33 = [v4 creationDate];
    v34 = [v32 compare:v33];

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
      v46 = [(FetchReceiptTask *)self client];
      [v46 requestBundleID];
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

- (void)_URLRequestWithBag:(id)a3 completionHandler:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002B564;
  v8[3] = &unk_10037FDF0;
  v9 = a3;
  v10 = a4;
  v8[4] = self;
  v6 = v9;
  v7 = v10;
  [(FetchReceiptTask *)self _accountWithCompletionHandler:v8];
}

- (id)_requestBodyWithAccount:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  if (v4)
  {
    v6 = +[ACAccountStore ams_sharedAccountStore];
    v7 = [v6 ams_secureTokenForAccount:v4];

    if (v7)
    {
      [v5 setObject:v7 forKeyedSubscript:@"xToken"];
    }
  }

  v8 = +[AMSDevice deviceGUID];
  [v5 setObject:v8 forKeyedSubscript:@"guid"];

  v9 = +[AMSDevice serialNumber];
  [v5 setObject:v9 forKeyedSubscript:@"serialNumber"];

  v10 = [(FetchReceiptTask *)self client];
  v11 = [v10 deviceVendorID];
  v12 = [v11 UUIDString];
  [v5 setObject:v12 forKeyedSubscript:@"vid"];

  if ([(FetchReceiptTask *)self apiVersion]!= 1)
  {
    v13 = [(FetchReceiptTask *)self client];
    v14 = [v13 deviceVendorID];
    v15 = [v14 UUIDString];
    v16 = [v15 lowercaseString];
    [v5 setObject:v16 forKeyedSubscript:@"deviceVerification"];
  }

  v17 = [(FetchReceiptTask *)self client];
  v18 = [v17 isBeta];

  if (v18)
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

  v21 = [(FetchReceiptTask *)self client];
  v22 = [v21 callerBundleURL];
  v23 = [ASFReceipt receiptFromBundleAtURL:v22];

  if ([v23 isVPPLicensed] && objc_msgSend(v23, "isRevoked"))
  {
    [v5 setObject:&__kCFBooleanTrue forKey:@"revoked"];
  }

  v24 = [(FetchReceiptTask *)self client];
  v25 = [v24 objc_clientType];

  if (v25 == 1)
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
    v29 = [(FetchReceiptTask *)self client];
    v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v29 storeItemID]);
    [v5 setObject:v30 forKeyedSubscript:v28];

    v31 = v27;
    v32 = [(FetchReceiptTask *)self client];
    v33 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v32 storeExternalVersionID]);
    [v5 setObject:v33 forKeyedSubscript:v31];
  }

  else
  {
    v34 = [(FetchReceiptTask *)self client];
    v35 = [v34 requestBundleID];
    [v5 setObject:v35 forKeyedSubscript:@"bundle-id"];

    v32 = [(FetchReceiptTask *)self client];
    v33 = [v32 requestBundleVersion];
    [v5 setObject:v33 forKeyedSubscript:@"version-id"];
  }

  return v5;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [(FetchReceiptTask *)self dialogContext];
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
      v14 = [(FetchReceiptTask *)self logKey];
      v15 = [(FetchReceiptTask *)self client];
      v16 = [v15 requestBundleID];
      v19 = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Handling dialog request", &v19, 0x16u);
    }

    v17 = [(FetchReceiptTask *)self dialogContext];
    [v17 handleDialogRequest:v8 completionHandler:v9];
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

    v17 = ASDErrorWithDescription();
    v9[2](v9, 0, v17);
  }
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [(FetchReceiptTask *)self dialogContext];
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
      v14 = [(FetchReceiptTask *)self logKey];
      v15 = [(FetchReceiptTask *)self client];
      v16 = [v15 requestBundleID];
      v20 = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Handling authentication request", &v20, 0x16u);
    }

    v17 = [(FetchReceiptTask *)self dialogContext];
    v18 = [(FetchReceiptTask *)self logKey];
    [_TtC9storekitd19objc_AccountManager authenticateWithRequest:v8 dialogContext:v17 logKey:v18 completionHandler:v9];

    v9 = v18;
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

    v17 = ASDErrorWithDescription();
    (*(v9 + 2))(v9, 0, v17);
  }
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [(FetchReceiptTask *)self dialogContext];
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
      v14 = [(FetchReceiptTask *)self logKey];
      v15 = [(FetchReceiptTask *)self client];
      v16 = [v15 requestBundleID];
      v21 = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Handling engagement request", &v21, 0x16u);
    }

    v17 = [(FetchReceiptTask *)self dialogContext];
    v18 = [(FetchReceiptTask *)self client];
    v19 = [v18 bag];
    [v17 handleEngagementRequest:v8 bag:v19 completionHandler:v9];

    v9 = v18;
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

    v17 = ASDErrorWithDescription();
    (*(v9 + 2))(v9, 0, v17);
  }
}

@end