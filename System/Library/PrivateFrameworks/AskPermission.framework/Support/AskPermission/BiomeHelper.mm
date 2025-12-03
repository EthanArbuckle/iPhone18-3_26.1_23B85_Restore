@interface BiomeHelper
+ (BOOL)donateToBiomeWithRequestIdentifier:(id)identifier withError:(id *)error;
+ (id)_requestInfoForIndentifier:(id)indentifier withError:(id *)error;
+ (int)_mapRequestStatusToBiomeStatus:(int64_t)status;
+ (void)donateToBiomeWithRequest:(id)request;
+ (void)donateToBiomeWithRequests:(id)requests;
@end

@implementation BiomeHelper

+ (void)donateToBiomeWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    uniqueIdentifier = [requestCopy uniqueIdentifier];
    *buf = 138543618;
    v38 = v7;
    v39 = 2112;
    v40 = uniqueIdentifier;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Donating to Biome Stream - Identifier: %@", buf, 0x16u);
  }

  modifiedDate = [requestCopy modifiedDate];
  if (modifiedDate)
  {
    [requestCopy modifiedDate];
  }

  else
  {
    [requestCopy createdDate];
  }
  v11 = ;
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  v36 = [NSNumber numberWithDouble:v13];
  v35 = [BMFamilyAskToBuy alloc];
  uniqueIdentifier2 = [requestCopy uniqueIdentifier];
  requesterDSID = [requestCopy requesterDSID];
  approverDSID = [requestCopy approverDSID];
  v32 = [self _mapRequestStatusToBiomeStatus:{objc_msgSend(requestCopy, "status")}];
  itemTitle = [requestCopy itemTitle];
  itemDescription = [requestCopy itemDescription];
  localizedPrice = [requestCopy localizedPrice];
  thumbnailURLString = [requestCopy thumbnailURLString];
  ageRating = [requestCopy ageRating];
  starRating = [requestCopy starRating];
  productType = [requestCopy productType];
  productURL = [requestCopy productURL];
  absoluteString = [productURL absoluteString];
  v19 = [v35 initWithRequestID:uniqueIdentifier2 eventTime:v36 userID:requesterDSID actionUserID:approverDSID status:v32 itemTitle:itemTitle itemDescription:itemDescription itemLocalizedPrice:localizedPrice thumbnailPath:thumbnailURLString ageRating:ageRating starRating:starRating productType:productType isActionUserDevice:&__kCFBooleanFalse storeLink:absoluteString];

  if (v19)
  {
    v20 = BiomeLibrary();
    family = [v20 Family];
    askToBuy = [family AskToBuy];
    source = [askToBuy source];
    [source sendEvent:v19];
  }

  else
  {
    v20 = +[APLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[APLogConfig sharedConfig];
    }

    family = [v20 OSLogObject];
    if (os_log_type_enabled(family, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = v24;
      compile = [requestCopy compile];
      *buf = 138543618;
      v38 = v24;
      v39 = 2112;
      v40 = compile;
      _os_log_impl(&_mh_execute_header, family, OS_LOG_TYPE_ERROR, "%{public}@: Biome Event failed to create from Request: %@", buf, 0x16u);
    }
  }
}

+ (void)donateToBiomeWithRequests:(id)requests
{
  requestsCopy = requests;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [requestsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(requestsCopy);
        }

        [self donateToBiomeWithRequest:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [requestsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (BOOL)donateToBiomeWithRequestIdentifier:(id)identifier withError:(id *)error
{
  v23 = 0;
  v6 = [self _requestInfoForIndentifier:identifier withError:&v23];
  v7 = v23;
  object = [v6 object];
  objc_opt_class();
  v9 = 0;
  if (objc_opt_isKindOfClass())
  {
    v9 = object;
  }

  v10 = +[APLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    errorCopy = error;
    v14 = v12;
    object2 = [v6 object];
    *buf = 138543618;
    v25 = v12;
    v26 = 2112;
    v27 = object2;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Request Info: %@.", buf, 0x16u);

    error = errorCopy;
  }

  v16 = [[ApprovalRequest alloc] initWithCloudPushDictionary:v9];
  [self donateToBiomeWithRequest:v16];
  if (v7)
  {
    v17 = +[APLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v7;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Error requesting info for Biome donation - %@", buf, 0x16u);
    }
  }

  if (error)
  {
    v21 = v7;
    *error = v7;
  }

  return v7 == 0;
}

+ (int)_mapRequestStatusToBiomeStatus:(int64_t)status
{
  if ((status + 1) < 3)
  {
    return status + 2;
  }

  else
  {
    return 0;
  }
}

+ (id)_requestInfoForIndentifier:(id)indentifier withError:(id *)error
{
  indentifierCopy = indentifier;
  v6 = +[AMSBag sharedBag];
  retrieveRequestURL = [v6 retrieveRequestURL];

  v34 = @"requestId";
  v35 = indentifierCopy;
  v8 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v9 = objc_alloc_init(URLRequestEncoder);
  v10 = [(URLRequestEncoder *)v9 requestWithMethod:4 bagURL:retrieveRequestURL parameters:v8];
  v31 = 0;
  v11 = [v10 resultWithTimeout:&v31 error:60.0];
  v12 = v31;
  if (v11)
  {
    v27 = retrieveRequestURL;
    errorCopy = error;
    v29 = indentifierCopy;
    v13 = +[APLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543362;
      v33 = v15;
      v16 = v15;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Encoded request successfully", buf, 0xCu);
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

      oSLogObject2 = [v21 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543362;
        v33 = v23;
        v24 = v23;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result", buf, 0xCu);
      }
    }

    v12 = v20;
    error = errorCopy;
    indentifierCopy = v29;
    retrieveRequestURL = v27;
    if (errorCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if (error)
    {
LABEL_13:
      v25 = v12;
      *error = v12;
    }
  }

  return v19;
}

@end