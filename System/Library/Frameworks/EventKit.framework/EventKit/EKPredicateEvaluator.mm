@interface EKPredicateEvaluator
+ (BOOL)evaluatePredicate:(id)a3 withObject:(id)a4;
@end

@implementation EKPredicateEvaluator

+ (BOOL)evaluatePredicate:(id)a3 withObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 ekPredicateEvaluateWithObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end