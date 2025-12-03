@interface EKSyncError
+ (id)augmentSyncErrorUserInfo:(id)info for:(id)for;
+ (id)knownIdentityKeysForComparison;
- (EKSyncError)initWithAccountError:(unint64_t)error userInfo:(id)info;
- (EKSyncError)initWithCalendarError:(unint64_t)error userInfo:(id)info;
- (EKSyncError)initWithCalendarItemError:(unint64_t)error userInfo:(id)info;
- (NSDictionary)userInfo;
- (unint64_t)errorCode;
- (unint64_t)errorType;
- (void)setErrorCode:(unint64_t)code;
- (void)setErrorType:(unint64_t)type;
- (void)setUserInfo:(id)info;
@end

@implementation EKSyncError

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_13 != -1)
  {
    +[EKSyncError knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_13;

  return v3;
}

void __45__EKSyncError_knownIdentityKeysForComparison__block_invoke()
{
  v0 = knownIdentityKeysForComparison_keys_13;
  knownIdentityKeysForComparison_keys_13 = MEMORY[0x1E695E0F0];
}

- (EKSyncError)initWithAccountError:(unint64_t)error userInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = EKSyncError;
  v7 = [(EKObject *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(EKSyncError *)v7 setErrorType:0];
    [(EKSyncError *)v8 setErrorCode:error];
    [(EKSyncError *)v8 setUserInfo:infoCopy];
  }

  return v8;
}

- (EKSyncError)initWithCalendarError:(unint64_t)error userInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = EKSyncError;
  v7 = [(EKObject *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(EKSyncError *)v7 setErrorType:2];
    [(EKSyncError *)v8 setErrorCode:error];
    [(EKSyncError *)v8 setUserInfo:infoCopy];
  }

  return v8;
}

- (EKSyncError)initWithCalendarItemError:(unint64_t)error userInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = EKSyncError;
  v7 = [(EKObject *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(EKSyncError *)v7 setErrorType:1];
    [(EKSyncError *)v8 setErrorCode:error];
    [(EKSyncError *)v8 setUserInfo:infoCopy];
  }

  return v8;
}

- (unint64_t)errorType
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69928E0]];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setErrorType:(unint64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69928E0]];
}

- (unint64_t)errorCode
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69928D8]];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setErrorCode:(unint64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:code];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69928D8]];
}

- (NSDictionary)userInfo
{
  userInfoData = [(EKSyncError *)self userInfoData];
  v3 = [EKSyncStatusUtils errorUserInfoFromData:userInfoData];

  return v3;
}

- (void)setUserInfo:(id)info
{
  v4 = [EKSyncStatusUtils dataFromErrorUserInfo:info];
  [(EKSyncError *)self setUserInfoData:v4];
}

+ (id)augmentSyncErrorUserInfo:(id)info for:(id)for
{
  infoCopy = info;
  forCopy = for;
  if (forCopy)
  {
    if (infoCopy)
    {
      v8 = [infoCopy mutableCopy];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v10 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = forCopy;
      if ([v11 isPhantom])
      {
        detachedItems = [v11 detachedItems];
        anyObject = [detachedItems anyObject];

        if (anyObject)
        {
          v14 = anyObject;

          v11 = v14;
        }
      }

      calendar = [v11 calendar];
      source = [calendar source];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        calendar = forCopy;
        source = [calendar source];
        v11 = 0;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          source = forCopy;
          v11 = 0;
          calendar = 0;
        }

        else
        {
          v11 = 0;
          calendar = 0;
          source = 0;
        }
      }
    }

    if ([calendar isSubscribed])
    {
      title = 0;
    }

    else
    {
      title = [source title];
    }

    v32 = title;
    [v10 setObject:title forKeyedSubscript:@"AccountName"];
    title2 = [calendar title];
    [v10 setObject:title2 forKeyedSubscript:@"CalendarName"];

    [v10 setObject:v11 forKeyedSubscript:@"CalendarItem"];
    title3 = [v11 title];
    [v10 setObject:title3 forKeyedSubscript:@"CalendarItemName"];

    v20 = *MEMORY[0x1E696AA08];
    v21 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v22 = v21;
    if (v21)
    {
      userInfo = [v21 userInfo];

      if (userInfo)
      {
        userInfo2 = [v22 userInfo];
        [self augmentSyncErrorUserInfo:userInfo2 for:forCopy];
        v25 = v31 = source;

        v26 = MEMORY[0x1E696ABC0];
        [v22 domain];
        v28 = v27 = infoCopy;
        v29 = [v26 errorWithDomain:v28 code:objc_msgSend(v22 userInfo:{"code"), v25}];

        infoCopy = v27;
        [v10 setObject:v29 forKeyedSubscript:v20];

        source = v31;
      }
    }

    v9 = [v10 copy];
  }

  else
  {
    v9 = infoCopy;
  }

  return v9;
}

@end