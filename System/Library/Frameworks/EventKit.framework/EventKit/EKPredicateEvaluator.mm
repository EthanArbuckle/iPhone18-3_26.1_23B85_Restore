@interface EKPredicateEvaluator
+ (BOOL)evaluatePredicate:(id)predicate withObject:(id)object;
@end

@implementation EKPredicateEvaluator

+ (BOOL)evaluatePredicate:(id)predicate withObject:(id)object
{
  predicateCopy = predicate;
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    v7 = [predicateCopy ekPredicateEvaluateWithObject:objectCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end