@interface CADEventTimeWindowPredicate(EKPredicateEvaluating)
- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
@end

@implementation CADEventTimeWindowPredicate(EKPredicateEvaluating)

- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v4 = a3;
  v5 = [a1 wrappedPredicate];
  v6 = [v5 evaluateWithObject:v4];

  if (!v6)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = [a1 startDate];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [a1 endDate];
  [v10 timeIntervalSinceReferenceDate];
  v12 = v11;

  v13 = [v4 startDate];
  [v13 timeIntervalSinceReferenceDate];
  v15 = v14;

  v16 = [v4 endDateUnadjustedForLegacyClients];
  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;

  if (v15 >= v12 || v18 <= v9 || (v19 = 1, [a1 mustStartInInterval]) && v15 < v9)
  {
    v20 = [a1 wrappedPredicate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v22 = MEMORY[0x1E695DFE8];
      v23 = v4;
      v24 = [v22 timeZoneWithAbbreviation:@"GMT"];
      v25 = [v23 eventStore];
      v26 = [a1 startDate];
      v27 = [a1 endDate];
      v19 = [v25 occurrencesExistInRangeForEvent:v23 startDate:v26 endDate:v27 mustStartInInterval:objc_msgSend(a1 timezone:{"mustStartInInterval"), v24}];

      goto LABEL_10;
    }

LABEL_9:
    v19 = 0;
  }

LABEL_10:

  return v19;
}

@end