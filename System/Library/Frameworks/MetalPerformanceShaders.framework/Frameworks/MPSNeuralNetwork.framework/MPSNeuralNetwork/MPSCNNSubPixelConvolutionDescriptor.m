@interface MPSCNNSubPixelConvolutionDescriptor
- (void)setSubPixelScaleFactor:(NSUInteger)subPixelScaleFactor;
@end

@implementation MPSCNNSubPixelConvolutionDescriptor

- (void)setSubPixelScaleFactor:(NSUInteger)subPixelScaleFactor
{
  outputFeatureChannels = self->super._outputFeatureChannels;
  v4 = subPixelScaleFactor * subPixelScaleFactor;
  if (outputFeatureChannels % (subPixelScaleFactor * subPixelScaleFactor))
  {
    v5 = subPixelScaleFactor;
    v6 = self;
    v7 = MTLReportFailureTypeEnabled();
    outputFeatureChannels = v6->super._outputFeatureChannels;
    if (v7)
    {
      MTLReportFailure();
      self = v6;
      outputFeatureChannels = v6->super._outputFeatureChannels;
    }

    else
    {
      self = v6;
    }

    subPixelScaleFactor = v5;
    if (self->super._groups < 2)
    {
      goto LABEL_4;
    }
  }

  else if (self->super._groups < 2)
  {
LABEL_4:
    self->super._subPixelScaleFactor = subPixelScaleFactor;
    return;
  }

  if (((outputFeatureChannels / v4) & 3) == 0)
  {
    goto LABEL_4;
  }

  v8 = self;
  v9 = subPixelScaleFactor;
  v10 = MTLReportFailureTypeEnabled();
  subPixelScaleFactor = v9;
  v11 = v10;
  self = v8;
  if (!v11)
  {
    goto LABEL_4;
  }

  MTLReportFailure();
  v8->super._subPixelScaleFactor = v9;
}

@end