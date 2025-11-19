@interface MPSImageReduceColumnMin
- (MPSImageReduceColumnMin)initWithDevice:(id)device;
@end

@implementation MPSImageReduceColumnMin

- (MPSImageReduceColumnMin)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageReduceColumnMin;
  return [(MPSImageReduceUnary *)&v4 initWithDevice:device reduceOperation:1];
}

@end