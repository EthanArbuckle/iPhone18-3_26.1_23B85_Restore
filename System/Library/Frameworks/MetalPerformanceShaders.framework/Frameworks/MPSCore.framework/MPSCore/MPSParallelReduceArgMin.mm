@interface MPSParallelReduceArgMin
- (MPSParallelReduceArgMin)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType;
@end

@implementation MPSParallelReduceArgMin

- (MPSParallelReduceArgMin)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType
{
  v6.receiver = self;
  v6.super_class = MPSParallelReduceArgMin;
  return [(MPSParallelReduce *)&v6 initWithDevice:device sourceDataType:*&type destinationDataType:*&dataType reduceOp:3];
}

@end