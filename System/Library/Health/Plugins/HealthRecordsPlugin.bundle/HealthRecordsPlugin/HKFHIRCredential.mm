@interface HKFHIRCredential
+ (id)from:(id)from requestedScope:(id)scope;
- (HDFHIRAuthResponse)asAuthResponse;
- (HKFHIRCredential)credentialWithPopulatedAccessTokenWithError:(id *)error;
- (id)createCredentialWithIdentifier:(id)identifier error:(id *)error;
@end

@implementation HKFHIRCredential

+ (id)from:(id)from requestedScope:(id)scope
{
  scopeCopy = scope;
  fromCopy = from;
  v7 = [HKFHIRCredential alloc];
  accessToken = [fromCopy accessToken];
  refreshToken = [fromCopy refreshToken];
  patientID = [fromCopy patientID];
  expiration = [fromCopy expiration];
  scope = [fromCopy scope];

  v13 = [v7 initWithAccessToken:accessToken refreshToken:refreshToken patientID:patientID expiration:expiration requestedScopeString:scopeCopy scopeString:scope];

  return v13;
}

- (HDFHIRAuthResponse)asAuthResponse
{
  v3 = [HDFHIRAuthResponse alloc];
  accessToken = [(HKFHIRCredential *)self accessToken];
  refreshToken = [(HKFHIRCredential *)self refreshToken];
  patientID = [(HKFHIRCredential *)self patientID];
  expiration = [(HKFHIRCredential *)self expiration];
  scopeString = [(HKFHIRCredential *)self scopeString];
  v9 = [v3 initWithAccessToken:accessToken refreshToken:refreshToken patientID:patientID expiration:expiration scope:scopeString];

  return v9;
}

- (id)createCredentialWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    identifierCopy = +[NSUUID UUID];
  }

  v7 = [HDFHIRCredential alloc];
  requestedScopeString = [(HKFHIRCredential *)self requestedScopeString];
  expiration = [(HKFHIRCredential *)self expiration];
  scopeString = [(HKFHIRCredential *)self scopeString];
  patientID = [(HKFHIRCredential *)self patientID];
  v12 = [(HDFHIRCredential *)v7 initWithIdentifier:identifierCopy requestedScopeString:requestedScopeString expiration:expiration scopeString:scopeString patientID:patientID];

  accessToken = [(HKFHIRCredential *)self accessToken];
  LODWORD(expiration) = [(HDFHIRCredential *)v12 storeAccessToken:accessToken error:error];

  if (expiration)
  {
    refreshToken = [(HKFHIRCredential *)self refreshToken];
    v15 = [(HDFHIRCredential *)v12 storeRefreshToken:refreshToken error:error];

    if (v15)
    {
      v16 = v12;
      goto LABEL_11;
    }

    v21 = 0;
    v17 = [(HDFHIRCredential *)v12 storeAccessToken:0 error:&v21];
    v18 = v21;
    if ((v17 & 1) == 0)
    {
      _HKInitializeLogging();
      v19 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9F874(v18, v19);
      }
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (HKFHIRCredential)credentialWithPopulatedAccessTokenWithError:(id *)error
{
  accessToken = [(HKFHIRCredential *)self accessToken];

  if (accessToken)
  {
    refreshToken = [(HKFHIRCredential *)self refreshToken];

    if (!refreshToken)
    {
      _HKInitializeLogging();
      v7 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [(HKFHIRCredential *)self debugDescription];
        v12 = 138543362;
        v13 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ no refresh token is present, will not be able to refresh the access token", &v12, 0xCu);
      }
    }

    selfCopy = self;
  }

  else
  {
    [NSError hk_assignError:error code:118 description:@"credential does not have an access token"];
    selfCopy = 0;
  }

  return selfCopy;
}

@end