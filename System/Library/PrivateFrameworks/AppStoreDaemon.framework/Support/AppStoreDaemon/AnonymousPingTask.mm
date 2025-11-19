@interface AnonymousPingTask
- (void)main;
@end

@implementation AnonymousPingTask

- (void)main
{
  if (sub_1004030CC())
  {
    v3 = +[BagService appstoredService];
    log = [v3 amsBag];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_pingURLs;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v4)
    {
      v5 = v4;
      v25 = *v29;
      do
      {
        v6 = 0;
        do
        {
          if (*v29 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v28 + 1) + 8 * v6);
          if (os_variant_has_internal_content() && (sub_1003D529C(), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
          {
            v37 = @"canaryIdentifier";
            v9 = sub_1003D529C();
            v38 = v9;
            v10 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            v11 = sub_100259260(v7, v10);

            v12 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = sub_1003D529C();
              *buf = 138543362;
              v33 = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updated anonymous ping URL to include canaryIdentifier: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v11 = v7;
          }

          v14 = [NSMutableURLRequest requestWithURL:v11 cachePolicy:1 timeoutInterval:20.0];
          v15 = [[AMSURLRequest alloc] initWithRequest:v14 bag:log];
          v16 = objc_alloc_init(AMSPromise);
          v17 = +[AMSURLSession defaultSession];
          v18 = [v16 completionHandlerAdapter];
          v19 = [v17 dataTaskWithRequest:v15 completionHandler:v18];

          [v19 resume];
          v27 = 0;
          v20 = [v16 resultWithError:&v27];
          v21 = v27;
          v22 = ASDLogHandleForCategory();
          v23 = v22;
          if (v20)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v33 = v11;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Successfully sent ping to: %{public}@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v33 = v11;
            v34 = 2114;
            v35 = v21;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Ping failed to: %{public}@ error: %{public}@", buf, 0x16u);
          }

          v6 = v6 + 1;
        }

        while (v5 != v6);
        v5 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v5);
    }
  }

  else
  {
    log = ASDLogHandleForCategory();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Dropping anonymous pings - DNU submission disabled", buf, 2u);
    }
  }
}

@end