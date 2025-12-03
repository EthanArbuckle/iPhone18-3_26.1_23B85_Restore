@interface WFImgurAccount
+ (id)sessionManager;
- (void)refreshWithCompletionHandler:(id)handler;
@end

@implementation WFImgurAccount

- (void)refreshWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__WFImgurAccount_refreshWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C1EA40;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFImgurAccount;
  v5 = handlerCopy;
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
  clientID = [self clientID];
  clientSecret = [self clientSecret];
  v6 = [(WFImgurOAuth2SessionManager *)v3 initWithClientID:clientID clientSecret:clientSecret];

  return v6;
}

@end