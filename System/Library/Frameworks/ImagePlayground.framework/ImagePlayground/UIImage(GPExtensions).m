@interface UIImage(GPExtensions)
- (uint64_t)gp_CGImage;
@end

@implementation UIImage(GPExtensions)

- (uint64_t)gp_CGImage
{
  v1 = a1;

  return [v1 CGImage];
}

@end