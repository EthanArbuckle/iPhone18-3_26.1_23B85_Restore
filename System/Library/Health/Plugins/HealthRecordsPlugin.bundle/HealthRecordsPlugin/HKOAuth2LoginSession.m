@interface HKOAuth2LoginSession
+ (id)newLoginSessionWithGateway:(id)a3 error:(id *)a4;
@end

@implementation HKOAuth2LoginSession

+ (id)newLoginSessionWithGateway:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 authorizeSchemaWithError:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 currentScopeStringWithError:a4];
    if (v9)
    {
      v10 = [v6 authenticationInformation];
      v11 = [v10 PKCEAlgorithm];
      v12 = [a1 generatePKCEVerifierWithAlgorithm:v11];
      if (v12)
      {
        v41 = 0;
        v13 = [a1 generatePKCEChallengeFromVerifier:v12 algorithm:v11 error:&v41];
        v14 = v41;
        v40 = v13;
        if (!v13)
        {
          _HKInitializeLogging();
          v15 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            sub_9CA18(v15, a1, v14);
          }

          v12 = 0;
        }
      }

      else
      {
        v40 = 0;
      }

      v17 = [v8 query];
      v18 = [v17 hk_firstObjectPassingTest:&stru_105D28];

      v19 = [v18 literal];

      if (v19)
      {
        v20 = [v18 literal];
        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = &stru_1090E8;
        }

        v23 = [NSURLComponents componentsWithString:v22];

        if (v23)
        {
          v38 = v23;
          v39 = v9;
          v24 = +[NSUUID UUID];
          v42[0] = HKFHIREndpointSchemaVariableState;
          v37 = v24;
          v25 = [v24 UUIDString];
          v26 = v25;
          v27 = v40;
          if (!v40)
          {
            v27 = &stru_1090E8;
          }

          v43[0] = v25;
          v43[1] = v27;
          v42[1] = HKFHIREndpointSchemaVariablePKCEChallenge;
          v42[2] = HKFHIREndpointSchemaVariableClientID;
          v28 = [v10 clientID];
          v29 = v28;
          if (v28)
          {
            v30 = v28;
          }

          else
          {
            v30 = &stru_1090E8;
          }

          v43[2] = v30;
          v31 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];

          v32 = v10;
          v33 = [v8 createURLWithBindings:v31 queryMode:0 authentication:v10 error:a4];
          if (v33)
          {
            v34 = [a1 alloc];
            v35 = v37;
            v23 = v38;
            v16 = [v34 initWithState:v37 loginURL:v33 callbackURLComponents:v38 requestedScope:v39 pkceVerifier:v12];
          }

          else
          {
            v16 = 0;
            v35 = v37;
            v23 = v38;
          }

          v10 = v32;
          v9 = v39;
        }

        else
        {
          v35 = [v18 literal];
          v31 = HKSensitiveLogItem();
          [NSError hk_assignError:a4 code:100 format:@"Redirect URL string <%@> could not be parsed into NSURLComponents", v31];
          v16 = 0;
        }
      }

      else
      {
        [NSError hk_assignError:a4 code:100 description:@"Authorization schema has no redirect URL or no “literal” value"];
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end