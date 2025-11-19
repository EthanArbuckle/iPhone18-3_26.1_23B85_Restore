@interface MPSImageReduceRowMax
- (MPSImageReduceRowMax)initWithDevice:(id)device;
@end

@implementation MPSImageReduceRowMax

- (MPSImageReduceRowMax)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageReduceRowMax;
  return [(MPSImageReduceUnary *)&v4 initWithDevice:device reduceOperation:2];
}

@end