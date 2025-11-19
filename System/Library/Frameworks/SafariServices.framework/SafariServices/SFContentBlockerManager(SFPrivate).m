@interface SFContentBlockerManager(SFPrivate)
- (void)_saveContentBlockerRecompilationInformation;
@end

@implementation SFContentBlockerManager(SFPrivate)

+ (void)_createContentExtensionsDirectoryWithURL:()SFPrivate .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, a2, a3, "Failed to exclude ContentExtensions directory from backup: %{public}@", a2);
}

- (void)_saveContentBlockerRecompilationInformation
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, a2, a3, "Failed to create data to save recompilation information: %{public}@", a2);
}

@end