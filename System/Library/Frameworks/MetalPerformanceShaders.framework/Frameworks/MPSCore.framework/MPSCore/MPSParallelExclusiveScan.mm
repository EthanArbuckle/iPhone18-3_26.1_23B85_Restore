@interface MPSParallelExclusiveScan
- (MPSParallelExclusiveScan)initWithDevice:(id)a3 sourceDataType:(unsigned int)a4 destinationDataType:(unsigned int)a5;
@end

@implementation MPSParallelExclusiveScan

- (MPSParallelExclusiveScan)initWithDevice:(id)a3 sourceDataType:(unsigned int)a4 destinationDataType:(unsigned int)a5
{
  v6.receiver = self;
  v6.super_class = MPSParallelExclusiveScan;
  return [(MPSParallelScan *)&v6 initWithDevice:a3 sourceDataType:*&a4 destinationDataType:*&a5 scanOp:0];
}

@end