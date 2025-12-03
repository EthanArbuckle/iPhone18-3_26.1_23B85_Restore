@interface MPSParallelReduceMin
- (MPSParallelReduceMin)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType;
@end

@implementation MPSParallelReduceMin

- (MPSParallelReduceMin)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType
{
  v6.receiver = self;
  v6.super_class = MPSParallelReduceMin;
  return [(MPSParallelReduce *)&v6 initWithDevice:device sourceDataType:*&type destinationDataType:*&dataType reduceOp:1];
}

@end