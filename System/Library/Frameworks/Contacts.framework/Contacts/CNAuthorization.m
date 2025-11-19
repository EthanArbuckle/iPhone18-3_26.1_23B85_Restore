@interface CNAuthorization
+ (id)logger;
- (BOOL)isAccessRestrictedForEntityType:(int64_t)a3;
- (BOOL)requestAccessForEntityType:(int64_t)a3 error:(id *)a4;
- (CNAuthorization)initWithAssumedIdentity:(id)a3;
- (CNAuthorization)initWithAuthorizationContext:(id)a3;
- (int64_t)authorizationStatusForEntityType:(int64_t)a3;
- (void)requestAccessForEntityType:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation CNAuthorization

+ (id)logger
{
  if (logger_cn_once_token_0 != -1)
  {
    +[CNAuthorization logger];
  }

  v3 = logger_cn_once_object_0;

  return v3;
}

void __25__CNAuthorization_logger__block_invoke()
{
  v3 = +[CNContactsEnvironment currentEnvironment];
  v0 = [v3 loggerProvider];
  v1 = [v0 contactsLogger];
  v2 = logger_cn_once_object_0;
  logger_cn_once_object_0 = v1;
}

- (CNAuthorization)initWithAssumedIdentity:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E6996648];
    v5 = a3;
    v6 = [[v4 alloc] initWithAuditToken:0 assumedIdentity:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CNAuthorization *)self initWithAuthorizationContext:v6];

  return v7;
}

- (CNAuthorization)initWithAuthorizationContext:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNAuthorization;
  v5 = [(CNAuthorization *)&v10 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E6996648] sharedInstance];
    }

    authorizationContext = v5->_authorizationContext;
    v5->_authorizationContext = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isAccessRestrictedForEntityType:(int64_t)a3
{
  if (a3)
  {
    return 0;
  }

  v4 = [(CNAuthorization *)self authorizationContext];
  v5 = [v4 isAccessRestricted];

  return v5;
}

- (BOOL)requestAccessForEntityType:(int64_t)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 0;
  }

  v6 = [(CNAuthorization *)self authorizationContext];
  v10 = 0;
  v4 = [v6 requestAccessWithError:&v10];
  v7 = v10;

  if ((v4 & 1) == 0)
  {
    if (v7)
    {
      v11 = *MEMORY[0x1E696AA08];
      v12[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    }

    else
    {
      v8 = 0;
    }

    CNSetError(a4, 100, v8);
  }

  return v4;
}

- (void)requestAccessForEntityType:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [CNErrorFactory errorWithCode:100 userInfo:0];
    v6[2](v6, 0, v7);
  }

  else
  {
    v8 = [(CNAuthorization *)self authorizationContext];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__CNAuthorization_requestAccessForEntityType_completionHandler___block_invoke;
    v9[3] = &unk_1E7417048;
    v9[4] = self;
    v10 = v6;
    [v8 requestAuthorization:1 completionHandler:v9];
  }
}

void __64__CNAuthorization_requestAccessForEntityType_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7 = 0;
  }

  else
  {
    if (v5)
    {
      v11 = *MEMORY[0x1E696AA08];
      v12[0] = v5;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
    CNSetError(&v10, 100, v8);
    v7 = v10;
    v9 = [objc_opt_class() logger];
    [v9 requestAuthorizationWasDenied];
  }

  (*(*(a1 + 40) + 16))();
}

- (int64_t)authorizationStatusForEntityType:(int64_t)a3
{
  if ([(CNAuthorization *)self isAccessRestrictedForEntityType:a3])
  {
    return 1;
  }

  if (authorizationStatusForEntityType__cn_once_token_1 != -1)
  {
    [CNAuthorization authorizationStatusForEntityType:];
  }

  v5 = authorizationStatusForEntityType__cn_once_object_1;
  v6 = [(CNAuthorization *)self authorizationContext];
  v7 = [v6 authorizationStatus];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v9 = [v5 objectForKeyedSubscript:v8];

  v4 = [v9 integerValue];
  if (v4 == 2)
  {
    v10 = [objc_opt_class() logger];
    [v10 accessAuthorizationStatusWasDenied];
  }

  return v4;
}

void __52__CNAuthorization_authorizationStatusForEntityType___block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F0987228;
  v6[1] = &unk_1F0987240;
  v7[0] = &unk_1F0987228;
  v7[1] = &unk_1F0987258;
  v6[2] = &unk_1F0987258;
  v0 = MEMORY[0x1E696AD98];
  if (dyld_program_sdk_at_least())
  {
    v1 = 4;
  }

  else
  {
    v1 = 3;
  }

  v2 = [v0 numberWithInteger:v1];
  v6[3] = &unk_1F0987270;
  v7[2] = v2;
  v7[3] = &unk_1F0987270;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v4 = [v3 copy];
  v5 = authorizationStatusForEntityType__cn_once_object_1;
  authorizationStatusForEntityType__cn_once_object_1 = v4;
}

@end