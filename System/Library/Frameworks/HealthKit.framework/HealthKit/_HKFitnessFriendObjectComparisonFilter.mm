@interface _HKFitnessFriendObjectComparisonFilter
+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path;
+ (id)allowedDataTypeClassesForKeyPath:(id)path;
+ (id)allowedValueClassesForKeyPath:(id)path;
@end

@implementation _HKFitnessFriendObjectComparisonFilter

+ (id)allowedDataTypeClassesForKeyPath:(id)path
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)allowedValueClassesForKeyPath:(id)path
{
  if ([path isEqualToString:@"friend_uuid"])
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HKFitnessFriendObjectComparisonFilter.m" lineNumber:34 description:@"Unreachable code has been executed"];

    [MEMORY[0x1E695DFD8] set];
  }
  v8 = ;

  return v8;
}

+ (BOOL)isAllowedPredicateOperatorType:(unint64_t)type forKeyPath:(id)path
{
  if ([path isEqualToString:@"friend_uuid"])
  {
    return type == 10 || (type & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKFitnessFriendObjectComparisonFilter.m" lineNumber:43 description:@"Unreachable code has been executed"];

  return 0;
}

@end