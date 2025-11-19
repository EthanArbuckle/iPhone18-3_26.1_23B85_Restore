@interface AXAddNotificationObserver
@end

@implementation AXAddNotificationObserver

void ___AXAddNotificationObserver_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CFDictionaryGetValue(ObserverDictionary, *(a1 + 40));
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    CFDictionarySetValue(ObserverDictionary, *(a1 + 40), v2);
  }

  v3 = [objc_allocWithZone(AXObserverElementPair) initWithObserver:*(a1 + 32)];
  v4 = AXRuntimeLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&dword_1BF78E000, v4, OS_LOG_TYPE_INFO, "Adding observer for %@ -> %d", &v7, 0x12u);
  }

  if (([v2 containsObject:v3] & 1) == 0)
  {
    [v2 addObject:v3];
  }
}

@end