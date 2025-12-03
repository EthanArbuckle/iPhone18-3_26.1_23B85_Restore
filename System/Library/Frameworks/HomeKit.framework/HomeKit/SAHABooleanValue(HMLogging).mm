@interface SAHABooleanValue(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHABooleanValue(HMLogging)

- (id)hm_shortDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7D38];
  [self value];
  v4 = HMFBooleanToString();
  appendToShortDescription(string, v3, v4);

  return string;
}

@end