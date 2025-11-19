@interface NSObject
@end

@implementation NSObject

uint64_t __45__NSObject_AXSideStorage___axDictionaryQueue__block_invoke()
{
  _axDictionaryQueue__sDictionaryQueue_0 = dispatch_queue_create("com.apple.accessibility.AXSideStorageQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __110__NSObject_AXCollectionsExtensions___ax_appendPrettyDescriptionToString_indentationString_visitedCollections___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(*(a1 + 56) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    [*(a1 + 32) appendString:@"\n"];
  }

  [*(a1 + 32) appendString:*(a1 + 40)];
  [v7 _ax_appendPrettyDescriptionToString:*(a1 + 32) indentationString:*(a1 + 40) visitedCollections:*(a1 + 48)];
  [*(a1 + 32) appendString:@": "];
  [v5 _ax_appendPrettyDescriptionToString:*(a1 + 32) indentationString:*(a1 + 40) visitedCollections:*(a1 + 48)];
  [*(a1 + 32) appendString:{@", \n"}];
}

uint64_t __57__NSObject_UIAccessibilitySafeCategory__safeValueForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __axValueForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __61__NSObject_UIAccessibilitySafeCategory__safeValueForKeyPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKeyPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __71__NSObject_UIAccessibilitySafeCategory__safeIntegerForIvarKey_onClass___block_invoke(uint64_t a1)
{
  InstanceVariable = class_getInstanceVariable(*(a1 + 56), [*(a1 + 32) UTF8String]);
  v3 = object_getIvar(*(a1 + 40), InstanceVariable);
  *(*(*(a1 + 48) + 8) + 24) = v3;
}

uint64_t __53__NSObject_AXSideStorage___accessibilityValueForKey___block_invoke(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), &AXPropertiesKey_0);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __69__NSObject_AXSideStorage___accessibilitySetValue_forKey_storageMode___block_invoke(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), &AXPropertiesKey_0);
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

    objc_setAssociatedObject(v8, &AXPropertiesKey_0, v9, 1);
  }
}

@end