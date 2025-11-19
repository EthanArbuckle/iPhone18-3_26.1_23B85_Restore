@interface MPSParallelRadixSort
- (MPSParallelRadixSort)initWithDevice:(id)a3 keyPairDataType:(unsigned int)a4 valuePairDataType:(unsigned int)a5;
@end

@implementation MPSParallelRadixSort

- (MPSParallelRadixSort)initWithDevice:(id)a3 keyPairDataType:(unsigned int)a4 valuePairDataType:(unsigned int)a5
{
  v6.receiver = self;
  v6.super_class = MPSParallelRadixSort;
  return [(MPSParallelSort *)&v6 initWithDevice:a3 keyPairDataType:*&a4 valuePairDataType:*&a5 sortOp:0];
}

@end