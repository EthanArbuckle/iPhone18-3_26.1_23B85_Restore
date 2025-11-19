@interface MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct
- (MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct

- (MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct;
  v2 = [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)&v11 init];
  v3 = v2;
  if (v2)
  {
    duration = v2->_duration;
    v2->_duration = &unk_284C3E588;

    oneShot = v3->_oneShot;
    v3->_oneShot = 0;

    emergencyBoost = v3->_emergencyBoost;
    v3->_emergencyBoost = 0;

    temporarySetpoint = v3->_temporarySetpoint;
    v3->_temporarySetpoint = 0;

    targetPercentage = v3->_targetPercentage;
    v3->_targetPercentage = 0;

    targetReheat = v3->_targetReheat;
    v3->_targetReheat = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct);
  v5 = [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)self duration];
  [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)v4 setDuration:v5];

  v6 = [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)self oneShot];
  [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)v4 setOneShot:v6];

  v7 = [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)self emergencyBoost];
  [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)v4 setEmergencyBoost:v7];

  v8 = [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)self temporarySetpoint];
  [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)v4 setTemporarySetpoint:v8];

  v9 = [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)self targetPercentage];
  [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)v4 setTargetPercentage:v9];

  v10 = [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)self targetReheat];
  [(MTRWaterHeaterManagementClusterWaterHeaterBoostInfoStruct *)v4 setTargetReheat:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: duration:%@ oneShot:%@; emergencyBoost:%@; temporarySetpoint:%@; targetPercentage:%@; targetReheat:%@; >", v5, self->_duration, self->_oneShot, self->_emergencyBoost, self->_temporarySetpoint, self->_targetPercentage, self->_targetReheat];;

  return v6;
}

@end