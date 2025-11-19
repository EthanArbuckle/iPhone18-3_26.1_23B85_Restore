@interface MPSImageAdd
- (MPSImageAdd)initWithDevice:(id)device;
@end

@implementation MPSImageAdd

- (MPSImageAdd)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageAdd;
  return [(MPSImageArithmetic *)&v4 initWithDevice:device arithmeticType:0];
}

@end