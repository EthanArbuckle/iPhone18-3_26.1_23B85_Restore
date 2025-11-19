@interface FMCellMapCongestionMetric
- (FMCellMapCongestionMetric)initWithTimestamp:(id)a3 subscriptionID:(id)a4 band:(id)a5 frequency:(id)a6 gci:(id)a7 pci:(id)a8 rat:(id)a9 scs:(id)a10 connDuration:(id)a11 totalDuration:(id)a12 dlCongestionCount:(id)a13 ulCongestionCount:(id)a14 l1MitigationCount:(id)a15;
@end

@implementation FMCellMapCongestionMetric

- (FMCellMapCongestionMetric)initWithTimestamp:(id)a3 subscriptionID:(id)a4 band:(id)a5 frequency:(id)a6 gci:(id)a7 pci:(id)a8 rat:(id)a9 scs:(id)a10 connDuration:(id)a11 totalDuration:(id)a12 dlCongestionCount:(id)a13 ulCongestionCount:(id)a14 l1MitigationCount:(id)a15
{
  v55 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v57 = a9;
  v58 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v60 = a14;
  v59 = a15;
  v61.receiver = self;
  v61.super_class = FMCellMapCongestionMetric;
  v28 = [(FMCellMapCongestionMetric *)&v61 init];
  timestamp = v28->_timestamp;
  v28->_timestamp = v55;
  v56 = v55;

  subscriptionID = v28->_subscriptionID;
  v28->_subscriptionID = v20;
  v54 = v20;

  band = v28->_band;
  v28->_band = v21;
  v52 = v21;

  frequency = v28->_frequency;
  v28->_frequency = v22;
  v51 = v22;

  gci = v28->_gci;
  v28->_gci = v23;
  v34 = v23;

  pci = v28->_pci;
  v28->_pci = v24;
  v36 = v24;

  rat = v28->_rat;
  v28->_rat = v57;
  v38 = v57;

  scs = v28->_scs;
  v28->_scs = v58;
  v40 = v58;

  connDuration = v28->_connDuration;
  v28->_connDuration = v25;
  v42 = v25;

  totalDuration = v28->_totalDuration;
  v28->_totalDuration = v26;
  v44 = v26;

  dlCongestionCount = v28->_dlCongestionCount;
  v28->_dlCongestionCount = v27;
  v46 = v27;

  ulCongestionCount = v28->_ulCongestionCount;
  v28->_ulCongestionCount = v60;
  v48 = v60;

  l1MitigationCount = v28->_l1MitigationCount;
  v28->_l1MitigationCount = v59;

  return v28;
}

@end