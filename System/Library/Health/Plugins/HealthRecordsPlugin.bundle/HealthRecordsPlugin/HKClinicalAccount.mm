@interface HKClinicalAccount
- (HKClinicalAccount)initWithDaemonClinicalAccount:(id)account;
@end

@implementation HKClinicalAccount

- (HKClinicalAccount)initWithDaemonClinicalAccount:(id)account
{
  accountCopy = account;
  hkState = [accountCopy hkState];
  hkClinicalAccountProvenance = [accountCopy hkClinicalAccountProvenance];
  gateway = [hkClinicalAccountProvenance gateway];
  clinicalSharingGatewayFeature = [gateway clinicalSharingGatewayFeature];

  if (clinicalSharingGatewayFeature)
  {
    status = [clinicalSharingGatewayFeature status];
  }

  else
  {
    status = 0;
  }

  v8 = [HKClinicalSharingStatus clinicalSharingFeatureStatusWithAccountState:hkState gatewayFeatureStatus:status];
  clinicalSharingStatus = [accountCopy clinicalSharingStatus];
  v27 = [clinicalSharingStatus clinicalSharingStatusWithFeatureStatus:v8];

  credential = [accountCopy credential];
  scopes = [credential scopes];
  v12 = [scopes count];

  v30 = clinicalSharingGatewayFeature;
  v26 = hkState;
  if (v12)
  {
    credential2 = [accountCopy credential];
    scopes2 = [credential2 scopes];
    v15 = [HKOAuth2ScopeSet scopeSetWithScopes:scopes2];

    hasClinicalSharingScopes = [v15 hasClinicalSharingScopes];
  }

  else
  {
    hasClinicalSharingScopes = 0;
  }

  identifier = [accountCopy identifier];
  isUserEnabled = [accountCopy isUserEnabled];
  lastFetchDate = [accountCopy lastFetchDate];
  lastFullFetchDate = [accountCopy lastFullFetchDate];
  lastFailedFetchDate = [accountCopy lastFailedFetchDate];
  failedFetchAttemptsCount = [accountCopy failedFetchAttemptsCount];
  LOBYTE(v25) = hasClinicalSharingScopes;
  v23 = [(HKClinicalAccount *)self initWithIdentifier:identifier state:v26 userEnabled:isUserEnabled lastFetchDate:lastFetchDate lastFullFetchDate:lastFullFetchDate lastFailedFetchDate:lastFailedFetchDate failedFetchAttemptsCount:failedFetchAttemptsCount clinicalSharingStatus:v27 hasClinicalSharingScopes:v25 provenance:hkClinicalAccountProvenance];

  return v23;
}

@end