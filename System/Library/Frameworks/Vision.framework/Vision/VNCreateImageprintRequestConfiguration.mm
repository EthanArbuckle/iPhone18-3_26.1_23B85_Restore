@interface VNCreateImageprintRequestConfiguration
- (VNCreateImageprintRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNCreateImageprintRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNCreateImageprintRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setTimeStamp:self->_timeStamp];
  }

  return v5;
}

- (VNCreateImageprintRequestConfiguration)initWithRequestClass:(Class)a3
{
  v7.receiver = self;
  v7.super_class = VNCreateImageprintRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v7 initWithRequestClass:a3];
  v4 = v3;
  if (v3)
  {
    timeStamp = v3->_timeStamp;
    v3->_timeStamp = &unk_1F19C1600;
  }

  return v4;
}

@end