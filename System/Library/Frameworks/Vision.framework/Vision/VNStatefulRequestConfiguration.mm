@interface VNStatefulRequestConfiguration
- (VNStatefulRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNStatefulRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = VNStatefulRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v8 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 18, self->_requestUUID);
    epoch = self->_frameAnalysisSpacing.epoch;
    *(v5 + 19) = *&self->_frameAnalysisSpacing.value;
    v5[21] = epoch;
  }

  return v5;
}

- (VNStatefulRequestConfiguration)initWithRequestClass:(Class)class
{
  v7.receiver = self;
  v7.super_class = VNStatefulRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v7 initWithRequestClass:class];
  if (v3)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    requestUUID = v3->_requestUUID;
    v3->_requestUUID = uUID;
  }

  return v3;
}

@end