@interface CKKSAESSIVKey
+ (id)randomKey:(id *)key;
- (BOOL)doSIV:(const ccmode_siv *)v nonce:(id)nonce text:(id)text buffer:(char *)buffer bufferLength:(unint64_t)length authenticatedData:(id)data error:(id *)error;
- (CKKSAESSIVKey)init;
- (CKKSAESSIVKey)initWithBase64:(id)base64;
- (CKKSAESSIVKey)initWithBytes:(char *)bytes len:(unint64_t)len;
- (id)decryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error;
- (id)encryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error;
- (id)keyMaterial;
- (id)unwrapAESKey:(id)key error:(id *)error;
- (id)wrapAESKey:(id)key error:(id *)error;
@end

@implementation CKKSAESSIVKey

- (id)keyMaterial
{
  v2 = [NSData _newZeroingDataWithBytes:self->super.key length:self->super.size];

  return v2;
}

- (BOOL)doSIV:(const ccmode_siv *)v nonce:(id)nonce text:(id)text buffer:(char *)buffer bufferLength:(unint64_t)length authenticatedData:(id)data error:(id *)error
{
  errorCopy = error;
  nonceCopy = nonce;
  textCopy = text;
  dataCopy = data;
  v18 = v->var0 + 15;
  v19 = v18 & 0xFFFFFFFFFFFFFFF0;
  if (v18 >= 0x10)
  {
    v20 = (v45 - (v18 & 0xFFFFFFFFFFFFFFF0));
    do
    {
      *v20 = 0xAAAAAAAAAAAAAAAALL;
      v20[1] = 0xAAAAAAAAAAAAAAAALL;
      v20 += 2;
      v19 -= 16;
    }

    while (v19);
  }

  size = self->super.size;
  v22 = ccsiv_init();
  v49 = v45;
  if (v22)
  {
    v41 = v22;
    v61 = NSLocalizedDescriptionKey;
    v62 = @"could not ccsiv_init";
    v42 = &v62;
    v43 = &v61;
LABEL_26:
    v37 = [NSDictionary dictionaryWithObjects:v42 forKeys:v43 count:1];
    v34 = [NSError errorWithDomain:@"corecrypto" code:v41 userInfo:v37];
    v26 = 0;
    goto LABEL_19;
  }

  if (nonceCopy)
  {
    [nonceCopy length];
    [nonceCopy bytes];
    v23 = ccsiv_set_nonce();
    if (v23)
    {
      v41 = v23;
      v59 = NSLocalizedDescriptionKey;
      v60 = @"could not ccsiv_set_nonce";
      v42 = &v60;
      v43 = &v59;
      goto LABEL_26;
    }
  }

  v45[1] = buffer;
  errorCopy2 = error;
  v47 = textCopy;
  v48 = nonceCopy;
  allKeys = [dataCopy allKeys];
  v25 = [allKeys sortedArrayUsingSelector:"compare:"];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v51;
    while (2)
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [dataCopy objectForKey:*(*(&v50 + 1) + 8 * i)];
        [v31 length];
        [v31 bytes];
        v32 = ccsiv_aad();
        if (v32)
        {
          v35 = v32;
          v56 = NSLocalizedDescriptionKey;
          v57 = @"could not ccsiv_aad";
          v36 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v34 = [NSError errorWithDomain:@"corecrypto" code:v35 userInfo:v36];

          v37 = v26;
          textCopy = v47;
          nonceCopy = v48;
          goto LABEL_18;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  textCopy = v47;
  [v47 length];
  [textCopy bytes];
  v33 = ccsiv_crypt();
  if (!v33)
  {
    v34 = 0;
    nonceCopy = v48;
    errorCopy = errorCopy2;
    goto LABEL_20;
  }

  v44 = v33;
  v54 = NSLocalizedDescriptionKey;
  v55 = @"could not ccsiv_crypt";
  v37 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v34 = [NSError errorWithDomain:@"corecrypto" code:v44 userInfo:v37];
  nonceCopy = v48;
LABEL_18:
  errorCopy = errorCopy2;
LABEL_19:

LABEL_20:
  var0 = v->var0;
  cc_clear();
  if (errorCopy)
  {
    v39 = v34;
    *errorCopy = v34;
  }

  return v34 == 0;
}

- (id)decryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error
{
  dataCopy = data;
  authenticatedDataCopy = authenticatedData;
  v10 = ccaes_siv_decrypt_mode();
  if ([dataCopy length] > 0x10)
  {
    v15 = [dataCopy length] - 16;
    v13 = [[NSData alloc] initWithBytesNoCopy:objc_msgSend(dataCopy length:"bytes") freeWhenDone:{16, 0}];
    v14 = [[NSData alloc] initWithBytesNoCopy:objc_msgSend(dataCopy length:"bytes") + 16 freeWhenDone:{v15, 0}];
    v12 = [[NSMutableData alloc] initWithLength:ccsiv_plaintext_size()];
    if (-[CKKSAESSIVKey doSIV:nonce:text:buffer:bufferLength:authenticatedData:error:](self, "doSIV:nonce:text:buffer:bufferLength:authenticatedData:error:", v10, v13, v14, [v12 mutableBytes], objc_msgSend(v12, "length"), authenticatedDataCopy, error))
    {
      v12 = v12;
      error = v12;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (error)
  {
    v17 = NSLocalizedDescriptionKey;
    v18 = @"ciphertext too short";
    v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *error = [NSError errorWithDomain:NSOSStatusErrorDomain code:4 userInfo:v11];

    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_6:
    error = 0;
    goto LABEL_8;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_8:

  return error;
}

- (id)encryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error
{
  dataCopy = data;
  authenticatedDataCopy = authenticatedData;
  v10 = ccaes_siv_encrypt_mode();
  v11 = [[NSMutableData alloc] initWithLength:16];
  Bytes = CCRandomGenerateBytes([v11 mutableBytes], objc_msgSend(v11, "length"));
  if (!Bytes)
  {
    [dataCopy length];
    v15 = [[NSMutableData alloc] initWithLength:ccsiv_ciphertext_size()];
    if (-[CKKSAESSIVKey doSIV:nonce:text:buffer:bufferLength:authenticatedData:error:](self, "doSIV:nonce:text:buffer:bufferLength:authenticatedData:error:", v10, v11, dataCopy, [v15 mutableBytes], objc_msgSend(v15, "length"), authenticatedDataCopy, error))
    {
      error = objc_alloc_init(NSMutableData);
      [error appendData:v11];
      [error appendData:v15];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (error)
  {
    v13 = Bytes;
    v17 = NSLocalizedDescriptionKey;
    v18 = @"IV generation failed";
    v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *error = [NSError errorWithDomain:@"CommonCrypto" code:v13 userInfo:v14];

    v15 = 0;
LABEL_6:
    error = 0;
    goto LABEL_8;
  }

  v15 = 0;
LABEL_8:

  return error;
}

- (id)unwrapAESKey:(id)key error:(id *)error
{
  keyCopy = key;
  memset(__s, 0, sizeof(__s));
  ccaes_siv_decrypt_mode();
  if (ccsiv_plaintext_size() == 64)
  {
    v7 = ccaes_siv_decrypt_mode();
    v8 = [[NSData alloc] initWithBytesNoCopy:keyCopy + 1 length:keyCopy[11] freeWhenDone:0];
    v9 = [(CKKSAESSIVKey *)self doSIV:v7 nonce:0 text:v8 buffer:__s bufferLength:64 authenticatedData:0 error:error];

    if (v9)
    {
      v10 = [[CKKSAESSIVKey alloc] initWithBytes:__s len:64];
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
  }

  else
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"unwrapped key size does not match key size";
    v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v14];

    v10 = 0;
  }

  memset_s(__s, 0x40uLL, 0, 0x40uLL);
  if (error && v11)
  {
    v12 = v11;
    *error = v11;
  }

  return v10;
}

- (id)wrapAESKey:(id)key error:(id *)error
{
  keyCopy = key;
  if (keyCopy)
  {
    memset(__s, 0, sizeof(__s));
    ccaes_siv_encrypt_mode();
    if (ccsiv_ciphertext_size() == 80)
    {
      v7 = ccaes_siv_encrypt_mode();
      v8 = [NSData _newZeroingDataWithBytes:keyCopy + 1 length:keyCopy[11]];
      v9 = [(CKKSAESSIVKey *)self doSIV:v7 nonce:0 text:v8 buffer:__s bufferLength:80 authenticatedData:0 error:error];

      if (v9)
      {
        v10 = [[CKKSWrappedAESSIVKey alloc] initWithBytes:__s len:80];
        v11 = 0;
LABEL_5:
        memset_s(__s, 0x50uLL, 0, 0x40uLL);
        if (error && v11)
        {
          v12 = v11;
LABEL_10:
          *error = v11;
          goto LABEL_12;
        }

        goto LABEL_12;
      }

      v11 = 0;
    }

    else
    {
      v17 = NSLocalizedDescriptionKey;
      v18 = @"wrapped key size does not match key size";
      v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v16];
    }

    v10 = 0;
    goto LABEL_5;
  }

  v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 description:@"No key given"];
  v11 = v13;
  if (error)
  {
    v14 = v13;
    v10 = 0;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (CKKSAESSIVKey)initWithBase64:(id)base64
{
  base64Copy = base64;
  v11.receiver = self;
  v11.super_class = CKKSAESSIVKey;
  v5 = [(CKKSBaseAESSIVKey *)&v11 initWithBase64:base64Copy];
  v6 = v5;
  if (v5 && v5->super.size != 64)
  {
    v8 = [NSString stringWithFormat:@"length (%lu) was not %d", v5->super.size, 64];
    v9 = [NSException exceptionWithName:@"WrongKeySizeException" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  return v6;
}

- (CKKSAESSIVKey)initWithBytes:(char *)bytes len:(unint64_t)len
{
  if (len != 64)
  {
    v5 = [NSString stringWithFormat:@"length (%lu) was not %d", len, 64];
    v6 = [NSException exceptionWithName:@"WrongKeySizeException" reason:v5 userInfo:0];
    v7 = v6;

    objc_exception_throw(v6);
  }

  v8.receiver = self;
  v8.super_class = CKKSAESSIVKey;
  return [(CKKSBaseAESSIVKey *)&v8 initWithBytes:bytes len:?];
}

- (CKKSAESSIVKey)init
{
  v3.receiver = self;
  v3.super_class = CKKSAESSIVKey;
  result = [(CKKSBaseAESSIVKey *)&v3 init];
  if (result)
  {
    result->super.size = 64;
  }

  return result;
}

+ (id)randomKey:(id *)key
{
  v4 = objc_alloc_init(CKKSAESSIVKey);
  Bytes = CCRandomGenerateBytes(v4->super.key, v4->super.size);
  if (Bytes)
  {
    if (key)
    {
      v6 = Bytes;
      bytes = [NSString stringWithFormat:@"CCRandomGenerateBytes failed with %d", Bytes];
      *key = [NSError errorWithDomain:@"corecrypto" code:v6 description:bytes];

      key = 0;
    }
  }

  else
  {
    key = v4;
  }

  return key;
}

@end