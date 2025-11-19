@interface NSOperationInternalObserver
@end

@implementation NSOperationInternalObserver

void __111____NSOperationInternalObserver__observeValueForKeyPath_ofObject_changeKind_oldValue_newValue_indexes_context___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 224));
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v4 = v3 < 1;
  v5 = v3 - 1;
  if (!v4)
  {
    *(v2 + 48) = v5;
  }

  os_unfair_lock_unlock((v2 + 224));
}

void __111____NSOperationInternalObserver__observeValueForKeyPath_ofObject_changeKind_oldValue_newValue_indexes_context___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();

  v2 = *(a1 + 40);
}

@end