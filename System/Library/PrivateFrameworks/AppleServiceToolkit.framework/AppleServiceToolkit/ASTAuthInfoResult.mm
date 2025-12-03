@interface ASTAuthInfoResult
+ (id)authInfoResultWithAttestation:(id)attestation certificate:(id)certificate type:(int64_t)type error:(int64_t)error;
+ (id)sealedAuthInfoResultWithPayload:(id)payload signature:(id)signature;
- (id)generatePayload;
@end

@implementation ASTAuthInfoResult

- (id)generatePayload
{
  attestation = [(ASTAuthInfoResult *)self attestation];
  if (attestation)
  {
    attestation2 = [(ASTAuthInfoResult *)self attestation];
    null = [MEMORY[0x277CBEB68] null];

    if (attestation2 == null)
    {
      attestation = 0;
    }

    else
    {
      attestation3 = [(ASTAuthInfoResult *)self attestation];
      attestation = [attestation3 base64EncodedStringWithOptions:0];
    }
  }

  cert = [(ASTAuthInfoResult *)self cert];
  if (cert)
  {
    cert2 = [(ASTAuthInfoResult *)self cert];
    null2 = [MEMORY[0x277CBEB68] null];

    if (cert2 == null2)
    {
      cert = 0;
    }

    else
    {
      cert3 = [(ASTAuthInfoResult *)self cert];
      cert = [cert3 base64EncodedStringWithOptions:0];
    }
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ASTAuthInfoResult type](self, "type")}];
  [v11 setObject:v12 forKeyedSubscript:@"type"];

  if (attestation)
  {
    [v11 setObject:attestation forKeyedSubscript:@"attestation"];
  }

  if (cert)
  {
    [v11 setObject:cert forKeyedSubscript:@"certificate"];
  }

  if ([(ASTAuthInfoResult *)self error])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ASTAuthInfoResult error](self, "error")}];
    [v11 setObject:v13 forKeyedSubscript:@"error"];
  }

  v14 = [v11 copy];

  return v14;
}

+ (id)sealedAuthInfoResultWithPayload:(id)payload signature:(id)signature
{
  signatureCopy = signature;
  payloadCopy = payload;
  v7 = [(ASTSealablePayload *)[ASTAuthInfoResult alloc] initWithPayload:payloadCopy signature:signatureCopy];

  return v7;
}

+ (id)authInfoResultWithAttestation:(id)attestation certificate:(id)certificate type:(int64_t)type error:(int64_t)error
{
  certificateCopy = certificate;
  attestationCopy = attestation;
  v11 = objc_opt_new();
  [v11 setAttestation:attestationCopy];

  [v11 setCert:certificateCopy];
  [v11 setType:type];
  [v11 setError:error];

  return v11;
}

@end