@interface INFocusStatusCenter
+ (INFocusStatusCenter)defaultCenter;
- (INFocusStatus)focusStatus;
- (INFocusStatusAuthorizationStatus)authorizationStatus;
- (INFocusStatusCenter)init;
- (void)requestAuthorizationWithCompletionHandler:(void *)completionHandler;
@end

@implementation INFocusStatusCenter

- (void)requestAuthorizationWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if ([(INFocusStatusCenter *)self authorizationStatus]== INFocusStatusAuthorizationStatusRestricted)
  {
    if (v4)
    {
      v4[2](v4, 1);
    }
  }

  else
  {
    v5 = *MEMORY[0x1E69D5560];
    v6 = v4;
    TCCAccessRequest();
  }
}

uint64_t __65__INFocusStatusCenter_requestAuthorizationWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    return (*(result + 16))(result, v3);
  }

  return result;
}

- (INFocusStatusAuthorizationStatus)authorizationStatus
{
  v2 = MEMORY[0x1E69D5560];
  v3 = *MEMORY[0x1E69D5560];
  if (TCCAccessRestricted())
  {
    return 1;
  }

  v5 = *v2;
  v6 = TCCAccessPreflight();
  if (v6)
  {
    return 2 * (v6 == 1);
  }

  else
  {
    return 3;
  }
}

- (INFocusStatus)focusStatus
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(INFocusStatusCenter *)self authorizationStatus]== INFocusStatusAuthorizationStatusAuthorized)
  {
    v3 = [(INFocusStatusCenter *)self service];
    v13 = 0;
    v4 = [v3 isLocalUserAvailableReturningError:&v13];
    v5 = v13;

    if (v5)
    {
      v6 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "[INFocusStatusCenter focusStatus]";
        v16 = 2114;
        v17 = v5;
        _os_log_error_impl(&dword_18E991000, v6, OS_LOG_TYPE_ERROR, "%s Unable to get local user availability: %{public}@", buf, 0x16u);
      }
    }

    v7 = [INFocusStatus alloc];
    v8 = [MEMORY[0x1E696AD98] numberWithInt:v4 ^ 1u];
    v9 = [(INFocusStatus *)v7 initWithIsFocused:v8];
  }

  else
  {
    v10 = [INFocusStatus alloc];
    v9 = [(INFocusStatus *)v10 initWithIsFocused:MEMORY[0x1E695E110]];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (INFocusStatusCenter)init
{
  v11.receiver = self;
  v11.super_class = INFocusStatusCenter;
  v2 = [(INFocusStatusCenter *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];

    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v5 = getDNDAvailabilityServiceClass_softClass;
    v16 = getDNDAvailabilityServiceClass_softClass;
    if (!getDNDAvailabilityServiceClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getDNDAvailabilityServiceClass_block_invoke;
      v12[3] = &unk_1E72888B8;
      v12[4] = &v13;
      __getDNDAvailabilityServiceClass_block_invoke(v12);
      v5 = v14[3];
    }

    v6 = v5;
    _Block_object_dispose(&v13, 8);
    v7 = [v5 serviceForClientIdentifier:v4];
    service = v2->_service;
    v2->_service = v7;

    v9 = v2;
  }

  return v2;
}

+ (INFocusStatusCenter)defaultCenter
{
  if (defaultCenter_onceToken != -1)
  {
    dispatch_once(&defaultCenter_onceToken, &__block_literal_global_60747);
  }

  v3 = defaultCenter_defaultCenter;

  return v3;
}

uint64_t __36__INFocusStatusCenter_defaultCenter__block_invoke()
{
  v0 = objc_alloc_init(INFocusStatusCenter);
  v1 = defaultCenter_defaultCenter;
  defaultCenter_defaultCenter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end