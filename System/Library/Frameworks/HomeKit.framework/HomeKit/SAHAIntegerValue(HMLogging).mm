@interface SAHAIntegerValue(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAIntegerValue(HMLogging)

- (id)hm_shortDescription
{
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@=%d/", *MEMORY[0x1E69C7E48], objc_msgSend(a1, "value")];
  v3 = *MEMORY[0x1E69C7D30];
  v4 = [a1 units];
  appendToShortDescription(v2, v3, v4);

  return v2;
}

@end