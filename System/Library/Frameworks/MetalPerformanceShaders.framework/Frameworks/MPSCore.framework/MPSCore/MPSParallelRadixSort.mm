@interface MPSParallelRadixSort
- (MPSParallelRadixSort)initWithDevice:(id)device keyPairDataType:(unsigned int)type valuePairDataType:(unsigned int)dataType;
@end

@implementation MPSParallelRadixSort

- (MPSParallelRadixSort)initWithDevice:(id)device keyPairDataType:(unsigned int)type valuePairDataType:(unsigned int)dataType
{
  v6.receiver = self;
  v6.super_class = MPSParallelRadixSort;
  return [(MPSParallelSort *)&v6 initWithDevice:device keyPairDataType:*&type valuePairDataType:*&dataType sortOp:0];
}

@end