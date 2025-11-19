@interface INCurrencyAmount
@end

@implementation INCurrencyAmount

uint64_t __76__INCurrencyAmount_AssistantCardService___acs_formattedStringIncludeSymbol___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = _acs_formattedStringIncludeSymbol__sCurrencyFormatter;
  _acs_formattedStringIncludeSymbol__sCurrencyFormatter = v0;

  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [_acs_formattedStringIncludeSymbol__sCurrencyFormatter setLocale:v2];

  v3 = _acs_formattedStringIncludeSymbol__sCurrencyFormatter;

  return [v3 setNumberStyle:2];
}

@end