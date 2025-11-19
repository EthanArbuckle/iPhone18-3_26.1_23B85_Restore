@interface CHSWidgetDescriptor
@end

@implementation CHSWidgetDescriptor

uint64_t __59__CHSWidgetDescriptor_ATX__atx_hasHomeScreenWidgetFamilies__block_invoke(uint64_t a1)
{
  result = CHSWidgetFamilyIsAccessory();
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __63__CHSWidgetDescriptor_ATX__atx_hasHomeScreenWidgetFamiliesOnly__block_invoke(uint64_t a1)
{
  result = CHSWidgetFamilyIsAccessory();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t __62__CHSWidgetDescriptor_ATX__atx_hasAccessoryWidgetFamiliesOnly__block_invoke(uint64_t a1)
{
  result = CHSWidgetFamilyIsAccessory();
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

@end