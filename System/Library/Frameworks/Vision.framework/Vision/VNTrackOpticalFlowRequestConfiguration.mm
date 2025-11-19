@interface VNTrackOpticalFlowRequestConfiguration
- (VNTrackOpticalFlowRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNTrackOpticalFlowRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNTrackOpticalFlowRequestConfiguration;
  v4 = [(VNStatefulRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setComputationAccuracy:self->_computationAccuracy];
    [v5 setOutputPixelFormat:self->_outputPixelFormat];
    [v5 setKeepNetworkOutput:self->_keepNetworkOutput];
  }

  return v5;
}

- (VNTrackOpticalFlowRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNTrackOpticalFlowRequestConfiguration;
  result = [(VNStatefulRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_computationAccuracy = 1;
    result->_outputPixelFormat = 843264102;
    result->_keepNetworkOutput = 0;
  }

  return result;
}

@end