@interface CADTravelEventsPredicate(EKPredicateEvaluating)
- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
@end

@implementation CADTravelEventsPredicate(EKPredicateEvaluating)

- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 startDate];
    v7 = [a1 endDate];
    if ([v6 compare:v7] < 0)
    {
      v9 = [v5 endDateUnadjustedForLegacyClients];
      v10 = [a1 startDate];
      if ([v9 compare:v10] < 1)
      {
        v8 = 0;
      }

      else
      {
        v11 = [a1 calendars];
        if (v11)
        {
          v15 = [a1 calendars];
          v12 = [v5 calendar];
          v13 = [v12 CADObjectID];
          v8 = [v15 containsObject:v13];
        }

        else
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end