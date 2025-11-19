@interface MPSNDArrayRandom
- (MPSNDArrayRandom)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayRandom

- (MPSNDArrayRandom)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayRandom;
  return [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:a3];
}

@end