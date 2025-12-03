@interface SAHAAction(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAAction(HMLogging)

- (id)hm_shortDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C76B8];
  aceId = [self aceId];
  appendToShortDescription(string, v3, aceId);

  v5 = *MEMORY[0x1E69C7CD8];
  actionType = [self actionType];
  appendToShortDescription(string, v5, actionType);

  v7 = *MEMORY[0x1E69C7CE0];
  attribute = [self attribute];
  appendToShortDescription(string, v7, attribute);

  [string appendString:@"  "];
  v9 = *MEMORY[0x1E69C7D28];
  value = [self value];
  hm_shortDescription = [value hm_shortDescription];
  appendToShortDescription(string, v9, hm_shortDescription);

  return string;
}

@end