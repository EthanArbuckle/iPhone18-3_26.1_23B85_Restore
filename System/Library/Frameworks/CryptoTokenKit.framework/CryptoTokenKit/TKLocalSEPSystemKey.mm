@interface TKLocalSEPSystemKey
+ (BOOL)hasSystemKey:(unsigned int)key ACMHandle:(id)handle;
+ (void)initSystemKeyIDs;
- (BOOL)lifetimeControlWithType:(int64_t)type error:(id *)error;
- (id)_initWithObjectID:(id)d authContext:(id)context caller:(id)caller isIDUnknown:(BOOL *)unknown error:(id *)error;
- (id)attestKey:(id)key nonce:(id)nonce error:(id *)error;
- (id)description;
- (id)keySize;
- (id)objectID;
- (id)publicKeyWithError:(id *)error;
- (id)signDigest:(id)digest error:(id *)error;
@end

@implementation TKLocalSEPSystemKey

+ (void)initSystemKeyIDs
{
  if (initSystemKeyIDs_onceToken != -1)
  {
    +[TKLocalSEPSystemKey initSystemKeyIDs];
  }
}

- (id)objectID
{
  data = [MEMORY[0x1E695DEF0] data];
  AKSSystemKeyType = self->_AKSSystemKeyType;
  if (AKSSystemKeyType > 6)
  {
    if (AKSSystemKeyType <= 9)
    {
      if (AKSSystemKeyType == 7)
      {
        AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
        v6 = &proposedHavenData;
        v7 = &committedHavenData;
      }

      else
      {
        if (AKSSystemKeyType != 9)
        {
          goto LABEL_25;
        }

        AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
        v6 = &proposedDakData;
        v7 = &committedDakData;
      }

      goto LABEL_20;
    }

    if (AKSSystemKeyType == 10)
    {
      AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
      v6 = &proposedSDakData;
      v7 = &committedSDakData;
LABEL_20:
      if (AKSSystemKeyGeneration == 3)
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      v8 = *v9;
      goto LABEL_24;
    }

    if (AKSSystemKeyType != 14)
    {
      goto LABEL_25;
    }

    v8 = dcikData;
  }

  else if (AKSSystemKeyType > 2)
  {
    if (AKSSystemKeyType != 3)
    {
      if (AKSSystemKeyType != 6)
      {
        goto LABEL_25;
      }

      AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
      v6 = &proposedOikData;
      v7 = &committedOikData;
      goto LABEL_20;
    }

    v8 = gidData;
  }

  else
  {
    if (AKSSystemKeyType != 1)
    {
      if (AKSSystemKeyType != 2)
      {
        goto LABEL_25;
      }

      AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
      v6 = &proposedUikData;
      v7 = &committedUikData;
      goto LABEL_20;
    }

    v8 = sikData;
  }

LABEL_24:
  v10 = v8;

  data = v10;
LABEL_25:

  return data;
}

uint64_t __39__TKLocalSEPSystemKey_initSystemKeyIDs__block_invoke()
{
  v0 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.sik" length:21];
  v1 = sikData;
  sikData = v0;

  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.gid" length:21];
  v3 = gidData;
  gidData = v2;

  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.uikp" length:22];
  v5 = proposedUikData;
  proposedUikData = v4;

  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.uikc" length:22];
  v7 = committedUikData;
  committedUikData = v6;

  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.oikp" length:22];
  v9 = proposedOikData;
  proposedOikData = v8;

  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.oikc" length:22];
  v11 = committedOikData;
  committedOikData = v10;

  v12 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.dakp" length:22];
  v13 = proposedDakData;
  proposedDakData = v12;

  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.dakc" length:22];
  v15 = committedDakData;
  committedDakData = v14;

  v16 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.havenp" length:24];
  v17 = proposedHavenData;
  proposedHavenData = v16;

  v18 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.havenc" length:24];
  v19 = committedHavenData;
  committedHavenData = v18;

  v20 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.sdakp" length:23];
  v21 = proposedSDakData;
  proposedSDakData = v20;

  v22 = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.sdakc" length:23];
  v23 = committedSDakData;
  committedSDakData = v22;

  dcikData = [MEMORY[0x1E695DEF0] dataWithBytes:"com.apple.setoken.dcik" length:22];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)hasSystemKey:(unsigned int)key ACMHandle:(id)handle
{
  handleCopy = handle;
  v6 = 0;
  if (key <= 0xE)
  {
    if (((1 << key) & 0x4684) != 0)
    {
      v7 = hasSystemKey_ACMHandle__supported[key];
      if (!v7)
      {
        v8 = aks_system_key_collection();
        v9 = v8;
        if (key != 14 && v8)
        {
          v9 = aks_system_key_collection();
        }

        if (v9)
        {
          v10 = TK_LOG_sepkey_0();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            +[TKLocalSEPSystemKey hasSystemKey:ACMHandle:];
          }

          v7 = -1;
        }

        else
        {
          free(0);
          v7 = 1;
        }

        hasSystemKey_ACMHandle__supported[key] = v7;
      }

LABEL_21:
      v6 = v7 > 0;
      goto LABEL_22;
    }

    if (((1 << key) & 0xA) != 0)
    {
      v6 = 1;
    }

    else if (key == 6)
    {
      v7 = hasSystemKey_ACMHandle__supported_348;
      if (!hasSystemKey_ACMHandle__supported_348)
      {
        v11 = objc_alloc_init(TKAKSParameters);
        [(TKAKSParameters *)v11 setData:handleCopy forKey:3];
        [(TKAKSParameters *)v11 bytes];
        [(TKAKSParameters *)v11 length];
        if (aks_system_key_collection())
        {
          v12 = TK_LOG_sepkey_0();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            +[TKLocalSEPSystemKey hasSystemKey:ACMHandle:];
          }

          v13 = -1;
        }

        else
        {
          free(0);
          v13 = 1;
        }

        hasSystemKey_ACMHandle__supported_348 = v13;

        v7 = hasSystemKey_ACMHandle__supported_348;
      }

      goto LABEL_21;
    }
  }

LABEL_22:

  return v6;
}

- (id)_initWithObjectID:(id)d authContext:(id)context caller:(id)caller isIDUnknown:(BOOL *)unknown error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = [(TKLocalSEPKey *)self _initWithAuthContext:context caller:caller];
  if (!v13)
  {
    goto LABEL_19;
  }

  [objc_opt_class() initSystemKeyIDs];
  v13[10] = 16;
  if ([dCopy isEqualToData:sikData])
  {
    v14 = 1;
LABEL_4:
    v13[10] = v14;
    v13[11] = v14;
    goto LABEL_12;
  }

  if ([dCopy isEqualToData:gidData])
  {
    v15 = 3;
LABEL_7:
    v13[10] = v15;
    v16 = 1;
LABEL_11:
    v13[11] = v16;
    goto LABEL_12;
  }

  if ([dCopy isEqualToData:proposedUikData])
  {
    v17 = 2;
LABEL_10:
    v13[10] = v17;
    v16 = 3;
    goto LABEL_11;
  }

  if ([dCopy isEqualToData:committedUikData])
  {
    v14 = 2;
    goto LABEL_4;
  }

  if ([dCopy isEqualToData:proposedOikData])
  {
    v17 = 6;
    goto LABEL_10;
  }

  if ([dCopy isEqualToData:committedOikData])
  {
    v34 = 6;
    goto LABEL_36;
  }

  if ([dCopy isEqualToData:proposedDakData])
  {
    v17 = 9;
    goto LABEL_10;
  }

  if ([dCopy isEqualToData:committedDakData])
  {
    v34 = 9;
    goto LABEL_36;
  }

  if ([dCopy isEqualToData:proposedHavenData])
  {
    v13[10] = 7;
    v35 = 3;
  }

  else
  {
    if (![dCopy isEqualToData:committedHavenData])
    {
      if ([dCopy isEqualToData:proposedSDakData])
      {
        v17 = 10;
        goto LABEL_10;
      }

      if (![dCopy isEqualToData:committedSDakData])
      {
        if (![dCopy isEqualToData:dcikData])
        {
          v28 = 0;
          *unknown = 1;
          goto LABEL_29;
        }

        v15 = 14;
        goto LABEL_7;
      }

      v34 = 10;
LABEL_36:
      v13[10] = v34;
      v16 = 2;
      goto LABEL_11;
    }

    v13[10] = 7;
    v35 = 2;
  }

  v13[11] = v35;
LABEL_12:
  if (v13[10] == 7)
  {
    v18 = @"com.apple.private.playgrounds-local-signing-allowed";
  }

  else
  {
    v18 = @"com.apple.security.attestation.access";
  }

  if (![v13 callerHasEntitlement:v18 error:error])
  {
    goto LABEL_28;
  }

  v19 = [v13 authContextWithError:error];
  if (!v19)
  {
LABEL_27:

LABEL_28:
    v28 = 0;
    goto LABEL_29;
  }

  v20 = objc_opt_class();
  v21 = v13[10];
  aCMHandle = [v19 ACMHandle];
  LOBYTE(v20) = [v20 hasSystemKey:v21 ACMHandle:aCMHandle];

  if ((v20 & 1) == 0)
  {
    if (error)
    {
      v29 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A278];
      v37[0] = @"Requested system key not supported by the platform";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      *error = [v29 errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:v30];
    }

    v31 = TK_LOG_sepkey_0();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [TKLocalSEPSystemKey _initWithObjectID:authContext:caller:isIDUnknown:error:];
    }

    goto LABEL_27;
  }

  v23 = *MEMORY[0x1E695E480];
  v24 = SecAccessControlCreate();
  [v13 setSac:v24];

  [v13 accessControl];
  v25 = *MEMORY[0x1E697ABF8];
  SecAccessControlSetProtection();
  [v13 accessControl];
  v26 = *MEMORY[0x1E695E4D0];
  SecAccessControlAddConstraintForOperation();

LABEL_19:
  v27 = TK_LOG_sepkey_0();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [TKLocalSEPRefKey _initWithObjectID:v13 authContext:? caller:? forceSystemSession:? error:?];
  }

  v28 = v13;
LABEL_29:

  v32 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)keySize
{
  if (self->_AKSSystemKeyType == 7)
  {
    return &unk_1F5A850A8;
  }

  else
  {
    return &unk_1F5A85090;
  }
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_debugID)
  {
    AKSSystemKeyType = self->_AKSSystemKeyType;
    AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
    if (!aks_system_key_get_public())
    {
      v17[0] = 0;
      v17[1] = 0;
      v18 = 0;
      ccsha1_di();
      ccdigest();
      free(0);
      v5 = 0;
      v6 = 0;
      do
      {
        v6 = *(v17 + v5++) | (v6 << 8);
      }

      while (v5 != 8);
      self->_debugID = v6;
    }
  }

  v7 = self->_AKSSystemKeyType;
  if (v7 > 6)
  {
    if (v7 > 9)
    {
      if (v7 == 10)
      {
        v8 = self->_AKSSystemKeyGeneration;
        v9 = @"sdak-c";
        v10 = @"sdak-p";
        goto LABEL_25;
      }

      if (v7 == 14)
      {
        v11 = @"dcik";
        goto LABEL_30;
      }
    }

    else
    {
      if (v7 == 7)
      {
        v8 = self->_AKSSystemKeyGeneration;
        v9 = @"haven-c";
        v10 = @"haven-p";
        goto LABEL_25;
      }

      if (v7 == 9)
      {
        v8 = self->_AKSSystemKeyGeneration;
        v9 = @"dak-c";
        v10 = @"dak-p";
        goto LABEL_25;
      }
    }
  }

  else if (v7 > 2)
  {
    if (v7 == 3)
    {
      v11 = @"gid";
      goto LABEL_30;
    }

    if (v7 == 6)
    {
      v8 = self->_AKSSystemKeyGeneration;
      v9 = @"oik-c";
      v10 = @"oik-p";
      goto LABEL_25;
    }
  }

  else
  {
    if (v7 == 1)
    {
      v11 = @"sik";
      goto LABEL_30;
    }

    if (v7 == 2)
    {
      v8 = self->_AKSSystemKeyGeneration;
      v9 = @"uik-c";
      v10 = @"uik-p";
LABEL_25:
      if (v8 == 3)
      {
        v12 = v10;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12;
      goto LABEL_29;
    }
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN!%d(%d)", self->_AKSSystemKeyType, self->_AKSSystemKeyGeneration];
LABEL_29:
  v11 = v13;
LABEL_30:
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<sepk:%@ kid=%016llx>", v11, self->_debugID];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)publicKeyWithError:(id *)error
{
  AKSSystemKeyType = self->_AKSSystemKeyType;
  AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
  v7 = aks_system_key_get_public();
  if (v7)
  {
    [(TKLocalSEPKey *)self error:error withAKSReturn:v7 ACMHandle:0 AKSOperation:0 params:0 message:@"unable to get public key"];
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
    v9 = TK_LOG_sepkey_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [TKLocalSEPSystemKey publicKeyWithError:];
    }
  }

  return v8;
}

- (id)signDigest:(id)digest error:(id *)error
{
  digestCopy = digest;
  if (self->_AKSSystemKeyType == 7 && ![(TKLocalSEPKey *)self callerHasEntitlement:@"com.apple.private.playgrounds-local-signing-allowed" error:error])
  {
    v16 = 0;
  }

  else
  {
    v7 = [(TKLocalSEPKey *)self authContextWithError:error];
    v8 = v7;
    if (v7)
    {
      aCMHandle = [v7 ACMHandle];
      v10 = [(TKLocalSEPKey *)self parametersWithACMHandle:aCMHandle];

      AKSSystemKeyType = self->_AKSSystemKeyType;
      AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
      [v10 bytes];
      [v10 length];
      [digestCopy bytes];
      [digestCopy length];
      v13 = aks_system_key_sign();
      if (v13)
      {
        v14 = v13;
        aCMHandle2 = [v8 ACMHandle];
        [(TKLocalSEPKey *)self error:error withAKSReturn:v14 ACMHandle:aCMHandle2 AKSOperation:@"osgn" params:v10 message:@"unable to sign digest"];

        v16 = 0;
      }

      else
      {
        v17 = TK_LOG_sepkey_0();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [TKLocalSEPRefKey signDigest:error:];
        }

        v16 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)attestKey:(id)key nonce:(id)nonce error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  nonceCopy = nonce;
  if (![(TKLocalSEPKey *)self callerHasEntitlement:@"com.apple.security.attestation.access" error:error])
  {
    v21 = 0;
    goto LABEL_51;
  }

  v11 = [(TKLocalSEPKey *)self authContextWithError:error];
  v12 = v11;
  if (v11)
  {
    aCMHandle = [v11 ACMHandle];
    v14 = [(TKLocalSEPKey *)self parametersWithACMHandle:aCMHandle];

    if (nonceCopy)
    {
      [v14 setData:nonceCopy forKey:4];
    }

    v15 = keyCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [TKLocalSEPSystemKey attestKey:a2 nonce:self error:?];
    }

    AKSSystemKeyType = self->_AKSSystemKeyType;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (AKSSystemKeyType == 3)
    {
      if (isKindOfClass)
      {
        v49 = v15;
        [v15 AKSRefKey];
        [v14 bytes];
        [v14 length];
        v18 = aks_gid_attest();
        v19 = TK_LOG_sepkey_0();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_35;
        }

        *buf = 138543874;
        *v51 = self;
        *&v51[8] = 2112;
        *v52 = v14;
        *&v52[8] = 1024;
        *v53 = v18;
        v20 = "aks_gid_attest(%{public}@, %@) -> %08x";
        goto LABEL_17;
      }

      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:0];
      }

      v33 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [TKLocalSEPSystemKey attestKey:nonce:error:];
      }

LABEL_48:

      v21 = 0;
LABEL_49:

      goto LABEL_50;
    }

    if (AKSSystemKeyType == 1)
    {
      if (isKindOfClass)
      {
        v49 = v15;
        [v15 AKSRefKey];
        [v14 bytes];
        [v14 length];
        v18 = aks_sik_attest();
        v19 = TK_LOG_sepkey_0();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_35;
        }

        *buf = 138543874;
        *v51 = self;
        *&v51[8] = 2112;
        *v52 = v14;
        *&v52[8] = 1024;
        *v53 = v18;
        v20 = "aks_sik_attest(%{public}@, %@) -> %08x";
LABEL_17:
        _os_log_debug_impl(&dword_1DF413000, v19, OS_LOG_TYPE_DEBUG, v20, buf, 0x1Cu);
        goto LABEL_35;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = v15;
        v28 = v15;
        isa = v28[5].isa;
        if (isa != 2 && isa != 14)
        {
          [v14 setNumber:1 forKey:18];
          isa_low = LODWORD(v28[5].isa);
        }

        v48 = v28;
        isa_high = HIDWORD(v28[5].isa);
        [v14 bytes];
        v31 = v14;
        [v14 length];
        v18 = aks_system_key_collection();
        v32 = TK_LOG_sepkey_0();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v39 = v48[5].isa;
          v40 = HIDWORD(v48[5].isa);
          *buf = 67109890;
          *v51 = v39;
          *&v51[4] = 1024;
          *&v51[6] = v40;
          *v52 = 2112;
          *&v52[2] = v31;
          *v53 = 1024;
          *&v53[2] = v18;
          _os_log_debug_impl(&dword_1DF413000, v32, OS_LOG_TYPE_DEBUG, "aks_system_key_collection(%d, %d, %@) -> %08x", buf, 0x1Eu);
        }

        v14 = v31;
        v19 = v48;
        goto LABEL_35;
      }

      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:0];
      }

      v33 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [TKLocalSEPSystemKey attestKey:nonce:error:];
      }

      goto LABEL_48;
    }

    if (isKindOfClass)
    {
      v49 = v15;
      v19 = v15;
      v44 = self->_AKSSystemKeyType;
      AKSSystemKeyGeneration = self->_AKSSystemKeyGeneration;
      [v19 AKSRefKey];
      [v14 bytes];
      v47 = v14;
      [v14 length];
      v18 = aks_system_key_attest();
      v22 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = self->_AKSSystemKeyType;
        v24 = self->_AKSSystemKeyGeneration;
        *buf = 67110146;
        *v51 = v23;
        *&v51[4] = 1024;
        *&v51[6] = v24;
        *v52 = 2114;
        *&v52[2] = v19;
        *v53 = 2112;
        *&v53[2] = v47;
        v54 = 1024;
        v55 = v18;
        v25 = "aks_system_key_attest(%d, generation=%d, attesting=%{public}@, %@) -> %08x";
        v26 = v22;
        v27 = 40;
LABEL_55:
        _os_log_debug_impl(&dword_1DF413000, v26, OS_LOG_TYPE_DEBUG, v25, buf, v27);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:0];
        }

        v33 = TK_LOG_sepkey_0();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [TKLocalSEPSystemKey attestKey:nonce:error:];
        }

        goto LABEL_48;
      }

      v49 = v15;
      v19 = v15;
      v46 = v19[5].isa;
      v34 = HIDWORD(v19[5].isa);
      [v14 bytes];
      v47 = v14;
      [v14 length];
      v18 = aks_system_key_collection();
      v22 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v41 = v19[5].isa;
        v42 = HIDWORD(v19[5].isa);
        *buf = 67109890;
        *v51 = v41;
        *&v51[4] = 1024;
        *&v51[6] = v42;
        *v52 = 2112;
        *&v52[2] = v47;
        *v53 = 1024;
        *&v53[2] = v18;
        v25 = "aks_system_key_collection(%d, %d, %@) -> %08x";
        v26 = v22;
        v27 = 30;
        goto LABEL_55;
      }
    }

    v14 = v47;
LABEL_35:

    if (v18)
    {
      aCMHandle2 = [v12 ACMHandle];
      [(TKLocalSEPKey *)self error:error withAKSReturn:v18 ACMHandle:aCMHandle2 AKSOperation:@"oa" params:v14 message:@"unable to attest key"];

      v21 = 0;
      v15 = v49;
    }

    else
    {
      v36 = TK_LOG_sepkey_0();
      v15 = v49;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [TKLocalSEPRefKey attestKey:nonce:error:];
      }

      v21 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:0 length:0];
    }

    goto LABEL_49;
  }

  v21 = 0;
LABEL_50:

LABEL_51:
  v37 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)lifetimeControlWithType:(int64_t)type error:(id *)error
{
  v7 = [(TKLocalSEPKey *)self authContextWithError:error];
  v8 = v7;
  if (v7)
  {
    if (type)
    {
      if (type == 1 && self->_AKSSystemKeyGeneration == 3)
      {
        goto LABEL_8;
      }
    }

    else if (self->_AKSSystemKeyGeneration == 2)
    {
LABEL_8:
      aCMHandle = [v7 ACMHandle];
      v11 = [(TKLocalSEPKey *)self parametersWithACMHandle:aCMHandle];

      AKSSystemKeyType = self->_AKSSystemKeyType;
      [v11 bytes];
      [v11 length];
      v13 = aks_system_key_operate();
      if (!v13)
      {
        v17 = TK_LOG_sepkey_0();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [TKLocalSEPSystemKey lifetimeControlWithType:error:];
        }

        v9 = 1;
        goto LABEL_15;
      }

      v14 = v13;
      aCMHandle2 = [v8 ACMHandle];
      [(TKLocalSEPKey *)self error:error withAKSReturn:v14 ACMHandle:aCMHandle2 AKSOperation:@"oko" params:v11 message:@"unable to bump/commit key"];

LABEL_14:
      v9 = 0;
LABEL_15:

      goto LABEL_16;
    }

    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:0];
    }

    v11 = TK_LOG_sepkey_0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TKLocalSEPSystemKey lifetimeControlWithType:error:];
    }

    goto LABEL_14;
  }

  v9 = 0;
LABEL_16:

  return v9;
}

+ (void)hasSystemKey:ACMHandle:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)hasSystemKey:ACMHandle:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_1DF413000, v1, OS_LOG_TYPE_ERROR, "syskey %d not supported, attempt to collect it failed, error %08x", v3, 0xEu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_initWithObjectID:authContext:caller:isIDUnknown:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 callerName];
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)publicKeyWithError:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7_0(&dword_1DF413000, v0, v1, "%{public}@: got publicKey %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)attestKey:(uint64_t)a1 nonce:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKLocalSEPKey.m" lineNumber:1523 description:@"Only TKLocalSEPKey instances can be attested"];
}

- (void)lifetimeControlWithType:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)lifetimeControlWithType:error:.cold.2()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v14 = *MEMORY[0x1E69E9840];
  v4 = [v2 callerName];
  v5 = v4;
  v6 = "bump";
  v8 = 138543874;
  v9 = v3;
  if (v1 == 1)
  {
    v6 = "commit";
  }

  v10 = 2114;
  v11 = v4;
  v12 = 2082;
  v13 = v6;
  _os_log_error_impl(&dword_1DF413000, v0, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@: an attempt to %{public}s incompatible key", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

@end