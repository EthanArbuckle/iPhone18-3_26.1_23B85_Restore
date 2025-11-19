@interface HKClinicalAccount
- (HKClinicalAccount)initWithDaemonClinicalAccount:(id)a3;
@end

@implementation HKClinicalAccount

- (HKClinicalAccount)initWithDaemonClinicalAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 hkState];
  v28 = [v3 hkClinicalAccountProvenance];
  v5 = [v28 gateway];
  v6 = [v5 clinicalSharingGatewayFeature];

  if (v6)
  {
    v7 = [v6 status];
  }

  else
  {
    v7 = 0;
  }

  v8 = [HKClinicalSharingStatus clinicalSharingFeatureStatusWithAccountState:v4 gatewayFeatureStatus:v7];
  v9 = [v3 clinicalSharingStatus];
  v27 = [v9 clinicalSharingStatusWithFeatureStatus:v8];

  v10 = [v3 credential];
  v11 = [v10 scopes];
  v12 = [v11 count];

  v30 = v6;
  v26 = v4;
  if (v12)
  {
    v13 = [v3 credential];
    v14 = [v13 scopes];
    v15 = [HKOAuth2ScopeSet scopeSetWithScopes:v14];

    v16 = [v15 hasClinicalSharingScopes];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v3 identifier];
  v18 = [v3 isUserEnabled];
  v19 = [v3 lastFetchDate];
  v20 = [v3 lastFullFetchDate];
  v21 = [v3 lastFailedFetchDate];
  v22 = [v3 failedFetchAttemptsCount];
  LOBYTE(v25) = v16;
  v23 = [(HKClinicalAccount *)self initWithIdentifier:v17 state:v26 userEnabled:v18 lastFetchDate:v19 lastFullFetchDate:v20 lastFailedFetchDate:v21 failedFetchAttemptsCount:v22 clinicalSharingStatus:v27 hasClinicalSharingScopes:v25 provenance:v28];

  return v23;
}

@end