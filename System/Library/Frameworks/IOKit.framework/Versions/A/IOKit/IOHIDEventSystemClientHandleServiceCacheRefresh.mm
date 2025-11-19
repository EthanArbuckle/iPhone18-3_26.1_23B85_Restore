@interface IOHIDEventSystemClientHandleServiceCacheRefresh
@end

@implementation IOHIDEventSystemClientHandleServiceCacheRefresh

uint64_t ____IOHIDEventSystemClientHandleServiceCacheRefresh_block_invoke(uint64_t a1, const void *a2, void *a3)
{
  result = *(a1 + 32);
  if (result)
  {
    result = CFDictionaryContainsKey(result, a2);
    if (!result)
    {

      return _IOHIDServiceClientDispatchServiceRemoval(a3);
    }
  }

  return result;
}

const __CFDictionary *____IOHIDEventSystemClientHandleServiceCacheRefresh_block_invoke_2(uint64_t a1, const void *a2, CFDictionaryRef *a3)
{
  v5 = *(a1 + 32);
  if (v5 && !CFDictionaryContainsKey(v5, a2))
  {
    v6 = *(a1 + 40);
    os_unfair_recursive_lock_lock_with_options();
    v7 = *(a1 + 40);
    v8 = v7[22];
    if (v8)
    {
      (*(v8 + 16))(v8, v7[23], v7[24], a3);
    }

    else
    {
      v9 = v7[21];
      if (v9)
      {
        v9(v7[23], v7[24], a3);
      }
    }

    v10 = *(a1 + 40);
    os_unfair_recursive_lock_unlock();
  }

  return _IOHIDServiceClientRefresh(a3);
}

@end