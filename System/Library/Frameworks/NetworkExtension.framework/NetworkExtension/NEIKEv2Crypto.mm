@interface NEIKEv2Crypto
+ (BOOL)validateCalculatedSharedKeyAuthData:(void *)a3 remoteAuthData:;
+ (CFErrorRef)validateSignature:(void *)a3 hashedData:(const __CFString *)a4 signatureAlgorithm:(__SecKey *)a5 publicKey:;
+ (NSObject)copyDataFromPersistentReference:(uint64_t)a1;
+ (NSObject)createHMACFromData:(void *)a3 key:(void *)a4 prfProtocol:;
+ (NSObject)createHMACFromDataVector:(void *)a3 key:(void *)a4 prfProtocol:;
+ (NSObject)createRandomWithSize:(uint64_t)a1;
+ (id)copySignHashDataForSet:(uint64_t)a1;
+ (id)copySignHashDataForSet:(void *)a3 authentication:;
+ (id)copySignHashDataForSet:(void *)a3 authenticationSet:;
+ (uint64_t)copyCertificateFromPersistentData:(int)a3 isModernSystem:;
+ (uint64_t)copyHashForDataVector:(uint64_t)a3 hashType:;
+ (uint64_t)copySecIdentity:(void *)a3 keyData:(int)a4 isModernSystem:;
+ (uint64_t)copySignHashProtocolForAuth:(uint64_t)a1;
+ (uint64_t)copySignHashSetForAuthMethod:(uint64_t)a1;
+ (uint64_t)createNATDetectionHashForInitiatorSPI:(void *)a3 responderSPI:(void *)a4 address:;
+ (uint64_t)isRemoteAuthenticationPacketProtocol:(void *)a3 compatibleWithConfiguredProtocol:;
+ (uint64_t)validateSignature:(void *)a3 signedDataVector:(void *)a4 authProtocol:(__SecKey *)a5 publicKey:;
+ (void)appendRandomBytesToData:(unsigned int)a3 withSize:;
+ (void)copySignHashSetForData:(uint64_t)a1;
@end

@implementation NEIKEv2Crypto

+ (void)appendRandomBytesToData:(unsigned int)a3 withSize:
{
  v4 = a2;
  objc_opt_self();
  if (a3)
  {
    v5 = [v4 length];
    [v4 setLength:v5 + a3];
    v6 = [v4 mutableBytes];
    objc_opt_self();
    arc4random_buf((v6 + v5), a3);
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

+ (uint64_t)copyHashForDataVector:(uint64_t)a3 hashType:
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  if (a3 > 2)
  {
    switch(a3)
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

          a3 = 0;
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
      a3 = v21;
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

  if (a3)
  {
    v5 = 32;
    if (a3 != 2)
    {
      v5 = 0;
    }

    if (a3 == 1)
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
  return a3;
}

+ (NSObject)createRandomWithSize:(uint64_t)a1
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

+ (NSObject)createHMACFromDataVector:(void *)a3 key:(void *)a4 prfProtocol:
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  if (!v7)
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

  if (!v8)
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

  v9 = [(NEIKEv2PRFProtocol *)v8 length];
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
  v12 = [(NEIKEv2PRFProtocol *)v8 ccHMAC];
  CCHmacInit(&ctx, v12, [v7 bytes], objc_msgSend(v7, "length"));
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

+ (NSObject)createHMACFromData:(void *)a3 key:(void *)a4 prfProtocol:
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  if (!v7)
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

  if (!v8)
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
  v10 = [NEIKEv2Crypto createHMACFromDataVector:v9 key:v7 prfProtocol:v8];
LABEL_5:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (CFErrorRef)validateSignature:(void *)a3 hashedData:(const __CFString *)a4 signatureAlgorithm:(__SecKey *)a5 publicKey:
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a2;
  objc_opt_self();
  error = 0;
  v10 = SecKeyVerifySignature(a5, a4, v8, v9, &error);

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

+ (uint64_t)validateSignature:(void *)a3 signedDataVector:(void *)a4 authProtocol:(__SecKey *)a5 publicKey:
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
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

  if (!v9)
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

  if (!v10)
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

  v11 = [(NEIKEv2AuthenticationProtocol *)v10 signatureAlgorithm];
  if (!v11)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_33;
    }

    v26 = 138412290;
    v27 = v10;
    v23 = "Invalid signature protcocol %@";
    goto LABEL_32;
  }

  v12 = v11;
  v13 = [(NEIKEv2AuthenticationProtocol *)v10 copyHashForDataVector:v9];
  if (!v13)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v26 = 138412290;
      v27 = v10;
      _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "Failed to copy hashed data for %@", &v26, 0xCu);
    }

    v14 = 0;
    v18 = 0;
    goto LABEL_23;
  }

  v14 = v13;
  v15 = [NEIKEv2Crypto validateSignature:v8 hashedData:v13 signatureAlgorithm:v12 publicKey:a5];
  v16 = ne_log_obj();
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "Failed to verify signature", &v26, 2u);
    }

    if ([v10 method] == 1)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_INFO, "Retrying legacy RSA signature verification using SHA-256", &v26, 2u);
      }

      v20 = [NEIKEv2Crypto copyHashForDataVector:v9 hashType:2];
      v21 = [NEIKEv2Crypto validateSignature:v8 hashedData:v20 signatureAlgorithm:*MEMORY[0x1E697B188] publicKey:a5];
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

+ (BOOL)validateCalculatedSharedKeyAuthData:(void *)a3 remoteAuthData:
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [v4 length];
  if (v6 == [v5 length])
  {
    [v4 length];
    [v4 bytes];
    [v5 bytes];
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
      v14 = [v5 length];
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "calculatedAuthData.length(%zu) != authenticationData.length(%zu)", &v11, 0x16u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (uint64_t)isRemoteAuthenticationPacketProtocol:(void *)a3 compatibleWithConfiguredProtocol:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if ([v5 isEqual:v4])
  {
    goto LABEL_2;
  }

  if (![v5 isDigitalSignature])
  {
    if ([v4 isDigitalSignature])
    {
      if (v4)
      {
        v8 = [v4 method];
        if (v8 == 245 || v8 == 14 && ([v4 digitalSignatureAlgorithm] - 9) <= 2)
        {
          v6 = [(NEIKEv2AuthenticationProtocol *)v5 isRSA];
          goto LABEL_23;
        }

        v9 = [v4 method];
        if (v9 == 1 || v9 == 14 && (v10 = [v4 digitalSignatureAlgorithm], v10 <= 6) && ((0x62u >> v10) & 1) != 0)
        {
          v6 = [v5 method] == 1;
          goto LABEL_23;
        }
      }

      if ([(NEIKEv2AuthenticationProtocol *)v4 isECDSA]&& [(NEIKEv2AuthenticationProtocol *)v5 isECDSA])
      {
        v11 = [NEIKEv2Crypto copySignHashSetForAuthMethod:v5];
        v12 = [NEIKEv2Crypto copySignHashProtocolForAuth:v4];
        v6 = [v11 containsObject:v12];

        goto LABEL_23;
      }
    }

LABEL_22:
    v6 = 0;
    goto LABEL_23;
  }

  v7 = [v5 digitalSignatureAlgorithm];
  if (v7 != [v4 digitalSignatureAlgorithm] || (objc_msgSend(v5, "isNonStandard") & 1) == 0 && (objc_msgSend(v4, "isNonStandard") & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_2:
  v6 = 1;
LABEL_23:

  return v6;
}

+ (uint64_t)copySignHashSetForAuthMethod:(uint64_t)a1
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
    v12 = [v3 hashType];
    if (v12 != 3)
    {
      if (v12 != 2)
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

+ (uint64_t)copySignHashProtocolForAuth:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [(NEIKEv2AuthenticationProtocol *)v2 hashType];

  if (!v3)
  {
    return 0;
  }

  v4 = [NEIKEv2SignatureHashProtocol alloc];

  return [(NEIKEv2SignatureHashProtocol *)v4 initWithHashType:v3];
}

+ (id)copySignHashDataForSet:(void *)a3 authenticationSet:
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
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

+ (id)copySignHashDataForSet:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if ([v2 count])
  {
    v3 = [v2 allObjects];
    v4 = [v3 sortedArrayUsingSelector:sel_compare_];

    v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{2 * objc_msgSend(v4, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v4 reverseObjectEnumerator];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v16 + 1) + 8 * v10) hashType];
          v15 = bswap32(v11) >> 16;
          if (v11)
          {
            [v5 appendBytes:&v15 length:2];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (id)copySignHashDataForSet:(void *)a3 authentication:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v7 = v6;
  if (v5)
  {
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v14[0] = v5;
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

+ (void)copySignHashSetForData:(uint64_t)a1
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

+ (uint64_t)createNATDetectionHashForInitiatorSPI:(void *)a3 responderSPI:(void *)a4 address:
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  if (v8)
  {
    if ([v8 addressFamily] == 2)
    {
      v9 = 4;
      v10 = 4;
LABEL_9:
      v13 = [v8 address];
      v20 = *(v13 + 2);
      data = [v6 value];
      v18 = [v7 value];
      memset(&buf, 0, sizeof(buf));
      CC_SHA1_Init(&buf);
      CC_SHA1_Update(&buf, &data, 8u);
      CC_SHA1_Update(&buf, &v18, 8u);
      CC_SHA1_Update(&buf, (v13 + v9), v10);
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
        v26 = v7;
        v27 = 2112;
        v28 = v8;
        _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "Created NAT hash (%@) for %@ : %@ : %@", v21, 0x2Au);
      }

      goto LABEL_15;
    }

    if ([v8 addressFamily] == 30)
    {
      v10 = 16;
      v9 = 8;
      goto LABEL_9;
    }

    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      buf.h0 = 67109120;
      buf.h1 = [v8 addressFamily];
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
      *(&buf.h3 + 2) = v7;
      _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "Generating fake NAT detection hash for %@ %@", &buf, 0x16u);
    }

    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&createNATDetectionHashForInitiatorSPI_responderSPI_address__hashBytes length:20];
  }

LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (uint64_t)copyCertificateFromPersistentData:(int)a3 isModernSystem:
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
      v28 = a3;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "copyCertificateFromPersistentData: %@ isModernSystem %d", result, 0x12u);
    }

    v7 = *MEMORY[0x1E697B328];
    v8 = *MEMORY[0x1E695E4D0];
    v9 = *MEMORY[0x1E697B3C8];
    if (a3)
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

+ (NSObject)copyDataFromPersistentReference:(uint64_t)a1
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

+ (uint64_t)copySecIdentity:(void *)a3 keyData:(int)a4 isModernSystem:
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  if (v6)
  {
    if (v7 && [v7 length])
    {
      v8 = v6;
      v9 = v7;
      v10 = objc_opt_self();
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *result = 138412802;
        *&result[4] = v8;
        *&result[12] = 2112;
        *&result[14] = v9;
        *&result[22] = 1024;
        LODWORD(v52) = a4;
        _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "copySecIdentityFromModernDP %@ %@ %d", result, 0x1Cu);
      }

      v12 = [(NEIKEv2Crypto *)v10 copyCertificateFromPersistentData:v8 isModernSystem:a4];
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
          v55 = a4;
          _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "copyKeyFromPersistentData: %@ isModernSystem %d", v53, 0x12u);
        }

        v16 = *MEMORY[0x1E697B328];
        v17 = *MEMORY[0x1E695E4D0];
        v18 = *MEMORY[0x1E697B3C8];
        if (a4)
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