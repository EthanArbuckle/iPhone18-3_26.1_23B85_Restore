@interface AVLookupableSpatialVideoConfiguration
- (AVLookupableSpatialVideoConfiguration)initWithSpatialVideoConfiguration:(id)configuration;
- (void)dealloc;
@end

@implementation AVLookupableSpatialVideoConfiguration

- (AVLookupableSpatialVideoConfiguration)initWithSpatialVideoConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = AVLookupableSpatialVideoConfiguration;
  v4 = [(AVLookupableSpatialVideoConfiguration *)&v6 init];
  if (v4)
  {
    v4->_spatialVideoConfiguration = configuration;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVLookupableSpatialVideoConfiguration;
  [(AVLookupableSpatialVideoConfiguration *)&v3 dealloc];
}

@end