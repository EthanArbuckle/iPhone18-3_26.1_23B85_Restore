@interface MPSImageReduceColumnSum
- (MPSImageReduceColumnSum)initWithDevice:(id)device;
@end

@implementation MPSImageReduceColumnSum

- (MPSImageReduceColumnSum)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageReduceColumnSum;
  return [(MPSImageReduceUnary *)&v4 initWithDevice:device reduceOperation:7];
}

@end