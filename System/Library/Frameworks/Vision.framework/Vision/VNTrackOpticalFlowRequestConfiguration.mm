@interface VNTrackOpticalFlowRequestConfiguration
- (VNTrackOpticalFlowRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNTrackOpticalFlowRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNTrackOpticalFlowRequestConfiguration;
  v4 = [(VNStatefulRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setComputationAccuracy:self->_computationAccuracy];
    [v5 setOutputPixelFormat:self->_outputPixelFormat];
    [v5 setKeepNetworkOutput:self->_keepNetworkOutput];
  }

  return v5;
}

- (VNTrackOpticalFlowRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNTrackOpticalFlowRequestConfiguration;
  result = [(VNStatefulRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_computationAccuracy = 1;
    result->_outputPixelFormat = 843264102;
    result->_keepNetworkOutput = 0;
  }

  return result;
}

@end