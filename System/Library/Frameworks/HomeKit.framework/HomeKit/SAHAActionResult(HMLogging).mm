@interface SAHAActionResult(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAActionResult(HMLogging)

- (id)hm_shortDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7D08];
  outcome = [self outcome];
  appendToShortDescription(string, v3, outcome);

  v5 = *MEMORY[0x1E69C7D00];
  entity = [self entity];
  hm_shortDescription = [entity hm_shortDescription];
  v8 = hm_shortDescription;
  if (v5)
  {
    v9 = hm_shortDescription == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [string appendFormat:@"  %@:%@;", v5, hm_shortDescription];
  }

  [string appendString:@"  "];
  v10 = *MEMORY[0x1E69C7D18];
  resultAttribute = [self resultAttribute];
  appendToShortDescription(string, v10, resultAttribute);

  [string appendString:@"  "];
  v12 = *MEMORY[0x1E69C7D20];
  resultValue = [self resultValue];
  hm_shortDescription2 = [resultValue hm_shortDescription];
  appendToShortDescription(string, v12, hm_shortDescription2);

  [string appendString:@"  "];
  v15 = *MEMORY[0x1E69C7D10];
  requestActionId = [self requestActionId];
  appendToShortDescription(string, v15, requestActionId);

  return string;
}

@end