@interface FigAirPlaySecureStopRouterCommitToDisk
@end

@implementation FigAirPlaySecureStopRouterCommitToDisk

const __CFDictionary *__FigAirPlaySecureStopRouterCommitToDisk_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetValue(sAirPlayManagerSingletonContext_0, *(a1 + 40));
  if (result)
  {
    v3 = result;
    result = CFDictionaryGetValue(result, @"FigAirPlaySSM_SecureStopManager");
    if (result)
    {
      v4 = result;
      result = CFDictionaryGetValue(v3, @"FigAirPlaySSM_AppID");
      if (result)
      {
        v5 = result;
        result = CFDictionaryGetValue(v3, @"FigAirPlaySSM_AssetID");
        if (result)
        {
          v6 = result;
          result = CFDictionaryGetValue(v3, @"FigAirPlaySSM_SessionLifespanSPC");
          if (result)
          {
            v7 = result;
            v8 = *(a1 + 40);
            v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v9)
            {
              v10 = v9(v4, v5, 0, v8, v6, 0, 0, v7);
            }

            else
            {
              v10 = 4294954514;
            }

            return OUTLINED_FUNCTION_30_8(v10, *(a1 + 32));
          }
        }
      }
    }
  }

  return result;
}

@end