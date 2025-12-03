@interface FMCellMapCongestionMetric
- (FMCellMapCongestionMetric)initWithTimestamp:(id)timestamp subscriptionID:(id)d band:(id)band frequency:(id)frequency gci:(id)gci pci:(id)pci rat:(id)rat scs:(id)self0 connDuration:(id)self1 totalDuration:(id)self2 dlCongestionCount:(id)self3 ulCongestionCount:(id)self4 l1MitigationCount:(id)self5;
@end

@implementation FMCellMapCongestionMetric

- (FMCellMapCongestionMetric)initWithTimestamp:(id)timestamp subscriptionID:(id)d band:(id)band frequency:(id)frequency gci:(id)gci pci:(id)pci rat:(id)rat scs:(id)self0 connDuration:(id)self1 totalDuration:(id)self2 dlCongestionCount:(id)self3 ulCongestionCount:(id)self4 l1MitigationCount:(id)self5
{
  timestampCopy = timestamp;
  dCopy = d;
  bandCopy = band;
  frequencyCopy = frequency;
  gciCopy = gci;
  pciCopy = pci;
  ratCopy = rat;
  scsCopy = scs;
  durationCopy = duration;
  totalDurationCopy = totalDuration;
  countCopy = count;
  congestionCountCopy = congestionCount;
  mitigationCountCopy = mitigationCount;
  v61.receiver = self;
  v61.super_class = FMCellMapCongestionMetric;
  v28 = [(FMCellMapCongestionMetric *)&v61 init];
  timestamp = v28->_timestamp;
  v28->_timestamp = timestampCopy;
  v56 = timestampCopy;

  subscriptionID = v28->_subscriptionID;
  v28->_subscriptionID = dCopy;
  v54 = dCopy;

  band = v28->_band;
  v28->_band = bandCopy;
  v52 = bandCopy;

  frequency = v28->_frequency;
  v28->_frequency = frequencyCopy;
  v51 = frequencyCopy;

  gci = v28->_gci;
  v28->_gci = gciCopy;
  v34 = gciCopy;

  pci = v28->_pci;
  v28->_pci = pciCopy;
  v36 = pciCopy;

  rat = v28->_rat;
  v28->_rat = ratCopy;
  v38 = ratCopy;

  scs = v28->_scs;
  v28->_scs = scsCopy;
  v40 = scsCopy;

  connDuration = v28->_connDuration;
  v28->_connDuration = durationCopy;
  v42 = durationCopy;

  totalDuration = v28->_totalDuration;
  v28->_totalDuration = totalDurationCopy;
  v44 = totalDurationCopy;

  dlCongestionCount = v28->_dlCongestionCount;
  v28->_dlCongestionCount = countCopy;
  v46 = countCopy;

  ulCongestionCount = v28->_ulCongestionCount;
  v28->_ulCongestionCount = congestionCountCopy;
  v48 = congestionCountCopy;

  l1MitigationCount = v28->_l1MitigationCount;
  v28->_l1MitigationCount = mitigationCountCopy;

  return v28;
}

@end