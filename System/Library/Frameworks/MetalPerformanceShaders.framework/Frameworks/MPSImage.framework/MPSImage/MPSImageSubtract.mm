@interface MPSImageSubtract
- (MPSImageSubtract)initWithDevice:(id)device;
@end

@implementation MPSImageSubtract

- (MPSImageSubtract)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageSubtract;
  return [(MPSImageArithmetic *)&v4 initWithDevice:device arithmeticType:1];
}

@end