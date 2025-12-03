@interface SAHAStringValue(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAStringValue(HMLogging)

- (id)hm_shortDescription
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *MEMORY[0x1E69C7EE0];
  value = [self value];
  v4 = [v1 stringWithFormat:@"%@=%@", v2, value];

  return v4;
}

@end