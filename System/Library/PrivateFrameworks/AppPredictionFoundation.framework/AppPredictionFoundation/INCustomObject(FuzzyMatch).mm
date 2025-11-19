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
    v6 = [a1 identifier];
    v7 = [v5 identifier];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [a1 identifier];
      v9 = [v5 identifier];
      v10 = [v8 isEqualToString:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end