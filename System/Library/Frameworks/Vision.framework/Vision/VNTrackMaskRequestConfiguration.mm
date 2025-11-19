@interface VNTrackMaskRequestConfiguration
- (VNTrackMaskRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNTrackMaskRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = VNTrackMaskRequestConfiguration;
  v4 = [(VNStatefulRequestConfiguration *)&v6 copyWithZone:a3];
  if (v4)
  {
    [v4 setGenerateCropRect:{-[VNTrackMaskRequestConfiguration generateCropRect](self, "generateCropRect")}];
  }

  return v4;
}

- (VNTrackMaskRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNTrackMaskRequestConfiguration;
  result = [(VNStatefulRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_generateCropRect = 0;
  }

  return result;
}

@end