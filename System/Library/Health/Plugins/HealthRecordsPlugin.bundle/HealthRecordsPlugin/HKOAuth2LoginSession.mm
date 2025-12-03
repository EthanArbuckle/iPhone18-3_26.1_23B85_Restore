@interface HKOAuth2LoginSession
+ (id)newLoginSessionWithGateway:(id)gateway error:(id *)error;
@end

@implementation HKOAuth2LoginSession

+ (id)newLoginSessionWithGateway:(id)gateway error:(id *)error
{
  gatewayCopy = gateway;
  v7 = [gatewayCopy authorizeSchemaWithError:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 currentScopeStringWithError:error];
    if (v9)
    {
      authenticationInformation = [gatewayCopy authenticationInformation];
      pKCEAlgorithm = [authenticationInformation PKCEAlgorithm];
      v12 = [self generatePKCEVerifierWithAlgorithm:pKCEAlgorithm];
      if (v12)
      {
        v41 = 0;
        v13 = [self generatePKCEChallengeFromVerifier:v12 algorithm:pKCEAlgorithm error:&v41];
        v14 = v41;
        v40 = v13;
        if (!v13)
        {
          _HKInitializeLogging();
          v15 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            sub_9CA18(v15, self, v14);
          }

          v12 = 0;
        }
      }

      else
      {
        v40 = 0;
      }

      query = [v8 query];
      v18 = [query hk_firstObjectPassingTest:&stru_105D28];

      literal = [v18 literal];

      if (literal)
      {
        literal2 = [v18 literal];
        v21 = literal2;
        if (literal2)
        {
          v22 = literal2;
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
          uUIDString = [v24 UUIDString];
          v26 = uUIDString;
          v27 = v40;
          if (!v40)
          {
            v27 = &stru_1090E8;
          }

          v43[0] = uUIDString;
          v43[1] = v27;
          v42[1] = HKFHIREndpointSchemaVariablePKCEChallenge;
          v42[2] = HKFHIREndpointSchemaVariableClientID;
          clientID = [authenticationInformation clientID];
          v29 = clientID;
          if (clientID)
          {
            v30 = clientID;
          }

          else
          {
            v30 = &stru_1090E8;
          }

          v43[2] = v30;
          v31 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];

          v32 = authenticationInformation;
          v33 = [v8 createURLWithBindings:v31 queryMode:0 authentication:authenticationInformation error:error];
          if (v33)
          {
            v34 = [self alloc];
            literal3 = v37;
            v23 = v38;
            v16 = [v34 initWithState:v37 loginURL:v33 callbackURLComponents:v38 requestedScope:v39 pkceVerifier:v12];
          }

          else
          {
            v16 = 0;
            literal3 = v37;
            v23 = v38;
          }

          authenticationInformation = v32;
          v9 = v39;
        }

        else
        {
          literal3 = [v18 literal];
          v31 = HKSensitiveLogItem();
          [NSError hk_assignError:error code:100 format:@"Redirect URL string <%@> could not be parsed into NSURLComponents", v31];
          v16 = 0;
        }
      }

      else
      {
        [NSError hk_assignError:error code:100 description:@"Authorization schema has no redirect URL or no “literal” value"];
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