@interface CADUnacknowledgedEventsPredicate(EKPredicateEvaluating)
- (BOOL)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
@end

@implementation CADUnacknowledgedEventsPredicate(EKPredicateEvaluating)

- (BOOL)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v3 = a3;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 invitationStatus] != 0;

  return v4;
}

@end