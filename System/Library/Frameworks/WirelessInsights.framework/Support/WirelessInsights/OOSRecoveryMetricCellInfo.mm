@interface OOSRecoveryMetricCellInfo
- (OOSRecoveryMetricCellInfo)initWithTimestamp:(unint64_t)a3 rat:(id)a4 tacOrLac:(id)a5 gci:(id)a6 band:(id)a7;
- (id)description;
@end

@implementation OOSRecoveryMetricCellInfo

- (OOSRecoveryMetricCellInfo)initWithTimestamp:(unint64_t)a3 rat:(id)a4 tacOrLac:(id)a5 gci:(id)a6 band:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = OOSRecoveryMetricCellInfo;
  v17 = [(OOSRecoveryMetricCellInfo *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_timestamp = a3;
    objc_storeStrong(&v17->_rat, a4);
    objc_storeStrong(&v18->_tacOrLac, a5);
    objc_storeStrong(&v18->_gci, a6);
    objc_storeStrong(&v18->_band, a7);
    v19 = v18;
  }

  return v18;
}

- (id)description
{
  v3 = [(OOSRecoveryMetricCellInfo *)self timestamp];
  v4 = [(OOSRecoveryMetricCellInfo *)self rat];
  v5 = [(OOSRecoveryMetricCellInfo *)self band];
  v6 = [NSString stringWithFormat:@"timestamp %llu, rat %@, band %@", v3, v4, v5];

  return v6;
}

@end