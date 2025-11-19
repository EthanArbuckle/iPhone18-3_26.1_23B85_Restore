@interface UIWindowScene(AVAdditions)
- (void)avkit_disableTouchCancellation:()AVAdditions forRotationActions:;
@end

@implementation UIWindowScene(AVAdditions)

- (void)avkit_disableTouchCancellation:()AVAdditions forRotationActions:
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    LOBYTE(a3) = objc_opt_respondsToSelector();
  }

  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    v9 = 136315650;
    v10 = "[UIWindowScene(AVAdditions) avkit_disableTouchCancellation:forRotationActions:]";
    v12 = "actuallyDisableTouchCancellation";
    v11 = 2080;
    if (a3)
    {
      v8 = "YES";
    }

    v13 = 2080;
    v14 = v8;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v9, 0x20u);
  }

  if (a3)
  {
    [a1 _disableTouchCancellationOnRotation];
  }

  v6[2](v6);
}

@end