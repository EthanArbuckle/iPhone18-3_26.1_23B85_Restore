@interface MPSImageReduceRowMin
- (MPSImageReduceRowMin)initWithDevice:(id)device;
@end

@implementation MPSImageReduceRowMin

- (MPSImageReduceRowMin)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageReduceRowMin;
  return [(MPSImageReduceUnary *)&v4 initWithDevice:device reduceOperation:0];
}

@end