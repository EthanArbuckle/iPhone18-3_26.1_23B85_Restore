@interface GCDirectionalGamepad(DirectionPadValueChangedDelegate)
@end

@implementation GCDirectionalGamepad(DirectionPadValueChangedDelegate)

- (void)dpadDirectionEvent:()DirectionPadValueChangedDelegate direction:pressed:.cold.1(unsigned __int8 *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *a1;
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "Button State = %x", v5, 8u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end