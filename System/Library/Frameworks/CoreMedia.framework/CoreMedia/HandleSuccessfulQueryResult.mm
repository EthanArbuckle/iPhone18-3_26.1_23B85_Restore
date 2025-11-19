@interface HandleSuccessfulQueryResult
@end

@implementation HandleSuccessfulQueryResult

void *__figMobileAsset_HandleSuccessfulQueryResult_block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 "attributes")];
  if (result)
  {
    return ([result intValue] <= *(a1 + 32));
  }

  return result;
}

void __figMobileAsset_HandleSuccessfulQueryResult_block_invoke_31(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    figMobileAsset_ExtractPlistFromAssetForCallback(*(a1 + 32), *(a1 + 48), *(a1 + 56));
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {

    CFRelease(v6);
  }
}

@end