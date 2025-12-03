@interface TKSEPKey
+ (BOOL)canUseSEPLocally;
- (BOOL)deleteWithError:(id *)error;
- (BOOL)lifetimeControlWithType:(int64_t)type error:(id *)error;
- (NSDictionary)attributes;
- (TKSEPKey)initWithAttributes:(id)attributes authContext:(id)context forceSystemSession:(BOOL)session error:(id *)error;
- (id)_initWithAuthContext:(id)context;
- (id)attestKey:(id)key nonce:(id)nonce error:(id *)error;
- (id)computeSharedSecret:(id)secret error:(id *)error;
- (id)decapsulateKey:(id)key error:(id *)error;
- (id)initLocalWithKeyType:(id)type keySize:(int64_t)size accessControl:(__SecAccessControl *)control options:(id)options authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)self0;
- (id)keyType;
- (id)publicKeyWithError:(id *)error;
- (id)recryptData:(id)data attributes:(id)attributes error:(id *)error;
- (id)signDigest:(id)digest attributes:(id)attributes error:(id *)error;
- (id)signDigest:(id)digest error:(id *)error;
- (void)attributes;
@end

@implementation TKSEPKey

+ (BOOL)canUseSEPLocally
{
  ctkdConnection = [self ctkdConnection];

  if (ctkdConnection)
  {
    return 0;
  }

  if (canUseSEPLocally_onceToken != -1)
  {
    +[TKSEPKey canUseSEPLocally];
  }

  return canUseSEPLocally_hasEntitlement;
}

- (NSDictionary)attributes
{
  v31[17] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697AFF8];
  v31[0] = *MEMORY[0x1E697B020];
  v4 = *MEMORY[0x1E697AD68];
  v30[0] = v3;
  v30[1] = v4;
  keyType = [(TKSEPKey *)self keyType];
  v31[1] = keyType;
  v30[2] = *MEMORY[0x1E697AD50];
  keySize = [(TKSEPKey *)self keySize];
  v31[2] = keySize;
  v30[3] = *MEMORY[0x1E697ACE8];
  keySize2 = [(TKSEPKey *)self keySize];
  v8 = *MEMORY[0x1E697AD30];
  v9 = *MEMORY[0x1E697AD38];
  v31[3] = keySize2;
  v31[4] = v9;
  v10 = *MEMORY[0x1E697AD20];
  v30[4] = v8;
  v30[5] = v10;
  v11 = *MEMORY[0x1E697AD08];
  v31[5] = MEMORY[0x1E695E118];
  v31[6] = MEMORY[0x1E695E110];
  v12 = *MEMORY[0x1E697ACF8];
  v30[6] = v11;
  v30[7] = v12;
  v13 = *MEMORY[0x1E697AF40];
  v31[7] = MEMORY[0x1E695E110];
  v31[8] = MEMORY[0x1E695E118];
  v14 = *MEMORY[0x1E697AC90];
  v30[8] = v13;
  v30[9] = v14;
  v15 = *MEMORY[0x1E697AC80];
  v31[9] = MEMORY[0x1E695E110];
  v31[10] = MEMORY[0x1E695E110];
  v16 = *MEMORY[0x1E697AC88];
  v30[10] = v15;
  v30[11] = v16;
  v17 = *MEMORY[0x1E697AC98];
  v31[11] = MEMORY[0x1E695E118];
  v31[12] = MEMORY[0x1E695E118];
  v18 = *MEMORY[0x1E697ACA8];
  v30[12] = v17;
  v30[13] = v18;
  v19 = *MEMORY[0x1E697ACB0];
  v31[13] = MEMORY[0x1E695E110];
  v31[14] = MEMORY[0x1E695E110];
  v20 = *MEMORY[0x1E697ABC8];
  v30[14] = v19;
  v30[15] = v20;
  [(TKSEPKey *)self accessControl];
  v21 = SecAccessControlCopyData();
  v31[15] = v21;
  v30[16] = *MEMORY[0x1E697AEE8];
  objectID = [(TKSEPKey *)self objectID];
  v31[16] = objectID;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:17];
  v24 = [v23 mutableCopy];

  v25 = *MEMORY[0x1E697B3A8];
  if ([(TKSEPKey *)self systemSessionKey]&& v25)
  {
    v26 = TK_LOG_sepkey();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [(TKSEPKey *)self attributes];
    }

    [v24 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v25];
  }

  v27 = [v24 copy];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

void __28__TKSEPKey_canUseSEPLocally__block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  v1 = SecTaskCopyValueForEntitlement(v0, @"com.apple.keystore.access-keychain-keys", 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 integerValue])
  {
    v2 = TK_LOG_sepkey();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DF413000, v2, OS_LOG_TYPE_INFO, "Detected com.apple.keystore.access-keychain-keys entitlement, using in-process SEP SecKey implementation", v5, 2u);
    }

    canUseSEPLocally_hasEntitlement = 1;
    v3 = SecTaskCopyValueForEntitlement(v0, @"com.apple.keystore.sik.access", 0);

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v3 integerValue])
    {
      v4 = TK_LOG_sepkey();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __28__TKSEPKey_canUseSEPLocally__block_invoke_cold_1(v4);
      }
    }
  }

  else
  {
    v3 = v1;
  }
}

- (id)_initWithAuthContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TKSEPKey;
  v6 = [(TKSEPKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authContext, context);
  }

  return v7;
}

- (id)initLocalWithKeyType:(id)type keySize:(int64_t)size accessControl:(__SecAccessControl *)control options:(id)options authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)self0
{
  callerCopy = caller;
  contextCopy = context;
  optionsCopy = options;
  typeCopy = type;
  LOBYTE(v22) = session;
  v20 = [[TKLocalSEPKey alloc] _initWithKeyType:typeCopy keySize:size accessControl:control options:optionsCopy authContext:contextCopy caller:callerCopy forceSystemSession:v22 error:error];

  return v20;
}

- (id)keyType
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%s must be overriden", "-[TKSEPKey keyType]"}];
  v2 = *MEMORY[0x1E697AD68];

  return v2;
}

- (BOOL)deleteWithError:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)publicKeyWithError:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)signDigest:(id)digest error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)signDigest:(id)digest attributes:(id)attributes error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)computeSharedSecret:(id)secret error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)recryptData:(id)data attributes:(id)attributes error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)decapsulateKey:(id)key error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (id)attestKey:(id)key nonce:(id)nonce error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (BOOL)lifetimeControlWithType:(int64_t)type error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
  }

  return 0;
}

- (TKSEPKey)initWithAttributes:(id)attributes authContext:(id)context forceSystemSession:(BOOL)session error:(id *)error
{
  sessionCopy = session;
  v138[17] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  contextCopy = context;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__1;
  v112 = __Block_byref_object_dispose__1;
  null = [MEMORY[0x1E695DFB0] null];
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__1;
  v106 = __Block_byref_object_dispose__1;
  null2 = [MEMORY[0x1E695DFB0] null];
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v8 = *MEMORY[0x1E697B020];
  v137[0] = *MEMORY[0x1E697AFF8];
  v137[1] = v8;
  obja = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:2];
  v138[0] = obja;
  v9 = *MEMORY[0x1E697AD38];
  v136[0] = *MEMORY[0x1E697AD30];
  v136[1] = v9;
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:2];
  v138[1] = v85;
  v67 = *MEMORY[0x1E697AD68];
  v135[0] = *MEMORY[0x1E697AD68];
  null3 = [MEMORY[0x1E695DFB0] null];
  v135[1] = null3;
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke;
  v97[3] = &unk_1E86B7520;
  v97[4] = &v102;
  v81 = MEMORY[0x1E12D5690](v97);
  v135[2] = v81;
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:3];
  v138[2] = v80;
  v134[0] = *MEMORY[0x1E697AD50];
  v134[1] = &unk_1F5A84FB8;
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_24;
  v96[3] = &unk_1E86B7548;
  v96[4] = &v98;
  v96[5] = &v102;
  v79 = MEMORY[0x1E12D5690](v96);
  v134[2] = v79;
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:3];
  v138[3] = v78;
  v133[0] = *MEMORY[0x1E697ACE8];
  v133[1] = &unk_1F5A84FB8;
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_2_25;
  v95[3] = &unk_1E86B7520;
  v95[4] = &v98;
  v77 = MEMORY[0x1E12D5690](v95);
  v133[2] = v77;
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:3];
  v138[4] = v76;
  v132 = *MEMORY[0x1E697B3C0];
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
  v138[5] = v75;
  v10 = v109[5];
  v65 = *MEMORY[0x1E697ABC8];
  v131[0] = *MEMORY[0x1E697ABC8];
  v131[1] = v10;
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_3;
  v94[3] = &unk_1E86B7520;
  v94[4] = &v108;
  v74 = MEMORY[0x1E12D5690](v94);
  v131[2] = v74;
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:3];
  v138[6] = v73;
  v11 = MEMORY[0x1E695E118];
  v130[0] = *MEMORY[0x1E697AD20];
  v130[1] = MEMORY[0x1E695E118];
  v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
  v138[7] = v72;
  v12 = MEMORY[0x1E695E110];
  v129[0] = *MEMORY[0x1E697AD08];
  v129[1] = MEMORY[0x1E695E110];
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:2];
  v138[8] = v71;
  v128[0] = *MEMORY[0x1E697ACF8];
  v128[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:2];
  v138[9] = v13;
  v127[0] = *MEMORY[0x1E697AF40];
  v127[1] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:2];
  v138[10] = v14;
  v126[0] = *MEMORY[0x1E697AC90];
  v126[1] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:2];
  v138[11] = v15;
  v125[0] = *MEMORY[0x1E697AC80];
  v125[1] = v12;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:2];
  v138[12] = v16;
  v124[0] = *MEMORY[0x1E697AC88];
  v124[1] = v11;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
  v138[13] = v17;
  v123[0] = *MEMORY[0x1E697AC98];
  v123[1] = v11;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:2];
  v138[14] = v18;
  v122[0] = *MEMORY[0x1E697ACA8];
  v122[1] = v12;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:2];
  v138[15] = v19;
  v121[0] = *MEMORY[0x1E697ACB0];
  v121[1] = v12;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:2];
  v138[16] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:17];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v21;
  v22 = [obj countByEnumeratingWithState:&v90 objects:v120 count:16];
  if (v22)
  {
    v23 = *v91;
    v86 = *MEMORY[0x1E696A278];
LABEL_3:
    v24 = 0;
    while (1)
    {
      if (*v91 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v90 + 1) + 8 * v24);
      v26 = [v25 objectAtIndexedSubscript:0];
      if ([v25 count] < 2)
      {
        v27 = 0;
      }

      else
      {
        v27 = [v25 objectAtIndexedSubscript:1];
      }

      v28 = [attributesCopy objectForKeyedSubscript:v26];
      if ([v25 count] < 3)
      {
        v30 = 0;
        if (v28)
        {
LABEL_11:
          if (v30)
          {
            v31 = (v30)[2](v30, v28);
            if (!v31)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if ([v27 isEqual:v28])
            {
              v35 = v27;
            }

            else
            {
              v35 = 0;
            }

            v31 = v35;
            if (!v31)
            {
LABEL_35:
              if (error)
              {
                v44 = MEMORY[0x1E696ABC0];
                v118 = v86;
                v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sepkey: %@ requires '%@' value when present", v26, v27];
                v119 = v45;
                v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
                *error = [v44 errorWithDomain:@"CryptoTokenKit" code:-8 userInfo:v46];
              }

              v47 = 0;
              v42 = obj;
              goto LABEL_46;
            }
          }

          goto LABEL_25;
        }
      }

      else
      {
        v29 = [v25 objectAtIndex:2];
        v30 = MEMORY[0x1E12D5690]();

        if (v28)
        {
          goto LABEL_11;
        }
      }

      if (v27)
      {
        null4 = [MEMORY[0x1E695DFB0] null];
        v33 = [v27 isEqual:null4];

        if ((v33 & 1) == 0)
        {
          if (v30)
          {
            v34 = (v30)[2](v30, v27);

            v27 = v34;
          }

          [attributesCopy setObject:v27 forKeyedSubscript:v26];
        }
      }

LABEL_25:

      if (v22 == ++v24)
      {
        v22 = [obj countByEnumeratingWithState:&v90 objects:v120 count:16];
        if (v22)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v36 = v103[5];
  null5 = [MEMORY[0x1E695DFB0] null];
  LODWORD(v36) = [v36 isEqual:null5];

  if (v36)
  {
    objc_storeStrong(v103 + 5, *MEMORY[0x1E697AD78]);
  }

  [attributesCopy setObject:v103[5] forKeyedSubscript:v67];
  v38 = v109[5];
  null6 = [MEMORY[0x1E695DFB0] null];
  LODWORD(v38) = [v38 isEqual:null6];

  if (v38)
  {
    v40 = *MEMORY[0x1E697ABF8];
    if (([v103[5] isEqual:*MEMORY[0x1E697AD80]] & 1) != 0 || (objc_msgSend(v103[5], "isEqual:", *MEMORY[0x1E697ADB8]) & 1) != 0 || objc_msgSend(v103[5], "isEqual:", *MEMORY[0x1E697ADB0]))
    {
      v41 = *MEMORY[0x1E697ABE8];

      v40 = v41;
    }

    v42 = SecAccessControlCreateWithFlags(0, v40, 0, 0);
    v43 = SecAccessControlCopyData();
    [attributesCopy setObject:v43 forKeyedSubscript:v65];
  }

  else
  {
    v48 = v109[5];
    v42 = SecAccessControlCreateFromData();
  }

  v114 = *MEMORY[0x1E697B200];
  v49 = MEMORY[0x1E696AD98];
  v87 = v114;
  v50 = [attributesCopy objectForKeyedSubscript:?];
  v51 = [v49 numberWithBool:{objc_msgSend(v50, "BOOLValue")}];
  v117[0] = v51;
  v115 = *MEMORY[0x1E697B238];
  v52 = MEMORY[0x1E696AD98];
  v84 = v115;
  v53 = [attributesCopy objectForKeyedSubscript:?];
  v54 = [v52 numberWithBool:{objc_msgSend(v53, "BOOLValue")}];
  v117[1] = v54;
  v116 = *MEMORY[0x1E697B248];
  v55 = MEMORY[0x1E696AD98];
  v82 = v116;
  v56 = [attributesCopy objectForKeyedSubscript:?];
  v57 = [v55 numberWithBool:{objc_msgSend(v56, "BOOLValue")}];
  v117[2] = v57;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:&v114 count:3];
  v26 = [v58 mutableCopy];

  v59 = [attributesCopy objectForKey:@"ECCompactable"];

  if (v59)
  {
    v60 = [attributesCopy objectForKeyedSubscript:@"ECCompactable"];
    [v26 setObject:v60 forKeyedSubscript:@"ECCompactable"];
  }

  v61 = [(TKSEPKey *)self initWithKeyType:v103[5] keySize:v99[3] accessControl:v42 options:v26 authContext:contextCopy forceSystemSession:sessionCopy error:error];
  if ([(TKSEPKey *)v61 accessControl])
  {
    [(TKSEPKey *)v61 accessControl];
    [attributesCopy setObject:SecAccessControlGetProtection() forKeyedSubscript:*MEMORY[0x1E697ABD8]];
  }

  objectID = [(TKSEPKey *)v61 objectID];
  [attributesCopy setObject:objectID forKeyedSubscript:*MEMORY[0x1E697AEE8]];

  if ([(TKSEPKey *)v61 systemSessionKey])
  {
    [attributesCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3B0]];
  }

  [attributesCopy removeObjectForKey:v87];
  [attributesCopy removeObjectForKey:@"ECCompactable"];
  [attributesCopy removeObjectForKey:v84];
  [attributesCopy removeObjectForKey:v82];
  v47 = v61;
  self = v47;
LABEL_46:

  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v102, 8);

  _Block_object_dispose(&v108, 8);
  v63 = *MEMORY[0x1E69E9840];
  return v47;
}

id __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (_block_invoke_once != -1)
  {
    __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_cold_1();
  }

  if ([_block_invoke_supportedTypes containsObject:v4])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_2()
{
  v7[9] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E697AD80];
  v7[0] = *MEMORY[0x1E697AD78];
  v7[1] = v0;
  v1 = *MEMORY[0x1E697ADB0];
  v7[2] = *MEMORY[0x1E697ADB8];
  v7[3] = v1;
  v2 = *MEMORY[0x1E697ADC0];
  v7[4] = *MEMORY[0x1E697AD88];
  v7[5] = v2;
  v3 = *MEMORY[0x1E697ADA0];
  v7[6] = *MEMORY[0x1E697AD90];
  v7[7] = v3;
  v7[8] = *MEMORY[0x1E697AD98];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:9];
  v5 = _block_invoke_supportedTypes;
  _block_invoke_supportedTypes = v4;

  v6 = *MEMORY[0x1E69E9840];
}

void *__68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 integerValue];
  if (([*(*(*(a1 + 40) + 8) + 40) isEqual:*MEMORY[0x1E697AD90]] & 1) == 0 && !objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "isEqual:", *MEMORY[0x1E697ADA0]))
  {
    v6 = [*(*(*(a1 + 40) + 8) + 40) isEqual:*MEMORY[0x1E697AD98]];
    v7 = *(*(*(a1 + 32) + 8) + 24);
    if (v6)
    {
      v5 = v3;
      if (v7 == 87)
      {
        goto LABEL_12;
      }

      if (v7 != 65)
      {
        goto LABEL_5;
      }
    }

    else if ((v7 | 0x80) != 0x180)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = v3;
  if (v4 != 1024)
  {
    if (v4 != 768)
    {
LABEL_5:
      v5 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v5 = v3;
  }

LABEL_12:
  v8 = v5;

  return v5;
}

id __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_2_25(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  if (v3 == *(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __68__TKSEPKey_initWithAttributes_authContext_forceSystemSession_error___block_invoke_3(uint64_t a1, id a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  return a2;
}

- (void)initWithObjectID:(uint64_t)a1 authContext:(NSObject *)a2 forceSystemSession:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "invalid objectID used for SEPKey: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)attributes
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 138543874;
  selfCopy = self;
  v6 = 2114;
  v7 = a2;
  v8 = 2114;
  v9 = MEMORY[0x1E695E118];
  _os_log_debug_impl(&dword_1DF413000, log, OS_LOG_TYPE_DEBUG, "%{public}@ system-session-key detected, returning %{public}@=%{public}@ in key's attributes", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

@end