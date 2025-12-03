@interface HDClinicalGateway
+ (BOOL)validateContent:(id)content error:(id *)error;
+ (int64_t)_pkceAlgorithmForRawType:(id)type;
+ (int64_t)_statusForRawStatus:(id)status;
- (HDClinicalGateway)initWithContent:(id)content;
- (HDClinicalGateway)initWithRawContent:(id)content;
- (HDClinicalGateway)initWithoutValidatingContent:(id)content;
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
- (id)_URLForKey:(id)key;
- (id)authScopeWithError:(id *)error;
- (id)authenticationInformation;
- (id)authorizeSchemaWithError:(id *)error;
- (id)clientID;
- (id)clientSecret;
- (id)connectionInformationWithAccountIdentifier:(id)identifier credential:(id)credential error:(id *)error;
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

- (HDClinicalGateway)initWithContent:(id)content
{
  v4 = sub_70FB8(content);
  v7.receiver = self;
  v7.super_class = HDClinicalGateway;
  v5 = [(HDClinicalProviderServiceModel *)&v7 initWithContent:v4];

  return v5;
}

- (HDClinicalGateway)initWithoutValidatingContent:(id)content
{
  v4 = sub_70FB8(content);
  v7.receiver = self;
  v7.super_class = HDClinicalGateway;
  v5 = [(HDClinicalProviderServiceModel *)&v7 initWithoutValidatingContent:v4];

  return v5;
}

- (HDClinicalGateway)initWithRawContent:(id)content
{
  v4.receiver = self;
  v4.super_class = HDClinicalGateway;
  return [(HDClinicalProviderServiceModel *)&v4 initWithoutValidatingContent:content];
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  externalID = [(HDClinicalGateway *)self externalID];
  title = [(HDClinicalGateway *)self title];
  v7 = [v3 initWithFormat:@"<%@:%p externalID: %@; name: %@; revision: %lld; status: %zd;>", v4, self, externalID, title, -[HDClinicalProviderServiceModel revision](self, "revision"), -[HDClinicalGateway lastReportedStatus](self, "lastReportedStatus")];

  return v7;
}

- (id)authorizeSchemaWithError:(id *)error
{
  authSchemaDefinitions = [(HDClinicalGateway *)self authSchemaDefinitions];
  v5 = [HKClinicalGatewayEndpointSchema endpointSchemasFromDefinitions:authSchemaDefinitions error:error];

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
      [NSError hk_assignError:error code:100 format:@"No authorization schema found"];
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
  clientID = [(HDClinicalGateway *)self clientID];
  clientSecret = [(HDClinicalGateway *)self clientSecret];
  v6 = [v3 initWithClientID:clientID clientSecret:clientSecret PKCEAlgorithm:{-[HDClinicalGateway PKCEAlgorithm](self, "PKCEAlgorithm")}];

  return v6;
}

- (id)connectionInformationWithAccountIdentifier:(id)identifier credential:(id)credential error:(id *)error
{
  identifierCopy = identifier;
  credentialCopy = credential;
  v10 = [[HKClinicalGateway alloc] initWithDaemonClinicalGateway:self];
  if (credentialCopy)
  {
    v11 = [credentialCopy credentialWithPopulatedAccessTokenWithError:error];
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
  authenticationInformation = [(HDClinicalGateway *)self authenticationInformation];
  v12 = [v13 initWithAccountIdentifier:identifierCopy gateway:v10 authorization:v11 authentication:authenticationInformation];

LABEL_6:

  return v12;
}

+ (BOOL)validateContent:(id)content error:(id *)error
{
  contentCopy = content;
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___HDClinicalGateway;
  if (objc_msgSendSuper2(&v11, "validateContent:error:", contentCopy, error))
  {
    v7 = contentCopy;
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

- (id)authScopeWithError:(id *)error
{
  v4 = [(HDClinicalGateway *)self authorizeSchemaWithError:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 currentScopeStringWithError:error];
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
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"gatewayID"];

  return v3;
}

- (NSString)batchID
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"gatewayBatchID"];

  return v3;
}

- (NSString)title
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"title"];

  return v3;
}

- (NSString)subtitle
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"subtitle"];

  return v3;
}

- (NSString)displayableDescription
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"displayableDescription"];

  return v3;
}

- (id)clientID
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"clientID"];

  return v3;
}

- (id)clientSecret
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"clientSecret"];
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
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"authSchemas"];

  return v3;
}

- (NSArray)resourceSchemaDefinitions
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"resourceSchemas"];

  return v3;
}

- (NSArray)featureDefinitions
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"features"];
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
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"gatewayVersions"];
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
  content = [(HDClinicalProviderServiceModel *)self content];
  v5 = [content objectForKeyedSubscript:@"baseURL"];
  v6 = [v3 initWithString:v5];

  return v6;
}

- (HKClinicalBrand)brand
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"brand"];

  v4 = [v3 objectForKeyedSubscript:@"brandID"];
  v5 = [v3 objectForKeyedSubscript:@"brandBatchID"];
  v6 = [[HKClinicalBrand alloc] initWithExternalID:v4 batchID:v5];

  return v6;
}

- (NSString)country
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:HDClinicalGatewayContentCountryKey];
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
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:HDClinicalGatewayContentFHIRVersionKey];
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
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"phoneNumber"];

  return v3;
}

- (int64_t)lastReportedStatus
{
  v3 = objc_opt_class();
  content = [(HDClinicalProviderServiceModel *)self content];
  v5 = [content objectForKeyedSubscript:@"status"];
  v6 = [v3 _statusForRawStatus:v5];

  return v6;
}

- (int64_t)type
{
  v3 = objc_opt_class();
  content = [(HDClinicalProviderServiceModel *)self content];
  v5 = [content objectForKeyedSubscript:@"type"];
  v6 = [v3 _typeForRawType:v5];

  return v6;
}

- (int64_t)PKCEAlgorithm
{
  v3 = objc_opt_class();
  content = [(HDClinicalProviderServiceModel *)self content];
  v5 = [content objectForKeyedSubscript:@"pkceAlgorithm"];
  v6 = [v3 _pkceAlgorithmForRawType:v5];

  return v6;
}

- (int64_t)minCompatibleAPIVersion
{
  content = [(HDClinicalProviderServiceModel *)self content];
  v3 = [content objectForKeyedSubscript:@"minCompatibleApiVersion"];

  integerValue = [v3 integerValue];
  return integerValue;
}

+ (int64_t)_statusForRawStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"Active"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"Disabled"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"Removed"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)_pkceAlgorithmForRawType:(id)type
{
  if (type)
  {
    typeCopy = type;
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
        sub_A6508(v8, self, v6);
      }
    }

    v7 = 3;
    goto LABEL_10;
  }

  return 0;
}

- (id)_URLForKey:(id)key
{
  keyCopy = key;
  content = [(HDClinicalProviderServiceModel *)self content];
  v6 = [content objectForKeyedSubscript:@"urls"];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:keyCopy];
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