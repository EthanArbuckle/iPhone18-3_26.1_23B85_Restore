@interface CNUIFMLFacade
- (CNUIFMLFacade)initWithFMLSession:(id)session;
- (void)fetchFriendHandlesWithCompletionHandler:(id)handler;
@end

@implementation CNUIFMLFacade

- (void)fetchFriendHandlesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  findMyLocateSession = [(CNUIFMLFacade *)self findMyLocateSession];
  v6 = dispatch_get_global_queue(21, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CNUIFMLFacade_fetchFriendHandlesWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E74E6DD0;
  v10 = findMyLocateSession;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = findMyLocateSession;
  dispatch_async(v6, v9);
}

void __57__CNUIFMLFacade_fetchFriendHandlesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__CNUIFMLFacade_fetchFriendHandlesWithCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E74E2E18;
  v6 = v2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = v2;
  [v3 getAllFriendIdsWithCompletion:v5];
}

void __57__CNUIFMLFacade_fetchFriendHandlesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CNUIFMLFacade_fetchFriendHandlesWithCompletionHandler___block_invoke_3;
  v10[3] = &unk_1E74E2418;
  v11 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v10];
  v4 = [*(a1 + 32) allObjects];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CNUIFMLFacade_fetchFriendHandlesWithCompletionHandler___block_invoke_4;
  block[3] = &unk_1E74E6DD0;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __57__CNUIFMLFacade_fetchFriendHandlesWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

- (CNUIFMLFacade)initWithFMLSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = CNUIFMLFacade;
  v5 = [(CNUIFMLFacade *)&v9 init];
  if (v5)
  {
    if (sessionCopy)
    {
      v6 = sessionCopy;
    }

    else
    {
      v6 = objc_alloc_init(_TtC10ContactsUI19FindMyLocateSession);
    }

    findMyLocateSession = v5->_findMyLocateSession;
    v5->_findMyLocateSession = v6;
  }

  return v5;
}

@end