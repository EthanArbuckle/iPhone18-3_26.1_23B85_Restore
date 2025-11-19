@interface OOSRecoveryMetricOOSStartState
- (OOSRecoveryMetricOOSStartState)initWithTimestamp:(unint64_t)a3 registrationState:(id)a4 cellInfo:(id)a5;
- (id)description;
@end

@implementation OOSRecoveryMetricOOSStartState

- (OOSRecoveryMetricOOSStartState)initWithTimestamp:(unint64_t)a3 registrationState:(id)a4 cellInfo:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = OOSRecoveryMetricOOSStartState;
  v11 = [(OOSRecoveryMetricOOSStartState *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_timestamp = a3;
    objc_storeStrong(&v11->_registrationState, a4);
    objc_storeStrong(&v12->_cellInfo, a5);
    v13 = v12;
  }

  return v12;
}

- (id)description
{
  v3 = [(OOSRecoveryMetricOOSStartState *)self timestamp];
  v4 = [(OOSRecoveryMetricOOSStartState *)self registrationState];
  v5 = [(OOSRecoveryMetricOOSStartState *)self cellInfo];
  v6 = [NSString stringWithFormat:@"timestamp %llu, registrationState %@, cellInfo %@", v3, v4, v5];

  return v6;
}

@end