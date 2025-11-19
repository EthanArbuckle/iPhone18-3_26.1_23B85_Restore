@interface ACAccount
@end

@implementation ACAccount

void __75__ACAccount_AppleIDAuthentication__aida_tokenForService_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = a3;
    v7 = [a2 objectForKeyedSubscript:v5];
    (*(v3 + 16))(v3, v7, v6);
  }
}

void __85__ACAccount_AppleIDAuthentication___performSilentReauthForAccount_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 objectForKey:*MEMORY[0x1E698DB98]];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v7);
  }
}

@end