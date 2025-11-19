@interface BiomeHelper
+ (BOOL)donateToBiomeWithRequestIdentifier:(id)a3 withError:(id *)a4;
+ (id)_requestInfoForIndentifier:(id)a3 withError:(id *)a4;
+ (int)_mapRequestStatusToBiomeStatus:(int64_t)a3;
+ (void)donateToBiomeWithRequest:(id)a3;
+ (void)donateToBiomeWithRequests:(id)a3;
@end

@implementation BiomeHelper

+ (void)donateToBiomeWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v4 uniqueIdentifier];
    *buf = 138543618;
    v38 = v7;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Donating to Biome Stream - Identifier: %@", buf, 0x16u);
  }

  v10 = [v4 modifiedDate];
  if (v10)
  {
    [v4 modifiedDate];
  }

  else
  {
    [v4 createdDate];
  }
  v11 = ;
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  v36 = [NSNumber numberWithDouble:v13];
  v35 = [BMFamilyAskToBuy alloc];
  v34 = [v4 uniqueIdentifier];
  v30 = [v4 requesterDSID];
  v33 = [v4 approverDSID];
  v32 = [a1 _mapRequestStatusToBiomeStatus:{objc_msgSend(v4, "status")}];
  v31 = [v4 itemTitle];
  v29 = [v4 itemDescription];
  v28 = [v4 localizedPrice];
  v27 = [v4 thumbnailURLString];
  v14 = [v4 ageRating];
  v15 = [v4 starRating];
  v16 = [v4 productType];
  v17 = [v4 productURL];
  v18 = [v17 absoluteString];
  v19 = [v35 initWithRequestID:v34 eventTime:v36 userID:v30 actionUserID:v33 status:v32 itemTitle:v31 itemDescription:v29 itemLocalizedPrice:v28 thumbnailPath:v27 ageRating:v14 starRating:v15 productType:v16 isActionUserDevice:&__kCFBooleanFalse storeLink:v18];

  if (v19)
  {
    v20 = BiomeLibrary();
    v21 = [v20 Family];
    v22 = [v21 AskToBuy];
    v23 = [v22 source];
    [v23 sendEvent:v19];
  }

  else
  {
    v20 = +[APLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[APLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = v24;
      v26 = [v4 compile];
      *buf = 138543618;
      v38 = v24;
      v39 = 2112;
      v40 = v26;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@: Biome Event failed to create from Request: %@", buf, 0x16u);
    }
  }
}

+ (void)donateToBiomeWithRequests:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [a1 donateToBiomeWithRequest:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (BOOL)donateToBiomeWithRequestIdentifier:(id)a3 withError:(id *)a4
{
  v23 = 0;
  v6 = [a1 _requestInfoForIndentifier:a3 withError:&v23];
  v7 = v23;
  v8 = [v6 object];
  objc_opt_class();
  v9 = 0;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  v10 = +[APLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[APLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = a4;
    v14 = v12;
    v15 = [v6 object];
    *buf = 138543618;
    v25 = v12;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Request Info: %@.", buf, 0x16u);

    a4 = v13;
  }

  v16 = [[ApprovalRequest alloc] initWithCloudPushDictionary:v9];
  [a1 donateToBiomeWithRequest:v16];
  if (v7)
  {
    v17 = +[APLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v7;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: Error requesting info for Biome donation - %@", buf, 0x16u);
    }
  }

  if (a4)
  {
    v21 = v7;
    *a4 = v7;
  }

  return v7 == 0;
}

+ (int)_mapRequestStatusToBiomeStatus:(int64_t)a3
{
  if ((a3 + 1) < 3)
  {
    return a3 + 2;
  }

  else
  {
    return 0;
  }
}

+ (id)_requestInfoForIndentifier:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v6 = +[AMSBag sharedBag];
  v7 = [v6 retrieveRequestURL];

  v34 = @"requestId";
  v35 = v5;
  v8 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v9 = objc_alloc_init(URLRequestEncoder);
  v10 = [(URLRequestEncoder *)v9 requestWithMethod:4 bagURL:v7 parameters:v8];
  v31 = 0;
  v11 = [v10 resultWithTimeout:&v31 error:60.0];
  v12 = v31;
  if (v11)
  {
    v27 = v7;
    v28 = a4;
    v29 = v5;
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
      v33 = v15;
      v16 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Encoded request successfully", buf, 0xCu);
    }

    v17 = +[URLSession sharedSession];
    v18 = [v17 dataTaskPromiseWithRequest:v11];

    v30 = v12;
    v19 = [v18 resultWithTimeout:&v30 error:60.0];
    v20 = v30;

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
        v33 = v23;
        v24 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result", buf, 0xCu);
      }
    }

    v12 = v20;
    a4 = v28;
    v5 = v29;
    v7 = v27;
    if (v28)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (a4)
    {
LABEL_13:
      v25 = v12;
      *a4 = v12;
    }
  }

  return v19;
}

@end