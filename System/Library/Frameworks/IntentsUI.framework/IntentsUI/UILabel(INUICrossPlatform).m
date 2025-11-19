@interface UILabel(INUICrossPlatform)
+ (id)_inui_labelWithText:()INUICrossPlatform;
@end

@implementation UILabel(INUICrossPlatform)

+ (id)_inui_labelWithText:()INUICrossPlatform
{
  v3 = MEMORY[0x277D756B8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 _inui_setText:v4];

  return v5;
}

@end