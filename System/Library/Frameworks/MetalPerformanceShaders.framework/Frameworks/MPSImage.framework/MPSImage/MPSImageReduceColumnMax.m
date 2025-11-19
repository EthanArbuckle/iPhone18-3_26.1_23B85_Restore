@interface MPSImageReduceColumnMax
- (MPSImageReduceColumnMax)initWithDevice:(id)device;
@end

@implementation MPSImageReduceColumnMax

- (MPSImageReduceColumnMax)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageReduceColumnMax;
  return [(MPSImageReduceUnary *)&v4 initWithDevice:device reduceOperation:3];
}

@end