@interface ASTSealablePayload
- (ASTSealablePayload)initWithPayload:(id)a3 signature:(id)a4;
- (BOOL)sealWithPayloadSigner:(id)a3 error:(id *)a4;
- (id)description;
- (id)sealedDescription;
@end

@implementation ASTSealablePayload

- (ASTSealablePayload)initWithPayload:(id)a3 signature:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ASTSealablePayload;
  v9 = [(ASTSealablePayload *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_payload, a3);
    if (v8)
    {
      objc_storeStrong(&v10->_signature, a4);
      v11 = [v8 base64EncodedStringWithOptions:0];
      base64Signature = v10->_base64Signature;
      v10->_base64Signature = v11;
    }

    v10->_sealed = 1;
  }

  return v10;
}

- (BOOL)sealWithPayloadSigner:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(ASTSealablePayload *)self isSealed])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(ASTSealablePayload *)self generatePayload];
    v9 = [ASTEncodingUtilities jsonSerializeObject:v8 error:a4];
    [(ASTSealablePayload *)self setPayload:v9];

    v10 = [(ASTSealablePayload *)self payload];

    v7 = v10 != 0;
    if (v10)
    {
      if (v6)
      {
        v11 = [(ASTSealablePayload *)self payload];
        v12 = v6[2](v6, v11, a4);
        [(ASTSealablePayload *)self setSignature:v12];
      }

      [(ASTSealablePayload *)self setSealed:1];
    }

    v13 = [(ASTSealablePayload *)self signature];

    if (v13)
    {
      v14 = [(ASTSealablePayload *)self signature];
      v15 = [v14 base64EncodedStringWithOptions:0];
      [(ASTSealablePayload *)self setBase64Signature:v15];
    }
  }

  return v7;
}

- (id)sealedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ASTSealablePayload *)self signature];
  v6 = [(ASTSealablePayload *)self payload];
  v7 = [v3 stringWithFormat:@"<%@[Sealed], signature=%@, payload=%@>", v4, v5, v6];

  return v7;
}

- (id)description
{
  if ([(ASTSealablePayload *)self isSealed])
  {
    v3 = [(ASTSealablePayload *)self sealedDescription];
  }

  else
  {
    v4 = [(ASTSealablePayload *)self generatePayload];
    v3 = [v4 description];
  }

  return v3;
}

@end