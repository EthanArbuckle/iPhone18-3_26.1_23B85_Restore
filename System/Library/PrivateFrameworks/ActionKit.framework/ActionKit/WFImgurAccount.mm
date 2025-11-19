@interface WFImgurAccount
+ (id)sessionManager;
- (void)refreshWithCompletionHandler:(id)a3;
@end

@implementation WFImgurAccount

- (void)refreshWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__WFImgurAccount_refreshWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C1EA40;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFImgurAccount;
  v5 = v4;
  [(WFOAuth2Account *)&v6 refreshWithCompletionHandler:v7];
}

void __47__WFImgurAccount_refreshWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 domain];
  v4 = [v3 isEqualToString:@"WFOAuth2ErrorDomain"];

  if (v4)
  {
    [WFAccount deleteAccount:*(a1 + 32)];
  }

  v5 = *(a1 + 40);
  v6 = v7;
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
    v6 = v7;
  }
}

+ (id)sessionManager
{
  v3 = [WFImgurOAuth2SessionManager alloc];
  v4 = [a1 clientID];
  v5 = [a1 clientSecret];
  v6 = [(WFImgurOAuth2SessionManager *)v3 initWithClientID:v4 clientSecret:v5];

  return v6;
}

@end