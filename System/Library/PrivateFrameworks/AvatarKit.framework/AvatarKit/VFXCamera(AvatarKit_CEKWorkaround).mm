@interface VFXCamera(AvatarKit_CEKWorkaround)
- (uint64_t)_implementCEKWorkaroundIfNeeded;
- (void)_implementCEKWorkaroundIfNeeded;
@end

@implementation VFXCamera(AvatarKit_CEKWorkaround)

- (uint64_t)_implementCEKWorkaroundIfNeeded
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    v3 = objc_opt_class();
    if (v3 != objc_opt_class())
    {
      v4 = avt_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [VFXCamera(AvatarKit_CEKWorkaround) _implementCEKWorkaroundIfNeeded];
      }
    }

    v5 = objc_opt_class();
    return object_setClass(a1, v5);
  }

  return result;
}

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