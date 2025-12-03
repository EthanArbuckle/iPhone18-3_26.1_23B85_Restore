@interface MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams
- (MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams)init;
- (MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
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

    array = [MEMORY[0x277CBEA60] array];
    listOfAttributes = v3->_listOfAttributes;
    v3->_listOfAttributes = array;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams);
  profileCount = [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)self profileCount];
  [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)v4 setProfileCount:profileCount];

  profileIntervalPeriod = [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)self profileIntervalPeriod];
  [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)v4 setProfileIntervalPeriod:profileIntervalPeriod];

  maxNumberOfIntervals = [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)self maxNumberOfIntervals];
  [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)v4 setMaxNumberOfIntervals:maxNumberOfIntervals];

  listOfAttributes = [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)self listOfAttributes];
  [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)v4 setListOfAttributes:listOfAttributes];

  timedInvokeTimeoutMs = [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)self timedInvokeTimeoutMs];
  [(MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

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