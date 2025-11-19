@interface SecJWSDecoder
- (BOOL)_validateJWSProtectedHeader:(id)a3;
- (SecJWSDecoder)initWithJWSCompactEncodedString:(id)a3 keyID:(id)a4 publicKey:(__SecKey *)a5;
- (id)dataWithBase64URLEncodedString:(id)a3;
- (void)_validateJWSSignature:(id)a3 ofHeader:(id)a4 andPayload:(id)a5 withPublicKey:(__SecKey *)a6;
@end

@implementation SecJWSDecoder

- (id)dataWithBase64URLEncodedString:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

  if (([v4 length] & 3) != 0)
  {
    do
    {
      v5 = [v4 stringByAppendingString:@"="];

      v4 = v5;
    }

    while (([v5 length] & 3) != 0);
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v5 options:0];

  return v6;
}

- (void)_validateJWSSignature:(id)a3 ofHeader:(id)a4 andPayload:(id)a5 withPublicKey:(__SecKey *)a6
{
  v10 = MEMORY[0x1E696AEC0];
  v11 = a3;
  v12 = [v10 stringWithFormat:@"%@.%@", a4, a5];
  v13 = [v12 dataUsingEncoding:4];

  v14 = [(SecJWSDecoder *)self _createASN1SignatureFromJWSSignature:v11];

  if (!v14)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = 11;
    goto LABEL_8;
  }

  error = 0;
  if (SecKeyVerifySignature(a6, @"algid:sign:ECDSA:message-X962:SHA256", v13, v14, &error))
  {
    v15 = error == 0;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = 12;
LABEL_8:
    v18 = [v16 errorWithDomain:@"com.apple.security.errors.jws" code:v17 userInfo:0];
    verificationError = self->_verificationError;
    self->_verificationError = v18;
  }
}

- (BOOL)_validateJWSProtectedHeader:(id)a3
{
  v4 = [(SecJWSDecoder *)self dataWithBase64URLEncodedString:a3];
  if (v4)
  {
    v34 = 0;
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v34];
    v6 = v34;
    v7 = v6;
    if (v6)
    {
      v8 = v6;
LABEL_12:
      v11 = 0;
      verificationError = self->_verificationError;
      self->_verificationError = v8;
LABEL_13:

      goto LABEL_14;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.errors.jws" code:5 userInfo:0];
      goto LABEL_12;
    }

    verificationError = v5;
    if ([(NSError *)verificationError count])
    {
      v13 = [(NSError *)verificationError objectForKeyedSubscript:@"alg"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [(NSError *)verificationError objectForKeyedSubscript:@"kid"];
        if (!v14)
        {

LABEL_18:
          v20 = [(NSError *)verificationError objectForKeyedSubscript:@"alg"];
          if ([v20 isEqualToString:@"ES256"])
          {
            v21 = [(NSError *)verificationError objectForKeyedSubscript:@"kid"];
            if (v21 && (-[SecJWSDecoder keyID](self, "keyID"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqualToString:v21], v22, (v23 & 1) == 0))
            {
              v33 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.errors.jws" code:8 userInfo:0];
              v11 = 0;
              v25 = self->_verificationError;
              self->_verificationError = v33;
            }

            else
            {
              v24 = [(NSError *)verificationError objectForKeyedSubscript:@"typ"];
              v25 = v24;
              if (v24 && [(NSError *)v24 caseInsensitiveCompare:@"JOSE"])
              {
                v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.errors.jws" code:9 userInfo:0];
                v27 = self->_verificationError;
                self->_verificationError = v26;
              }

              v28 = [(NSError *)verificationError objectForKeyedSubscript:@"cty"];
              v29 = v28;
              if (v28 && [v28 caseInsensitiveCompare:@"JSON"])
              {
                v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.errors.jws" code:9 userInfo:0];
                v31 = self->_verificationError;
                self->_verificationError = v30;
              }

              v11 = 1;
            }
          }

          else
          {
            v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.errors.jws" code:7 userInfo:0];
            v11 = 0;
            v21 = self->_verificationError;
            self->_verificationError = v32;
          }

          goto LABEL_32;
        }

        v15 = v14;
        v16 = [(NSError *)verificationError objectForKeyedSubscript:@"kid"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.errors.jws" code:6 userInfo:0];
    v11 = 0;
    v20 = self->_verificationError;
    self->_verificationError = v19;
LABEL_32:

    goto LABEL_13;
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.errors.jws" code:4 userInfo:0];
  v10 = self->_verificationError;
  self->_verificationError = v9;

  v11 = 0;
LABEL_14:

  return v11;
}

- (SecJWSDecoder)initWithJWSCompactEncodedString:(id)a3 keyID:(id)a4 publicKey:(__SecKey *)a5
{
  v8 = a3;
  v9 = a4;
  v31.receiver = self;
  v31.super_class = SecJWSDecoder;
  v10 = [(SecJWSDecoder *)&v31 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_keyID, a4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v8 componentsSeparatedByString:@"."];
      if ([v12 count] != 3)
      {
        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.errors.jws" code:1 userInfo:0];
        verificationError = v11->_verificationError;
        v11->_verificationError = v25;
        goto LABEL_13;
      }

      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [(SecJWSDecoder *)v11 _validateJWSProtectedHeader:v13];

      if (v14)
      {
        verificationError = [v12 objectAtIndexedSubscript:1];
        v16 = [(SecJWSDecoder *)v11 dataWithBase64URLEncodedString:verificationError];
        payload = v11->_payload;
        v11->_payload = v16;

        v18 = [v12 objectAtIndexedSubscript:2];
        v19 = [(SecJWSDecoder *)v11 dataWithBase64URLEncodedString:v18];
        signature = v11->_signature;
        v11->_signature = v19;

        if (v11->_payload && v11->_signature)
        {
          if (a5)
          {
            CFRetain(a5);
            v21 = v11->_signature;
            v22 = [v12 objectAtIndexedSubscript:0];
            v23 = [v12 objectAtIndexedSubscript:1];
            [(SecJWSDecoder *)v11 _validateJWSSignature:v21 ofHeader:v22 andPayload:v23 withPublicKey:a5];

            CFRelease(a5);
LABEL_13:

            goto LABEL_14;
          }

          v26 = MEMORY[0x1E696ABC0];
          v27 = 10;
        }

        else
        {
          v26 = MEMORY[0x1E696ABC0];
          v27 = 3;
        }

        v28 = [v26 errorWithDomain:@"com.apple.security.errors.jws" code:v27 userInfo:0];
        v29 = v11->_verificationError;
        v11->_verificationError = v28;

        goto LABEL_13;
      }
    }

    else
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.errors.jws" code:0 userInfo:0];
      v12 = v11->_verificationError;
      v11->_verificationError = v24;
    }

LABEL_14:
  }

  return v11;
}

@end