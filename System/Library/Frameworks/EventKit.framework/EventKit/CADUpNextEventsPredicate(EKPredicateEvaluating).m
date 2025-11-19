@interface CADUpNextEventsPredicate(EKPredicateEvaluating)
- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
@end

@implementation CADUpNextEventsPredicate(EKPredicateEvaluating)

- (uint64_t)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end