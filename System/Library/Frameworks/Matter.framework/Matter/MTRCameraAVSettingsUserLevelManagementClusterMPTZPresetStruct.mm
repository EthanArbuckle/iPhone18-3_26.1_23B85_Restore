@interface MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct
- (MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct

- (MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct;
  v2 = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    presetID = v2->_presetID;
    v2->_presetID = &unk_284C3E588;

    name = v3->_name;
    v3->_name = &stru_284BD0DD8;

    v6 = objc_opt_new();
    settings = v3->_settings;
    v3->_settings = v6;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct);
  presetID = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct *)self presetID];
  [(MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct *)v4 setPresetID:presetID];

  name = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct *)self name];
  [(MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct *)v4 setName:name];

  settings = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct *)self settings];
  [(MTRCameraAVSettingsUserLevelManagementClusterMPTZPresetStruct *)v4 setSettings:settings];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: presetID:%@ name:%@; settings:%@; >", v5, self->_presetID, self->_name, self->_settings];;

  return v6;
}

@end