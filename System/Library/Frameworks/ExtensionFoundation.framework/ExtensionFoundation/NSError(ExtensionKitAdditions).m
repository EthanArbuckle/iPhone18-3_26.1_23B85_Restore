@interface NSError(ExtensionKitAdditions)
+ (id)_EX_errorWithCode:()ExtensionKitAdditions description:;
+ (id)_EX_errorWithCode:()ExtensionKitAdditions underlyingError:;
+ (id)_EX_hostIsLackingRequiredEntitlementErrorWithHostPID:()ExtensionKitAdditions requiredEntitlements:;
+ (id)_EX_processExitedErrorWithName:()ExtensionKitAdditions pid:;
@end

@implementation NSError(ExtensionKitAdditions)

+ (id)_EX_errorWithCode:()ExtensionKitAdditions description:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E696A578];
  v12[0] = a4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a4;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:a3 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_EX_errorWithCode:()ExtensionKitAdditions underlyingError:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:a3 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_EX_processExitedErrorWithName:()ExtensionKitAdditions pid:
{
  v5 = v4 = MEMORY[0x1E696ABC0];
  v6 = [v4 _EX_errorWithCode:15 description:v5];

  return v6;
}

+ (id)_EX_hostIsLackingRequiredEntitlementErrorWithHostPID:()ExtensionKitAdditions requiredEntitlements:
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v14[0] = *MEMORY[0x1E696A578];
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = [v6 stringWithFormat:@"Host with PID: %d is missing entitlements.", a3, v14[0]];
  v15[0] = v8;
  v14[1] = *MEMORY[0x1E696A588];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Required entitlements are: %@", v7];

  v15[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [v5 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:7 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end