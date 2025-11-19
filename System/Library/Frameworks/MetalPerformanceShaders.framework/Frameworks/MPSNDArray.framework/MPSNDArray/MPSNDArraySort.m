@interface MPSNDArraySort
- (MPSNDArraySort)initWithDevice:(id)a3 axis:(unint64_t)a4 descending:(BOOL)a5;
- (void)dealloc;
@end

@implementation MPSNDArraySort

- (MPSNDArraySort)initWithDevice:(id)a3 axis:(unint64_t)a4 descending:(BOOL)a5
{
  v11.receiver = self;
  v11.super_class = MPSNDArraySort;
  result = [(MPSNDArrayUnaryKernel *)&v11 initWithDevice:?];
  if (result)
  {
    result->super.super._encode = EncodeSort;
    result->_axis = a4;
    result->_descending = a5;
    v9 = result;
    v10 = [[MPSNDArrayScan alloc] initWithDevice:a3 axis:a4 operation:0 exclusive:1 reverse:0];
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