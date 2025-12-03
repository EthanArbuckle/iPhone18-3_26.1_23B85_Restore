@interface MPSNDArrayScan
- (MPSNDArrayScan)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayScan)initWithDevice:(id)device;
- (MPSNDArrayScan)initWithDevice:(id)device axis:(unint64_t)axis operation:(int)operation exclusive:(BOOL)exclusive reverse:(BOOL)reverse;
@end

@implementation MPSNDArrayScan

- (MPSNDArrayScan)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayScan;
  return [(MPSNDArrayUnaryKernel *)&v5 initWithCoder:coder device:device];
}

- (MPSNDArrayScan)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayScan;
  return [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:device];
}

- (MPSNDArrayScan)initWithDevice:(id)device axis:(unint64_t)axis operation:(int)operation exclusive:(BOOL)exclusive reverse:(BOOL)reverse
{
  v12.receiver = self;
  v12.super_class = MPSNDArrayScan;
  result = [(MPSNDArrayUnaryKernel *)&v12 initWithDevice:device];
  if (result)
  {
    result->super.super._encode = EncodeScan;
    result->_operation = operation;
    result->_axis = axis;
    result->_exclusive = exclusive;
    result->_reverse = reverse;
  }

  return result;
}

@end