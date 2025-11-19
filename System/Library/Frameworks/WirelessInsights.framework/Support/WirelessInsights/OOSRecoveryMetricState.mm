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

  v4 = [(OOSRecoveryMetricState *)self registrationState];
  v5 = [(OOSRecoveryMetricState *)self cellInfo];
  v6 = [(OOSRecoveryMetricState *)self oosStart];
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

  v9 = [(OOSRecoveryMetricState *)self knownOosTacs];
  v10 = [v9 count];
  v11 = [(OOSRecoveryMetricState *)self knownOosGcis];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"isDataContext %@, registrationState %@, cellInfo %@, oosStart %@, knownOosTacsSizeLimited %@, knownGcisSizeLimited %@, knownOosTacs %lu, knownOosGcis %lu", v3, v4, v5, v6, v7, v8, v10, [v11 count]);

  return v12;
}

@end