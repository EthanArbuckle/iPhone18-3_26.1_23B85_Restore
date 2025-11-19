@interface NSComparisonPredicate(HealthKit)
+ (id)hk_equalityPredicateWithKey:()HealthKit value:;
+ (id)hk_inequalityPredicateWithKey:()HealthKit value:ascending:;
@end

@implementation NSComparisonPredicate(HealthKit)

+ (id)hk_inequalityPredicateWithKey:()HealthKit value:ascending:
{
  if (a5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x1E696ABC8];
  v8 = a4;
  v9 = [v7 expressionForKeyPath:a3];
  v10 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v8];

  v11 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v9 rightExpression:v10 modifier:0 type:v6 options:0];

  return v11;
}

+ (id)hk_equalityPredicateWithKey:()HealthKit value:
{
  v5 = MEMORY[0x1E696ABC8];
  v6 = a4;
  v7 = [v5 expressionForKeyPath:a3];
  v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v6];

  v9 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v7 rightExpression:v8 modifier:0 type:4 options:0];

  return v9;
}

@end