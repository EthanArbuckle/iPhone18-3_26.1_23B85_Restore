@interface UIScreen(LPExtras)
+ (double)_lp_mainScreenScale;
+ (double)_lp_mainScreenSize;
@end

@implementation UIScreen(LPExtras)

+ (double)_lp_mainScreenScale
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v2 = v1;

  return v2;
}

+ (double)_lp_mainScreenSize
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v2 = v1;

  return v2;
}

@end