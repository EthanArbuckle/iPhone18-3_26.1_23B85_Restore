@interface VNTrackMaskRequestConfiguration
- (VNTrackMaskRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNTrackMaskRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = VNTrackMaskRequestConfiguration;
  v4 = [(VNStatefulRequestConfiguration *)&v6 copyWithZone:zone];
  if (v4)
  {
    [v4 setGenerateCropRect:{-[VNTrackMaskRequestConfiguration generateCropRect](self, "generateCropRect")}];
  }

  return v4;
}

- (VNTrackMaskRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNTrackMaskRequestConfiguration;
  result = [(VNStatefulRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_generateCropRect = 0;
  }

  return result;
}

@end