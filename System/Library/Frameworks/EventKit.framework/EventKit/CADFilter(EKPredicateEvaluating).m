@interface CADFilter(EKPredicateEvaluating)
- (uint64_t)ekPredicateFilterMatches:()EKPredicateEvaluating;
@end

@implementation CADFilter(EKPredicateEvaluating)

- (uint64_t)ekPredicateFilterMatches:()EKPredicateEvaluating
{
  v0 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [CADFilter(EKPredicateEvaluating) ekPredicateFilterMatches:v0];
  }

  return 0;
}

- (void)ekPredicateFilterMatches:()EKPredicateEvaluating .cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1A805E000, v1, OS_LOG_TYPE_ERROR, "Unknown CADFilter subclass: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end