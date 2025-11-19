@interface MPSParallelReduceArgMin
- (MPSParallelReduceArgMin)initWithDevice:(id)a3 sourceDataType:(unsigned int)a4 destinationDataType:(unsigned int)a5;
@end

@implementation MPSParallelReduceArgMin

- (MPSParallelReduceArgMin)initWithDevice:(id)a3 sourceDataType:(unsigned int)a4 destinationDataType:(unsigned int)a5
{
  v6.receiver = self;
  v6.super_class = MPSParallelReduceArgMin;
  return [(MPSParallelReduce *)&v6 initWithDevice:a3 sourceDataType:*&a4 destinationDataType:*&a5 reduceOp:3];
}

@end