@interface AAiCloudLoginAccountRequester
+ (id)delegateParamsForAllDelegates;
+ (id)delegateParamsForiCloudOnly;
- (void)loginWithAccount:(id)account forDelegates:(id)delegates completion:(id)completion;
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

- (void)loginWithAccount:(id)account forDelegates:(id)delegates completion:(id)completion
{
  completionCopy = completion;
  delegatesCopy = delegates;
  accountCopy = account;
  v10 = [[AALoginAccountRequest alloc] initWithAccount:accountCopy delegates:delegatesCopy];

  _aa_termsServerInfo = [accountCopy _aa_termsServerInfo];
  [(AALoginAccountRequest *)v10 setServerInfo:_aa_termsServerInfo];

  [accountCopy _aa_setTermsServerInfo:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__AAiCloudLoginAccountRequester_loginWithAccount_forDelegates_completion___block_invoke;
  v13[3] = &unk_1E7C9BDB8;
  v14 = completionCopy;
  v12 = completionCopy;
  [(AARequest *)v10 performSignedRequestWithHandler:v13];
}

@end