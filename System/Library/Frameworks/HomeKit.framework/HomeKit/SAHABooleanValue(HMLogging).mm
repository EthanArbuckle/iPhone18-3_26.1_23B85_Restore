@interface SAHABooleanValue(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHABooleanValue(HMLogging)

- (id)hm_shortDescription
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7D38];
  [a1 value];
  v4 = HMFBooleanToString();
  appendToShortDescription(v2, v3, v4);

  return v2;
}

@end