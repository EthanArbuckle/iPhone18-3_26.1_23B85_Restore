@interface NSString(CLKFormatter)
- (uint64_t)_clkBlinkerRange;
- (uint64_t)_clkBlinkerRangeByBackwardsSearch;
@end

@implementation NSString(CLKFormatter)

- (uint64_t)_clkBlinkerRange
{
  if (_clkBlinkerRange_onceToken != -1)
  {
    [NSString(CLKFormatter) _clkBlinkerRange];
  }

  v2 = _clkBlinkerRange_blinkerSet;

  return [a1 rangeOfCharacterFromSet:v2];
}

- (uint64_t)_clkBlinkerRangeByBackwardsSearch
{
  if (_clkBlinkerRangeByBackwardsSearch_onceToken != -1)
  {
    [NSString(CLKFormatter) _clkBlinkerRangeByBackwardsSearch];
  }

  v2 = _clkBlinkerRangeByBackwardsSearch_blinkerSet;

  return [a1 rangeOfCharacterFromSet:v2 options:4];
}

@end