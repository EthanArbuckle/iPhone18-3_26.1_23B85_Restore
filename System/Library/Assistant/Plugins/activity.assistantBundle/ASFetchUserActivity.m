@interface ASFetchUserActivity
- (ASFetchUserActivity)fetchUserActivityWithCompletion:(id)a3;
- (void)_fetchUserActivityForUUID:(id)a3 withCompletion:(id)a4;
@end

@implementation ASFetchUserActivity

- (ASFetchUserActivity)fetchUserActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ASFetchUserActivity *)self internalGUID];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [NSUUID alloc];
    v8 = [(ASFetchUserActivity *)self internalGUID];
    v9 = [v7 initWithUUIDString:v8];

    [(ASFetchUserActivity *)self _fetchUserActivityForUUID:v9 withCompletion:v4];
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_5E44;
    v11[3] = &unk_C528;
    v11[4] = self;
    v12 = v4;
    [NSUserActivity _currentUserActivityUUIDWithOptions:0 completionHandler:v11];
  }

  return result;
}

- (void)_fetchUserActivityForUUID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!a3)
  {
    v8 = [NSString stringWithFormat:@"Invalid ace command %@, no user activity found", self];
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      sub_75F8();
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else if (!v7)
    {
      goto LABEL_6;
    }

    v9 = [[SACommandFailed alloc] initWithReason:v8];
    v10 = [v9 dictionary];
    (v7)[2](v7, v10);

    goto LABEL_6;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6104;
  v11[3] = &unk_C550;
  v12 = v6;
  [NSUserActivity _fetchUserActivityWithUUID:a3 completionHandler:v11];
  v8 = v12;
LABEL_6:
}

@end