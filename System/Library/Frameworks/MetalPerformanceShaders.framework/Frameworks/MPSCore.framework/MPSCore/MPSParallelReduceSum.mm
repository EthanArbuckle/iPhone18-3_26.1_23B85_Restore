@interface MPSParallelReduceSum
- (MPSParallelReduceSum)initWithDevice:(id)a3 sourceDataType:(unsigned int)a4 destinationDataType:(unsigned int)a5;
@end

@implementation MPSParallelReduceSum

- (MPSParallelReduceSum)initWithDevice:(id)a3 sourceDataType:(unsigned int)a4 destinationDataType:(unsigned int)a5
{
  v6.receiver = self;
  v6.super_class = MPSParallelReduceSum;
  return [(MPSParallelReduce *)&v6 initWithDevice:a3 sourceDataType:*&a4 destinationDataType:*&a5 reduceOp:0];
}

@end