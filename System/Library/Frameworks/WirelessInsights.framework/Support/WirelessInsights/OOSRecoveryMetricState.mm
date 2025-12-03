@interface OOSRecoveryMetricState
- (id)description;
@end

@implementation OOSRecoveryMetricState

- (id)description
{
  if ([(OOSRecoveryMetricState *)self isDataContext])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  registrationState = [(OOSRecoveryMetricState *)self registrationState];
  cellInfo = [(OOSRecoveryMetricState *)self cellInfo];
  oosStart = [(OOSRecoveryMetricState *)self oosStart];
  if ([(OOSRecoveryMetricState *)self knownOosTacsSizeLimited])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(OOSRecoveryMetricState *)self knownOosGcisSizeLimited])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  knownOosTacs = [(OOSRecoveryMetricState *)self knownOosTacs];
  v10 = [knownOosTacs count];
  knownOosGcis = [(OOSRecoveryMetricState *)self knownOosGcis];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"isDataContext %@, registrationState %@, cellInfo %@, oosStart %@, knownOosTacsSizeLimited %@, knownGcisSizeLimited %@, knownOosTacs %lu, knownOosGcis %lu", v3, registrationState, cellInfo, oosStart, v7, v8, v10, [knownOosGcis count]);

  return v12;
}

@end