@interface MPSParallelReduceMax
- (MPSParallelReduceMax)initWithDevice:(id)a3 sourceDataType:(unsigned int)a4 destinationDataType:(unsigned int)a5;
@end

@implementation MPSParallelReduceMax

- (MPSParallelReduceMax)initWithDevice:(id)a3 sourceDataType:(unsigned int)a4 destinationDataType:(unsigned int)a5
{
  v6.receiver = self;
  v6.super_class = MPSParallelReduceMax;
  return [(MPSParallelReduce *)&v6 initWithDevice:a3 sourceDataType:*&a4 destinationDataType:*&a5 reduceOp:2];
}

@end