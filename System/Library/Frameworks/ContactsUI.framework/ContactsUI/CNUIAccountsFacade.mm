@interface CNUIAccountsFacade
- (CNUIAccountsFacade)initWithAccountStore:(id)a3 requestRunner:(id)a4;
- (void)fetchiCloudFamilyMembersWithCompletionHandler:(id)a3;
@end

@implementation CNUIAccountsFacade

- (void)fetchiCloudFamilyMembersWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CNUIAccountsFacade *)self accountStore];
  v6 = [(CNUIAccountsFacade *)self requestRunner];
  v7 = [v5 aa_primaryAppleAccount];
  if (v7)
  {
    v8 = [v5 aa_grandSlamAccountForiCloudAccount:v7];
    v9 = [objc_alloc(getAAFamilyDetailsRequestClass()) initWithAppleAccount:v7 grandSlamAccount:v8 accountStore:v5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__CNUIAccountsFacade_fetchiCloudFamilyMembersWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E74E5858;
    v11 = v4;
    [v6 performRequest:v9 withHandler:v10];
  }
}

void __68__CNUIAccountsFacade_fetchiCloudFamilyMembersWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CNUIAccountsFacade_fetchiCloudFamilyMembersWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E74E6650;
  v12 = v7;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__CNUIAccountsFacade_fetchiCloudFamilyMembersWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 32))
  {
    if (v1)
    {
      v2 = *(v1 + 16);
      v3 = *(a1 + 48);

      v2(v3, 0);
    }
  }

  else if (v1)
  {
    v4 = *(a1 + 40);
    v6 = [v4 members];
    v5 = [v6 _cn_map:&__block_literal_global_51393];
    (*(v1 + 16))(v1, v5, 0);
  }
}

- (CNUIAccountsFacade)initWithAccountStore:(id)a3 requestRunner:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CNUIAccountsFacade;
  v8 = [(CNUIAccountsFacade *)&v14 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = [MEMORY[0x1E6959A48] defaultStore];
    }

    accountStore = v8->_accountStore;
    v8->_accountStore = v9;

    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = objc_alloc_init(CNUIAccountsFacadeRequestRunner);
    }

    requestRunner = v8->_requestRunner;
    v8->_requestRunner = v11;

    if (LoadAppleAccount_loadPredicate_51397 != -1)
    {
      dispatch_once(&LoadAppleAccount_loadPredicate_51397, &__block_literal_global_57_51398);
    }
  }

  return v8;
}

@end