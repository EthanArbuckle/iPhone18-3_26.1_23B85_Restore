@interface SAHAFloatValue(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAFloatValue(HMLogging)

- (id)hm_shortDescription
{
  v2 = MEMORY[0x1E696AD60];
  v3 = *MEMORY[0x1E69C7E38];
  [a1 value];
  v5 = [v2 stringWithFormat:@"%@=%f/", v3, v4];
  v6 = *MEMORY[0x1E69C7D30];
  v7 = [a1 units];
  appendToShortDescription(v5, v6, v7);

  return v5;
}

@end