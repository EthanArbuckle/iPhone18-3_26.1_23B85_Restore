@interface NSProxy
@end

@implementation NSProxy

uint64_t __44__NSProxy_AXSideStorage___axDictionaryQueue__block_invoke()
{
  _axDictionaryQueue__sDictionaryQueue = dispatch_queue_create("com.apple.accessibility.AXSideStorageQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __52__NSProxy_AXSideStorage___accessibilityValueForKey___block_invoke(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), &AXPropertiesKey);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __68__NSProxy_AXSideStorage___accessibilitySetValue_forKey_storageMode___block_invoke(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), &AXPropertiesKey);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40) && *(a1 + 40))
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 48) + 8) + 40);

    objc_setAssociatedObject(v8, &AXPropertiesKey, v9, 1);
  }
}

@end