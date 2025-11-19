@interface LAAuthorizationError
+ (BOOL)isResourceNotFoundError:(id)a3;
+ (id)genericErrorWithMessage:(id)a3;
+ (id)genericErrorWithStatus:(int)a3;
+ (id)genericErrorWithUnderlyingError:(uint64_t)a1;
+ (id)genericErrorWithUserInfo:(uint64_t)a1;
+ (id)missingImplementation;
+ (id)resourceNotFoundWithMessage:(id)a3;
+ (id)resourceNotFoundWithUnderylingError:(id)a3;
+ (id)resourceNotFoundWithUserInfo:(uint64_t)a1;
@end

@implementation LAAuthorizationError

+ (id)resourceNotFoundWithMessage:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(LAAuthorizationError *)a1 resourceNotFoundWithUserInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)resourceNotFoundWithUserInfo:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E696EE88] errorWithCode:-1019 userInfo:v2];

  return v3;
}

+ (id)resourceNotFoundWithUnderylingError:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696AA08];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(LAAuthorizationError *)a1 resourceNotFoundWithUserInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)isResourceNotFoundError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"com.apple.LocalAuthentication"])
  {
    v5 = [v3 code] == -1019;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)genericErrorWithMessage:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [(LAAuthorizationError *)a1 genericErrorWithUserInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)genericErrorWithUserInfo:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E696EE88] errorWithCode:-1008 userInfo:v2];

  return v3;
}

+ (id)genericErrorWithStatus:(int)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = SecCopyErrorMessageString(a3, 0);
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v13 = *MEMORY[0x1E696A278];
  v14[0] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v6 errorWithDomain:v7 code:a3 userInfo:v8];

  v10 = [(LAAuthorizationError *)a1 genericErrorWithUnderlyingError:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)genericErrorWithUnderlyingError:(uint64_t)a1
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