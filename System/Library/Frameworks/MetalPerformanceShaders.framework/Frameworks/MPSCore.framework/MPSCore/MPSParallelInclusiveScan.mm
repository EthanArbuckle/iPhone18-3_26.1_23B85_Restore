@interface MPSParallelInclusiveScan
- (MPSParallelInclusiveScan)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType;
@end

@implementation MPSParallelInclusiveScan

- (MPSParallelInclusiveScan)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType
{
  v6.receiver = self;
  v6.super_class = MPSParallelInclusiveScan;
  return [(MPSParallelScan *)&v6 initWithDevice:device sourceDataType:*&type destinationDataType:*&dataType scanOp:1];
}

@end