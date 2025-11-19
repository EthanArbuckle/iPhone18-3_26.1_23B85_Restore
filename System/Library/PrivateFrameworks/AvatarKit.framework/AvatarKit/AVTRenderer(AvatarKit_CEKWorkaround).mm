@interface AVTRenderer(AvatarKit_CEKWorkaround)
- (void)_implementCEKWorkaroundIfNeeded;
@end

@implementation AVTRenderer(AvatarKit_CEKWorkaround)

- (void)_implementCEKWorkaroundIfNeeded
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_1BB472000, v2, v3, "Error: Condition '%s' failed. Did expect subclass %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end