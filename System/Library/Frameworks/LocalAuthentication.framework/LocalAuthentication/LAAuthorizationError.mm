@interface LAAuthorizationError
+ (BOOL)isResourceNotFoundError:(id)error;
+ (id)genericErrorWithMessage:(id)message;
+ (id)genericErrorWithStatus:(int)status;
+ (id)genericErrorWithUnderlyingError:(uint64_t)error;
+ (id)genericErrorWithUserInfo:(uint64_t)info;
+ (id)missingImplementation;
+ (id)resourceNotFoundWithMessage:(id)message;
+ (id)resourceNotFoundWithUnderylingError:(id)error;
+ (id)resourceNotFoundWithUserInfo:(uint64_t)info;
@end

@implementation LAAuthorizationError

+ (id)resourceNotFoundWithMessage:(id)message
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = message;
  v4 = MEMORY[0x1E695DF20];
  messageCopy = message;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(LAAuthorizationError *)self resourceNotFoundWithUserInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)resourceNotFoundWithUserInfo:(uint64_t)info
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E696EE88] errorWithCode:-1019 userInfo:v2];

  return v3;
}

+ (id)resourceNotFoundWithUnderylingError:(id)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696AA08];
  v11[0] = error;
  v4 = MEMORY[0x1E695DF20];
  errorCopy = error;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(LAAuthorizationError *)self resourceNotFoundWithUserInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)isResourceNotFoundError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"com.apple.LocalAuthentication"])
  {
    v5 = [errorCopy code] == -1019;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)genericErrorWithMessage:(id)message
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = message;
  v4 = MEMORY[0x1E695DF20];
  messageCopy = message;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(LAAuthorizationError *)self genericErrorWithUserInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)genericErrorWithUserInfo:(uint64_t)info
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E696EE88] errorWithCode:-1008 userInfo:v2];

  return v3;
}

+ (id)genericErrorWithStatus:(int)status
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = SecCopyErrorMessageString(status, 0);
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v13 = *MEMORY[0x1E696A278];
  v14[0] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v6 errorWithDomain:v7 code:status userInfo:v8];

  v10 = [(LAAuthorizationError *)self genericErrorWithUnderlyingError:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)genericErrorWithUnderlyingError:(uint64_t)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v5 = [(LAAuthorizationError *)v3 genericErrorWithUserInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)missingImplementation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696EE88];
  v7 = *MEMORY[0x1E696A278];
  v8[0] = @"Missing Implementation";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithCode:-1000 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end