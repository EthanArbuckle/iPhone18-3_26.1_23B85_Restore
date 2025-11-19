@interface VNSceneClassificationRequestConfiguration
- (VNSceneClassificationRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation VNSceneClassificationRequestConfiguration

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v10.receiver = self;
  v10.super_class = VNSceneClassificationRequestConfiguration;
  v4 = [(VNRequestConfiguration *)&v10 description];
  [v3 appendString:v4];

  v5 = [(VNSceneClassificationRequestConfiguration *)self sceneObservation];
  v6 = v5;
  if (v5)
  {
    [v3 appendFormat:@" %@", v5];
  }

  [v3 appendFormat:@" leaf=%lu hierarchy=%lu", -[VNSceneClassificationRequestConfiguration maximumLeafObservations](self, "maximumLeafObservations"), -[VNSceneClassificationRequestConfiguration maximumHierarchicalObservations](self, "maximumHierarchicalObservations")];
  v7 = [(VNSceneClassificationRequestConfiguration *)self customHierarchy];
  v8 = v7;
  if (v7)
  {
    [v3 appendFormat:@" %@", v7];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNSceneClassificationRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setSceneObservation:self->_sceneObservation];
    [v5 setCustomHierarchy:self->_customHierarchy];
    [v5 setMaximumLeafObservations:self->_maximumLeafObservations];
    [v5 setMaximumHierarchicalObservations:self->_maximumHierarchicalObservations];
  }

  return v5;
}

- (VNSceneClassificationRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNSceneClassificationRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_maximumLeafObservations = 5;
    result->_maximumHierarchicalObservations = 5;
  }

  return result;
}

@end