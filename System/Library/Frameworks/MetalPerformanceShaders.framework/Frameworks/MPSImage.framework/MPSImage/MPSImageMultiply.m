@interface MPSImageMultiply
- (MPSImageMultiply)initWithDevice:(id)device;
@end

@implementation MPSImageMultiply

- (MPSImageMultiply)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageMultiply;
  return [(MPSImageArithmetic *)&v4 initWithDevice:device arithmeticType:2];
}

@end