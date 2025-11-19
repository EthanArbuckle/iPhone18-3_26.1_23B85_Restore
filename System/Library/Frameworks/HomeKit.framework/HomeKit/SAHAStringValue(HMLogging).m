@interface SAHAStringValue(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAStringValue(HMLogging)

- (id)hm_shortDescription
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = *MEMORY[0x1E69C7EE0];
  v3 = [a1 value];
  v4 = [v1 stringWithFormat:@"%@=%@", v2, v3];

  return v4;
}

@end