@interface MSDViewServiceModel
+ (id)sharedInstance;
- (MSDViewServiceModel)init;
- (id)errorMessageFromErrors;
- (void)didReceiveError:(id)a3;
- (void)didReceiveProgress:(int64_t)a3;
- (void)operationCompleted;
- (void)operationFailed:(id)a3;
@end

@implementation MSDViewServiceModel

+ (id)sharedInstance
{
  if (qword_1000124F0 != -1)
  {
    sub_100005ABC();
  }

  v3 = qword_1000124E8;

  return v3;
}

- (MSDViewServiceModel)init
{
  v8.receiver = self;
  v8.super_class = MSDViewServiceModel;
  v2 = [(MSDViewServiceModel *)&v8 init];
  if (v2)
  {
    v3 = +[MSDKManagedDevice sharedInstance];
    [v3 setDelegate:v2];

    v4 = +[NSMutableArray array];
    [(MSDViewServiceModel *)v2 setErrors:v4];

    v5 = [NSNumber numberWithFloat:0.0];
    [(MSDViewServiceModel *)v2 setProgress:v5];

    [(MSDViewServiceModel *)v2 setShowCancelButton:0];
    [(MSDViewServiceModel *)v2 setDisableIdleTimer:0];
    v6 = v2;
  }

  return v2;
}

- (id)errorMessageFromErrors
{
  v3 = [(MSDViewServiceModel *)self errors];
  v4 = [v3 count];

  if (v4)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(MSDViewServiceModel *)self errors];
    v5 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = &stru_10000C608;
      v9 = *v25;
      do
      {
        v10 = 0;
        v11 = v8;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * v10);
          v13 = [v12 localizedFailureReason];

          v14 = [v12 localizedDescription];
          v15 = [v12 code];
          v16 = v15;
          if (v13)
          {
            v17 = [v12 localizedFailureReason];
            v18 = [NSString stringWithFormat:@"%@(0x%lx) - %@\n", v14, v16, v17];

            v7 = v18;
          }

          else
          {
            [NSString stringWithFormat:@"%@(0x%lx)\n", v14, v15];
            v7 = v17 = v7;
          }

          v8 = [(__CFString *)v11 stringByAppendingString:v7];

          v10 = v10 + 1;
          v11 = v8;
        }

        while (v6 != v10);
        v6 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = &stru_10000C608;
    }

    v21 = sub_1000015E4();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Full message is now: %{public}@", buf, 0xCu);
    }

    v20 = v8;
    v19 = v20;
  }

  else
  {
    v19 = 0;
    v20 = &stru_10000C608;
  }

  return v19;
}

- (void)didReceiveError:(id)a3
{
  v4 = a3;
  v5 = [(MSDViewServiceModel *)self errors];
  [v5 addObject:v4];

  v6 = [(MSDViewServiceModel *)self errorMessageFromErrors];
  [(MSDViewServiceModel *)self setErrorMessage:v6];
}

- (void)didReceiveProgress:(int64_t)a3
{
  v5 = sub_1000015E4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received progress: %ld", &v8, 0xCu);
  }

  if (a3 >= 1)
  {
    *&v6 = a3 / 100.0;
    v7 = [NSNumber numberWithFloat:v6];
    [(MSDViewServiceModel *)self setProgress:v7];
  }
}

- (void)operationCompleted
{
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Operation completed, informing the view controller.", v4, 2u);
  }

  [(MSDViewServiceModel *)self setErrorToReport:0];
}

- (void)operationFailed:(id)a3
{
  v4 = a3;
  v5 = sub_1000015E4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Operation failed, informing the view controller.", v6, 2u);
  }

  [(MSDViewServiceModel *)self setErrorToReport:v4];
}

@end