@interface CLPlacemark(FuzzyMatch)
- (uint64_t)atx_isFuzzyMatch:()FuzzyMatch;
@end

@implementation CLPlacemark(FuzzyMatch)

- (uint64_t)atx_isFuzzyMatch:()FuzzyMatch
{
  v4 = a3;
  if ([a1 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [a1 location];
      v8 = [v6 location];
      if (v7 == v8)
      {
        v5 = 1;
      }

      else
      {
        v9 = [a1 location];
        v10 = [v6 location];
        v5 = [v9 atx_isFuzzyMatch:v10];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end