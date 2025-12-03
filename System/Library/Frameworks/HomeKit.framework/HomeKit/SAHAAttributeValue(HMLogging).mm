@interface SAHAAttributeValue(HMLogging)
- (__CFString)hm_shortDescription;
@end

@implementation SAHAAttributeValue(HMLogging)

- (__CFString)hm_shortDescription
{
  units = [self units];

  if (units)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = *MEMORY[0x1E69C7D30];
    units2 = [self units];
    v6 = [v3 stringWithFormat:@"%@=%@", v4, units2];
  }

  else
  {
    v6 = &stru_1F0E92498;
  }

  return v6;
}

@end