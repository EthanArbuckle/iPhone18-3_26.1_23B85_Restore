@interface DownloadCatalogAndRequery
@end

@implementation DownloadCatalogAndRequery

void __figMobileAsset_DownloadCatalogAndRequery_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __figMobileAsset_DownloadCatalogAndRequery_block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  v5 = v4[1];
  if (v5)
  {
    CFRelease(v5);
    v4 = *(a1 + 40);
  }

  v6 = v4[2];
  if (v6)
  {
    CFRelease(v6);
    v4 = *(a1 + 40);
  }

  v7 = v4[3];
  if (v7)
  {

    CFRelease(v7);
  }
}

void __figMobileAsset_DownloadCatalogAndRequery_block_invoke(uint64_t a1)
{
  if (figMobileAsset_IsAssetTypeRegistered(*(a1 + 32)))
  {
    Value = CFDictionaryGetValue(_MergedGlobals_7, *(a1 + 32));
    if (CFAbsoluteTimeGetCurrent() - *(Value + 6) > *(Value + 5))
    {
      figMobileAsset_UpdateLastUpdatedTime(*(a1 + 32));
      v3 = objc_autoreleasePoolPush();
      v4 = *(a1 + 32);
      if (v4)
      {
        CFRetain(v4);
      }

      v5 = Value[1];
      if (v5)
      {
        CFRetain(v5);
      }

      v6 = Value[2];
      if (v6)
      {
        CFRetain(v6);
      }

      v7 = Value[3];
      if (v7)
      {
        CFRetain(v7);
      }

      OUTLINED_FUNCTION_3_1();
      v11 = 3221225472;
      v12 = __figMobileAsset_DownloadCatalogAndRequery_block_invoke_2;
      v13 = &__block_descriptor_52_e8_v16__0q8l;
      v16 = *(a1 + 40);
      v14 = v8;
      v15 = Value;
      [v9 startCatalogDownload:? then:?];
      objc_autoreleasePoolPop(v3);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    CFRelease(v10);
  }
}

@end