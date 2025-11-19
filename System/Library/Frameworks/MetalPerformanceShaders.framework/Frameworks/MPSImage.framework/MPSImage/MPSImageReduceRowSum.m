@interface MPSImageReduceRowSum
- (MPSImageReduceRowSum)initWithDevice:(id)device;
@end

@implementation MPSImageReduceRowSum

- (MPSImageReduceRowSum)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageReduceRowSum;
  return [(MPSImageReduceUnary *)&v4 initWithDevice:device reduceOperation:6];
}

@end