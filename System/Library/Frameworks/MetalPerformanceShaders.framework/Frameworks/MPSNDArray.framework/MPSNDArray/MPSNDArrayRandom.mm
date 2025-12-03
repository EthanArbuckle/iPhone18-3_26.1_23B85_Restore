@interface MPSNDArrayRandom
- (MPSNDArrayRandom)initWithDevice:(id)device;
@end

@implementation MPSNDArrayRandom

- (MPSNDArrayRandom)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayRandom;
  return [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:device];
}

@end