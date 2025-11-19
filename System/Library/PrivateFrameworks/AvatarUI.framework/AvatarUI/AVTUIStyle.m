@interface AVTUIStyle
+ (id)darkStyle;
+ (id)lightStyle;
@end

@implementation AVTUIStyle

+ (id)lightStyle
{
  v2 = objc_alloc_init(AVTUIStyle);
  v3 = [MEMORY[0x1E69DC888] labelColor];
  [(AVTUIStyle *)v2 setTextColor:v3];

  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(AVTUIStyle *)v2 setBackgroundColor:v4];

  return v2;
}

+ (id)darkStyle
{
  v2 = objc_alloc_init(AVTUIStyle);
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(AVTUIStyle *)v2 setBackgroundColor:v3];

  v4 = [MEMORY[0x1E69DC888] whiteColor];
  [(AVTUIStyle *)v2 setTextColor:v4];

  return v2;
}

@end