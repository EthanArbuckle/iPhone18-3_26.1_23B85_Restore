@interface ASTAuthInfoResult
+ (id)authInfoResultWithAttestation:(id)a3 certificate:(id)a4 type:(int64_t)a5 error:(int64_t)a6;
+ (id)sealedAuthInfoResultWithPayload:(id)a3 signature:(id)a4;
- (id)generatePayload;
@end

@implementation ASTAuthInfoResult

- (id)generatePayload
{
  v3 = [(ASTAuthInfoResult *)self attestation];
  if (v3)
  {
    v4 = [(ASTAuthInfoResult *)self attestation];
    v5 = [MEMORY[0x277CBEB68] null];

    if (v4 == v5)
    {
      v3 = 0;
    }

    else
    {
      v6 = [(ASTAuthInfoResult *)self attestation];
      v3 = [v6 base64EncodedStringWithOptions:0];
    }
  }

  v7 = [(ASTAuthInfoResult *)self cert];
  if (v7)
  {
    v8 = [(ASTAuthInfoResult *)self cert];
    v9 = [MEMORY[0x277CBEB68] null];

    if (v8 == v9)
    {
      v7 = 0;
    }

    else
    {
      v10 = [(ASTAuthInfoResult *)self cert];
      v7 = [v10 base64EncodedStringWithOptions:0];
    }
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ASTAuthInfoResult type](self, "type")}];
  [v11 setObject:v12 forKeyedSubscript:@"type"];

  if (v3)
  {
    [v11 setObject:v3 forKeyedSubscript:@"attestation"];
  }

  if (v7)
  {
    [v11 setObject:v7 forKeyedSubscript:@"certificate"];
  }

  if ([(ASTAuthInfoResult *)self error])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ASTAuthInfoResult error](self, "error")}];
    [v11 setObject:v13 forKeyedSubscript:@"error"];
  }

  v14 = [v11 copy];

  return v14;
}

+ (id)sealedAuthInfoResultWithPayload:(id)a3 signature:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(ASTSealablePayload *)[ASTAuthInfoResult alloc] initWithPayload:v6 signature:v5];

  return v7;
}

+ (id)authInfoResultWithAttestation:(id)a3 certificate:(id)a4 type:(int64_t)a5 error:(int64_t)a6
{
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  [v11 setAttestation:v10];

  [v11 setCert:v9];
  [v11 setType:a5];
  [v11 setError:a6];

  return v11;
}

@end