@interface MPSParallelExclusiveScan
- (MPSParallelExclusiveScan)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType;
@end

@implementation MPSParallelExclusiveScan

- (MPSParallelExclusiveScan)initWithDevice:(id)device sourceDataType:(unsigned int)type destinationDataType:(unsigned int)dataType
{
  v6.receiver = self;
  v6.super_class = MPSParallelExclusiveScan;
  return [(MPSParallelScan *)&v6 initWithDevice:device sourceDataType:*&type destinationDataType:*&dataType scanOp:0];
}

@end