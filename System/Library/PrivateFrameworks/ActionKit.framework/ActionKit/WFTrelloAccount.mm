@interface WFTrelloAccount
+ (id)accountWithToken:(id)token;
- (BOOL)isValid;
- (void)refreshWithCompletionHandler:(id)handler;
@end

@implementation WFTrelloAccount

+ (id)accountWithToken:(id)token
{
  tokenCopy = token;
  v4 = objc_opt_new();
  [v4 setToken:tokenCopy];

  return v4;
}

- (void)refreshWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(WFTrelloSessionManager);
  token = [(WFTrelloAccount *)self token];
  [(WFTrelloSessionManager *)v5 setToken:token];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__WFTrelloAccount_refreshWithCompletionHandler___block_invoke;
  v8[3] = &unk_278C197F0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WFTrelloSessionManager *)v5 getUserWithCompletionHandler:v8];
}

void __48__WFTrelloAccount_refreshWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    v6 = [*(a1 + 32) email];
    v7 = [v11 email];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [v11 email];
      [*(a1 + 32) setEmail:v9];

      [WFAccount saveAccount:*(a1 + 32)];
    }
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5);
  }
}

- (BOOL)isValid
{
  token = [(WFTrelloAccount *)self token];
  v3 = [token length] != 0;

  return v3;
}

@end