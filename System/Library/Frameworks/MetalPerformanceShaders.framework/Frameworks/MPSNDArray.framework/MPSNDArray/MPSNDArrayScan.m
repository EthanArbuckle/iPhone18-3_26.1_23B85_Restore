@interface MPSNDArrayScan
- (MPSNDArrayScan)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayScan)initWithDevice:(id)a3;
- (MPSNDArrayScan)initWithDevice:(id)a3 axis:(unint64_t)a4 operation:(int)a5 exclusive:(BOOL)a6 reverse:(BOOL)a7;
@end

@implementation MPSNDArrayScan

- (MPSNDArrayScan)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayScan;
  return [(MPSNDArrayUnaryKernel *)&v5 initWithCoder:a3 device:a4];
}

- (MPSNDArrayScan)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayScan;
  return [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:a3];
}

- (MPSNDArrayScan)initWithDevice:(id)a3 axis:(unint64_t)a4 operation:(int)a5 exclusive:(BOOL)a6 reverse:(BOOL)a7
{
  v12.receiver = self;
  v12.super_class = MPSNDArrayScan;
  result = [(MPSNDArrayUnaryKernel *)&v12 initWithDevice:a3];
  if (result)
  {
    result->super.super._encode = EncodeScan;
    result->_operation = a5;
    result->_axis = a4;
    result->_exclusive = a6;
    result->_reverse = a7;
  }

  return result;
}

@end