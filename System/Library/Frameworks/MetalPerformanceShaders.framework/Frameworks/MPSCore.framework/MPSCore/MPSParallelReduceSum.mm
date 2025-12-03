@interface MPSParallelReduceSum
- (MPSParallelReduceSum)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType;
@end

@implementation MPSParallelReduceSum

- (MPSParallelReduceSum)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType
{
  v6.receiver = self;
  v6.super_class = MPSParallelReduceSum;
  return [(MPSParallelReduce *)&v6 initWithDevice:device sourceDataType:*&type destinationDataType:*&dataType reduceOp:0];
}

@end