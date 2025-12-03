@interface AVTUIStyle
+ (id)darkStyle;
+ (id)lightStyle;
@end

@implementation AVTUIStyle

+ (id)lightStyle
{
  v2 = objc_alloc_init(AVTUIStyle);
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(AVTUIStyle *)v2 setTextColor:labelColor];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(AVTUIStyle *)v2 setBackgroundColor:systemBackgroundColor];

  return v2;
}

+ (id)darkStyle
{
  v2 = objc_alloc_init(AVTUIStyle);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(AVTUIStyle *)v2 setBackgroundColor:clearColor];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(AVTUIStyle *)v2 setTextColor:whiteColor];

  return v2;
}

@end