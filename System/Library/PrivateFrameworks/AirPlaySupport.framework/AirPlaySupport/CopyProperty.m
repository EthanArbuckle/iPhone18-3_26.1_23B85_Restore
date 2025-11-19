@interface CopyProperty
@end

@implementation CopyProperty

CFTypeRef __dataSource_CopyProperty_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 40), @"PSGDataSource::DevicePSGInfos"))
  {
    result = *(*(a1 + 56) + 16);
    if (!result)
    {
LABEL_4:
      **(a1 + 48) = result;
      return result;
    }

LABEL_3:
    result = CFRetain(result);
    goto LABEL_4;
  }

  result = CFEqual(*(a1 + 40), @"PSGDataSource::LocalPSGInfo");
  if (result)
  {
    result = *(*(a1 + 56) + 24);
    if (!result)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *(*(*(a1 + 32) + 8) + 24) = -12787;
  return result;
}

@end