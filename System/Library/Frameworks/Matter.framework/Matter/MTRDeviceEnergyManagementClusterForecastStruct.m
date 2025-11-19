@interface MTRDeviceEnergyManagementClusterForecastStruct
- (MTRDeviceEnergyManagementClusterForecastStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDeviceEnergyManagementClusterForecastStruct

- (MTRDeviceEnergyManagementClusterForecastStruct)init
{
  v15.receiver = self;
  v15.super_class = MTRDeviceEnergyManagementClusterForecastStruct;
  v2 = [(MTRDeviceEnergyManagementClusterForecastStruct *)&v15 init];
  v3 = v2;
  if (v2)
  {
    forecastID = v2->_forecastID;
    v2->_forecastID = &unk_284C3E588;

    activeSlotNumber = v3->_activeSlotNumber;
    v3->_activeSlotNumber = 0;

    startTime = v3->_startTime;
    v3->_startTime = &unk_284C3E588;

    endTime = v3->_endTime;
    v3->_endTime = &unk_284C3E588;

    earliestStartTime = v3->_earliestStartTime;
    v3->_earliestStartTime = 0;

    latestEndTime = v3->_latestEndTime;
    v3->_latestEndTime = 0;

    isPausable = v3->_isPausable;
    v3->_isPausable = &unk_284C3E588;

    v11 = [MEMORY[0x277CBEA60] array];
    slots = v3->_slots;
    v3->_slots = v11;

    forecastUpdateReason = v3->_forecastUpdateReason;
    v3->_forecastUpdateReason = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDeviceEnergyManagementClusterForecastStruct);
  v5 = [(MTRDeviceEnergyManagementClusterForecastStruct *)self forecastID];
  [(MTRDeviceEnergyManagementClusterForecastStruct *)v4 setForecastID:v5];

  v6 = [(MTRDeviceEnergyManagementClusterForecastStruct *)self activeSlotNumber];
  [(MTRDeviceEnergyManagementClusterForecastStruct *)v4 setActiveSlotNumber:v6];

  v7 = [(MTRDeviceEnergyManagementClusterForecastStruct *)self startTime];
  [(MTRDeviceEnergyManagementClusterForecastStruct *)v4 setStartTime:v7];

  v8 = [(MTRDeviceEnergyManagementClusterForecastStruct *)self endTime];
  [(MTRDeviceEnergyManagementClusterForecastStruct *)v4 setEndTime:v8];

  v9 = [(MTRDeviceEnergyManagementClusterForecastStruct *)self earliestStartTime];
  [(MTRDeviceEnergyManagementClusterForecastStruct *)v4 setEarliestStartTime:v9];

  v10 = [(MTRDeviceEnergyManagementClusterForecastStruct *)self latestEndTime];
  [(MTRDeviceEnergyManagementClusterForecastStruct *)v4 setLatestEndTime:v10];

  v11 = [(MTRDeviceEnergyManagementClusterForecastStruct *)self isPausable];
  [(MTRDeviceEnergyManagementClusterForecastStruct *)v4 setIsPausable:v11];

  v12 = [(MTRDeviceEnergyManagementClusterForecastStruct *)self slots];
  [(MTRDeviceEnergyManagementClusterForecastStruct *)v4 setSlots:v12];

  v13 = [(MTRDeviceEnergyManagementClusterForecastStruct *)self forecastUpdateReason];
  [(MTRDeviceEnergyManagementClusterForecastStruct *)v4 setForecastUpdateReason:v13];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: forecastID:%@ activeSlotNumber:%@; startTime:%@; endTime:%@; earliestStartTime:%@; latestEndTime:%@; isPausable:%@; slots:%@; forecastUpdateReason:%@; >", v5, self->_forecastID, self->_activeSlotNumber, self->_startTime, self->_endTime, self->_earliestStartTime, self->_latestEndTime, self->_isPausable, self->_slots, self->_forecastUpdateReason];;

  return v6;
}

@end