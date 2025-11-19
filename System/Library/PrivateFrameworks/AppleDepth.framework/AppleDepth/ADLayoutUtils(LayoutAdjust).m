@interface ADLayoutUtils(LayoutAdjust)
+ (uint64_t)adjustLayout:()LayoutAdjust sourceOrientation:toRotationPreference:;
@end

@implementation ADLayoutUtils(LayoutAdjust)

+ (uint64_t)adjustLayout:()LayoutAdjust sourceOrientation:toRotationPreference:
{
  if (a3 == 254)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return 254;
    }

    *buf = 0;
    v6 = MEMORY[0x277D86220];
    v7 = "Cannot adjust unknown layout";
    v8 = buf;
LABEL_15:
    _os_log_error_impl(&dword_2402F6000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    return 254;
  }

  if (a5 || a4 != 8 && a4 != 6)
  {
    return a3;
  }

  if (a3 == 255)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return 254;
    }

    v10 = 0;
    v6 = MEMORY[0x277D86220];
    v7 = "Cannot rotate default layout";
    v8 = &v10;
    goto LABEL_15;
  }

  v9 = MEMORY[0x277CED0C0];

  return [v9 transposeLayout:?];
}

@end