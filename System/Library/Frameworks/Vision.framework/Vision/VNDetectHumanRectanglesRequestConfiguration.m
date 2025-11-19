@interface VNDetectHumanRectanglesRequestConfiguration
- (VNDetectHumanRectanglesRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNDetectHumanRectanglesRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNDetectHumanRectanglesRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setUpperBodyOnly:self->_upperBodyOnly];
  }

  return v5;
}

- (VNDetectHumanRectanglesRequestConfiguration)initWithRequestClass:(Class)a3
{
  v7.receiver = self;
  v7.super_class = VNDetectHumanRectanglesRequestConfiguration;
  v3 = [(VNImageBasedRequestConfiguration *)&v7 initWithRequestClass:a3];
  v4 = v3;
  if (v3)
  {
    v3->_upperBodyOnly = 1;
    v5 = v3;
  }

  return v4;
}

@end