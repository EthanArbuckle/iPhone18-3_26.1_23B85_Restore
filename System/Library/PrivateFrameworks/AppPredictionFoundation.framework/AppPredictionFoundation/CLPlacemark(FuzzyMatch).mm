@interface CLPlacemark(FuzzyMatch)
- (uint64_t)atx_isFuzzyMatch:()FuzzyMatch;
@end

@implementation CLPlacemark(FuzzyMatch)

- (uint64_t)atx_isFuzzyMatch:()FuzzyMatch
{
  v4 = a3;
  if ([self isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      location = [self location];
      location2 = [v6 location];
      if (location == location2)
      {
        v5 = 1;
      }

      else
      {
        location3 = [self location];
        location4 = [v6 location];
        v5 = [location3 atx_isFuzzyMatch:location4];
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