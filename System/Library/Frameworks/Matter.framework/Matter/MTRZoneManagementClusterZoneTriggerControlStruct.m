@interface MTRZoneManagementClusterZoneTriggerControlStruct
- (MTRZoneManagementClusterZoneTriggerControlStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRZoneManagementClusterZoneTriggerControlStruct

- (MTRZoneManagementClusterZoneTriggerControlStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRZoneManagementClusterZoneTriggerControlStruct;
  v2 = [(MTRZoneManagementClusterZoneTriggerControlStruct *)&v11 init];
  v3 = v2;
  if (v2)
  {
    zoneID = v2->_zoneID;
    v2->_zoneID = &unk_284C3E588;

    initialDuration = v3->_initialDuration;
    v3->_initialDuration = &unk_284C3E588;

    augmentationDuration = v3->_augmentationDuration;
    v3->_augmentationDuration = &unk_284C3E588;

    maxDuration = v3->_maxDuration;
    v3->_maxDuration = &unk_284C3E588;

    blindDuration = v3->_blindDuration;
    v3->_blindDuration = &unk_284C3E588;

    sensitivity = v3->_sensitivity;
    v3->_sensitivity = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRZoneManagementClusterZoneTriggerControlStruct);
  v5 = [(MTRZoneManagementClusterZoneTriggerControlStruct *)self zoneID];
  [(MTRZoneManagementClusterZoneTriggerControlStruct *)v4 setZoneID:v5];

  v6 = [(MTRZoneManagementClusterZoneTriggerControlStruct *)self initialDuration];
  [(MTRZoneManagementClusterZoneTriggerControlStruct *)v4 setInitialDuration:v6];

  v7 = [(MTRZoneManagementClusterZoneTriggerControlStruct *)self augmentationDuration];
  [(MTRZoneManagementClusterZoneTriggerControlStruct *)v4 setAugmentationDuration:v7];

  v8 = [(MTRZoneManagementClusterZoneTriggerControlStruct *)self maxDuration];
  [(MTRZoneManagementClusterZoneTriggerControlStruct *)v4 setMaxDuration:v8];

  v9 = [(MTRZoneManagementClusterZoneTriggerControlStruct *)self blindDuration];
  [(MTRZoneManagementClusterZoneTriggerControlStruct *)v4 setBlindDuration:v9];

  v10 = [(MTRZoneManagementClusterZoneTriggerControlStruct *)self sensitivity];
  [(MTRZoneManagementClusterZoneTriggerControlStruct *)v4 setSensitivity:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: zoneID:%@ initialDuration:%@; augmentationDuration:%@; maxDuration:%@; blindDuration:%@; sensitivity:%@; >", v5, self->_zoneID, self->_initialDuration, self->_augmentationDuration, self->_maxDuration, self->_blindDuration, self->_sensitivity];;

  return v6;
}

@end