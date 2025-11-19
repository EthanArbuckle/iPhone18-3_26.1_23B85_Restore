@interface SAHAAttributeValue(HMLogging)
- (__CFString)hm_shortDescription;
@end

@implementation SAHAAttributeValue(HMLogging)

- (__CFString)hm_shortDescription
{
  v2 = [a1 units];

  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = *MEMORY[0x1E69C7D30];
    v5 = [a1 units];
    v6 = [v3 stringWithFormat:@"%@=%@", v4, v5];
  }

  else
  {
    v6 = &stru_1F0E92498;
  }

  return v6;
}

@end