@interface VNSceneClassificationRequestConfiguration
- (VNSceneClassificationRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
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

  sceneObservation = [(VNSceneClassificationRequestConfiguration *)self sceneObservation];
  v6 = sceneObservation;
  if (sceneObservation)
  {
    [v3 appendFormat:@" %@", sceneObservation];
  }

  [v3 appendFormat:@" leaf=%lu hierarchy=%lu", -[VNSceneClassificationRequestConfiguration maximumLeafObservations](self, "maximumLeafObservations"), -[VNSceneClassificationRequestConfiguration maximumHierarchicalObservations](self, "maximumHierarchicalObservations")];
  customHierarchy = [(VNSceneClassificationRequestConfiguration *)self customHierarchy];
  v8 = customHierarchy;
  if (customHierarchy)
  {
    [v3 appendFormat:@" %@", customHierarchy];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNSceneClassificationRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:zone];
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

- (VNSceneClassificationRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNSceneClassificationRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_maximumLeafObservations = 5;
    result->_maximumHierarchicalObservations = 5;
  }

  return result;
}

@end