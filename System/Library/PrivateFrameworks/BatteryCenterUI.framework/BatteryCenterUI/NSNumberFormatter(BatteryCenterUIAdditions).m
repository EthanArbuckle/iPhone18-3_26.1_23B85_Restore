@interface NSNumberFormatter(BatteryCenterUIAdditions)
+ (id)bcui_newPercentChargeFormatter;
- (uint64_t)bcui_isPercentSymbolEnabled;
- (uint64_t)bcui_setPercentSymbolEnabled:()BatteryCenterUIAdditions;
@end

@implementation NSNumberFormatter(BatteryCenterUIAdditions)

+ (id)bcui_newPercentChargeFormatter
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v0 setNumberStyle:3];
  [v0 _setUsesCharacterDirection:1];
  [v0 setMultiplier:&unk_1F416AEC0];

  return v0;
}

- (uint64_t)bcui_isPercentSymbolEnabled
{
  v1 = [a1 percentSymbol];
  v2 = [v1 isEqualToString:&stru_1F41678D8];

  return v2;
}

- (uint64_t)bcui_setPercentSymbolEnabled:()BatteryCenterUIAdditions
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = &stru_1F41678D8;
  }

  return [a1 setPercentSymbol:v3];
}

@end