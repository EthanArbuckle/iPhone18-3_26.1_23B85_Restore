@interface UIImageView(INUICrossPlatform)
+ (id)_inui_imageViewWithImage:()INUICrossPlatform;
@end

@implementation UIImageView(INUICrossPlatform)

+ (id)_inui_imageViewWithImage:()INUICrossPlatform
{
  v3 = MEMORY[0x277D755E8];
  v4 = a3;
  v5 = [[v3 alloc] initWithImage:v4];

  return v5;
}

@end