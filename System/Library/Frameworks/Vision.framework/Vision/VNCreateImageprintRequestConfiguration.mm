@interface VNCreateImageprintRequestConfiguration
- (VNCreateImageprintRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNCreateImageprintRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNCreateImageprintRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setTimeStamp:self->_timeStamp];
  }

  return v5;
}

- (VNCreateImageprintRequestConfiguration)initWithRequestClass:(Class)class
{
  v7.receiver = self;
  v7.super_class = VNCreateImageprintRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v7 initWithRequestClass:class];
  v4 = v3;
  if (v3)
  {
    timeStamp = v3->_timeStamp;
    v3->_timeStamp = &unk_1F19C1600;
  }

  return v4;
}

@end