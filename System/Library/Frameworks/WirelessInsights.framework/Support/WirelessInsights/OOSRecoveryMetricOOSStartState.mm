@interface OOSRecoveryMetricOOSStartState
- (OOSRecoveryMetricOOSStartState)initWithTimestamp:(unint64_t)timestamp registrationState:(id)state cellInfo:(id)info;
- (id)description;
@end

@implementation OOSRecoveryMetricOOSStartState

- (OOSRecoveryMetricOOSStartState)initWithTimestamp:(unint64_t)timestamp registrationState:(id)state cellInfo:(id)info
{
  stateCopy = state;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = OOSRecoveryMetricOOSStartState;
  v11 = [(OOSRecoveryMetricOOSStartState *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_timestamp = timestamp;
    objc_storeStrong(&v11->_registrationState, state);
    objc_storeStrong(&v12->_cellInfo, info);
    v13 = v12;
  }

  return v12;
}

- (id)description
{
  timestamp = [(OOSRecoveryMetricOOSStartState *)self timestamp];
  registrationState = [(OOSRecoveryMetricOOSStartState *)self registrationState];
  cellInfo = [(OOSRecoveryMetricOOSStartState *)self cellInfo];
  v6 = [NSString stringWithFormat:@"timestamp %llu, registrationState %@, cellInfo %@", timestamp, registrationState, cellInfo];

  return v6;
}

@end