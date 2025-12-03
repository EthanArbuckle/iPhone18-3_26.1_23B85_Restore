@interface ASFetchUserActivity
- (ASFetchUserActivity)fetchUserActivityWithCompletion:(id)completion;
- (void)_fetchUserActivityForUUID:(id)d withCompletion:(id)completion;
@end

@implementation ASFetchUserActivity

- (ASFetchUserActivity)fetchUserActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  internalGUID = [(ASFetchUserActivity *)self internalGUID];
  v6 = [internalGUID length];

  if (v6)
  {
    v7 = [NSUUID alloc];
    internalGUID2 = [(ASFetchUserActivity *)self internalGUID];
    v9 = [v7 initWithUUIDString:internalGUID2];

    [(ASFetchUserActivity *)self _fetchUserActivityForUUID:v9 withCompletion:completionCopy];
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_5E44;
    v11[3] = &unk_C528;
    v11[4] = self;
    v12 = completionCopy;
    [NSUserActivity _currentUserActivityUUIDWithOptions:0 completionHandler:v11];
  }

  return result;
}

- (void)_fetchUserActivityForUUID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (!d)
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
    dictionary = [v9 dictionary];
    (v7)[2](v7, dictionary);

    goto LABEL_6;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6104;
  v11[3] = &unk_C550;
  v12 = completionCopy;
  [NSUserActivity _fetchUserActivityWithUUID:d completionHandler:v11];
  v8 = v12;
LABEL_6:
}

@end