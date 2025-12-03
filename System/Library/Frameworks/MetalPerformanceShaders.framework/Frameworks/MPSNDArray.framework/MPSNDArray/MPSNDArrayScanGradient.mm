@interface MPSNDArrayScanGradient
- (MPSNDArrayScanGradient)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayScanGradient)initWithDevice:(id)device;
- (MPSNDArrayScanGradient)initWithDevice:(id)device axis:(unint64_t)axis operation:(int)operation exclusive:(BOOL)exclusive reverse:(BOOL)reverse;
@end

@implementation MPSNDArrayScanGradient

- (MPSNDArrayScanGradient)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayScanGradient;
  return [(MPSNDArrayUnaryGradientKernel *)&v5 initWithCoder:coder device:device];
}

- (MPSNDArrayScanGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayScanGradient;
  return [(MPSNDArrayUnaryGradientKernel *)&v4 initWithDevice:device];
}

- (MPSNDArrayScanGradient)initWithDevice:(id)device axis:(unint64_t)axis operation:(int)operation exclusive:(BOOL)exclusive reverse:(BOOL)reverse
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v14.receiver = self;
  v14.super_class = MPSNDArrayScanGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v14 initWithDevice:device];
  if (result)
  {
    result->super.super.super._encodeGradient = EncodeScanGradient;
    result->_operation = operation;
    result->_axis = axis;
    result->_exclusive = exclusive;
    result->_reverse = !reverse;
  }

  return result;
}

@end