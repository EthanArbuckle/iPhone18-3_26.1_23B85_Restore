@interface GKRule
+ (GKRule)ruleWithBlockPredicate:(void *)predicate action:(void *)action;
+ (GKRule)ruleWithPredicate:(NSPredicate *)predicate assertingFact:(id)fact grade:(float)grade;
+ (GKRule)ruleWithPredicate:(NSPredicate *)predicate retractingFact:(id)fact grade:(float)grade;
@end

@implementation GKRule

+ (GKRule)ruleWithPredicate:(NSPredicate *)predicate assertingFact:(id)fact grade:(float)grade
{
  v7 = fact;
  v8 = predicate;
  v9 = [_GKNSPredicateRule alloc];
  *&v10 = grade;
  v11 = [(_GKNSPredicateRule *)v9 initWithPredicate:v8 fact:v7 grade:1 asserting:v10];

  return v11;
}

+ (GKRule)ruleWithPredicate:(NSPredicate *)predicate retractingFact:(id)fact grade:(float)grade
{
  v7 = fact;
  v8 = predicate;
  v9 = [_GKNSPredicateRule alloc];
  *&v10 = grade;
  v11 = [(_GKNSPredicateRule *)v9 initWithPredicate:v8 fact:v7 grade:0 asserting:v10];

  return v11;
}

+ (GKRule)ruleWithBlockPredicate:(void *)predicate action:(void *)action
{
  v5 = action;
  v6 = predicate;
  v7 = [[_GKBlockRule alloc] initWithPredicate:v6 action:v5];

  return v7;
}

@end