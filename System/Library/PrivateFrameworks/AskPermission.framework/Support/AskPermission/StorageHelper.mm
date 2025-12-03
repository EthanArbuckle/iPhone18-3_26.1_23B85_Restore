@interface StorageHelper
+ (id)_requestInfoForIndentifier:(id)indentifier withError:(id *)error;
+ (id)approvalRequestWithRequestIdentifier:(id)identifier;
@end

@implementation StorageHelper

+ (id)approvalRequestWithRequestIdentifier:(id)identifier
{
  v14 = 0;
  v3 = [self _requestInfoForIndentifier:identifier withError:&v14];
  v4 = v14;
  object = [v3 object];
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  v7 = +[APLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    object2 = [v3 object];
    *buf = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = object2;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Request Info: %@.", buf, 0x16u);
  }

  v12 = [[ApprovalRequest alloc] initWithCloudPushDictionary:v6];

  return v12;
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