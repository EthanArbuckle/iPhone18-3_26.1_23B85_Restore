@interface SAHAFloatValue(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAFloatValue(HMLogging)

- (id)hm_shortDescription
{
  v2 = MEMORY[0x1E696AD60];
  v3 = *MEMORY[0x1E69C7E38];
  [self value];
  v5 = [v2 stringWithFormat:@"%@=%f/", v3, v4];
  v6 = *MEMORY[0x1E69C7D30];
  units = [self units];
  appendToShortDescription(v5, v6, units);

  return v5;
}

@end