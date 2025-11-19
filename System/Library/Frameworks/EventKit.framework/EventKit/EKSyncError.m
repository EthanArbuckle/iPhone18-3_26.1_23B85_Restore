@interface EKSyncError
+ (id)augmentSyncErrorUserInfo:(id)a3 for:(id)a4;
+ (id)knownIdentityKeysForComparison;
- (EKSyncError)initWithAccountError:(unint64_t)a3 userInfo:(id)a4;
- (EKSyncError)initWithCalendarError:(unint64_t)a3 userInfo:(id)a4;
- (EKSyncError)initWithCalendarItemError:(unint64_t)a3 userInfo:(id)a4;
- (NSDictionary)userInfo;
- (unint64_t)errorCode;
- (unint64_t)errorType;
- (void)setErrorCode:(unint64_t)a3;
- (void)setErrorType:(unint64_t)a3;
- (void)setUserInfo:(id)a3;
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

- (EKSyncError)initWithAccountError:(unint64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = EKSyncError;
  v7 = [(EKObject *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(EKSyncError *)v7 setErrorType:0];
    [(EKSyncError *)v8 setErrorCode:a3];
    [(EKSyncError *)v8 setUserInfo:v6];
  }

  return v8;
}

- (EKSyncError)initWithCalendarError:(unint64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = EKSyncError;
  v7 = [(EKObject *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(EKSyncError *)v7 setErrorType:2];
    [(EKSyncError *)v8 setErrorCode:a3];
    [(EKSyncError *)v8 setUserInfo:v6];
  }

  return v8;
}

- (EKSyncError)initWithCalendarItemError:(unint64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = EKSyncError;
  v7 = [(EKObject *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(EKSyncError *)v7 setErrorType:1];
    [(EKSyncError *)v8 setErrorCode:a3];
    [(EKSyncError *)v8 setUserInfo:v6];
  }

  return v8;
}

- (unint64_t)errorType
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69928E0]];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setErrorType:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69928E0]];
}

- (unint64_t)errorCode
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E69928D8]];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setErrorCode:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E69928D8]];
}

- (NSDictionary)userInfo
{
  v2 = [(EKSyncError *)self userInfoData];
  v3 = [EKSyncStatusUtils errorUserInfoFromData:v2];

  return v3;
}

- (void)setUserInfo:(id)a3
{
  v4 = [EKSyncStatusUtils dataFromErrorUserInfo:a3];
  [(EKSyncError *)self setUserInfoData:v4];
}

+ (id)augmentSyncErrorUserInfo:(id)a3 for:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 mutableCopy];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v10 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
      if ([v11 isPhantom])
      {
        v12 = [v11 detachedItems];
        v13 = [v12 anyObject];

        if (v13)
        {
          v14 = v13;

          v11 = v14;
        }
      }

      v15 = [v11 calendar];
      v16 = [v15 source];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v7;
        v16 = [v15 source];
        v11 = 0;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v7;
          v11 = 0;
          v15 = 0;
        }

        else
        {
          v11 = 0;
          v15 = 0;
          v16 = 0;
        }
      }
    }

    if ([v15 isSubscribed])
    {
      v17 = 0;
    }

    else
    {
      v17 = [v16 title];
    }

    v32 = v17;
    [v10 setObject:v17 forKeyedSubscript:@"AccountName"];
    v18 = [v15 title];
    [v10 setObject:v18 forKeyedSubscript:@"CalendarName"];

    [v10 setObject:v11 forKeyedSubscript:@"CalendarItem"];
    v19 = [v11 title];
    [v10 setObject:v19 forKeyedSubscript:@"CalendarItemName"];

    v20 = *MEMORY[0x1E696AA08];
    v21 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 userInfo];

      if (v23)
      {
        v24 = [v22 userInfo];
        [a1 augmentSyncErrorUserInfo:v24 for:v7];
        v25 = v31 = v16;

        v26 = MEMORY[0x1E696ABC0];
        [v22 domain];
        v28 = v27 = v6;
        v29 = [v26 errorWithDomain:v28 code:objc_msgSend(v22 userInfo:{"code"), v25}];

        v6 = v27;
        [v10 setObject:v29 forKeyedSubscript:v20];

        v16 = v31;
      }
    }

    v9 = [v10 copy];
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

@end