@interface AXAddToElementCache
@end

@implementation AXAddToElementCache

void ___AXAddToElementCache_block_invoke(uint64_t a1)
{
  v2 = NSMapGet(qword_1ED6551A0, ~*(a1 + 32));
  if (v2)
  {
    v3 = AXRuntimeLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___AXAddToElementCache_block_invoke_cold_1((a1 + 32), v3);
    }

    v4 = v2 + 2;
  }

  else
  {
    ___AXAddToElementCache_block_invoke_cold_2((a1 + 32));
    v4 = &_ElementCacheUniqueID;
  }

  *(*(*(a1 + 40) + 8) + 24) = *v4;
}

void ___AXAddToElementCache_block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1BF78E000, a2, OS_LOG_TYPE_ERROR, "_AXAddToElementCache was called even though the element was in the cache: %@", &v3, 0xCu);
}

void ___AXAddToElementCache_block_invoke_cold_2(id *a1)
{
  v1 = _ElementCacheUniqueID;
  do
  {
    v2 = v1 == 9998 || kAXLookingGlassUID - 1 == v1;
    ++v1;
  }

  while (v2);
  _ElementCacheUniqueID = v1;
  v3 = qword_1ED6551A0;
  v4 = *a1;
  v5 = *a1;
  v6 = [_AXObjectCacheHelper helperWithElement:v5 uid:v1];
  objc_setAssociatedObject(v5, &_MergedGlobals, v6, 1);

  v7 = v6;

  NSMapInsert(v3, ~v4, v6);
}

@end