@interface ASTProfileResult
+ (id)resultWithIdentity:(id)a3;
+ (id)sealedProfileResultWithPayload:(id)a3 signature:(id)a4;
- (ASTProfileResult)init;
- (ASTProfileResult)initWithIdentity:(id)a3;
- (id)generatePayload;
@end

@implementation ASTProfileResult

- (ASTProfileResult)init
{
  v3 = objc_opt_new();
  v4 = [(ASTProfileResult *)self initWithIdentity:v3];

  return v4;
}

- (ASTProfileResult)initWithIdentity:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ASTProfileResult;
  v6 = [(ASTProfileResult *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identity, a3);
    properties = v7->_properties;
    v9 = MEMORY[0x277CBEBF8];
    v7->_properties = MEMORY[0x277CBEBF8];

    tests = v7->_tests;
    v7->_tests = v9;
  }

  return v7;
}

+ (id)resultWithIdentity:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentity:v4];

  return v5;
}

- (id)generatePayload
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(ASTProfileResult *)self tests];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [(ASTProfileResult *)self tests];
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v31 + 1) + 8 * i) dictionary];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  v12 = [(ASTProfileResult *)self identity];
  v13 = [v12 hostAppBuild];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v16 = v15;

  v17 = [(ASTProfileResult *)self identity];
  v18 = [v17 hostAppVersion];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [MEMORY[0x277CBEB68] null];
  }

  v21 = v20;

  v22 = [(ASTProfileResult *)self properties];
  if (v22)
  {
    [(ASTProfileResult *)self properties];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v23 = ;

  v24 = +[ASTEnvironment currentEnvironment];
  v25 = [v24 environmentType];

  v26 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  [v26 setObject:v23 forKeyedSubscript:@"profile"];
  [v26 setObject:v5 forKeyedSubscript:@"tests"];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
  [v26 setObject:v27 forKeyedSubscript:@"environment"];

  [v26 setObject:v16 forKeyedSubscript:@"diagnosticsBuild"];
  [v26 setObject:v21 forKeyedSubscript:@"diagnosticsVersion"];
  if ((v25 - 9) <= 1)
  {
    [v26 setObject:&unk_2852D5E80 forKeyedSubscript:@"context"];
  }

  v28 = [v26 copy];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)sealedProfileResultWithPayload:(id)a3 signature:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(ASTSealablePayload *)[ASTProfileResult alloc] initWithPayload:v6 signature:v5];

  return v7;
}

@end