@interface SecJWSEncoder
- (BOOL)appendPaddedToData:(id)data ptr:(const char *)ptr len:(unint64_t)len expected:(unint64_t)expected;
- (SecJWSEncoder)init;
- (SecJWSEncoder)initWithPublicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey;
- (id)base64URLEncodedStringRepresentationWithData:(id)data;
- (id)base64URLEncodedStringRepresentationWithDictionary:(id)dictionary;
- (id)compactJSONStringRepresentationWithDictionary:(id)dictionary;
- (id)createKeyPair;
- (id)encodedJWSWithPayload:(id)payload kid:(id)kid nonce:(id)nonce url:(id)url error:(id *)error;
- (id)jwkPublicKey;
- (id)signatureWithProtectedHeader:(id)header payload:(id)payload;
- (void)dealloc;
@end

@implementation SecJWSEncoder

- (id)compactJSONStringRepresentationWithDictionary:(id)dictionary
{
  v6 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:10 error:&v6];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v3 length:"bytes") encoding:{objc_msgSend(v3, "length"), 4}];

  return v4;
}

- (id)base64URLEncodedStringRepresentationWithDictionary:(id)dictionary
{
  v9 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:10 error:&v9];
  v4 = [v3 base64EncodedStringWithOptions:0];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  if ([v6 length])
  {
    while ([v6 hasSuffix:@"="])
    {
      v7 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];

      v6 = v7;
      if (![v7 length])
      {
        goto LABEL_6;
      }
    }
  }

  v7 = v6;
LABEL_6:

  return v7;
}

- (id)base64URLEncodedStringRepresentationWithData:(id)data
{
  v3 = [data base64EncodedStringWithOptions:0];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  if ([v5 length] >= 2)
  {
    while ([v5 hasSuffix:@"="])
    {
      v6 = [v5 substringToIndex:{objc_msgSend(v5, "length") - 1}];

      v5 = v6;
      if ([v6 length] <= 1)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = v5;
LABEL_6:

  return v6;
}

- (id)encodedJWSWithPayload:(id)payload kid:(id)kid nonce:(id)nonce url:(id)url error:(id *)error
{
  payloadCopy = payload;
  kidCopy = kid;
  nonceCopy = nonce;
  urlCopy = url;
  if (self->_privateKey && self->_publicKey)
  {
    createKeyPair = 0;
  }

  else
  {
    createKeyPair = [(SecJWSEncoder *)self createKeyPair];
  }

  v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  [v17 setObject:@"ES256" forKeyedSubscript:@"alg"];
  if (kidCopy)
  {
    [v17 setObject:kidCopy forKeyedSubscript:@"kid"];
  }

  else
  {
    jwkPublicKey = [(SecJWSEncoder *)self jwkPublicKey];
    [v17 setObject:jwkPublicKey forKeyedSubscript:@"jwk"];
  }

  [v17 setObject:nonceCopy forKeyedSubscript:@"nonce"];
  [v17 setObject:urlCopy forKeyedSubscript:@"url"];
  if (createKeyPair)
  {
    v19 = 0;
    if (!error)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v25 = payloadCopy;
    if (payloadCopy)
    {
      v22 = [(SecJWSEncoder *)self base64URLEncodedStringRepresentationWithDictionary:payloadCopy];
    }

    else
    {
      v22 = &stru_1EFA8C6C8;
    }

    v23 = [(SecJWSEncoder *)self base64URLEncodedStringRepresentationWithDictionary:v17];
    v24 = [(SecJWSEncoder *)self signatureWithProtectedHeader:v23 payload:v22];
    v19 = [MEMORY[0x1E696AD60] stringWithCapacity:0];
    [v19 appendString:@"{"];
    [v19 appendFormat:@"protected:%@, ", v23];
    [v19 appendFormat:@"payload:%@, ", v22];
    [v19 appendFormat:@"signature:%@", v24];
    [v19 appendString:@"}"];

    payloadCopy = v25;
    if (!error)
    {
      goto LABEL_11;
    }
  }

  v20 = createKeyPair;
  *error = createKeyPair;
LABEL_11:

  return v19;
}

- (id)signatureWithProtectedHeader:(id)header payload:(id)payload
{
  v28 = *MEMORY[0x1E69E9840];
  payload = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", header, payload];
  v6 = [payload dataUsingEncoding:4];

  error = 0;
  v7 = SecKeyCreateSignature(self->_privateKey, @"algid:sign:ECDSA:message-X962:SHA256", v6, &error);
  if (error)
  {
    v8 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = error;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Failed to create signature: %@", buf, 0xCu);
    }

    v9 = error;
    if (error)
    {
      error = 0;
      CFRelease(v9);
    }
  }

  if (!v7)
  {
    v13 = 0;
    goto LABEL_26;
  }

  v10 = [MEMORY[0x1E695DF88] dataWithCapacity:0];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v11;
  v27 = v11;
  v20[0] = CFDataGetBytePtr(v7);
  v20[1] = CFDataGetLength(v7);
  v12 = DERParseSequence(v20, 2u, &DER_ECDSASigItemSpecs, buf, 0x20uLL);
  if (v12 || !*buf || !*&buf[8] || !v27 || !*(&v27 + 1))
  {
    v14 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 67109120;
      LODWORD(v23) = v12;
      v15 = "Failed to parse signature: %d";
      v16 = v14;
      v17 = 8;
LABEL_23:
      _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, v15, v22, v17);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (![SecJWSEncoder appendPaddedToData:"appendPaddedToData:ptr:len:expected:" ptr:v10 len:? expected:?])
  {
    v14 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 134218240;
      v23 = *&buf[8];
      v24 = 2048;
      v25 = 32;
      v15 = "Non-compliant signature: r is %lld bytes, expected %lld";
LABEL_22:
      v16 = v14;
      v17 = 22;
      goto LABEL_23;
    }

LABEL_24:

    v13 = 0;
    goto LABEL_25;
  }

  if (![(SecJWSEncoder *)self appendPaddedToData:v10 ptr:v27 len:32 expected:?])
  {
    v14 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 134218240;
      v23 = *(&v27 + 1);
      v24 = 2048;
      v25 = 32;
      v15 = "Non-compliant signature: s is %lld bytes, expected %lld";
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v13 = [(SecJWSEncoder *)self base64URLEncodedStringRepresentationWithData:v10];
LABEL_25:
  CFRelease(v7);

LABEL_26:
  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)appendPaddedToData:(id)data ptr:(const char *)ptr len:(unint64_t)len expected:(unint64_t)expected
{
  dataCopy = data;
  v10 = expected - len;
  if (expected >= len)
  {
    if (expected > len)
    {
      v16 = 0;
      do
      {
        [dataCopy appendBytes:&v16 length:1];
        --v10;
      }

      while (v10);
    }

    expected = len;
    goto LABEL_13;
  }

  if (!*ptr)
  {
    do
    {
      v11 = *++ptr;
      --len;
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = len > expected;
      }
    }

    while (v12);
  }

  if (len == expected)
  {
LABEL_13:
    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:ptr length:expected];
    [dataCopy appendData:v14];

    v13 = 1;
    goto LABEL_14;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (id)jwkPublicKey
{
  v20[4] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v3 = SecKeyCopyExternalRepresentation(self->_publicKey, &v18);
  if (v3)
  {
    v4 = v3;
    bytes = [(__CFData *)v4 bytes];
    v6 = [(__CFData *)v4 length]< 0x41 || bytes == 0;
    if (v6 || *bytes != 4)
    {
      v14 = 0;
    }

    else
    {
      v7 = bytes + 1;
      v8 = [(__CFData *)v4 length]- 1;
      v9 = [(__CFData *)v4 length];
      v10 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes + 1 length:v8 >> 1];
      v11 = [MEMORY[0x1E695DEF0] dataWithBytes:&v7[v8 >> 1] length:v9 + ~(v8 >> 1)];
      v12 = [(SecJWSEncoder *)self base64URLEncodedStringRepresentationWithData:v10];
      v13 = [(SecJWSEncoder *)self base64URLEncodedStringRepresentationWithData:v11];
      v19[0] = @"kty";
      v19[1] = @"crv";
      v20[0] = @"EC";
      v20[1] = @"P-256";
      v19[2] = @"x";
      v19[3] = @"y";
      v20[2] = v12;
      v20[3] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
    }

    CFRelease(v4);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)createKeyPair
{
  v13[2] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12[0] = @"type";
  v12[1] = @"bsiz";
  v13[0] = @"73";
  v13[1] = &unk_1EFAAC760;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  RandomKey = SecKeyCreateRandomKey(v3, &v11);
  self->_privateKey = RandomKey;
  if (RandomKey)
  {
    v5 = SecKeyCopyPublicKey(RandomKey);
    self->_publicKey = v5;
    if (self->_privateKey)
    {
      if (v5 | v11)
      {
        if (!v11)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }

LABEL_7:
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-26275 userInfo:0];
      if (!v11)
      {
        goto LABEL_12;
      }

LABEL_8:
      privateKey = self->_privateKey;
      if (privateKey)
      {
        self->_privateKey = 0;
        CFRelease(privateKey);
      }

      goto LABEL_10;
    }
  }

  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_10:
  publicKey = self->_publicKey;
  if (publicKey)
  {
    self->_publicKey = 0;
    CFRelease(publicKey);
  }

LABEL_12:
  v8 = v11;

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)dealloc
{
  publicKey = self->_publicKey;
  if (publicKey)
  {
    self->_publicKey = 0;
    CFRelease(publicKey);
  }

  privateKey = self->_privateKey;
  if (privateKey)
  {
    self->_privateKey = 0;
    CFRelease(privateKey);
  }

  v5.receiver = self;
  v5.super_class = SecJWSEncoder;
  [(SecJWSEncoder *)&v5 dealloc];
}

- (SecJWSEncoder)initWithPublicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey
{
  v7.receiver = self;
  v7.super_class = SecJWSEncoder;
  result = [(SecJWSEncoder *)&v7 init];
  if (result)
  {
    result->_publicKey = key;
    result->_privateKey = privateKey;
  }

  return result;
}

- (SecJWSEncoder)init
{
  v3.receiver = self;
  v3.super_class = SecJWSEncoder;
  return [(SecJWSEncoder *)&v3 init];
}

@end