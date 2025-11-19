@interface APBonjourBrowserCacheEnsureStarted
@end

@implementation APBonjourBrowserCacheEnsureStarted

uint64_t ___APBonjourBrowserCacheEnsureStarted_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  result = *(a1 + 40);
  if (*(result + 232) == *(a1 + 32))
  {
    if (*(result + 40))
    {
      return _APBonjourBrowserHandleDeviceEvent(result, 0, a2, *(result + 80));
    }
  }

  return result;
}

uint64_t ___APBonjourBrowserCacheEnsureStarted_block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  result = *(a1 + 40);
  if (*(result + 232) == *(a1 + 32))
  {
    if (*(result + 40))
    {
      return _APBonjourBrowserHandleDeviceEvent(result, 1, a2, *(result + 80));
    }
  }

  return result;
}

void ___APBonjourBrowserCacheEnsureStarted_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3 == *(*(a1 + 40) + 232))
    {
      [v3 invalidate];

      *(*(a1 + 40) + 232) = 0;
    }
  }
}

@end