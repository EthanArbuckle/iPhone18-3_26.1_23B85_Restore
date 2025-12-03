@interface CADEventTimeWindowPredicate(EKPredicateEvaluating)
- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
@end

@implementation CADEventTimeWindowPredicate(EKPredicateEvaluating)

- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v4 = a3;
  wrappedPredicate = [self wrappedPredicate];
  v6 = [wrappedPredicate evaluateWithObject:v4];

  if (!v6)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  startDate = [self startDate];
  [startDate timeIntervalSinceReferenceDate];
  v9 = v8;

  endDate = [self endDate];
  [endDate timeIntervalSinceReferenceDate];
  v12 = v11;

  startDate2 = [v4 startDate];
  [startDate2 timeIntervalSinceReferenceDate];
  v15 = v14;

  endDateUnadjustedForLegacyClients = [v4 endDateUnadjustedForLegacyClients];
  [endDateUnadjustedForLegacyClients timeIntervalSinceReferenceDate];
  v18 = v17;

  if (v15 >= v12 || v18 <= v9 || (v19 = 1, [self mustStartInInterval]) && v15 < v9)
  {
    wrappedPredicate2 = [self wrappedPredicate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v22 = MEMORY[0x1E695DFE8];
      v23 = v4;
      v24 = [v22 timeZoneWithAbbreviation:@"GMT"];
      eventStore = [v23 eventStore];
      startDate3 = [self startDate];
      endDate2 = [self endDate];
      v19 = [eventStore occurrencesExistInRangeForEvent:v23 startDate:startDate3 endDate:endDate2 mustStartInInterval:objc_msgSend(self timezone:{"mustStartInInterval"), v24}];

      goto LABEL_10;
    }

LABEL_9:
    v19 = 0;
  }

LABEL_10:

  return v19;
}

@end