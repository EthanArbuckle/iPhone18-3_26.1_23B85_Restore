@interface PKEngagementPluginProvider
+ (id)unknownError;
+ (id)unrecognizedPropertyError;
+ (id)wrapBatchResponse:(id)a3;
+ (id)wrapError:(id)a3;
+ (id)wrapValue:(id)a3 forProperty:(id)a4;
+ (void)fetchProperties:(id)a3 finHealthProperties:(id)a4 withParameters:(id)a5 completion:(id)a6;
+ (void)handleBatchPayload:(id)a3 completion:(id)a4;
+ (void)performRequest:(id)a3 completion:(id)a4;
+ (void)performRequestWithObject:(id)a3 completion:(id)a4;
@end

@implementation PKEngagementPluginProvider

+ (void)performRequestWithObject:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 PKDictionaryForKey:@"json-payload"];
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "received engagement request %{public}@", buf, 0xCu);
      }

      if (v8)
      {
        v10 = [v8 PKDictionaryForKey:@"request"];
        v11 = [v10 PKDictionaryForKey:@"batch"];

        if (v11)
        {
          [a1 handleBatchPayload:v8 completion:v7];
        }

        else
        {
          v15 = 0;
          v13 = [[PKEngagementRequest alloc] initWithDictionary:v8 error:&v15];
          v14 = v15;
          if (v14)
          {
            v7[2](v7, 0, v14);
          }

          else
          {
            [a1 performRequest:v13 completion:v7];
          }
        }
      }

      else
      {
        v12 = +[PKEngagementRequest malformedRequest];
        v7[2](v7, 0, v12);
      }
    }

    else
    {
      v8 = +[PKEngagementRequest malformedRequest];
      v7[2](v7, 0, v8);
    }
  }
}

+ (void)handleBatchPayload:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 PKDictionaryForKey:@"request"];
  v21 = 0;
  v22 = 0;
  v9 = [[PKEngagementBatchRequest alloc] initWithDictionary:v8 errorsByRequestID:&v22 error:&v21];
  v10 = v22;
  v11 = v21;
  if (v11)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = v11;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unable to parse engagement request due to error %{public}@:\n%{public}@", buf, 0x16u);
    }

    v7[2](v7, 0, v11);
  }

  else
  {
    v13 = [v9 propertiesForSource:1];
    v14 = [v9 propertiesForSource:2];
    v15 = [v9 parametersByPropertyName];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000010B8;
    v16[3] = &unk_100004228;
    v17 = v9;
    v18 = v10;
    v20 = a1;
    v19 = v7;
    [a1 fetchProperties:v13 finHealthProperties:v14 withParameters:v15 completion:v16];
  }
}

+ (void)performRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 propertyName];
  v10 = [v7 propertySource];
  if (v10 == 1)
  {
    v25 = v9;
    v17 = [NSArray arrayWithObjects:&v25 count:1];
  }

  else
  {
    v17 = &__NSArray0__struct;
  }

  v11 = [v7 propertySource];
  if (v11 == 2)
  {
    v24 = v9;
    v12 = [NSArray arrayWithObjects:&v24 count:1];
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  v13 = [v7 parameters];
  if (v13)
  {
    v22 = v9;
    v4 = [v7 parameters];
    v23 = v4;
    v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  }

  else
  {
    v14 = 0;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100001570;
  v18[3] = &unk_100004250;
  v20 = v8;
  v21 = a1;
  v19 = v9;
  v15 = v9;
  v16 = v8;
  [a1 fetchProperties:v17 finHealthProperties:v12 withParameters:v14 completion:v18];
  if (v13)
  {
  }

  if (v11 == 2)
  {
  }

  if (v10 == 1)
  {
  }
}

+ (void)fetchProperties:(id)a3 finHealthProperties:(id)a4 withParameters:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v38 = a5;
  v37 = a6;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = sub_100001C94;
  v63[4] = sub_100001CA4;
  v64 = objc_opt_new();
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3032000000;
  v61[3] = sub_100001C94;
  v61[4] = sub_100001CA4;
  v62 = 0;
  v11 = dispatch_group_create();
  v12 = PKLogFacilityTypeGetObject();
  v13 = os_signpost_id_make_with_pointer(v12, a1);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      v15 = [v9 componentsJoinedByString:{@", "}];
      v16 = [v10 componentsJoinedByString:{@", "}];
      *buf = 138543618;
      v68 = v15;
      v69 = 2114;
      v70 = v16;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "engagement:fetchProperties", "properties:%{public}@\nfinHealthProperties:%{public}@", buf, 0x16u);
    }
  }

  if (v10 && [v10 count])
  {
    dispatch_group_enter(v11);
    v17 = objc_alloc_init(NSMutableDictionary);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v18 = v38;
    v19 = [v18 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v19)
    {
      v20 = *v58;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v58 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v57 + 1) + 8 * i);
          if ([v10 containsObject:{v22, v37}])
          {
            v23 = [v18 objectForKeyedSubscript:v22];
            [v17 setObject:v23 forKey:v22];
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v19);
    }

    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Query FinHealthXPCServices for properties", buf, 2u);
    }

    v25 = objc_alloc_init(off_100008460());
    v26 = [v17 copy];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100001CAC;
    v53[3] = &unk_100004278;
    v55 = v63;
    v56 = v61;
    v54 = v11;
    [v25 fetchUserProperties:v10 withParameters:v26 completion:v53];
  }

  if (v9 && [v9 count])
  {
    dispatch_group_enter(v11);
    v27 = objc_alloc_init(NSMutableDictionary);
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v49 = 0u;
    v28 = v38;
    v29 = [v28 countByEnumeratingWithState:&v49 objects:v65 count:16];
    if (v29)
    {
      v30 = *v50;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v49 + 1) + 8 * j);
          if ([v9 containsObject:{v32, v37}])
          {
            v33 = [v28 objectForKeyedSubscript:v32];
            [v27 setObject:v33 forKey:v32];
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v49 objects:v65 count:16];
      }

      while (v29);
    }

    v34 = +[PKDiscoveryService sharedInstance];
    v35 = [v27 copy];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100001D38;
    v45[3] = &unk_100004278;
    v47 = v63;
    v48 = v61;
    v46 = v11;
    [v34 fetchUserProperties:v9 withParameters:v35 completion:v45];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001DC4;
  block[3] = &unk_1000042A0;
  v41 = v37;
  v42 = v63;
  v43 = v61;
  v44 = a1;
  v36 = v37;
  dispatch_group_notify(v11, &_dispatch_main_q, block);

  _Block_object_dispose(v61, 8);
  _Block_object_dispose(v63, 8);
}

+ (id)wrapValue:(id)a3 forProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v18 = @"json-payload";
    v16[0] = @"error";
    v8 = +[NSNull null];
    v16[1] = @"response";
    v17[0] = v8;
    v14 = v7;
    v15 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
    v19 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  else
  {
    v12 = [a1 unrecognizedPropertyError];
    v11 = [a1 wrapError:v12];
  }

  return v11;
}

+ (id)wrapError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [a1 unknownError];
  }

  v5 = [NSMutableDictionary alloc];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
  v7 = [v5 initWithObjectsAndKeys:{v6, @"code", 0}];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKey:NSDebugDescriptionErrorKey];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v4 debugDescription];
  }

  v12 = v11;

  [v7 safelySetObject:v12 forKey:@"message"];
  v13 = [v4 domain];
  [v7 safelySetObject:v13 forKey:@"domain"];

  v20 = @"json-payload";
  v18[0] = @"error";
  v14 = [v7 copy];
  v18[1] = @"response";
  v19[0] = v14;
  v19[1] = &__NSDictionary0__struct;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  return v16;
}

+ (id)wrapBatchResponse:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = @"json-payload";
    v9[0] = @"error";
    v5 = +[NSNull null];
    v9[1] = @"response";
    v10[0] = v5;
    v10[1] = v4;
    v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    v12 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  else
  {
    v5 = [a1 unknownError];
    v7 = [a1 wrapError:v5];
  }

  return v7;
}

+ (id)unrecognizedPropertyError
{
  v2 = PKEngagementErrorDomain;
  v6 = NSDebugDescriptionErrorKey;
  v7 = @"Unrecognized property";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:v2 code:4 userInfo:v3];

  return v4;
}

+ (id)unknownError
{
  v2 = PKEngagementErrorDomain;
  v6 = NSDebugDescriptionErrorKey;
  v7 = @"Unknown error";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:v2 code:-1 userInfo:v3];

  return v4;
}

@end