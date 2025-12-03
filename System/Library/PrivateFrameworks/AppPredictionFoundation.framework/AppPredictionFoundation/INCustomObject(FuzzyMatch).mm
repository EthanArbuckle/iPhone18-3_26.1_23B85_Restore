@interface INCustomObject(FuzzyMatch)
- (uint64_t)atx_isFuzzyMatch:()FuzzyMatch;
@end

@implementation INCustomObject(FuzzyMatch)

- (uint64_t)atx_isFuzzyMatch:()FuzzyMatch
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    identifier = [self identifier];
    identifier2 = [v5 identifier];
    if (identifier == identifier2)
    {
      v10 = 1;
    }

    else
    {
      identifier3 = [self identifier];
      identifier4 = [v5 identifier];
      v10 = [identifier3 isEqualToString:identifier4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end