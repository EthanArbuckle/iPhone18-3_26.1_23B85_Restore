@interface MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams
- (MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams)init;
- (MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams

- (MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams)init
{
  v13.receiver = self;
  v13.super_class = MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams;
  v2 = [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)&v13 init];
  v3 = v2;
  if (v2)
  {
    startTime = v2->_startTime;
    v2->_startTime = &unk_284C40A48;

    status = v3->_status;
    v3->_status = &unk_284C40A48;

    profileIntervalPeriod = v3->_profileIntervalPeriod;
    v3->_profileIntervalPeriod = &unk_284C40A48;

    numberOfIntervalsDelivered = v3->_numberOfIntervalsDelivered;
    v3->_numberOfIntervalsDelivered = &unk_284C40A48;

    attributeId = v3->_attributeId;
    v3->_attributeId = &unk_284C40A48;

    v9 = [MEMORY[0x277CBEA60] array];
    intervals = v3->_intervals;
    v3->_intervals = v9;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams);
  v5 = [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)self startTime];
  [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)v4 setStartTime:v5];

  v6 = [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)self status];
  [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)v4 setStatus:v6];

  v7 = [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)self profileIntervalPeriod];
  [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)v4 setProfileIntervalPeriod:v7];

  v8 = [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)self numberOfIntervalsDelivered];
  [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)v4 setNumberOfIntervalsDelivered:v8];

  v9 = [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)self attributeId];
  [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)v4 setAttributeId:v9];

  v10 = [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)self intervals];
  [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)v4 setIntervals:v10];

  v11 = [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)self timedInvokeTimeoutMs];
  [(MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams *)v4 setTimedInvokeTimeoutMs:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: startTime:%@ status:%@; profileIntervalPeriod:%@; numberOfIntervalsDelivered:%@; attributeId:%@; intervals:%@; >", v5, self->_startTime, self->_status, self->_profileIntervalPeriod, self->_numberOfIntervalsDelivered, self->_attributeId, self->_intervals];;

  return v6;
}

- (MTRElectricalMeasurementClusterGetMeasurementProfileResponseCommandParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x302E0000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  }

  return 0;
}

@end