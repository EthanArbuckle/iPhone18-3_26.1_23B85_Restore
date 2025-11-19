@interface UIScreen(LPExtras)
+ (double)_lp_mainScreenScale;
+ (double)_lp_mainScreenSize;
@end

@implementation UIScreen(LPExtras)

+ (double)_lp_mainScreenScale
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

+ (double)_lp_mainScreenSize
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 bounds];
  v2 = v1;

  return v2;
}

@end