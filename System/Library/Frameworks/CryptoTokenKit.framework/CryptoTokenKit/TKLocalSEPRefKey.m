@interface TKLocalSEPRefKey
- (BOOL)deleteWithError:(id *)a3;
- (id)_initWithKeyType:(id)a3 keySize:(int64_t)a4 accessControl:(__SecAccessControl *)a5 options:(id)a6 authContext:(id)a7 caller:(id)a8 forceSystemSession:(BOOL)a9 error:(id *)a10;
- (id)attestKey:(id)a3 nonce:(id)a4 error:(id *)a5;
- (id)computeSharedSecret:(id)a3 error:(id *)a4;
- (id)decapsulateKey:(id)a3 error:(id *)a4;
- (id)description;
- (id)keySize;
- (id)keyType;
- (id)objectID;
- (id)publicKeyWithError:(id *)a3;
- (id)recryptData:(id)a3 attributes:(id)a4 error:(id *)a5;
- (id)signDigest:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation TKLocalSEPRefKey

- (id)objectID
{
  AKSRefKey = self->_AKSRefKey;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:aks_ref_key_get_blob() length:0];

  return v3;
}

- (void)dealloc
{
  if (self->_AKSRefKey)
  {
    aks_ref_key_free();
  }

  v3.receiver = self;
  v3.super_class = TKLocalSEPRefKey;
  [(TKLocalSEPRefKey *)&v3 dealloc];
}

- (id)keyType
{
  AKSRefKey = self->_AKSRefKey;
  type = aks_ref_key_get_type();
  v6 = type;
  if (type > 6)
  {
    if (type <= 0x10)
    {
      if (((1 << type) & 0x600) != 0)
      {
        v9 = MEMORY[0x1E697AD90];
        goto LABEL_23;
      }

      if (((1 << type) & 0x6000) != 0)
      {
        v9 = MEMORY[0x1E697ADA0];
        goto LABEL_23;
      }

      if (((1 << type) & 0x18000) != 0)
      {
        v9 = MEMORY[0x1E697AD98];
LABEL_23:
        v10 = *v9;
        goto LABEL_24;
      }
    }

    if (type == 7)
    {
      goto LABEL_19;
    }

    if (type == 8)
    {
LABEL_18:
      v9 = MEMORY[0x1E697AD80];
      goto LABEL_23;
    }
  }

  else
  {
    if (type > 3)
    {
      if (type != 4)
      {
        if (type != 5)
        {
          v7 = self->_AKSRefKey;
          options = aks_ref_key_get_options();
          v9 = MEMORY[0x1E697ADB8];
          if ((options & 0x40) != 0)
          {
            v9 = MEMORY[0x1E697ADB0];
          }

          goto LABEL_23;
        }

        goto LABEL_18;
      }

LABEL_19:
      v9 = MEMORY[0x1E697AD78];
      goto LABEL_23;
    }

    if (type == 1)
    {
      v9 = MEMORY[0x1E697ADC0];
      goto LABEL_23;
    }

    if (type == 3)
    {
      v9 = MEMORY[0x1E697AD88];
      goto LABEL_23;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"TKLocalSEPKey.m" lineNumber:887 description:{@"Unexpected aks_key_type %d", v6}];

  v10 = &stru_1F5A7A8A8;
LABEL_24:

  return v10;
}

- (id)keySize
{
  AKSRefKey = self->_AKSRefKey;
  v3 = aks_ref_key_get_type() - 1;
  if (v3 > 0xF)
  {
    return &unk_1F5A85120;
  }

  else
  {
    return qword_1E86B7A40[v3];
  }
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_AKSRefKey)
  {
    handle = aks_ref_key_get_handle();
    if (handle != 0 && handle < 0xFFFFFFFA)
    {
      v4 = "";
    }

    else
    {
      v4 = (&off_1E86B7998)[handle + 6];
    }

    AKSRefKey = self->_AKSRefKey;
    v8 = aks_ref_key_get_type() - 1;
    if (v8 > 0xD)
    {
      v6 = "*";
    }

    else
    {
      v6 = off_1E86B79D0[v8];
    }

    debugID = self->_debugID;
    if (!debugID)
    {
      v14 = 0;
      v9 = self->_AKSRefKey;
      aks_ref_key_get_public_key();
      v15 = 0;
      v16 = 0;
      LODWORD(v17) = 0;
      ccsha1_di();
      ccdigest();
      v10 = 0;
      debugID = 0;
      do
      {
        debugID = *(&v15 + v10++) | (debugID << 8);
      }

      while (v10 != 8);
      self->_debugID = debugID;
    }
  }

  else
  {
    debugID = self->_debugID;
    v6 = "*";
    v4 = "";
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<sepk:%s%s kid=%016llx>", v6, v4, debugID, v14, v15, v16, v17, v18];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_initWithKeyType:(id)a3 keySize:(int64_t)a4 accessControl:(__SecAccessControl *)a5 options:(id)a6 authContext:(id)a7 caller:(id)a8 forceSystemSession:(BOOL)a9 error:(id *)a10
{
  v48[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a6;
  v17 = [(TKLocalSEPKey *)self _initWithAuthContext:a7 caller:a8];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 authContextWithError:a10];
    if (!v19)
    {
LABEL_24:
      v42 = 0;
      goto LABEL_29;
    }

    v20 = v19;
    if (([v15 isEqual:*MEMORY[0x1E697ADB8]] & 1) == 0 && (objc_msgSend(v15, "isEqual:", *MEMORY[0x1E697ADB0]) & 1) == 0 && !objc_msgSend(v15, "isEqual:", *MEMORY[0x1E697AD80]) && (objc_msgSend(v15, "isEqual:", *MEMORY[0x1E697AD88]) & 1) == 0 && (objc_msgSend(v15, "isEqual:", *MEMORY[0x1E697ADC0]) & 1) == 0 && !objc_msgSend(v15, "isEqual:", *MEMORY[0x1E697AD90]) && !objc_msgSend(v15, "isEqual:", *MEMORY[0x1E697ADA0]))
    {
      [v15 isEqual:*MEMORY[0x1E697AD98]];
    }

    [v18 setSac:a5];
    v21 = objc_opt_class();
    [v18 accessControl];
    [v21 keyClassForProtection:SecAccessControlGetProtection()];
    v22 = [v20 ACMHandle];
    v23 = [v18 parametersWithACMHandle:v22];

    if ([v18 accessControl])
    {
      [v18 accessControl];
      v24 = SecAccessControlGetConstraints();
      if (v24)
      {
        v25 = [TKBERTLVRecord alloc];
        v47 = @"acl";
        v48[0] = v24;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
        v27 = [(TKBERTLVRecord *)v25 initWithPropertyList:v26];
        [(TKTLVRecord *)v27 data];
        v28 = v46 = v16;

        [v23 setData:v28 forKey:2];
      }
    }

    v29 = [v16 objectForKeyedSubscript:{*MEMORY[0x1E697B200], v46}];
    v30 = [v29 BOOLValue];

    if (v30)
    {
      v31 = 4;
    }

    else
    {
      v31 = 0;
    }

    v32 = [v16 objectForKeyedSubscript:@"ECCompactable"];
    v33 = [v32 BOOLValue];

    if (v33)
    {
      v31 |= 0x10uLL;
    }

    v34 = [v16 objectForKeyedSubscript:*MEMORY[0x1E697B238]];
    v35 = [v34 BOOLValue];

    v36 = v31 | v35;
    v37 = [v16 objectForKeyedSubscript:*MEMORY[0x1E697B248]];
    v38 = [v37 BOOLValue];

    if (v38)
    {
      v39 = v36 | 0x100;
    }

    else
    {
      v39 = v36;
    }

    if ([v15 isEqual:*MEMORY[0x1E697ADB0]])
    {
      v40 = v39 | 0x40;
    }

    else
    {
      v40 = v39;
    }

    if (v40)
    {
      [v23 setNumber:v40 forKey:9];
    }

    [objc_opt_class() keybagHandleForceSystemSession:a9];
    [v23 bytes];
    [v23 length];
    v41 = aks_ref_key_create();
    if (v41)
    {
      v18[6] = 0;
      [v18 error:a10 withAKSReturn:v41 ACMHandle:0 AKSOperation:0 params:v23 message:@"unable to generate key"];

      goto LABEL_24;
    }
  }

  v43 = TK_LOG_sepkey_0();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [TKLocalSEPRefKey _initWithKeyType:keySize:accessControl:options:authContext:caller:forceSystemSession:error:];
  }

  v42 = v18;
LABEL_29:

  v44 = *MEMORY[0x1E69E9840];
  return v42;
}

- (BOOL)deleteWithError:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(TKLocalSEPKey *)self authContextWithError:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 ACMHandle];
    v8 = [(TKLocalSEPKey *)self parametersWithACMHandle:v7];

    AKSRefKey = self->_AKSRefKey;
    [v8 bytes];
    [v8 length];
    v10 = aks_ref_key_delete();
    v11 = v10;
    if (v10 != -536363001)
    {
      if (!v10)
      {
LABEL_8:
        v13 = TK_LOG_sepkey_0();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [TKLocalSEPRefKey deleteWithError:];
        }

        v14 = 1;
        goto LABEL_13;
      }

      if (v10 != -536362989)
      {
        v15 = [v6 ACMHandle];
        [(TKLocalSEPKey *)self error:a3 withAKSReturn:v11 ACMHandle:v15 AKSOperation:@"odel" params:v8 message:@"unable to delete key"];

        v14 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    v12 = TK_LOG_sepkey_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 67109120;
      v18[1] = v11;
      _os_log_impl(&dword_1DF413000, v12, OS_LOG_TYPE_DEFAULT, "detected error %08x while deleting refkey, ignoring this error", v18, 8u);
    }

    goto LABEL_8;
  }

  v14 = 0;
LABEL_14:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)publicKeyWithError:(id *)a3
{
  AKSRefKey = self->_AKSRefKey;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:aks_ref_key_get_public_key() length:0];

  return v4;
}

- (id)signDigest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TKLocalSEPKey *)self authContextWithError:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 ACMHandle];
    v10 = [(TKLocalSEPKey *)self parametersWithACMHandle:v9];

    AKSRefKey = self->_AKSRefKey;
    [v10 bytes];
    [v10 length];
    [v6 bytes];
    [v6 length];
    v12 = aks_ref_key_sign();
    if (v12)
    {
      v13 = v12;
      v14 = [v8 ACMHandle];
      [(TKLocalSEPKey *)self error:a4 withAKSReturn:v13 ACMHandle:v14 AKSOperation:@"osgn" params:v10 message:@"unable to sign digest"];
      v15 = 0;
    }

    else
    {
      v16 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [TKLocalSEPRefKey signDigest:error:];
      }

      v17 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
      v14 = [(TKTLVRecord *)TKBERTLVRecord recordFromData:v17];

      v15 = [v14 value];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)computeSharedSecret:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TKLocalSEPKey *)self authContextWithError:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 ACMHandle];
    v10 = [(TKLocalSEPKey *)self parametersWithACMHandle:v9];

    AKSRefKey = self->_AKSRefKey;
    [v10 bytes];
    [v10 length];
    [v6 bytes];
    [v6 length];
    v12 = aks_ref_key_compute_key();
    if (v12)
    {
      v13 = v12;
      v14 = [v8 ACMHandle];
      [(TKLocalSEPKey *)self error:a4 withAKSReturn:v13 ACMHandle:v14 AKSOperation:@"ock" params:v10 message:@"unable to compute shared secret"];
      v15 = 0;
    }

    else
    {
      v16 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [TKLocalSEPRefKey computeSharedSecret:error:];
      }

      v17 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
      v14 = [(TKTLVRecord *)TKBERTLVRecord recordFromData:v17];

      v15 = [v14 value];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)recryptData:(id)a3 attributes:(id)a4 error:(id *)a5
{
  v53[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(TKLocalSEPKey *)self authContextWithError:a5];
  if (!v10)
  {
    v34 = 0;
    goto LABEL_35;
  }

  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E697B208]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = v8;
    v12 = [v10 ACMHandle];
    v13 = [(TKLocalSEPKey *)self parametersWithACMHandle:v12];

    v14 = *MEMORY[0x1E697B230];
    v15 = [v9 objectForKeyedSubscript:*MEMORY[0x1E697B230]];
    if (v15)
    {
      [v13 setData:v15 forKey:10];
    }

    v47 = v11;
    v16 = *MEMORY[0x1E697B218];
    v17 = [v9 objectForKeyedSubscript:*MEMORY[0x1E697B218]];
    if (v17)
    {
      [v13 setData:v17 forKey:11];
    }

    v18 = [v9 objectForKeyedSubscript:*MEMORY[0x1E697B210]];
    v19 = [v18 objectForKeyedSubscript:v14];

    if (v19)
    {
      [v13 setData:v19 forKey:12];
    }

    v45 = v19;
    v20 = [v18 objectForKeyedSubscript:v16];

    if (v20)
    {
      [v13 setData:v20 forKey:13];
    }

    v43 = v20;
    v21 = *MEMORY[0x1E697B220];
    v22 = [v9 objectForKeyedSubscript:*MEMORY[0x1E697B220]];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &unk_1F5A85138;
    }

    v25 = v24;

    v26 = [v18 objectForKeyedSubscript:v21];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = &unk_1F5A85138;
    }

    v29 = v28;

    v44 = v25;
    if ([v25 integerValue] == 128 && objc_msgSend(v29, "integerValue") == 128)
    {
      v30 = v29;
      v48 = 0;
      v49 = 0;
      AKSRefKey = self->_AKSRefKey;
      [v13 bytes];
      [v13 length];
      [v47 bytes];
      [v47 length];
      v8 = v46;
      [v46 bytes];
      [v46 length];
      v31 = aks_ref_key_ecies_transcode();
      if (v31)
      {
        v32 = v31;
        v33 = [v10 ACMHandle];
        [(TKLocalSEPKey *)self error:a5 withAKSReturn:v32 ACMHandle:v33 AKSOperation:@"oect" params:v13 message:@"unable to recrypt"];

        v34 = 0;
      }

      else
      {
        v39 = TK_LOG_sepkey_0();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          [TKLocalSEPRefKey recryptData:attributes:error:];
        }

        v34 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v49 length:{v48, &v48}];
      }

      v38 = v45;
      v29 = v30;
    }

    else
    {
      v8 = v46;
      if (a5)
      {
        v36 = MEMORY[0x1E696ABC0];
        v50 = *MEMORY[0x1E696A278];
        v51 = @"Bad kSecKeyEncryptionParameterSymmetricKeySizeInBits - if present, must be set to 128 for both input and output crypto operation";
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        *a5 = [v36 errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:v37];
      }

      v34 = 0;
      v38 = v45;
    }

    v11 = v47;
    goto LABEL_33;
  }

  if (a5)
  {
    v35 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A278];
    v53[0] = @"Bad or missing kSecKeyEncryptionParameterRecryptCertificate";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    [v35 errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:v13];
    *a5 = v34 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v34 = 0;
LABEL_34:

LABEL_35:
  v40 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)decapsulateKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TKLocalSEPKey *)self authContextWithError:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 ACMHandle];
    v10 = [(TKLocalSEPKey *)self parametersWithACMHandle:v9];

    AKSRefKey = self->_AKSRefKey;
    [v10 bytes];
    [v10 length];
    [v6 bytes];
    [v6 length];
    v12 = aks_ref_key_decapsulate();
    if (v12)
    {
      v13 = v12;
      v14 = [v8 ACMHandle];
      [(TKLocalSEPKey *)self error:a4 withAKSReturn:v13 ACMHandle:v14 AKSOperation:@"okd" params:v10 message:@"unable to decapsulate shared key"];

      v15 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)attestKey:(id)a3 nonce:(id)a4 error:(id *)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (![(TKLocalSEPKey *)self callerHasEntitlement:@"com.apple.security.attestation.access" error:a5])
  {
    v20 = 0;
    goto LABEL_20;
  }

  v10 = [(TKLocalSEPKey *)self authContextWithError:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 ACMHandle];
    v13 = [(TKLocalSEPKey *)self parametersWithACMHandle:v12];

    if (v9)
    {
      [v13 setData:v9 forKey:4];
    }

    v14 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      AKSRefKey = self->_AKSRefKey;
      [v13 bytes];
      [v13 length];
      v16 = v14[6];
      v17 = aks_ref_key_attest();
      v18 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138544130;
        v28 = self;
        v29 = 2112;
        v30 = v13;
        v31 = 2114;
        v32 = v14;
        v33 = 1024;
        v34 = v17;
        _os_log_debug_impl(&dword_1DF413000, v18, OS_LOG_TYPE_DEBUG, "aks_ref_key_attest(%{public}@, %@, attested: %{public}@) -> %08x", buf, 0x26u);
      }

      if (!v17)
      {
        v26 = TK_LOG_sepkey_0();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [TKLocalSEPRefKey attestKey:nonce:error:];
        }

        v20 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
        goto LABEL_18;
      }

      v19 = [v11 ACMHandle];
      [(TKLocalSEPKey *)self error:a5 withAKSReturn:v17 ACMHandle:v19 AKSOperation:@"oa" params:v13 message:@"unable to attest refkey->refkey"];
    }

    else
    {
      if (a5)
      {
        v21 = MEMORY[0x1E696ABC0];
        v35 = *MEMORY[0x1E696A278];
        v36[0] = @"unsuitable key for attesting";
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
        *a5 = [v21 errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:v22];
      }

      v23 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [TKLocalSEPRefKey attestKey:nonce:error:];
      }
    }

    v20 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v20 = 0;
LABEL_19:

LABEL_20:
  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)_initWithObjectID:(uint64_t)a1 authContext:(uint64_t *)a2 caller:forceSystemSession:error:.cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_0_0();
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_1DF413000, v4, OS_LOG_TYPE_ERROR, "Failed to set protection %{public}@ for ACL (error: %{public}@)", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_initWithObjectID:(NSObject *)a3 authContext:caller:forceSystemSession:error:.cold.2(void *a1, int a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 callerName];
  OUTLINED_FUNCTION_0_0();
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&dword_1DF413000, a3, OS_LOG_TYPE_ERROR, "Request from %{public}@ for key with objectID containing invalid key type (%d)", v7, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_initWithObjectID:(void *)a1 authContext:caller:forceSystemSession:error:.cold.3(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a1 callerName];
  [a1 accessControl];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_initWithKeyType:keySize:accessControl:options:authContext:caller:forceSystemSession:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 callerName];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)deleteWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)signDigest:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)computeSharedSecret:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)recryptData:attributes:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)attestKey:nonce:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_7_0(&dword_1DF413000, v0, v1, "%{public}@: attested key %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end