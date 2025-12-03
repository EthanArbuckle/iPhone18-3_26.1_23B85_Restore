@interface OOSRecoveryMetricCellInfo
- (OOSRecoveryMetricCellInfo)initWithTimestamp:(unint64_t)timestamp rat:(id)rat tacOrLac:(id)lac gci:(id)gci band:(id)band;
- (id)description;
@end

@implementation OOSRecoveryMetricCellInfo

- (OOSRecoveryMetricCellInfo)initWithTimestamp:(unint64_t)timestamp rat:(id)rat tacOrLac:(id)lac gci:(id)gci band:(id)band
{
  ratCopy = rat;
  lacCopy = lac;
  gciCopy = gci;
  bandCopy = band;
  v21.receiver = self;
  v21.super_class = OOSRecoveryMetricCellInfo;
  v17 = [(OOSRecoveryMetricCellInfo *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_timestamp = timestamp;
    objc_storeStrong(&v17->_rat, rat);
    objc_storeStrong(&v18->_tacOrLac, lac);
    objc_storeStrong(&v18->_gci, gci);
    objc_storeStrong(&v18->_band, band);
    v19 = v18;
  }

  return v18;
}

- (id)description
{
  timestamp = [(OOSRecoveryMetricCellInfo *)self timestamp];
  v4 = [(OOSRecoveryMetricCellInfo *)self rat];
  band = [(OOSRecoveryMetricCellInfo *)self band];
  v6 = [NSString stringWithFormat:@"timestamp %llu, rat %@, band %@", timestamp, v4, band];

  return v6;
}

@end