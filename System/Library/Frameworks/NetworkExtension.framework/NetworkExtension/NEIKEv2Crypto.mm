@interface NEIKEv2Crypto
+ (BOOL)validateCalculatedSharedKeyAuthData:(void *)data remoteAuthData:;
+ (CFErrorRef)validateSignature:(void *)signature hashedData:(const __CFString *)data signatureAlgorithm:(__SecKey *)algorithm publicKey:;
+ (NSObject)copyDataFromPersistentReference:(uint64_t)reference;
+ (NSObject)createHMACFromData:(void *)data key:(void *)key prfProtocol:;
+ (NSObject)createHMACFromDataVector:(void *)vector key:(void *)key prfProtocol:;
+ (NSObject)createRandomWithSize:(uint64_t)size;
+ (id)copySignHashDataForSet:(uint64_t)set;
+ (id)copySignHashDataForSet:(void *)set authentication:;
+ (id)copySignHashDataForSet:(void *)set authenticationSet:;
+ (uint64_t)copyCertificateFromPersistentData:(int)data isModernSystem:;
+ (uint64_t)copyHashForDataVector:(uint64_t)vector hashType:;
+ (uint64_t)copySecIdentity:(void *)identity keyData:(int)data isModernSystem:;
+ (uint64_t)copySignHashProtocolForAuth:(uint64_t)auth;
+ (uint64_t)copySignHashSetForAuthMethod:(uint64_t)method;
+ (uint64_t)createNATDetectionHashForInitiatorSPI:(void *)i responderSPI:(void *)pI address:;
+ (uint64_t)isRemoteAuthenticationPacketProtocol:(void *)protocol compatibleWithConfiguredProtocol:;
+ (uint64_t)validateSignature:(void *)signature signedDataVector:(void *)vector authProtocol:(__SecKey *)protocol publicKey:;
+ (void)appendRandomBytesToData:(unsigned int)data withSize:;
+ (void)copySignHashSetForData:(uint64_t)data;
@end

@implementation NEIKEv2Crypto

+ (void)appendRandomBytesToData:(unsigned int)data withSize:
{
  v4 = a2;
  objc_opt_self();
  if (data)
  {
    v5 = [v4 length];
    [v4 setLength:v5 + data];
    mutableBytes = [v4 mutableBytes];
    objc_opt_self();
    arc4random_buf((mutableBytes + v5), data);
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "Invalid size 0", v8, 2u);
    }
  }
}

+ (uint64_t)copyHashForDataVector:(uint64_t)vector hashType:
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  if (vector > 2)
  {
    switch(vector)
    {
      case 3:
        v6 = 48;
        break;
      case 4:
        v6 = 64;
        break;
      case 5:
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v7 = v4;
        v8 = [v7 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v42;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v42 != v11)
              {
                objc_enumerationMutation(v7);
              }

              v10 += [*(*(&v41 + 1) + 8 * i) length];
            }

            v9 = [v7 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v9);
        }

        else
        {
          v10 = 0;
        }

        v24 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataWithMaxCapacity:v10];
        if (v24)
        {
          v25 = v24;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v26 = v7;
          v27 = [v26 countByEnumeratingWithState:&v37 objects:v48 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v38;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v38 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                [(__CFData *)v25 appendData:*(*(&v37 + 1) + 8 * j)];
              }

              v28 = [v26 countByEnumeratingWithState:&v37 objects:v48 count:16];
            }

            while (v28);
          }

          v21 = v25;
          goto LABEL_33;
        }

        v31 = ne_log_obj();
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
LABEL_47:

          vector = 0;
          goto LABEL_34;
        }

        __s = 134217984;
        v47 = v10;
        v32 = "[NEMutableSensitiveData mutableSensitiveDataWithMaxCapacity:%zu] failed";
LABEL_51:
        _os_log_fault_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_FAULT, v32, &__s, 0xCu);
        goto LABEL_47;
      default:
        v6 = 0;
        break;
    }

LABEL_22:
    v13 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataPrefilledWithMaxCapacity:v6];
    if (v13)
    {
      v14 = v13;
      bzero(&__s, 0x408uLL);
      CCDigestInit();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v15 = v4;
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          for (k = 0; k != v17; ++k)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v33 + 1) + 8 * k);
            if ([v20 length])
            {
              [v20 bytes];
              CCDigestUpdate();
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
        }

        while (v17);
      }

      [(__CFData *)v14 mutableBytes];
      CCDigestFinal();
      memset_s(&__s, 0x408uLL, 0, 0x408uLL);
      v21 = v14;
LABEL_33:
      vector = v21;
LABEL_34:

      goto LABEL_35;
    }

    v31 = ne_log_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_47;
    }

    __s = 134217984;
    v47 = v6;
    v32 = "[NEMutableSensitiveData mutableSensitiveDataPrefilledWithMaxCapacity:%zu] failed";
    goto LABEL_51;
  }

  if (vector)
  {
    v5 = 32;
    if (vector != 2)
    {
      v5 = 0;
    }

    if (vector == 1)
    {
      v6 = 20;
    }

    else
    {
      v6 = v5;
    }

    goto LABEL_22;
  }

LABEL_35:

  v22 = *MEMORY[0x1E69E9840];
  return vector;
}

+ (NSObject)createRandomWithSize:(uint64_t)size
{
  v11 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a2)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "Invalid size 0", v10, 2u);
    }

    goto LABEL_10;
  }

  v3 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataWithMaxCapacity:a2];
  if (!v3)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10[0] = 67109120;
      v10[1] = a2;
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataWithMaxCapacity:%u] failed", v10, 8u);
    }

    v5 = 0;
LABEL_10:
    v6 = 0;
    goto LABEL_4;
  }

  v4 = v3;
  [NEIKEv2Crypto appendRandomBytesToData:v3 withSize:a2];
  v5 = v4;
  v6 = v5;
LABEL_4:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (NSObject)createHMACFromDataVector:(void *)vector key:(void *)key prfProtocol:
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a2;
  vectorCopy = vector;
  keyCopy = key;
  objc_opt_self();
  if (!vectorCopy)
  {
    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    ctx.ctx[0] = 136315138;
    *&ctx.ctx[1] = "+[NEIKEv2Crypto createHMACFromDataVector:key:prfProtocol:]";
    v24 = "%s called with null key";
LABEL_22:
    _os_log_fault_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_FAULT, v24, &ctx, 0xCu);
    goto LABEL_26;
  }

  if (!v6)
  {
    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    ctx.ctx[0] = 136315138;
    *&ctx.ctx[1] = "+[NEIKEv2Crypto createHMACFromDataVector:key:prfProtocol:]";
    v24 = "%s called with null dataVector";
    goto LABEL_22;
  }

  if (!keyCopy)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      ctx.ctx[0] = 136315138;
      *&ctx.ctx[1] = "+[NEIKEv2Crypto createHMACFromDataVector:key:prfProtocol:]";
      v24 = "%s called with null prfProtocol";
      goto LABEL_22;
    }

LABEL_26:
    v21 = 0;
    goto LABEL_15;
  }

  v9 = [(NEIKEv2PRFProtocol *)keyCopy length];
  v10 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataPrefilledWithMaxCapacity:v9];
  if (!v10)
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      ctx.ctx[0] = 67109120;
      ctx.ctx[1] = v9;
      _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataPrefilledWithMaxCapacity:%u] failed", &ctx, 8u);
    }

    v20 = 0;
    goto LABEL_26;
  }

  v11 = v10;
  memset(&ctx, 0, sizeof(ctx));
  ccHMAC = [(NEIKEv2PRFProtocol *)keyCopy ccHMAC];
  CCHmacInit(&ctx, ccHMAC, [vectorCopy bytes], objc_msgSend(vectorCopy, "length"));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [v18 length];
        if (v19)
        {
          CCHmacUpdate(&ctx, [v18 bytes], v19);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  CCHmacFinal(&ctx, [(__CFData *)v11 mutableBytes]);
  memset_s(&ctx, 0x180uLL, 0, 0x180uLL);
  v20 = v11;
  v21 = v20;
LABEL_15:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

+ (NSObject)createHMACFromData:(void *)data key:(void *)key prfProtocol:
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  dataCopy = data;
  keyCopy = key;
  objc_opt_self();
  if (!dataCopy)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v16 = "+[NEIKEv2Crypto createHMACFromData:key:prfProtocol:]";
      v13 = "%s called with null key";
      goto LABEL_13;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_5;
  }

  if (!v6)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v16 = "+[NEIKEv2Crypto createHMACFromData:key:prfProtocol:]";
      v13 = "%s called with null data";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!keyCopy)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    v16 = "+[NEIKEv2Crypto createHMACFromData:key:prfProtocol:]";
    v13 = "%s called with null prfProtocol";
LABEL_13:
    _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, v13, buf, 0xCu);
    goto LABEL_11;
  }

  v14 = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v10 = [NEIKEv2Crypto createHMACFromDataVector:v9 key:dataCopy prfProtocol:keyCopy];
LABEL_5:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (CFErrorRef)validateSignature:(void *)signature hashedData:(const __CFString *)data signatureAlgorithm:(__SecKey *)algorithm publicKey:
{
  v17 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  v9 = a2;
  objc_opt_self();
  error = 0;
  v10 = SecKeyVerifySignature(algorithm, data, signatureCopy, v9, &error);

  if (error)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = error;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Error when validating signature with public key: %@", buf, 0xCu);
    }

    result = error;
    if (error)
    {
      CFRelease(error);
      result = 0;
    }
  }

  else
  {
    result = (v10 != 0);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)validateSignature:(void *)signature signedDataVector:(void *)vector authProtocol:(__SecKey *)protocol publicKey:
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a2;
  signatureCopy = signature;
  vectorCopy = vector;
  objc_opt_self();
  if (![v8 length])
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v26 = 136315138;
    v27 = "+[NEIKEv2Crypto validateSignature:signedDataVector:authProtocol:publicKey:]";
    v23 = "%s called with null signatureData.length";
LABEL_32:
    _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v23, &v26, 0xCu);
    goto LABEL_33;
  }

  if (!signatureCopy)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v26 = 136315138;
    v27 = "+[NEIKEv2Crypto validateSignature:signedDataVector:authProtocol:publicKey:]";
    v23 = "%s called with null signedDataVector";
    goto LABEL_32;
  }

  if (!vectorCopy)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v26 = 136315138;
    v27 = "+[NEIKEv2Crypto validateSignature:signedDataVector:authProtocol:publicKey:]";
    v23 = "%s called with null authentication";
    goto LABEL_32;
  }

  signatureAlgorithm = [(NEIKEv2AuthenticationProtocol *)vectorCopy signatureAlgorithm];
  if (!signatureAlgorithm)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v26 = 138412290;
    v27 = vectorCopy;
    v23 = "Invalid signature protcocol %@";
    goto LABEL_32;
  }

  v12 = signatureAlgorithm;
  v13 = [(NEIKEv2AuthenticationProtocol *)vectorCopy copyHashForDataVector:signatureCopy];
  if (!v13)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v26 = 138412290;
      v27 = vectorCopy;
      _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "Failed to copy hashed data for %@", &v26, 0xCu);
    }

    v14 = 0;
    v18 = 0;
    goto LABEL_23;
  }

  v14 = v13;
  v15 = [NEIKEv2Crypto validateSignature:v8 hashedData:v13 signatureAlgorithm:v12 publicKey:protocol];
  v16 = ne_log_obj();
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "Failed to verify signature", &v26, 2u);
    }

    if ([vectorCopy method] == 1)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_INFO, "Retrying legacy RSA signature verification using SHA-256", &v26, 2u);
      }

      v20 = [NEIKEv2Crypto copyHashForDataVector:signatureCopy hashType:2];
      v21 = [NEIKEv2Crypto validateSignature:v8 hashedData:v20 signatureAlgorithm:*MEMORY[0x1E697B188] publicKey:protocol];
      v22 = ne_log_obj();
      v17 = v22;
      if (v21)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v26) = 0;
          _os_log_debug_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEBUG, "Peer signature is valid on second try", &v26, 2u);
        }

        v18 = 1;
      }

      else
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v26) = 0;
          _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "Failed to verify signature on second try", &v26, 2u);
        }

        v18 = 0;
      }

      v14 = v20;
      goto LABEL_23;
    }

LABEL_33:
    v18 = 0;
    goto LABEL_34;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v26) = 0;
    _os_log_debug_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEBUG, "Peer signature is valid", &v26, 2u);
  }

  v18 = 1;
LABEL_23:

LABEL_34:
  v24 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (BOOL)validateCalculatedSharedKeyAuthData:(void *)data remoteAuthData:
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  dataCopy = data;
  objc_opt_self();
  v6 = [v4 length];
  if (v6 == [dataCopy length])
  {
    [v4 length];
    [v4 bytes];
    [dataCopy bytes];
    v7 = cc_cmp_safe() == 0;
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 134218240;
      v12 = [v4 length];
      v13 = 2048;
      v14 = [dataCopy length];
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "calculatedAuthData.length(%zu) != authenticationData.length(%zu)", &v11, 0x16u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (uint64_t)isRemoteAuthenticationPacketProtocol:(void *)protocol compatibleWithConfiguredProtocol:
{
  v4 = a2;
  protocolCopy = protocol;
  objc_opt_self();
  if ([protocolCopy isEqual:v4])
  {
    goto LABEL_2;
  }

  if (![protocolCopy isDigitalSignature])
  {
    if ([v4 isDigitalSignature])
    {
      if (v4)
      {
        method = [v4 method];
        if (method == 245 || method == 14 && ([v4 digitalSignatureAlgorithm] - 9) <= 2)
        {
          isRSA = [(NEIKEv2AuthenticationProtocol *)protocolCopy isRSA];
          goto LABEL_23;
        }

        method2 = [v4 method];
        if (method2 == 1 || method2 == 14 && (v10 = [v4 digitalSignatureAlgorithm], v10 <= 6) && ((0x62u >> v10) & 1) != 0)
        {
          isRSA = [protocolCopy method] == 1;
          goto LABEL_23;
        }
      }

      if ([(NEIKEv2AuthenticationProtocol *)v4 isECDSA]&& [(NEIKEv2AuthenticationProtocol *)protocolCopy isECDSA])
      {
        v11 = [NEIKEv2Crypto copySignHashSetForAuthMethod:protocolCopy];
        v12 = [NEIKEv2Crypto copySignHashProtocolForAuth:v4];
        isRSA = [v11 containsObject:v12];

        goto LABEL_23;
      }
    }

LABEL_22:
    isRSA = 0;
    goto LABEL_23;
  }

  digitalSignatureAlgorithm = [protocolCopy digitalSignatureAlgorithm];
  if (digitalSignatureAlgorithm != [v4 digitalSignatureAlgorithm] || (objc_msgSend(protocolCopy, "isNonStandard") & 1) == 0 && (objc_msgSend(v4, "isNonStandard") & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_2:
  isRSA = 1;
LABEL_23:

  return isRSA;
}

+ (uint64_t)copySignHashSetForAuthMethod:(uint64_t)method
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [NEIKEv2Crypto copySignHashProtocolForAuth:v2];
  if (!v3 || ![v2 isDigitalSignature])
  {
    if ([(NEIKEv2AuthenticationProtocol *)v2 isRSA])
    {
      v7 = [[NEIKEv2SignatureHashProtocol alloc] initWithHashType:4];
      v17[0] = v7;
      v8 = [[NEIKEv2SignatureHashProtocol alloc] initWithHashType:3];
      v17[1] = v8;
      v9 = [[NEIKEv2SignatureHashProtocol alloc] initWithHashType:2];
      v17[2] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];

      v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v10];
      goto LABEL_13;
    }

    if (![(NEIKEv2AuthenticationProtocol *)v2 isECDSA])
    {
      v6 = 0;
      goto LABEL_13;
    }

    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    [v11 addObject:v3];
    hashType = [v3 hashType];
    if (hashType != 3)
    {
      if (hashType != 2)
      {
LABEL_11:
        v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v11];

        goto LABEL_13;
      }

      v13 = [[NEIKEv2SignatureHashProtocol alloc] initWithHashType:3];

      [v11 addObject:v13];
      v3 = v13;
    }

    v14 = [[NEIKEv2SignatureHashProtocol alloc] initWithHashType:4];

    [v11 addObject:v14];
    v3 = v14;
    goto LABEL_11;
  }

  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v18[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v6 = [v4 initWithArray:v5];

LABEL_13:
  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (uint64_t)copySignHashProtocolForAuth:(uint64_t)auth
{
  v2 = a2;
  objc_opt_self();
  hashType = [(NEIKEv2AuthenticationProtocol *)v2 hashType];

  if (!hashType)
  {
    return 0;
  }

  v4 = [NEIKEv2SignatureHashProtocol alloc];

  return [(NEIKEv2SignatureHashProtocol *)v4 initWithHashType:hashType];
}

+ (id)copySignHashDataForSet:(void *)set authenticationSet:
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2;
  setCopy = set;
  v6 = objc_opt_self();
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = setCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [NEIKEv2Crypto copySignHashSetForAuthMethod:?];
        [v7 unionSet:{v13, v17}];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(NEIKEv2Crypto *)v6 copySignHashDataForSet:v7];
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)copySignHashDataForSet:(uint64_t)set
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if ([v2 count])
  {
    allObjects = [v2 allObjects];
    v4 = [allObjects sortedArrayUsingSelector:sel_compare_];

    v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{2 * objc_msgSend(v4, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    reverseObjectEnumerator = [v4 reverseObjectEnumerator];
    v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          hashType = [*(*(&v16 + 1) + 8 * v10) hashType];
          v15 = bswap32(hashType) >> 16;
          if (hashType)
          {
            [v5 appendBytes:&v15 length:2];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    if ([v5 length])
    {
      v12 = v5;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)copySignHashDataForSet:(void *)set authentication:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  setCopy = set;
  v6 = objc_opt_self();
  v7 = v6;
  if (setCopy)
  {
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v14[0] = setCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v10 = [v8 initWithArray:v9];
    v11 = [(NEIKEv2Crypto *)v7 copySignHashDataForSet:v4 authenticationSet:v10];
  }

  else
  {
    v11 = [(NEIKEv2Crypto *)v6 copySignHashDataForSet:v4];
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (void)copySignHashSetForData:(uint64_t)data
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [v2 length];
  if (!v3)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v4 = v3;
  if (v3)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = v4;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Sign hash data length %zu is not divisible by sizeof(uint16_t)", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v5 = v3 >> 1;
  v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v3 >> 1];
  v7 = 0;
  *&v8 = 134217984;
  v14 = v8;
  do
  {
    v15 = 0;
    [v2 getBytes:&v15 range:{v7, 2, v14}];
    v9 = bswap32(v15) >> 16;
    if ((v9 - 6) > 0xFFFAu)
    {
      v10 = [[NEIKEv2SignatureHashProtocol alloc] initWithHashType:v9];
      [v6 addObject:v10];
    }

    else
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_INFO))
      {
        *buf = v14;
        v17 = v9;
        _os_log_impl(&dword_1BA83C000, &v10->super, OS_LOG_TYPE_INFO, "Ignoring sign hash algorithm %zu", buf, 0xCu);
      }
    }

    v7 += 2;
    --v5;
  }

  while (v5);
LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (uint64_t)createNATDetectionHashForInitiatorSPI:(void *)i responderSPI:(void *)pI address:
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a2;
  iCopy = i;
  pICopy = pI;
  objc_opt_self();
  if (pICopy)
  {
    if ([pICopy addressFamily] == 2)
    {
      v9 = 4;
      v10 = 4;
LABEL_9:
      address = [pICopy address];
      v20 = *(address + 2);
      data = [v6 value];
      value = [iCopy value];
      memset(&buf, 0, sizeof(buf));
      CC_SHA1_Init(&buf);
      CC_SHA1_Update(&buf, &data, 8u);
      CC_SHA1_Update(&buf, &value, 8u);
      CC_SHA1_Update(&buf, (address + v9), v10);
      CC_SHA1_Update(&buf, &v20, 2u);
      CC_SHA1_Final(md, &buf);
      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:20];
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *v21 = 138413058;
        v22 = v12;
        v23 = 2112;
        v24 = v6;
        v25 = 2112;
        v26 = iCopy;
        v27 = 2112;
        v28 = pICopy;
        _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "Created NAT hash (%@) for %@ : %@ : %@", v21, 0x2Au);
      }

      goto LABEL_15;
    }

    if ([pICopy addressFamily] == 30)
    {
      v10 = 16;
      v9 = 8;
      goto LABEL_9;
    }

    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      buf.h0 = 67109120;
      buf.h1 = [pICopy addressFamily];
      _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "Unknown address family %u", &buf, 8u);
    }

    v12 = 0;
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      buf.h0 = 138412546;
      *&buf.h1 = v6;
      LOWORD(buf.h3) = 2112;
      *(&buf.h3 + 2) = iCopy;
      _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "Generating fake NAT detection hash for %@ %@", &buf, 0x16u);
    }

    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&createNATDetectionHashForInitiatorSPI_responderSPI_address__hashBytes length:20];
  }

LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (uint64_t)copyCertificateFromPersistentData:(int)data isModernSystem:
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  v5 = ne_log_obj();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *result = 138412546;
      *&result[4] = v4;
      v27 = 1024;
      dataCopy = data;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "copyCertificateFromPersistentData: %@ isModernSystem %d", result, 0x12u);
    }

    v7 = *MEMORY[0x1E697B328];
    v8 = *MEMORY[0x1E695E4D0];
    v9 = *MEMORY[0x1E697B3C8];
    if (data)
    {
      v22[0] = *MEMORY[0x1E697B328];
      v22[1] = v9;
      v10 = *MEMORY[0x1E697B3A8];
      v22[2] = *MEMORY[0x1E697AFF8];
      v22[3] = v10;
      v23[0] = v8;
      v23[1] = v4;
      v23[2] = *MEMORY[0x1E697B000];
      v23[3] = v8;
      v11 = MEMORY[0x1E695DF20];
      v12 = v23;
      v13 = v22;
    }

    else
    {
      v24[0] = *MEMORY[0x1E697B328];
      v24[1] = v9;
      v14 = *MEMORY[0x1E697B3A8];
      v24[2] = *MEMORY[0x1E697AFF8];
      v24[3] = v14;
      v25[0] = v8;
      v25[1] = v4;
      v25[2] = *MEMORY[0x1E697B000];
      v25[3] = v8;
      v11 = MEMORY[0x1E695DF20];
      v12 = v25;
      v13 = v24;
    }

    v6 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:4];
    *result = 0;
    v15 = SecItemCopyMatching(v6, result);
    if (!v15)
    {
      v18 = *result;
      goto LABEL_14;
    }

    v16 = v15;
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21[0] = 67109120;
      v21[1] = v16;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "Failed to retrieve certificate from persistent data (%d)", v21, 8u);
    }

    if (*result)
    {
      CFRelease(*result);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *result = 136315138;
    *&result[4] = "+[NEIKEv2Crypto copyCertificateFromPersistentData:isModernSystem:]";
    _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null persistentData", result, 0xCu);
  }

  v18 = 0;
LABEL_14:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (NSObject)copyDataFromPersistentReference:(uint64_t)reference
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = *MEMORY[0x1E695E4D0];
    v4 = *MEMORY[0x1E697B3C8];
    v15[0] = *MEMORY[0x1E697B318];
    v15[1] = v4;
    v5 = *MEMORY[0x1E697B3A8];
    v15[2] = *MEMORY[0x1E697AFF8];
    v15[3] = v5;
    v16[0] = v3;
    v16[1] = v2;
    v16[2] = *MEMORY[0x1E697B008];
    v16[3] = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
    *result = 0;
    v7 = SecItemCopyMatching(v6, result);
    v8 = *result;
    if (!*result || v7 || (v9 = CFGetTypeID(*result), TypeID = CFDataGetTypeID(), v8 = *result, v9 != TypeID))
    {
      if (v8)
      {
        CFRelease(v8);
        *result = 0;
      }

      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "SecItemCopyMatching", v14, 2u);
      }

      v11 = 0;
      goto LABEL_12;
    }

    *result = 0;
    if (![(NSData *)MEMORY[0x1E695DEF0] isSensitiveDataInstance:v8])
    {
      v11 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithData:v8];
LABEL_12:

      v8 = v11;
    }
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *result = 136315138;
      *&result[4] = "+[NEIKEv2Crypto copyDataFromPersistentReference:]";
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null persistentReference", result, 0xCu);
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (uint64_t)copySecIdentity:(void *)identity keyData:(int)data isModernSystem:
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a2;
  identityCopy = identity;
  objc_opt_self();
  if (v6)
  {
    if (identityCopy && [identityCopy length])
    {
      v8 = v6;
      v9 = identityCopy;
      v10 = objc_opt_self();
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *result = 138412802;
        *&result[4] = v8;
        *&result[12] = 2112;
        *&result[14] = v9;
        *&result[22] = 1024;
        LODWORD(v52) = data;
        _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "copySecIdentityFromModernDP %@ %@ %d", result, 0x1Cu);
      }

      v12 = [(NEIKEv2Crypto *)v10 copyCertificateFromPersistentData:v8 isModernSystem:data];
      if (v12)
      {
        v13 = v12;
        v14 = v9;
        objc_opt_self();
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *v53 = 138412546;
          *&v53[4] = v14;
          v54 = 1024;
          dataCopy = data;
          _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "copyKeyFromPersistentData: %@ isModernSystem %d", v53, 0x12u);
        }

        v16 = *MEMORY[0x1E697B328];
        v17 = *MEMORY[0x1E695E4D0];
        v18 = *MEMORY[0x1E697B3C8];
        if (data)
        {
          v45[0] = *MEMORY[0x1E697B328];
          v45[1] = v18;
          v19 = *MEMORY[0x1E697B3A8];
          v45[2] = *MEMORY[0x1E697AFF8];
          v45[3] = v19;
          v46[0] = v17;
          v46[1] = v14;
          v46[2] = *MEMORY[0x1E697B020];
          v46[3] = v17;
          v20 = MEMORY[0x1E695DF20];
          v21 = v46;
          v22 = v45;
        }

        else
        {
          *buf = *MEMORY[0x1E697B328];
          v48 = v18;
          v31 = *MEMORY[0x1E697B3A8];
          v49 = *MEMORY[0x1E697AFF8];
          v50 = v31;
          *result = v17;
          *&result[8] = v14;
          *&result[16] = *MEMORY[0x1E697B020];
          v52 = v17;
          v20 = MEMORY[0x1E695DF20];
          v21 = result;
          v22 = buf;
        }

        v32 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:4];
        *v53 = 0;
        v33 = SecItemCopyMatching(v32, v53);
        if (v33)
        {
          v34 = v33;
          v35 = ne_log_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *v43 = 67109120;
            v44 = v34;
            _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "Failed to retrieve private key from persistent data (%d)", v43, 8u);
          }

          if (*v53)
          {
            CFRelease(*v53);
          }

          goto LABEL_27;
        }

        v39 = *v53;

        if (!v39)
        {
LABEL_27:
          v36 = ne_log_obj();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *result = 0;
            _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "Failed to retrieve certificate key reference for configured local certificate", result, 2u);
          }

          CFRelease(v13);
          goto LABEL_30;
        }

        v29 = SecIdentityCreate();
        CFRelease(v13);
        CFRelease(v39);
        if (v29)
        {
          goto LABEL_31;
        }

        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *result = 0;
          v40 = "Failed to create identity reference for configured local certificate";
LABEL_38:
          _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, v40, result, 2u);
        }
      }

      else
      {
        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *result = 0;
          v40 = "Failed to retrieve certificate reference for configured local certificate";
          goto LABEL_38;
        }
      }

LABEL_30:
      v29 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v23 = *MEMORY[0x1E695E4D0];
    v24 = *MEMORY[0x1E697B3C8];
    v41[0] = *MEMORY[0x1E697B328];
    v41[1] = v24;
    v25 = *MEMORY[0x1E697B3A8];
    v41[2] = *MEMORY[0x1E697AFF8];
    v41[3] = v25;
    v42[0] = v23;
    v42[1] = v6;
    v42[2] = *MEMORY[0x1E697B010];
    v42[3] = v23;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:4];
    *result = 0;
    v26 = SecItemCopyMatching(v8, result);
    if (!v26)
    {
      v29 = *result;
      goto LABEL_32;
    }

    v27 = v26;
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "Failed to retrieve data for configured local certificate identity (%d)", buf, 8u);
    }

    if (*result)
    {
      CFRelease(*result);
    }
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *result = 136315138;
      *&result[4] = "+[NEIKEv2Crypto copySecIdentity:keyData:isModernSystem:]";
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null certIdentityData", result, 0xCu);
    }
  }

  v29 = 0;
LABEL_32:

  v37 = *MEMORY[0x1E69E9840];
  return v29;
}

@end