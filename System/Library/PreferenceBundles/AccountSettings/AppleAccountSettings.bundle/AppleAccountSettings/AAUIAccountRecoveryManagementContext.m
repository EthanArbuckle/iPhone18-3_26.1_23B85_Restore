@interface AAUIAccountRecoveryManagementContext
- (id)description;
@end

@implementation AAUIAccountRecoveryManagementContext

- (id)description
{
  recoveryKeyEligible = self->_recoveryKeyEligible;
  v13[0] = @"recoveryKeyEligible";
  v13[1] = @"recoveryKeyIsOn";
  v3 = @"NO";
  if (recoveryKeyEligible)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_recoveryKeyIsOn)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v14[0] = v4;
  v14[1] = v5;
  v13[2] = @"recoveryKeyURL";
  v13[3] = @"recoveryKeyHTTPMethod";
  recoveryKeyHTTPMethod = self->_recoveryKeyHTTPMethod;
  v14[2] = self->_recoveryKeyURL;
  v14[3] = recoveryKeyHTTPMethod;
  if (self->_icloudDataRecoveryShouldShowRow)
  {
    v3 = @"YES";
  }

  v13[4] = @"icloudDataRecoveryShouldShowRow";
  v13[5] = @"icloudDataRecoveryDetailsURL";
  icloudDataRecoveryDetailsURL = self->_icloudDataRecoveryDetailsURL;
  icloudDataRecoveryDetailsHTTPMethod = self->_icloudDataRecoveryDetailsHTTPMethod;
  v14[4] = v3;
  v14[5] = icloudDataRecoveryDetailsURL;
  v13[6] = @"icloudDataRecoveryDetailsHTTPMethod";
  v13[7] = @"icloudDataRecoveryReAddURL";
  icloudDataRecoveryReAddURL = self->_icloudDataRecoveryReAddURL;
  v14[6] = icloudDataRecoveryDetailsHTTPMethod;
  v14[7] = icloudDataRecoveryReAddURL;
  v15 = *&self->_icloudDataRecoveryReAddHTTPMethod;
  v13[8] = @"icloudDataRecoveryReAddHTTPMethod";
  v13[9] = @"icloudDataRecoveryRowLabel";
  v13[10] = @"learnMoreURL";
  learnMoreURL = self->_learnMoreURL;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:11];
  v11 = [v10 description];

  return v11;
}

@end