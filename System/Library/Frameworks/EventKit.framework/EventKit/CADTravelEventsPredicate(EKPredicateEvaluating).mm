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
    startDate = [v5 startDate];
    endDate = [self endDate];
    if ([startDate compare:endDate] < 0)
    {
      endDateUnadjustedForLegacyClients = [v5 endDateUnadjustedForLegacyClients];
      startDate2 = [self startDate];
      if ([endDateUnadjustedForLegacyClients compare:startDate2] < 1)
      {
        v8 = 0;
      }

      else
      {
        calendars = [self calendars];
        if (calendars)
        {
          calendars2 = [self calendars];
          calendar = [v5 calendar];
          cADObjectID = [calendar CADObjectID];
          v8 = [calendars2 containsObject:cADObjectID];
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