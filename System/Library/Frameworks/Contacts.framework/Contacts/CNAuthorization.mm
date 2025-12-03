@interface CNAuthorization
+ (id)logger;
- (BOOL)isAccessRestrictedForEntityType:(int64_t)type;
- (BOOL)requestAccessForEntityType:(int64_t)type error:(id *)error;
- (CNAuthorization)initWithAssumedIdentity:(id)identity;
- (CNAuthorization)initWithAuthorizationContext:(id)context;
- (int64_t)authorizationStatusForEntityType:(int64_t)type;
- (void)requestAccessForEntityType:(int64_t)type completionHandler:(id)handler;
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

- (CNAuthorization)initWithAssumedIdentity:(id)identity
{
  if (identity)
  {
    v4 = MEMORY[0x1E6996648];
    identityCopy = identity;
    v6 = [[v4 alloc] initWithAuditToken:0 assumedIdentity:identityCopy];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CNAuthorization *)self initWithAuthorizationContext:v6];

  return v7;
}

- (CNAuthorization)initWithAuthorizationContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = CNAuthorization;
  v5 = [(CNAuthorization *)&v10 init];
  if (v5)
  {
    if (contextCopy)
    {
      mEMORY[0x1E6996648] = contextCopy;
    }

    else
    {
      mEMORY[0x1E6996648] = [MEMORY[0x1E6996648] sharedInstance];
    }

    authorizationContext = v5->_authorizationContext;
    v5->_authorizationContext = mEMORY[0x1E6996648];

    v8 = v5;
  }

  return v5;
}

- (BOOL)isAccessRestrictedForEntityType:(int64_t)type
{
  if (type)
  {
    return 0;
  }

  authorizationContext = [(CNAuthorization *)self authorizationContext];
  isAccessRestricted = [authorizationContext isAccessRestricted];

  return isAccessRestricted;
}

- (BOOL)requestAccessForEntityType:(int64_t)type error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (type)
  {
    return 0;
  }

  authorizationContext = [(CNAuthorization *)self authorizationContext];
  v10 = 0;
  v4 = [authorizationContext requestAccessWithError:&v10];
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

    CNSetError(error, 100, v8);
  }

  return v4;
}

- (void)requestAccessForEntityType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  if (type)
  {
    v7 = [CNErrorFactory errorWithCode:100 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v7);
  }

  else
  {
    authorizationContext = [(CNAuthorization *)self authorizationContext];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__CNAuthorization_requestAccessForEntityType_completionHandler___block_invoke;
    v9[3] = &unk_1E7417048;
    v9[4] = self;
    v10 = handlerCopy;
    [authorizationContext requestAuthorization:1 completionHandler:v9];
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

- (int64_t)authorizationStatusForEntityType:(int64_t)type
{
  if ([(CNAuthorization *)self isAccessRestrictedForEntityType:type])
  {
    return 1;
  }

  if (authorizationStatusForEntityType__cn_once_token_1 != -1)
  {
    [CNAuthorization authorizationStatusForEntityType:];
  }

  v5 = authorizationStatusForEntityType__cn_once_object_1;
  authorizationContext = [(CNAuthorization *)self authorizationContext];
  authorizationStatus = [authorizationContext authorizationStatus];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:authorizationStatus];
  v9 = [v5 objectForKeyedSubscript:v8];

  integerValue = [v9 integerValue];
  if (integerValue == 2)
  {
    logger = [objc_opt_class() logger];
    [logger accessAuthorizationStatusWasDenied];
  }

  return integerValue;
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