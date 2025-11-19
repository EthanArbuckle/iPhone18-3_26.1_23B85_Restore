@interface HDClinicalGateway
+ (BOOL)validateContent:(id)a3 error:(id *)a4;
+ (int64_t)_pkceAlgorithmForRawType:(id)a3;
+ (int64_t)_statusForRawStatus:(id)a3;
- (HDClinicalGateway)initWithContent:(id)a3;
- (HDClinicalGateway)initWithRawContent:(id)a3;
- (HDClinicalGateway)initWithoutValidatingContent:(id)a3;
- (HKClinicalBrand)brand;
- (HKClinicalGateway)hkGateway;
- (HKFHIRVersion)FHIRVersion;
- (NSArray)authSchemaDefinitions;
- (NSArray)featureDefinitions;
- (NSArray)gatewayVersions;
- (NSArray)resourceSchemaDefinitions;
- (NSString)batchID;
- (NSString)country;
- (NSString)displayableDescription;
- (NSString)externalID;
- (NSString)phoneNumber;
- (NSString)subtitle;
- (NSString)title;
- (NSURL)baseURL;
- (id)_URLForKey:(id)a3;
- (id)authScopeWithError:(id *)a3;
- (id)authenticationInformation;
- (id)authorizeSchemaWithError:(id *)a3;
- (id)clientID;
- (id)clientSecret;
- (id)connectionInformationWithAccountIdentifier:(id)a3 credential:(id)a4 error:(id *)a5;
- (id)description;
- (int64_t)PKCEAlgorithm;
- (int64_t)lastReportedStatus;
- (int64_t)minCompatibleAPIVersion;
- (int64_t)type;
@end

@implementation HDClinicalGateway

- (HKClinicalGateway)hkGateway
{
  v2 = [[HKClinicalGateway alloc] initWithDaemonClinicalGateway:self];

  return v2;
}

- (HDClinicalGateway)initWithContent:(id)a3
{
  v4 = sub_70FB8(a3);
  v7.receiver = self;
  v7.super_class = HDClinicalGateway;
  v5 = [(HDClinicalProviderServiceModel *)&v7 initWithContent:v4];

  return v5;
}

- (HDClinicalGateway)initWithoutValidatingContent:(id)a3
{
  v4 = sub_70FB8(a3);
  v7.receiver = self;
  v7.super_class = HDClinicalGateway;
  v5 = [(HDClinicalProviderServiceModel *)&v7 initWithoutValidatingContent:v4];

  return v5;
}

- (HDClinicalGateway)initWithRawContent:(id)a3
{
  v4.receiver = self;
  v4.super_class = HDClinicalGateway;
  return [(HDClinicalProviderServiceModel *)&v4 initWithoutValidatingContent:a3];
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(HDClinicalGateway *)self externalID];
  v6 = [(HDClinicalGateway *)self title];
  v7 = [v3 initWithFormat:@"<%@:%p externalID: %@; name: %@; revision: %lld; status: %zd;>", v4, self, v5, v6, -[HDClinicalProviderServiceModel revision](self, "revision"), -[HDClinicalGateway lastReportedStatus](self, "lastReportedStatus")];

  return v7;
}

- (id)authorizeSchemaWithError:(id *)a3
{
  v4 = [(HDClinicalGateway *)self authSchemaDefinitions];
  v5 = [HKClinicalGatewayEndpointSchema endpointSchemasFromDefinitions:v4 error:a3];

  if (v5)
  {
    v6 = [v5 hk_firstObjectPassingTest:&stru_108370];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      [NSError hk_assignError:a3 code:100 format:@"No authorization schema found"];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)authenticationInformation
{
  v3 = [HKFHIRServerAuthenticationInformation alloc];
  v4 = [(HDClinicalGateway *)self clientID];
  v5 = [(HDClinicalGateway *)self clientSecret];
  v6 = [v3 initWithClientID:v4 clientSecret:v5 PKCEAlgorithm:{-[HDClinicalGateway PKCEAlgorithm](self, "PKCEAlgorithm")}];

  return v6;
}

- (id)connectionInformationWithAccountIdentifier:(id)a3 credential:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[HKClinicalGateway alloc] initWithDaemonClinicalGateway:self];
  if (v9)
  {
    v11 = [v9 credentialWithPopulatedAccessTokenWithError:a5];
    if (!v11)
    {
      v12 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = [HKClinicalAccountConnectionInformation alloc];
  v14 = [(HDClinicalGateway *)self authenticationInformation];
  v12 = [v13 initWithAccountIdentifier:v8 gateway:v10 authorization:v11 authentication:v14];

LABEL_6:

  return v12;
}

+ (BOOL)validateContent:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___HDClinicalGateway;
  if (objc_msgSendSuper2(&v11, "validateContent:error:", v6, a4))
  {
    v7 = v6;
    if (v7)
    {
      objc_opt_class();
      v8 = HKSafeObject();
      v9 = v8 != 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)authScopeWithError:(id *)a3
{
  v4 = [(HDClinicalGateway *)self authorizeSchemaWithError:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 currentScopeStringWithError:a3];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      _HKInitializeLogging();
      v10 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A625C(v10);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A62F0(v9);
    }

    v7 = 0;
  }

  return v7;
}

- (NSString)externalID
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"gatewayID"];

  return v3;
}

- (NSString)batchID
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"gatewayBatchID"];

  return v3;
}

- (NSString)title
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"title"];

  return v3;
}

- (NSString)subtitle
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"subtitle"];

  return v3;
}

- (NSString)displayableDescription
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"displayableDescription"];

  return v3;
}

- (id)clientID
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"clientID"];

  return v3;
}

- (id)clientSecret
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"clientSecret"];
  v4 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];
  if (!v4)
  {
    sub_A6384();
  }

  v5 = sub_7218C(v4);
  v6 = [[NSString alloc] initWithData:v5 encoding:4];
  if (!v6)
  {
    sub_A640C();
  }

  return v6;
}

- (NSArray)authSchemaDefinitions
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"authSchemas"];

  return v3;
}

- (NSArray)resourceSchemaDefinitions
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"resourceSchemas"];

  return v3;
}

- (NSArray)featureDefinitions
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"features"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = v5;

  return v5;
}

- (NSArray)gatewayVersions
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"gatewayVersions"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = v5;

  return v5;
}

- (NSURL)baseURL
{
  v3 = [NSURL alloc];
  v4 = [(HDClinicalProviderServiceModel *)self content];
  v5 = [v4 objectForKeyedSubscript:@"baseURL"];
  v6 = [v3 initWithString:v5];

  return v6;
}

- (HKClinicalBrand)brand
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"brand"];

  v4 = [v3 objectForKeyedSubscript:@"brandID"];
  v5 = [v3 objectForKeyedSubscript:@"brandBatchID"];
  v6 = [[HKClinicalBrand alloc] initWithExternalID:v4 batchID:v5];

  return v6;
}

- (NSString)country
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:HDClinicalGatewayContentCountryKey];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"US";
  }

  v6 = v5;

  return &v5->isa;
}

- (HKFHIRVersion)FHIRVersion
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:HDClinicalGatewayContentFHIRVersionKey];
  v4 = v3;
  v5 = @"unknown";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [HKFHIRVersion versionFromVersionString:v6];

  return v7;
}

- (NSString)phoneNumber
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"phoneNumber"];

  return v3;
}

- (int64_t)lastReportedStatus
{
  v3 = objc_opt_class();
  v4 = [(HDClinicalProviderServiceModel *)self content];
  v5 = [v4 objectForKeyedSubscript:@"status"];
  v6 = [v3 _statusForRawStatus:v5];

  return v6;
}

- (int64_t)type
{
  v3 = objc_opt_class();
  v4 = [(HDClinicalProviderServiceModel *)self content];
  v5 = [v4 objectForKeyedSubscript:@"type"];
  v6 = [v3 _typeForRawType:v5];

  return v6;
}

- (int64_t)PKCEAlgorithm
{
  v3 = objc_opt_class();
  v4 = [(HDClinicalProviderServiceModel *)self content];
  v5 = [v4 objectForKeyedSubscript:@"pkceAlgorithm"];
  v6 = [v3 _pkceAlgorithmForRawType:v5];

  return v6;
}

- (int64_t)minCompatibleAPIVersion
{
  v2 = [(HDClinicalProviderServiceModel *)self content];
  v3 = [v2 objectForKeyedSubscript:@"minCompatibleApiVersion"];

  v4 = [v3 integerValue];
  return v4;
}

+ (int64_t)_statusForRawStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Active"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Disabled"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Removed"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)_pkceAlgorithmForRawType:(id)a3
{
  if (a3)
  {
    v4 = a3;
    objc_opt_class();
    v5 = HKSafeObject();

    v6 = 0;
    if (v5)
    {
      v7 = HKFHIRServerAuthenticationPKCEAlgorithmFromNSString();
      if (v7 != 3)
      {
LABEL_10:

        return v7;
      }

      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
      {
        sub_A6494();
      }
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_A6508(v8, a1, v6);
      }
    }

    v7 = 3;
    goto LABEL_10;
  }

  return 0;
}

- (id)_URLForKey:(id)a3
{
  v4 = a3;
  v5 = [(HDClinicalProviderServiceModel *)self content];
  v6 = [v5 objectForKeyedSubscript:@"urls"];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:v4];
    if (v7)
    {
      v8 = [[NSURLComponents alloc] initWithString:v7];
      v9 = [v8 URL];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end