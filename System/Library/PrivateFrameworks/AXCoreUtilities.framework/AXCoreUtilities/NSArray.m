@interface NSArray
@end

@implementation NSArray

void __48__NSArray_AXExtensions__axMapObjectsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v7 = v2;
  if (!v2)
  {
    _AXAssert(0, "/Library/Caches/com.apple.xbs/Sources/AccessibilityLibraries/Source/AXCoreUtilities/source/DataStructures/NSArray+AXExtensions.m", 0x6B, "[NSArray(AXExtensions) axMapObjectsUsingBlock:]_block_invoke", @"Result was nil in mapping block!", v3, v4, v5, v6);
    v2 = 0;
  }

  [*(a1 + 32) axSafelyAddObject:v2];
}

void __51__NSArray_AXExtensions__axFilterObjectsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __50__NSArray_AXExtensions__axFirstObjectsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end