@interface MTRCameraAVSettingsUserLevelManagementClusterDPTZStruct
- (MTRCameraAVSettingsUserLevelManagementClusterDPTZStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCameraAVSettingsUserLevelManagementClusterDPTZStruct

- (MTRCameraAVSettingsUserLevelManagementClusterDPTZStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRCameraAVSettingsUserLevelManagementClusterDPTZStruct;
  v2 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    videoStreamID = v2->_videoStreamID;
    v2->_videoStreamID = &unk_284C3E588;

    v5 = objc_opt_new();
    viewport = v3->_viewport;
    v3->_viewport = v5;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCameraAVSettingsUserLevelManagementClusterDPTZStruct);
  v5 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZStruct *)self videoStreamID];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZStruct *)v4 setVideoStreamID:v5];

  v6 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZStruct *)self viewport];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZStruct *)v4 setViewport:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: videoStreamID:%@ viewport:%@; >", v5, self->_videoStreamID, self->_viewport];;

  return v6;
}

@end