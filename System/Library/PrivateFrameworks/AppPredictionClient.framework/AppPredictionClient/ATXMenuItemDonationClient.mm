@interface ATXMenuItemDonationClient
+ (id)shared;
- (void)donateMenuItem:(id)item completion:(id)completion;
- (void)donateMenuItemInvocation:(id)invocation completion:(id)completion;
@end

@implementation ATXMenuItemDonationClient

+ (id)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[ATXMenuItemDonationClient shared];
  }

  v3 = shared_sharedInstance_0;

  return v3;
}

uint64_t __35__ATXMenuItemDonationClient_shared__block_invoke()
{
  v0 = objc_opt_new();
  v1 = shared_sharedInstance_0;
  shared_sharedInstance_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)donateMenuItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  v8 = [[ATXMenuItemInvocation alloc] initWithIdentity:itemCopy invocationType:0 sourceType:0 localizedKeyboardShortcutDisplayName:0];

  [(ATXMenuItemDonationClient *)self donateMenuItemInvocation:v8 completion:completionCopy];
}

- (void)donateMenuItemInvocation:(id)invocation completion:(id)completion
{
  invocationCopy = invocation;
  completionCopy = completion;
  if ([invocationCopy invocationType] == 3)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v7 = __atxlog_handle_client_donations();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ATXMenuItemDonationClient donateMenuItemInvocation:invocationCopy completion:v7];
    }

    v8 = +[ATXDonationManager sharedManager];
    identity = [invocationCopy identity];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__ATXMenuItemDonationClient_donateMenuItemInvocation_completion___block_invoke;
    v10[3] = &unk_1E80C08E0;
    v11 = completionCopy;
    [v8 donateMenuItem:identity completion:v10];
  }
}

uint64_t __65__ATXMenuItemDonationClient_donateMenuItemInvocation_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)donateMenuItemInvocation:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "Menu item invocation donation: %@", &v2, 0xCu);
}

@end