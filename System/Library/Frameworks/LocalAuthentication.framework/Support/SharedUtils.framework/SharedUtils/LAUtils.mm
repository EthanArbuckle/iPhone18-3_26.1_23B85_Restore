@interface LAUtils
+ (BOOL)isSharedIPad;
+ (void)isSharedIPad;
@end

@implementation LAUtils

+ (BOOL)isSharedIPad
{
  v2 = _isSharedIPad;
  if (_isSharedIPad == -1)
  {
    v3 = MKBUserTypeDeviceMode();
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B1A10]];
      _isSharedIPad = [v5 isEqualToString:*MEMORY[0x1E69B1A20]];
    }

    else
    {
      v5 = 0;
      if (LA_LOG_once_1 != -1)
      {
        +[LAUtils isSharedIPad];
      }

      v6 = LA_LOG_log_1;
      if (os_log_type_enabled(LA_LOG_log_1, OS_LOG_TYPE_ERROR))
      {
        +[(LAUtils *)0];
      }
    }

    v2 = _isSharedIPad;
  }

  return v2 == 1;
}

+ (void)isSharedIPad
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1DF403000, a2, OS_LOG_TYPE_ERROR, "MKBUserTypeDeviceMode returned NULL: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end