@interface INPriceRange
@end

@implementation INPriceRange

uint64_t __62__INPriceRange_AssistantCardService__acs_formattedRangeString__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = acs_formattedRangeString_minimumPriceRangeCurrencyFormatter;
  acs_formattedRangeString_minimumPriceRangeCurrencyFormatter = v0;

  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [acs_formattedRangeString_minimumPriceRangeCurrencyFormatter setLocale:v2];

  [acs_formattedRangeString_minimumPriceRangeCurrencyFormatter setNumberStyle:2];
  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v4 = acs_formattedRangeString_maximumPriceRangeCurrencyFormatter;
  acs_formattedRangeString_maximumPriceRangeCurrencyFormatter = v3;

  v5 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [acs_formattedRangeString_maximumPriceRangeCurrencyFormatter setLocale:v5];

  v6 = acs_formattedRangeString_maximumPriceRangeCurrencyFormatter;

  return [v6 setNumberStyle:2];
}

@end