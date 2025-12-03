@interface ASTProfileResult
+ (id)resultWithIdentity:(id)identity;
+ (id)sealedProfileResultWithPayload:(id)payload signature:(id)signature;
- (ASTProfileResult)init;
- (ASTProfileResult)initWithIdentity:(id)identity;
- (id)generatePayload;
@end

@implementation ASTProfileResult

- (ASTProfileResult)init
{
  v3 = objc_opt_new();
  v4 = [(ASTProfileResult *)self initWithIdentity:v3];

  return v4;
}

- (ASTProfileResult)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v12.receiver = self;
  v12.super_class = ASTProfileResult;
  v6 = [(ASTProfileResult *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identity, identity);
    properties = v7->_properties;
    v9 = MEMORY[0x277CBEBF8];
    v7->_properties = MEMORY[0x277CBEBF8];

    tests = v7->_tests;
    v7->_tests = v9;
  }

  return v7;
}

+ (id)resultWithIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [[self alloc] initWithIdentity:identityCopy];

  return v5;
}

- (id)generatePayload
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  tests = [(ASTProfileResult *)self tests];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(tests, "count")}];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  tests2 = [(ASTProfileResult *)self tests];
  v7 = [tests2 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(tests2);
        }

        dictionary = [*(*(&v31 + 1) + 8 * i) dictionary];
        [v5 addObject:dictionary];
      }

      v8 = [tests2 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  identity = [(ASTProfileResult *)self identity];
  hostAppBuild = [identity hostAppBuild];
  v14 = hostAppBuild;
  if (hostAppBuild)
  {
    null = hostAppBuild;
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v16 = null;

  identity2 = [(ASTProfileResult *)self identity];
  hostAppVersion = [identity2 hostAppVersion];
  v19 = hostAppVersion;
  if (hostAppVersion)
  {
    null2 = hostAppVersion;
  }

  else
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v21 = null2;

  properties = [(ASTProfileResult *)self properties];
  if (properties)
  {
    [(ASTProfileResult *)self properties];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v23 = ;

  v24 = +[ASTEnvironment currentEnvironment];
  environmentType = [v24 environmentType];

  v26 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  [v26 setObject:v23 forKeyedSubscript:@"profile"];
  [v26 setObject:v5 forKeyedSubscript:@"tests"];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:environmentType];
  [v26 setObject:v27 forKeyedSubscript:@"environment"];

  [v26 setObject:v16 forKeyedSubscript:@"diagnosticsBuild"];
  [v26 setObject:v21 forKeyedSubscript:@"diagnosticsVersion"];
  if ((environmentType - 9) <= 1)
  {
    [v26 setObject:&unk_2852D5E80 forKeyedSubscript:@"context"];
  }

  v28 = [v26 copy];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)sealedProfileResultWithPayload:(id)payload signature:(id)signature
{
  signatureCopy = signature;
  payloadCopy = payload;
  v7 = [(ASTSealablePayload *)[ASTProfileResult alloc] initWithPayload:payloadCopy signature:signatureCopy];

  return v7;
}

@end