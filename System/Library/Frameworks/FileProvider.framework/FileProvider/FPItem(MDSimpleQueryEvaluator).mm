@interface FPItem(MDSimpleQueryEvaluator)
@end

@implementation FPItem(MDSimpleQueryEvaluator)

- (void)_coreSpotlightAttributeForKey:()MDSimpleQueryEvaluator .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Unhandled attribute named '%{public}@'", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end