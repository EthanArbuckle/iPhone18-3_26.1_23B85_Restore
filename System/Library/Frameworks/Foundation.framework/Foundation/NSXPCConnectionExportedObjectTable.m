@interface NSXPCConnectionExportedObjectTable
@end

@implementation NSXPCConnectionExportedObjectTable

void __79___NSXPCConnectionExportedObjectTable_receivedReleaseForProxyNumber_userQueue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    _createTablesIfNeeded_locked(v1);
    v3 = objc_autoreleasePoolPush();
    Value = CFDictionaryGetValue(*(v1 + 24), v2);
    if (Value)
    {
      v5 = Value;
      CFDictionaryRemoveValue(*(v1 + 24), v2);
      CFDictionaryRemoveValue(*(v1 + 32), v2);
      CFDictionaryRemoveValue(*(v1 + 40), v5);
    }

    objc_autoreleasePoolPop(v3);

    os_unfair_lock_unlock((v1 + 64));
  }
}

@end