@interface MPSParallelReduceArgMax
- (MPSParallelReduceArgMax)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType;
@end

@implementation MPSParallelReduceArgMax

- (MPSParallelReduceArgMax)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType
{
  v6.receiver = self;
  v6.super_class = MPSParallelReduceArgMax;
  return [(MPSParallelReduce *)&v6 initWithDevice:device sourceDataType:*&type destinationDataType:*&dataType reduceOp:4];
}

@end