@interface MTRCameraAVStreamManagementClusterVideoSensorParamsStruct
- (MTRCameraAVStreamManagementClusterVideoSensorParamsStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterVideoSensorParamsStruct

- (MTRCameraAVStreamManagementClusterVideoSensorParamsStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRCameraAVStreamManagementClusterVideoSensorParamsStruct;
  v2 = [(MTRCameraAVStreamManagementClusterVideoSensorParamsStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    sensorWidth = v2->_sensorWidth;
    v2->_sensorWidth = &unk_284C3E588;

    sensorHeight = v3->_sensorHeight;
    v3->_sensorHeight = &unk_284C3E588;

    maxFPS = v3->_maxFPS;
    v3->_maxFPS = &unk_284C3E588;

    maxHDRFPS = v3->_maxHDRFPS;
    v3->_maxHDRFPS = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoSensorParamsStruct);
  v5 = [(MTRCameraAVStreamManagementClusterVideoSensorParamsStruct *)self sensorWidth];
  [(MTRCameraAVStreamManagementClusterVideoSensorParamsStruct *)v4 setSensorWidth:v5];

  v6 = [(MTRCameraAVStreamManagementClusterVideoSensorParamsStruct *)self sensorHeight];
  [(MTRCameraAVStreamManagementClusterVideoSensorParamsStruct *)v4 setSensorHeight:v6];

  v7 = [(MTRCameraAVStreamManagementClusterVideoSensorParamsStruct *)self maxFPS];
  [(MTRCameraAVStreamManagementClusterVideoSensorParamsStruct *)v4 setMaxFPS:v7];

  v8 = [(MTRCameraAVStreamManagementClusterVideoSensorParamsStruct *)self maxHDRFPS];
  [(MTRCameraAVStreamManagementClusterVideoSensorParamsStruct *)v4 setMaxHDRFPS:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: sensorWidth:%@ sensorHeight:%@; maxFPS:%@; maxHDRFPS:%@; >", v5, self->_sensorWidth, self->_sensorHeight, self->_maxFPS, self->_maxHDRFPS];;

  return v6;
}

@end