@interface HFItem(AXPriv)
- (id)_axLatestResultForKey:()AXPriv;
- (uint64_t)_axBadgeType;
- (uint64_t)_axStatusItemCategory;
@end

@implementation HFItem(AXPriv)

- (id)_axLatestResultForKey:()AXPriv
{
  v10[1] = *MEMORY[0x29EDCA608];
  v4 = a3;
  v10[0] = v4;
  v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  if ([self resultsContainRequiredProperties:v5])
  {
    latestResults = [self latestResults];
    v7 = [latestResults objectForKeyedSubscript:v4];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (uint64_t)_axBadgeType
{
  v1 = [self _axLatestResultForKey:*MEMORY[0x29EDC5300]];
  v2 = v1;
  if (v1)
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (uint64_t)_axStatusItemCategory
{
  v1 = [self _axLatestResultForKey:*MEMORY[0x29EDC5318]];
  v2 = v1;
  if (v1)
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 4;
  }

  return integerValue;
}

@end