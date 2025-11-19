@interface ASWebsiteNameFetchOperation
@end

@implementation ASWebsiteNameFetchOperation

uint64_t __36___ASWebsiteNameFetchOperation__run__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __36___ASWebsiteNameFetchOperation__run__block_invoke_2;
  v7 = &unk_1E7AF7608;
  v8 = v1;
  return [v2 fetchOperation:? finishedWithResult:? completion:?];
}

void __36___ASWebsiteNameFetchOperation__run__block_invoke_2(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _finish];
  objc_sync_exit(obj);
}

@end