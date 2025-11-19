@interface _HKFitnessFriendObjectComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4;
+ (id)allowedDataTypeClassesForKeyPath:(id)a3;
+ (id)allowedValueClassesForKeyPath:(id)a3;
@end

@implementation _HKFitnessFriendObjectComparisonFilter

+ (id)allowedDataTypeClassesForKeyPath:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)a3
{
  if ([a3 isEqualToString:@"friend_uuid"])
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"_HKFitnessFriendObjectComparisonFilter.m" lineNumber:34 description:@"Unreachable code has been executed"];

    [MEMORY[0x1E695DFD8] set];
  }
  v8 = ;

  return v8;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)a3 forKeyPath:(id)a4
{
  if ([a4 isEqualToString:@"friend_uuid"])
  {
    return a3 == 10 || (a3 & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:a1 file:@"_HKFitnessFriendObjectComparisonFilter.m" lineNumber:43 description:@"Unreachable code has been executed"];

  return 0;
}

@end