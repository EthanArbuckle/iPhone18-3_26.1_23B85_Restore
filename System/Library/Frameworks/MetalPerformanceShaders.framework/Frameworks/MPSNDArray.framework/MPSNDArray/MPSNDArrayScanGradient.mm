@interface MPSNDArrayScanGradient
- (MPSNDArrayScanGradient)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayScanGradient)initWithDevice:(id)a3;
- (MPSNDArrayScanGradient)initWithDevice:(id)a3 axis:(unint64_t)a4 operation:(int)a5 exclusive:(BOOL)a6 reverse:(BOOL)a7;
@end

@implementation MPSNDArrayScanGradient

- (MPSNDArrayScanGradient)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayScanGradient;
  return [(MPSNDArrayUnaryGradientKernel *)&v5 initWithCoder:a3 device:a4];
}

- (MPSNDArrayScanGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayScanGradient;
  return [(MPSNDArrayUnaryGradientKernel *)&v4 initWithDevice:a3];
}

- (MPSNDArrayScanGradient)initWithDevice:(id)a3 axis:(unint64_t)a4 operation:(int)a5 exclusive:(BOOL)a6 reverse:(BOOL)a7
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v14.receiver = self;
  v14.super_class = MPSNDArrayScanGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v14 initWithDevice:a3];
  if (result)
  {
    result->super.super.super._encodeGradient = EncodeScanGradient;
    result->_operation = a5;
    result->_axis = a4;
    result->_exclusive = a6;
    result->_reverse = !a7;
  }

  return result;
}

@end