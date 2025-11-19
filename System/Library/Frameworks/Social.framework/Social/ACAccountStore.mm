@interface ACAccountStore
@end

@implementation ACAccountStore

void __94__ACAccountStore_SLGoogle__sl_openGoogleAuthenticationSheetWithAccountDescription_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v11 = [v8 objectForKeyedSubscript:@"token"];
  v9 = [v8 objectForKeyedSubscript:@"refreshToken"];
  v10 = [v8 objectForKeyedSubscript:@"username"];

  (*(v6 + 16))(v6, a2, v11, v9, v10, v7);
}

void __95__ACAccountStore_SLGoogle__sl_openYouTubeAuthenticationSheetWithAccountDescription_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v12 = [v8 objectForKeyedSubscript:@"token"];
  v9 = [v8 objectForKeyedSubscript:@"refreshToken"];
  v10 = [v8 objectForKeyedSubscript:@"username"];
  v11 = [v8 objectForKeyedSubscript:@"youTubeUsername"];

  (*(v6 + 16))(v6, a2, v12, v9, v10, v11, v7);
}

void __104__ACAccountStore_SLGoogle__sl_openYouTubeAuthenticationSheetWithUsername_accountDescription_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v12 = [v8 objectForKeyedSubscript:@"token"];
  v9 = [v8 objectForKeyedSubscript:@"refreshToken"];
  v10 = [v8 objectForKeyedSubscript:@"username"];
  v11 = [v8 objectForKeyedSubscript:@"youTubeUsername"];

  (*(v6 + 16))(v6, a2, v12, v9, v10, v11, v7);
}

@end