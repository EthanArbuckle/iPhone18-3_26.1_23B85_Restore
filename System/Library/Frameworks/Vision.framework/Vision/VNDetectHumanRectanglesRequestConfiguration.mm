@interface VNDetectHumanRectanglesRequestConfiguration
- (VNDetectHumanRectanglesRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNDetectHumanRectanglesRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNDetectHumanRectanglesRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setUpperBodyOnly:self->_upperBodyOnly];
  }

  return v5;
}

- (VNDetectHumanRectanglesRequestConfiguration)initWithRequestClass:(Class)class
{
  v7.receiver = self;
  v7.super_class = VNDetectHumanRectanglesRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v7 initWithRequestClass:class];
  v4 = v3;
  if (v3)
  {
    v3->_upperBodyOnly = 1;
    v5 = v3;
  }

  return v4;
}

@end