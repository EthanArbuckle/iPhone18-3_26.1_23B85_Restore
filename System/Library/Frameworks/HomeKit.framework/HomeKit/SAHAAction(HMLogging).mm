@interface SAHAAction(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAAction(HMLogging)

- (id)hm_shortDescription
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C76B8];
  v4 = [a1 aceId];
  appendToShortDescription(v2, v3, v4);

  v5 = *MEMORY[0x1E69C7CD8];
  v6 = [a1 actionType];
  appendToShortDescription(v2, v5, v6);

  v7 = *MEMORY[0x1E69C7CE0];
  v8 = [a1 attribute];
  appendToShortDescription(v2, v7, v8);

  [v2 appendString:@"  "];
  v9 = *MEMORY[0x1E69C7D28];
  v10 = [a1 value];
  v11 = [v10 hm_shortDescription];
  appendToShortDescription(v2, v9, v11);

  return v2;
}

@end