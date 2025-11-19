@interface MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams
- (MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams)init;
- (MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams

- (MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams)init
{
  v11.receiver = self;
  v11.super_class = MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams;
  v2 = [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    profileCount = v2->_profileCount;
    v2->_profileCount = &unk_284C40A48;

    profileIntervalPeriod = v3->_profileIntervalPeriod;
    v3->_profileIntervalPeriod = &unk_284C40A48;

    maxNumberOfIntervals = v3->_maxNumberOfIntervals;
    v3->_maxNumberOfIntervals = &unk_284C40A48;

    v7 = [MEMORY[0x277CBEA60] array];
    listOfAttributes = v3->_listOfAttributes;
    v3->_listOfAttributes = v7;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams);
  v5 = [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)self profileCount];
  [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)v4 setProfileCount:v5];

  v6 = [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)self profileIntervalPeriod];
  [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)v4 setProfileIntervalPeriod:v6];

  v7 = [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)self maxNumberOfIntervals];
  [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)v4 setMaxNumberOfIntervals:v7];

  v8 = [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)self listOfAttributes];
  [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)v4 setListOfAttributes:v8];

  v9 = [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)self timedInvokeTimeoutMs];
  [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)v4 setTimedInvokeTimeoutMs:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: profileCount:%@ profileIntervalPeriod:%@; maxNumberOfIntervals:%@; listOfAttributes:%@; >", v5, self->_profileCount, self->_profileIntervalPeriod, self->_maxNumberOfIntervals, self->_listOfAttributes];;

  return v6;
}

- (MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  if (error)
  {
    *error = sub_23921C1E4(MTRError, 0x2FC10000002DLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBackwardsCompatShims.mm");
  }

  return 0;
}

@end