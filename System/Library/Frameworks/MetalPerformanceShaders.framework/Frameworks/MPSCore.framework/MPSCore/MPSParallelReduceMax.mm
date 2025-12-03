@interface MPSParallelReduceMax
- (MPSParallelReduceMax)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType;
@end

@implementation MPSParallelReduceMax

- (MPSParallelReduceMax)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType
{
  v6.receiver = self;
  v6.super_class = MPSParallelReduceMax;
  return [(MPSParallelReduce *)&v6 initWithDevice:device sourceDataType:*&type destinationDataType:*&dataType reduceOp:2];
}

@end