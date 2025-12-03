@interface CADEventCreatedFromSuggestionPredicate(EKPredicateEvaluating)
- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
@end

@implementation CADEventCreatedFromSuggestionPredicate(EKPredicateEvaluating)

- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    suggestionInfo = [v4 suggestionInfo];
    opaqueKey = [suggestionInfo opaqueKey];

    opaqueKey2 = [self opaqueKey];
    v8 = [opaqueKey isEqualToString:opaqueKey2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end