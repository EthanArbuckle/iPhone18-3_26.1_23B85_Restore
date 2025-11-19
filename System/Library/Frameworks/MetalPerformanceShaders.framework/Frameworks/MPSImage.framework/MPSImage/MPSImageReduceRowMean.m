@interface MPSImageReduceRowMean
- (MPSImageReduceRowMean)initWithDevice:(id)device;
@end

@implementation MPSImageReduceRowMean

- (MPSImageReduceRowMean)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageReduceRowMean;
  return [(MPSImageReduceUnary *)&v4 initWithDevice:device reduceOperation:4];
}

@end