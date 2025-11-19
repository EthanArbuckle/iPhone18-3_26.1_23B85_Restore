@interface SAHAActionResult(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAActionResult(HMLogging)

- (id)hm_shortDescription
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7D08];
  v4 = [a1 outcome];
  appendToShortDescription(v2, v3, v4);

  v5 = *MEMORY[0x1E69C7D00];
  v6 = [a1 entity];
  v7 = [v6 hm_shortDescription];
  v8 = v7;
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [v2 appendFormat:@"  %@:%@;", v5, v7];
  }

  [v2 appendString:@"  "];
  v10 = *MEMORY[0x1E69C7D18];
  v11 = [a1 resultAttribute];
  appendToShortDescription(v2, v10, v11);

  [v2 appendString:@"  "];
  v12 = *MEMORY[0x1E69C7D20];
  v13 = [a1 resultValue];
  v14 = [v13 hm_shortDescription];
  appendToShortDescription(v2, v12, v14);

  [v2 appendString:@"  "];
  v15 = *MEMORY[0x1E69C7D10];
  v16 = [a1 requestActionId];
  appendToShortDescription(v2, v15, v16);

  return v2;
}

@end