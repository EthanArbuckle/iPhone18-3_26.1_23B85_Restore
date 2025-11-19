@interface MPSImageDivide
- (MPSImageDivide)initWithDevice:(id)device;
@end

@implementation MPSImageDivide

- (MPSImageDivide)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageDivide;
  return [(MPSImageArithmetic *)&v4 initWithDevice:device arithmeticType:3];
}

@end