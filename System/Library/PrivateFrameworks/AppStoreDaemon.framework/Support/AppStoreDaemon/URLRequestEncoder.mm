@interface URLRequestEncoder
- (id)requestByEncodingRequest:(id)a3 parameters:(id)a4;
@end

@implementation URLRequestEncoder

- (id)requestByEncodingRequest:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 mutableCopy];

    v9 = v8;
    v7 = v9;
    if (self)
    {
      if (sub_10033D488(self->_requestProperties))
      {
        v10 = +[AMSDevice deviceGUID];
        [v7 setObject:v10 forKeyedSubscript:@"guid"];
      }

      v11 = v7;
      if ((sub_10033CD18(self->_requestProperties) - 3) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v12 = +[AMSKeybag sharedInstance];
        v13 = sub_10033C8AC(self->_requestProperties);
        v14 = [v13 ams_DSID];
        v32 = 0;
        v15 = [v12 keybagSyncDataWithAccountID:v14 transactionType:1 error:&v32];
        v16 = v32;

        if (v16)
        {
          v17 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v26 = sub_10033C8AC(self->_requestProperties);
            v27 = [v26 ams_DSID];
            *buf = 138543362;
            v34 = v27;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error generating keybag for account: %{public}@", buf, 0xCu);
          }
        }

        if ([v15 length])
        {
          v18 = [v15 base64EncodedStringWithOptions:0];
          if (v18)
          {
            [v11 setObject:v18 forKeyedSubscript:@"kbsync"];
          }
        }
      }
    }

    else
    {

      v28 = v7;
    }
  }

  v19 = [v6 mutableCopy];
  [v19 setCachePolicy:sub_10033CFA8(self->_requestProperties)];
  requestProperties = self->_requestProperties;
  if (requestProperties)
  {
    requestProperties = objc_getProperty(requestProperties, v20, 96, 1);
  }

  v22 = requestProperties;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100236724;
  v30[3] = &unk_10051E0E0;
  v31 = v19;
  v23 = v19;
  [v22 enumerateKeysAndObjectsUsingBlock:v30];

  v29.receiver = self;
  v29.super_class = URLRequestEncoder;
  v24 = [(URLRequestEncoder *)&v29 requestByEncodingRequest:v23 parameters:v7];

  return v24;
}

@end