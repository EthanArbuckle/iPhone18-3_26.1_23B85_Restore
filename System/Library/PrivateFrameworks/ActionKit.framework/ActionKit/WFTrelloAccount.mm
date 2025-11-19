@interface WFTrelloAccount
+ (id)accountWithToken:(id)a3;
- (BOOL)isValid;
- (void)refreshWithCompletionHandler:(id)a3;
@end

@implementation WFTrelloAccount

+ (id)accountWithToken:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setToken:v3];

  return v4;
}

- (void)refreshWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(WFTrelloSessionManager);
  v6 = [(WFTrelloAccount *)self token];
  [(WFTrelloSessionManager *)v5 setToken:v6];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__WFTrelloAccount_refreshWithCompletionHandler___block_invoke;
  v8[3] = &unk_278C197F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
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
  v2 = [(WFTrelloAccount *)self token];
  v3 = [v2 length] != 0;

  return v3;
}

@end