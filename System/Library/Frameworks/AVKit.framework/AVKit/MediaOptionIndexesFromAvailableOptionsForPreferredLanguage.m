@interface MediaOptionIndexesFromAvailableOptionsForPreferredLanguage
@end

@implementation MediaOptionIndexesFromAvailableOptionsForPreferredLanguage

uint64_t ___MediaOptionIndexesFromAvailableOptionsForPreferredLanguage_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:*(a1 + 32)])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*(a1 + 40)];
  }

  return v4;
}

@end