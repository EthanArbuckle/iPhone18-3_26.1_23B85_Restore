@interface VNGenerateOpticalFlowRequestConfiguration
- (VNGenerateOpticalFlowRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNGenerateOpticalFlowRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = VNGenerateOpticalFlowRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 19) = self->_computationAccuracy;
    *(result + 37) = self->_outputPixelFormat;
    *(result + 144) = self->_keepNetworkOutput;
  }

  return result;
}

- (VNGenerateOpticalFlowRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNGenerateOpticalFlowRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_computationAccuracy = 1;
    result->_outputPixelFormat = 843264102;
    result->_keepNetworkOutput = 0;
  }

  return result;
}

@end