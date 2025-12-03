@interface UIImage(GPExtensions)
- (uint64_t)gp_CGImage;
@end

@implementation UIImage(GPExtensions)

- (uint64_t)gp_CGImage
{
  selfCopy = self;

  return [selfCopy CGImage];
}

@end