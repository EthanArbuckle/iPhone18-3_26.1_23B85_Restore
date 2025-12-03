@interface ASTSealablePayload
- (ASTSealablePayload)initWithPayload:(id)payload signature:(id)signature;
- (BOOL)sealWithPayloadSigner:(id)signer error:(id *)error;
- (id)description;
- (id)sealedDescription;
@end

@implementation ASTSealablePayload

- (ASTSealablePayload)initWithPayload:(id)payload signature:(id)signature
{
  payloadCopy = payload;
  signatureCopy = signature;
  v14.receiver = self;
  v14.super_class = ASTSealablePayload;
  v9 = [(ASTSealablePayload *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_payload, payload);
    if (signatureCopy)
    {
      objc_storeStrong(&v10->_signature, signature);
      v11 = [signatureCopy base64EncodedStringWithOptions:0];
      base64Signature = v10->_base64Signature;
      v10->_base64Signature = v11;
    }

    v10->_sealed = 1;
  }

  return v10;
}

- (BOOL)sealWithPayloadSigner:(id)signer error:(id *)error
{
  signerCopy = signer;
  if ([(ASTSealablePayload *)self isSealed])
  {
    v7 = 1;
  }

  else
  {
    generatePayload = [(ASTSealablePayload *)self generatePayload];
    v9 = [ASTEncodingUtilities jsonSerializeObject:generatePayload error:error];
    [(ASTSealablePayload *)self setPayload:v9];

    payload = [(ASTSealablePayload *)self payload];

    v7 = payload != 0;
    if (payload)
    {
      if (signerCopy)
      {
        payload2 = [(ASTSealablePayload *)self payload];
        v12 = signerCopy[2](signerCopy, payload2, error);
        [(ASTSealablePayload *)self setSignature:v12];
      }

      [(ASTSealablePayload *)self setSealed:1];
    }

    signature = [(ASTSealablePayload *)self signature];

    if (signature)
    {
      signature2 = [(ASTSealablePayload *)self signature];
      v15 = [signature2 base64EncodedStringWithOptions:0];
      [(ASTSealablePayload *)self setBase64Signature:v15];
    }
  }

  return v7;
}

- (id)sealedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  signature = [(ASTSealablePayload *)self signature];
  payload = [(ASTSealablePayload *)self payload];
  v7 = [v3 stringWithFormat:@"<%@[Sealed], signature=%@, payload=%@>", v4, signature, payload];

  return v7;
}

- (id)description
{
  if ([(ASTSealablePayload *)self isSealed])
  {
    sealedDescription = [(ASTSealablePayload *)self sealedDescription];
  }

  else
  {
    generatePayload = [(ASTSealablePayload *)self generatePayload];
    sealedDescription = [generatePayload description];
  }

  return sealedDescription;
}

@end