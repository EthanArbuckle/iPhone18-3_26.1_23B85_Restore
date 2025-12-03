@interface MPSNDArraySort
- (MPSNDArraySort)initWithDevice:(id)device axis:(unint64_t)axis descending:(BOOL)descending;
- (void)dealloc;
@end

@implementation MPSNDArraySort

- (MPSNDArraySort)initWithDevice:(id)device axis:(unint64_t)axis descending:(BOOL)descending
{
  v11.receiver = self;
  v11.super_class = MPSNDArraySort;
  result = [(MPSNDArrayUnaryKernel *)&v11 initWithDevice:?];
  if (result)
  {
    result->super.super._encode = EncodeSort;
    result->_axis = axis;
    result->_descending = descending;
    v9 = result;
    v10 = [[MPSNDArrayScan alloc] initWithDevice:device axis:axis operation:0 exclusive:1 reverse:0];
    result = v9;
    v9->_scanKernel = v10;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArraySort;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end