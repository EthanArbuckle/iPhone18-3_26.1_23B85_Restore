@interface MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct
- (MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct

- (MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct;
  v2 = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    pan = v2->_pan;
    v2->_pan = 0;

    tilt = v3->_tilt;
    v3->_tilt = 0;

    zoom = v3->_zoom;
    v3->_zoom = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct);
  v5 = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct *)self pan];
  [(MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct *)v4 setPan:v5];

  tilt = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct *)self tilt];
  [(MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct *)v4 setTilt:tilt];

  zoom = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct *)self zoom];
  [(MTRCameraAVSettingsUserLevelManagementClusterMPTZStruct *)v4 setZoom:zoom];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: pan:%@ tilt:%@; zoom:%@; >", v5, self->_pan, self->_tilt, self->_zoom];;

  return v6;
}

@end