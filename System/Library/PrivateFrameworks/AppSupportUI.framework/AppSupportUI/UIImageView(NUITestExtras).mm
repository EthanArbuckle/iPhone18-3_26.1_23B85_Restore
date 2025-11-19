@interface UIImageView(NUITestExtras)
+ (id)imageViewWithImage:()NUITestExtras;
@end

@implementation UIImageView(NUITestExtras)

+ (id)imageViewWithImage:()NUITestExtras
{
  v3 = MEMORY[0x277D755E8];
  v4 = a3;
  v5 = [[v3 alloc] initWithImage:v4];

  return v5;
}

@end