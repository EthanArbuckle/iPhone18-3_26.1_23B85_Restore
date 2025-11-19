@interface GetStatusOfValueForProperty
@end

@implementation GetStatusOfValueForProperty

uint64_t __remoteXPCAsset_GetStatusOfValueForProperty_block_invoke(uint64_t a1)
{
  result = FigCFDictionaryGetInt32IfPresent();
  if (result)
  {
    result = 0;
    **(a1 + 56) = 2;
    v3 = *(a1 + 64);
    if (v3)
    {
      *v3 = 0;
    }

    v4 = *(a1 + 72);
    if (v4)
    {
      *v4 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

@end