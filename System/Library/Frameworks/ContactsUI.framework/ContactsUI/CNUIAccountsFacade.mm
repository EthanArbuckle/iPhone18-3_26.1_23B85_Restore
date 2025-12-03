@interface CNUIAccountsFacade
- (CNUIAccountsFacade)initWithAccountStore:(id)store requestRunner:(id)runner;
- (void)fetchiCloudFamilyMembersWithCompletionHandler:(id)handler;
@end

@implementation CNUIAccountsFacade

- (void)fetchiCloudFamilyMembersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  accountStore = [(CNUIAccountsFacade *)self accountStore];
  requestRunner = [(CNUIAccountsFacade *)self requestRunner];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];
  if (aa_primaryAppleAccount)
  {
    v8 = [accountStore aa_grandSlamAccountForiCloudAccount:aa_primaryAppleAccount];
    v9 = [objc_alloc(getAAFamilyDetailsRequestClass()) initWithAppleAccount:aa_primaryAppleAccount grandSlamAccount:v8 accountStore:accountStore];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__CNUIAccountsFacade_fetchiCloudFamilyMembersWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E74E5858;
    v11 = handlerCopy;
    [requestRunner performRequest:v9 withHandler:v10];
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

- (CNUIAccountsFacade)initWithAccountStore:(id)store requestRunner:(id)runner
{
  storeCopy = store;
  runnerCopy = runner;
  v14.receiver = self;
  v14.super_class = CNUIAccountsFacade;
  v8 = [(CNUIAccountsFacade *)&v14 init];
  if (v8)
  {
    if (storeCopy)
    {
      defaultStore = storeCopy;
    }

    else
    {
      defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    }

    accountStore = v8->_accountStore;
    v8->_accountStore = defaultStore;

    if (runnerCopy)
    {
      v11 = runnerCopy;
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