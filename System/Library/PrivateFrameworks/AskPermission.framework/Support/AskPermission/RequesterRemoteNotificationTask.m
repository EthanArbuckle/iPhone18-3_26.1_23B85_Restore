@interface RequesterRemoteNotificationTask
- (NSString)requestIdentifier;
- (RequesterRemoteNotificationTask)initWithPayload:(id)a3 andSuppressDialog:(BOOL)a4;
- (id)_notifyExtensionWithResult:(id)a3;
- (id)_requestFromResult:(id)a3 withError:(id *)a4;
- (id)_requestResultFromResult:(id)a3 withError:(id *)a4;
- (id)_serverRequestWithError:(id *)a3;
- (id)perform;
- (int64_t)requestStatus;
- (void)_notifyScreenTimeIfNeededForApprovalForRequestWithID:(id)a3 response:(id)a4;
- (void)_presentRequest:(id)a3;
@end

@implementation RequesterRemoteNotificationTask

- (RequesterRemoteNotificationTask)initWithPayload:(id)a3 andSuppressDialog:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RequesterRemoteNotificationTask;
  v8 = [(RequesterRemoteNotificationTask *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_payload, a3);
    v9->_suppressDialog = a4;
  }

  return v9;
}

- (int64_t)requestStatus
{
  v2 = [(RequesterRemoteNotificationTask *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"9"];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -2;
  }

  return v4;
}

- (NSString)requestIdentifier
{
  v2 = [(RequesterRemoteNotificationTask *)self payload];
  v3 = [v2 objectForKeyedSubscript:@"8"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001E9C4;
  v4[3] = &unk_100054C08;
  v4[4] = self;
  v2 = [(RequesterRemoteNotificationTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

- (id)_serverRequestWithError:(id *)a3
{
  v5 = +[AMSBag sharedBag];
  v6 = [v5 retrieveRequestURL];

  v33 = @"requestId";
  v7 = [(RequesterRemoteNotificationTask *)self requestIdentifier];
  v34 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];

  v9 = objc_alloc_init(URLRequestEncoder);
  v10 = [(URLRequestEncoder *)v9 requestWithMethod:4 bagURL:v6 parameters:v8];
  v30 = 0;
  v11 = [v10 resultWithTimeout:&v30 error:60.0];
  v12 = v30;
  if (v11)
  {
    v28 = v6;
    v13 = +[APLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543362;
      v32 = v15;
      v16 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Encoded request successfully", buf, 0xCu);
    }

    v17 = +[URLSession sharedSession];
    v18 = [v17 dataTaskPromiseWithRequest:v11];

    v29 = v12;
    v19 = [v18 resultWithTimeout:&v29 error:60.0];
    v20 = v29;

    if (v19)
    {
      v21 = +[APLogConfig sharedDaemonConfig];
      if (!v21)
      {
        v21 = +[APLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543362;
        v32 = v23;
        v24 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result", buf, 0xCu);
      }
    }

    v12 = v20;
    a3 = v27;
    v6 = v28;
    if (v27)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (a3)
    {
LABEL_13:
      v25 = v12;
      *a3 = v12;
    }
  }

  return v19;
}

- (id)_requestFromResult:(id)a3 withError:(id *)a4
{
  v6 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v49 = a4;
    v8 = [v7 objectForKeyedSubscript:@"requestInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v12 = [v9 objectForKeyedSubscript:@"approverFirstName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v9 objectForKeyedSubscript:@"adamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v9 objectForKeyedSubscript:@"salables"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v17 objectForKeyedSubscript:@"lockupData"];
    objc_opt_class();
    v50 = v13;
    if (objc_opt_isKindOfClass())
    {
      v53 = v18;
    }

    else
    {
      v53 = 0;
    }

    v19 = +[NSDate date];
    v20 = [(RequesterRemoteNotificationTask *)self requestIdentifier];
    v48 = v15;
    v46 = [v15 stringValue];
    v21 = [(RequesterRemoteNotificationTask *)self requestStatus];
    v52 = [Localizations stringWithKey:@"ACTION_APPROVE"];
    v51 = [Localizations stringWithKey:@"ACTION_DECLINE"];
    v45 = v21;
    v47 = v7;
    if (v21 == 1)
    {
      v22 = [v9 objectForKeyedSubscript:@"approvalString"];
      v23 = &APCustomError_ptr;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v22;
      }

      else
      {
        v24 = 0;
      }

      v26 = [v9 objectForKeyedSubscript:@"buyParams"];
      objc_opt_class();
      v27 = v20;
      if (objc_opt_isKindOfClass())
      {
        v28 = v26;
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        v31 = [AMSBuyParams buyParamsWithString:v28];
        v32 = AMSBuyParamPropertyIsExceptionRequest;
        v33 = [v31 objectForKeyedSubscript:AMSBuyParamPropertyIsExceptionRequest];
        if (objc_opt_respondsToSelector())
        {
          v34 = [v31 objectForKeyedSubscript:v32];
          v35 = [v34 BOOLValue];

          v23 = &APCustomError_ptr;
          if (v35)
          {
            v29 = [Localizations stringWithKey:@"NOTIFICATION_TITLE_EXCEPTION_APPROVED"];
            goto LABEL_33;
          }
        }

        else
        {

          v23 = &APCustomError_ptr;
        }
      }

      v36 = [Localizations stringWithKey:@"NOTIFICATION_TITLE_REQUESTER_APPROVED"];
      if (v36)
      {
        v30 = [v23[327] stringWithValidatedFormat:v36 validFormatSpecifiers:@"%@" error:0, v50];
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v25 = [v9 objectForKeyedSubscript:@"declinedString"];
      v23 = &APCustomError_ptr;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v25;
      }

      else
      {
        v24 = 0;
      }

      v27 = v20;

      v28 = [Localizations stringWithKey:@"NOTIFICATION_TITLE_REQUESTER_DECLINED"];
      if (v28)
      {
        v29 = [NSString stringWithValidatedFormat:v28 validFormatSpecifiers:@"%@" error:0, v50];
LABEL_33:
        v30 = v29;
        goto LABEL_45;
      }

      v30 = 0;
    }

LABEL_45:

    v37 = [[RequestLocalizations alloc] initWithApprove:v52 body:v24 decline:v51 title:v30];
    v38 = [v53 objectForKeyedSubscript:@"offerName"];
    v39 = v23[327];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v38;
    }

    else
    {
      v40 = 0;
    }

    if (v24 && v46)
    {
      if (_os_feature_enabled_impl())
      {
        v41 = [[RequesterRequest alloc] initWithDate:v19 requestIdentifier:v27 uniqueIdentifier:@"xxxxxxxxx" itemIdentifier:v46 localizations:v37 offerName:v40 status:v45];
      }

      else
      {
        LOBYTE(v44) = 0;
        v41 = [[Request alloc] initWithDate:v19 requestIdentifier:v27 uniqueIdentifier:@"xxxxxxxxx" itemBundleIdentifier:0 itemIdentifier:v46 localizations:v37 mocked:v44 offerName:0 previewURL:0 productType:0 productTypeName:0 productURL:0 requestInfo:v9 status:v45];
      }

      v11 = v41;
      v10 = 0;
    }

    else
    {
      v10 = APError();
      v11 = 0;
    }

    a4 = v49;
    v7 = v47;
    if (!v49)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v10 = APError();
  v11 = 0;
  if (a4)
  {
LABEL_56:
    v42 = v10;
    *a4 = v10;
  }

LABEL_57:

  return v11;
}

- (void)_notifyScreenTimeIfNeededForApprovalForRequestWithID:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = AMSHashIfNeeded();
    *buf = 138543618;
    v68 = v10;
    v69 = 2114;
    v70 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@: Checking response for exception approval. Request ID: %{public}@", buf, 0x16u);
  }

  if (v6)
  {
    v13 = [v7 objectForKeyedSubscript:@"requestInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v14 objectForKeyedSubscript:@"requestCreatedUtc"];
    if (!v15)
    {
      v17 = +[APLogConfig sharedDaemonConfig];
      if (!v17)
      {
        v17 = +[APLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        *buf = 138543362;
        v68 = v32;
        v33 = v32;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: Missing created date, can’t submit exception approval.", buf, 0xCu);
      }

      goto LABEL_53;
    }

    v64 = v7;
    v17 = [ApprovalRequest dateFromString:v15];
    v18 = [ApprovalRequest createUniqueIDFromRequestID:v6 andCreatedDate:v17];
    v19 = +[RequesterStore sharedStore];
    v20 = [v19 requestWithIdentifier:v18];

    if (([v20 isException] & 1) == 0)
    {
      v34 = +[APLogConfig sharedDaemonConfig];
      if (!v34)
      {
        v34 = +[APLogConfig sharedConfig];
      }

      v65 = v34;
      v25 = [v34 OSLogObject];
      v7 = v64;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v35 = objc_opt_class();
        *buf = 138543362;
        v68 = v35;
        v36 = v35;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%{public}@: Request is NOT an exception - nothing to submit.", buf, 0xCu);
      }

      goto LABEL_52;
    }

    v21 = [v20 requesterDSID];
    v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v21 longLongValue]);

    v65 = v22;
    if (v22)
    {
      v23 = [v20 itemBundleID];

      if (v23)
      {
        v24 = [v20 itemIdentifier];
        v25 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v24 longLongValue]);

        if (v25)
        {
          v26 = [v20 ageRatingValue];

          if (v26)
          {
            v61 = [STExceptionApp alloc];
            v27 = [v20 itemBundleID];
            v56 = [v25 unsignedLongLongValue];
            v58 = [v20 ageRatingValue];
            v62 = [v61 initWithRequesterDSID:v65 bundleIdentifier:v27 adamID:v56 distributorID:@"com.apple.AppStore" ratingValue:{objc_msgSend(v58, "unsignedLongLongValue")}];

            v59 = +[APLogConfig sharedDaemonConfig];
            if (!v59)
            {
              v59 = +[APLogConfig sharedConfig];
            }

            v57 = [v59 OSLogObject];
            v28 = v62;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v50 = objc_opt_class();
              v53 = v50;
              v52 = [v20 itemBundleID];
              v55 = AMSHashIfNeeded();
              v49 = [v25 unsignedLongLongValue];
              v54 = AMSHashIfNeeded();
              v51 = [v20 ageRatingValue];
              v29 = [v51 unsignedLongLongValue];
              v30 = AMSHashIfNeeded();
              *buf = 138544642;
              v68 = v50;
              v69 = 2114;
              v70 = v55;
              v71 = 2048;
              v72 = v49;
              v73 = 2114;
              v74 = v54;
              v75 = 2048;
              v76 = v29;
              v77 = 2114;
              v78 = v30;
              v31 = v30;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%{public}@: Notifying Screen Time of the exception. Bundle ID: %{public}@ | adamID: %llu | distributorID: %{public}@ | ratingValue: %llu | exceptionApp = %{public}@", buf, 0x3Eu);
            }

            v66[0] = _NSConcreteStackBlock;
            v66[1] = 3221225472;
            v66[2] = sub_1000207E8;
            v66[3] = &unk_100055168;
            v66[4] = self;
            [v62 addExceptionWithCompletionHandler:v66];
            v7 = v64;
          }

          else
          {
            v60 = v25;
            v45 = +[APLogConfig sharedDaemonConfig];
            if (!v45)
            {
              v45 = +[APLogConfig sharedConfig];
            }

            [v45 OSLogObject];
            v7 = v64;
            v46 = v28 = v45;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v47 = objc_opt_class();
              *buf = 138543362;
              v68 = v47;
              v48 = v47;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}@: Missing rating value, can’t submit exception approval.", buf, 0xCu);
            }

            v25 = v60;
          }
        }

        else
        {
          v41 = +[APLogConfig sharedDaemonConfig];
          if (!v41)
          {
            v41 = +[APLogConfig sharedConfig];
          }

          v63 = v41;
          v42 = [v41 OSLogObject];
          v7 = v64;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = objc_opt_class();
            *buf = 138543362;
            v68 = v43;
            v44 = v43;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}@: Missing adamId, can’t submit exception approval.", buf, 0xCu);
          }

          v25 = 0;
          v28 = v63;
        }

        goto LABEL_51;
      }

      v25 = +[APLogConfig sharedDaemonConfig];
      if (!v25)
      {
        v25 = +[APLogConfig sharedConfig];
      }

      v28 = [v25 OSLogObject];
      v7 = v64;
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      v40 = objc_opt_class();
      *buf = 138543362;
      v68 = v40;
      v38 = v40;
      v39 = "%{public}@: Missing bundle identifier, can’t submit exception approval.";
    }

    else
    {
      v25 = +[APLogConfig sharedDaemonConfig];
      v7 = v64;
      if (!v25)
      {
        v25 = +[APLogConfig sharedConfig];
      }

      v28 = [v25 OSLogObject];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      v37 = objc_opt_class();
      *buf = 138543362;
      v68 = v37;
      v38 = v37;
      v39 = "%{public}@: Missing requester DSID, can’t submit exception approval.";
    }

    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v39, buf, 0xCu);

LABEL_51:
LABEL_52:

LABEL_53:
    goto LABEL_54;
  }

  v14 = +[APLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[APLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    *buf = 138543362;
    v68 = v16;
    v17 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: Missing requestID, can’t submit exception approval.", buf, 0xCu);
LABEL_54:
  }
}

- (void)_presentRequest:(id)a3
{
  v3 = a3;
  v4 = +[LocalNotificationHandler sharedHandler];
  [v4 presentNotificationWithRequest:v3 silently:0];
}

- (id)_requestResultFromResult:(id)a3 withError:(id *)a4
{
  v5 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"requestInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v11 = [v8 objectForKeyedSubscript:@"salables"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v12 objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v8 objectForKeyedSubscript:@"buyParams"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v12 objectForKeyedSubscript:@"adamId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [v8 objectForKeyedSubscript:@"productType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v16 && v18 && v20)
    {
      v10 = [[APResult alloc] initWithBundleIdentifier:v14 buyParams:v16 itemIdentifier:v18 productType:v20];
      v9 = 0;
    }

    else
    {
      v9 = APError();
      v10 = 0;
    }

    if (!a4)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v9 = APError();
  v10 = 0;
  if (a4)
  {
LABEL_31:
    v21 = v9;
    *a4 = v9;
  }

LABEL_32:

  return v10;
}

- (id)_notifyExtensionWithResult:(id)a3
{
  v3 = a3;
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = objc_opt_class();
    v6 = v23;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Notifying extension.", buf, 0xCu);
  }

  v7 = +[ExtensionManager sharedExtensionManager];
  v21 = 0;
  v8 = [v7 notifyWithResult:v3 error:&v21];

  v9 = v21;
  v10 = +[APLogConfig sharedDaemonConfig];
  v11 = v10;
  if (v8)
  {
    if (!v10)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138543362;
      v23 = v13;
      v14 = v13;
      v15 = "%{public}@: Notified extension succesfully.";
      v16 = v12;
      v17 = OS_LOG_TYPE_DEFAULT;
      v18 = 12;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, v18);
    }
  }

  else
  {
    if (!v10)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138543618;
      v23 = v19;
      v24 = 2114;
      v25 = v9;
      v14 = v19;
      v15 = "%{public}@: Failed to notify extension. Error: %{public}@.";
      v16 = v12;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 22;
      goto LABEL_14;
    }
  }

  return v9;
}

@end