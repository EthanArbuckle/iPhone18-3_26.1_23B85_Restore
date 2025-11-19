@interface LSInProcessSettingsStore
@end

@implementation LSInProcessSettingsStore

void __33___LSInProcessSettingsStore_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _internalQueue_purgeDatabase];
}

uint64_t __57___LSInProcessSettingsStore_userElectionForExtensionKey___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _internalQueue_selectUserElectionForIdentifier:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

@end