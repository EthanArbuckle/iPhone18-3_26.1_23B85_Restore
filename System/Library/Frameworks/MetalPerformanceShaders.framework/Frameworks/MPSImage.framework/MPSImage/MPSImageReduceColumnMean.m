@interface MPSImageReduceColumnMean
- (MPSImageReduceColumnMean)initWithDevice:(id)device;
@end

@implementation MPSImageReduceColumnMean

- (MPSImageReduceColumnMean)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageReduceColumnMean;
  return [(MPSImageReduceUnary *)&v4 initWithDevice:device reduceOperation:5];
}

@end