@interface HKFHIRCredential
+ (id)from:(id)a3 requestedScope:(id)a4;
- (HDFHIRAuthResponse)asAuthResponse;
- (HKFHIRCredential)credentialWithPopulatedAccessTokenWithError:(id *)a3;
- (id)createCredentialWithIdentifier:(id)a3 error:(id *)a4;
@end

@implementation HKFHIRCredential

+ (id)from:(id)a3 requestedScope:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [HKFHIRCredential alloc];
  v8 = [v6 accessToken];
  v9 = [v6 refreshToken];
  v10 = [v6 patientID];
  v11 = [v6 expiration];
  v12 = [v6 scope];

  v13 = [v7 initWithAccessToken:v8 refreshToken:v9 patientID:v10 expiration:v11 requestedScopeString:v5 scopeString:v12];

  return v13;
}

- (HDFHIRAuthResponse)asAuthResponse
{
  v3 = [HDFHIRAuthResponse alloc];
  v4 = [(HKFHIRCredential *)self accessToken];
  v5 = [(HKFHIRCredential *)self refreshToken];
  v6 = [(HKFHIRCredential *)self patientID];
  v7 = [(HKFHIRCredential *)self expiration];
  v8 = [(HKFHIRCredential *)self scopeString];
  v9 = [v3 initWithAccessToken:v4 refreshToken:v5 patientID:v6 expiration:v7 scope:v8];

  return v9;
}

- (id)createCredentialWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v6 = +[NSUUID UUID];
  }

  v7 = [HDFHIRCredential alloc];
  v8 = [(HKFHIRCredential *)self requestedScopeString];
  v9 = [(HKFHIRCredential *)self expiration];
  v10 = [(HKFHIRCredential *)self scopeString];
  v11 = [(HKFHIRCredential *)self patientID];
  v12 = [(HDFHIRCredential *)v7 initWithIdentifier:v6 requestedScopeString:v8 expiration:v9 scopeString:v10 patientID:v11];

  v13 = [(HKFHIRCredential *)self accessToken];
  LODWORD(v9) = [(HDFHIRCredential *)v12 storeAccessToken:v13 error:a4];

  if (v9)
  {
    v14 = [(HKFHIRCredential *)self refreshToken];
    v15 = [(HDFHIRCredential *)v12 storeRefreshToken:v14 error:a4];

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

- (HKFHIRCredential)credentialWithPopulatedAccessTokenWithError:(id *)a3
{
  v5 = [(HKFHIRCredential *)self accessToken];

  if (v5)
  {
    v6 = [(HKFHIRCredential *)self refreshToken];

    if (!v6)
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

    v10 = self;
  }

  else
  {
    [NSError hk_assignError:a3 code:118 description:@"credential does not have an access token"];
    v10 = 0;
  }

  return v10;
}

@end