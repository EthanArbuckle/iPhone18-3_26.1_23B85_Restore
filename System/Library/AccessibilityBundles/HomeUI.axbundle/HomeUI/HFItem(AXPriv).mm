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
  if ([a1 resultsContainRequiredProperties:v5])
  {
    v6 = [a1 latestResults];
    v7 = [v6 objectForKeyedSubscript:v4];
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
  v1 = [a1 _axLatestResultForKey:*MEMORY[0x29EDC5300]];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_axStatusItemCategory
{
  v1 = [a1 _axLatestResultForKey:*MEMORY[0x29EDC5318]];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 4;
  }

  return v3;
}

@end