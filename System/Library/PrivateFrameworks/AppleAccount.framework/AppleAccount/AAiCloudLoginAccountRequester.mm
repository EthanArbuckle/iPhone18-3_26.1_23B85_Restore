@interface AAiCloudLoginAccountRequester
+ (id)delegateParamsForAllDelegates;
+ (id)delegateParamsForiCloudOnly;
- (void)loginWithAccount:(id)a3 forDelegates:(id)a4 completion:(id)a5;
@end

@implementation AAiCloudLoginAccountRequester

+ (id)delegateParamsForAllDelegates
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.gamecenter";
  v5[1] = @"com.apple.mobileme";
  v6[0] = MEMORY[0x1E695E0F8];
  v6[1] = MEMORY[0x1E695E0F8];
  v5[2] = @"com.apple.private.ids";
  v6[2] = &unk_1F2F24BF8;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)delegateParamsForiCloudOnly
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"com.apple.mobileme";
  v6[0] = MEMORY[0x1E695E0F8];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)loginWithAccount:(id)a3 forDelegates:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[AALoginAccountRequest alloc] initWithAccount:v9 delegates:v8];

  v11 = [v9 _aa_termsServerInfo];
  [(AALoginAccountRequest *)v10 setServerInfo:v11];

  [v9 _aa_setTermsServerInfo:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__AAiCloudLoginAccountRequester_loginWithAccount_forDelegates_completion___block_invoke;
  v13[3] = &unk_1E7C9BDB8;
  v14 = v7;
  v12 = v7;
  [(AARequest *)v10 performSignedRequestWithHandler:v13];
}

@end