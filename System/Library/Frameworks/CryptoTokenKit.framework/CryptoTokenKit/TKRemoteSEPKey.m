@interface TKRemoteSEPKey
- (BOOL)deleteWithError:(id *)a3;
- (BOOL)lifetimeControlWithType:(int64_t)a3 error:(id *)a4;
- (BOOL)processServerAtributes:(id)a3 error:(id *)a4;
- (id)_initWithKeyType:(id)a3 keySize:(int64_t)a4 accessControl:(__SecAccessControl *)a5 options:(id)a6 authContext:(id)a7 forceSystemSession:(BOOL)a8 error:(id *)a9;
- (id)_initWithObjectID:(id)a3 authContext:(id)a4 forceSystemSession:(BOOL)a5 error:(id *)a6;
- (id)attestKey:(id)a3 nonce:(id)a4 error:(id *)a5;
- (id)computeSharedSecret:(id)a3 error:(id *)a4;
- (id)decapsulateKey:(id)a3 error:(id *)a4;
- (id)recryptData:(id)a3 attributes:(id)a4 error:(id *)a5;
- (id)signDigest:(id)a3 error:(id *)a4;
- (id)withError:(id *)a3 invoke:(id)a4;
@end

@implementation TKRemoteSEPKey

- (BOOL)processServerAtributes:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26 = a4;
  v7 = [v6 objectForKeyedSubscript:@"keyType"];
  keyType = self->_keyType;
  self->_keyType = v7;

  v9 = [v6 objectForKeyedSubscript:@"keySize"];
  keySize = self->_keySize;
  self->_keySize = v9;

  v11 = [v6 objectForKeyedSubscript:@"systemKey"];
  self->_systemKey = [v11 BOOLValue];

  v12 = [v6 objectForKeyedSubscript:@"publicKey"];
  publicKey = self->_publicKey;
  self->_publicKey = v12;

  v14 = [v6 objectForKeyedSubscript:@"systemSessionKey"];
  self->_forceSystemSession = [v14 BOOLValue];

  if (!self->_keyType || !self->_keySize || ([v6 objectForKeyedSubscript:@"systemKey"], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, objc_msgSend(v6, "objectForKeyedSubscript:", @"systemSessionKey"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
  {
    v23 = TK_LOG_rsepkey();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [TKRemoteSEPKey processServerAtributes:v23 error:?];
    }

    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-2 userInfo:0];
      *a4 = v22 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v18 = *MEMORY[0x1E695E480];
  v19 = [v6 objectForKeyedSubscript:@"accessControl"];
  v20 = SecAccessControlCreateFromData();
  accessControl = self->_accessControl;
  self->_accessControl = v20;

  if (!self->_accessControl)
  {
    v24 = TK_LOG_rsepkey();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      [TKRemoteSEPKey processServerAtributes:v24 error:?];
    }

    goto LABEL_14;
  }

  v22 = 1;
LABEL_15:

  return v22;
}

- (id)withError:(id *)a3 invoke:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__TKRemoteSEPKey_withError_invoke___block_invoke;
  block[3] = &unk_1E86B6FE8;
  block[4] = self;
  if (withError_invoke__onceToken != -1)
  {
    dispatch_once(&withError_invoke__onceToken, block);
  }

  v7 = [withError_invoke__clientResourceSlot resourceWithError:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 object];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35__TKRemoteSEPKey_withError_invoke___block_invoke_25;
    v12[3] = &unk_1E86B7E68;
    v13 = v6;
    v10 = [v9 withError:a3 invoke:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __35__TKRemoteSEPKey_withError_invoke___block_invoke(uint64_t a1)
{
  v2 = [[TKSharedResourceSlot alloc] initWithName:@"TKRemoteSEPKey-serverConnection"];
  v3 = withError_invoke__clientResourceSlot;
  withError_invoke__clientResourceSlot = v2;

  [withError_invoke__clientResourceSlot setIdleTimeout:60.0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__TKRemoteSEPKey_withError_invoke___block_invoke_2;
  v5[3] = &unk_1E86B7E20;
  v5[4] = *(a1 + 32);
  [withError_invoke__clientResourceSlot setCreateObjectBlock:v5];
  return [withError_invoke__clientResourceSlot setObjectDestroyedBlock:&__block_literal_global_15];
}

TKCTKDConnection *__35__TKRemoteSEPKey_withError_invoke___block_invoke_2(uint64_t a1)
{
  v2 = +[TKSEPKey ctkdConnection];
  v3 = v2;
  if (v2 || (v3 = *(*(a1 + 32) + 64)) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_alloc_init(TKCTKDConnection);
  }

  v5 = v4;

  return v5;
}

void __35__TKRemoteSEPKey_withError_invoke___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TK_LOG_rsepkey();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __35__TKRemoteSEPKey_withError_invoke___block_invoke_3_cold_1(v3);
  }

  [v2 invalidate];
}

- (id)_initWithObjectID:(id)a3 authContext:(id)a4 forceSystemSession:(BOOL)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v28.receiver = self;
  v28.super_class = TKRemoteSEPKey;
  v13 = [(TKSEPKey *)&v28 _initWithAuthContext:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 9, a3);
    v15 = [TKBERTLVRecord alloc];
    v16 = [v14 keyID];
    v17 = [(TKBERTLVRecord *)v15 initWithPropertyList:v16];
    v18 = [(TKTLVRecord *)v17 data];
    v19 = v14[10];
    v14[10] = v18;

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __73__TKRemoteSEPKey__initWithObjectID_authContext_forceSystemSession_error___block_invoke;
    v24[3] = &unk_1E86B7E90;
    v20 = v14;
    v25 = v20;
    v26 = v12;
    v27 = a5;
    v21 = [v20 withError:a6 invoke:v24];
    if (!v21 || ![v20 processServerAtributes:v21 error:a6])
    {

      v22 = 0;
      goto LABEL_7;
    }
  }

  v22 = v14;
LABEL_7:

  return v22;
}

id __73__TKRemoteSEPKey__initWithObjectID_authContext_forceSystemSession_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 80);
  v8 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__TKRemoteSEPKey__initWithObjectID_authContext_forceSystemSession_error___block_invoke_28;
  v12[3] = &unk_1E86B7CA8;
  v12[4] = &v19;
  v12[5] = &v13;
  [v5 getAttributesOfKey:v7 authContext:v6 forceSystemSession:v8 reply:v12];
  v9 = v20[5];
  if (a3 && !v9)
  {
    *a3 = v14[5];
    v9 = v20[5];
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

void __73__TKRemoteSEPKey__initWithObjectID_authContext_forceSystemSession_error___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_initWithKeyType:(id)a3 keySize:(int64_t)a4 accessControl:(__SecAccessControl *)a5 options:(id)a6 authContext:(id)a7 forceSystemSession:(BOOL)a8 error:(id *)a9
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v44.receiver = self;
  v44.super_class = TKRemoteSEPKey;
  v17 = [(TKSEPKey *)&v44 _initWithAuthContext:v16];
  if (!v17)
  {
    goto LABEL_6;
  }

  v18 = SecAccessControlCopyData();
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__6;
  v42 = __Block_byref_object_dispose__6;
  v43 = 0;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __102__TKRemoteSEPKey__initWithKeyType_keySize_accessControl_options_authContext_forceSystemSession_error___block_invoke;
  v29 = &unk_1E86B7EE0;
  v30 = v14;
  v36 = a4;
  v19 = v18;
  v31 = v19;
  v32 = v15;
  v33 = v16;
  v37 = a8;
  v20 = v17;
  v34 = v20;
  v35 = &v38;
  v21 = [v20 withError:a9 invoke:&v26];
  v22 = v20[9];
  v20[9] = v21;

  v23 = v20[9] ? [v20 processServerAtributes:v39[5] error:{a9, v26, v27, v28, v29, v30, v31, v32, v33}] : 0;
  _Block_object_dispose(&v38, 8);

  if (!v23)
  {
    v24 = 0;
  }

  else
  {
LABEL_6:
    v24 = v17;
  }

  return v24;
}

id __102__TKRemoteSEPKey__initWithKeyType_keySize_accessControl_options_authContext_forceSystemSession_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = 0;
  v6 = *(a1 + 80);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 88);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102__TKRemoteSEPKey__initWithKeyType_keySize_accessControl_options_authContext_forceSystemSession_error___block_invoke_2;
  v17[3] = &unk_1E86B7EB8;
  v19 = &v28;
  v20 = &v22;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v18 = v12;
  v21 = v13;
  [v5 generateKeyType:v7 keySize:v6 accessControl:v8 options:v9 authContext:v10 forceSystemSession:v11 reply:v17];
  v14 = v29[5];
  if (a3 && !v14)
  {
    *a3 = v23[5];
    v14 = v29[5];
  }

  v15 = v14;

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v15;
}

void __102__TKRemoteSEPKey__initWithKeyType_keySize_accessControl_options_authContext_forceSystemSession_error___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  if (v14)
  {
    v10 = [(TKTLVRecord *)TKBERTLVRecord recordFromData:v14];
    v11 = [v10 propertyList];
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    objc_storeStrong((a1[4] + 80), a2);
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
  }
}

- (BOOL)deleteWithError:(id *)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__TKRemoteSEPKey_deleteWithError___block_invoke;
  v6[3] = &unk_1E86B7F08;
  v6[4] = self;
  v3 = [(TKRemoteSEPKey *)self withError:a3 invoke:v6];
  v4 = [v3 BOOLValue];

  return v4;
}

id __34__TKRemoteSEPKey_deleteWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v6 = [*(a1 + 32) remoteKeyID];
  v7 = [*(a1 + 32) authContext];
  v8 = *(*(a1 + 32) + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __34__TKRemoteSEPKey_deleteWithError___block_invoke_2;
  v12[3] = &unk_1E86B7178;
  v12[4] = &v19;
  v12[5] = &v13;
  [v5 deleteKey:v6 authContext:v7 forceSystemSession:v8 reply:v12];

  v9 = v20[5];
  if (a3 && !v9)
  {
    *a3 = v14[5];
    v9 = v20[5];
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

void __34__TKRemoteSEPKey_deleteWithError___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

- (id)signDigest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__TKRemoteSEPKey_signDigest_error___block_invoke;
  v10[3] = &unk_1E86B7F30;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [(TKRemoteSEPKey *)self withError:a4 invoke:v10];

  return v8;
}

id __35__TKRemoteSEPKey_signDigest_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v6 = [*(a1 + 32) remoteKeyID];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) authContext];
  v9 = *(*(a1 + 32) + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35__TKRemoteSEPKey_signDigest_error___block_invoke_2;
  v13[3] = &unk_1E86B7D78;
  v13[4] = &v20;
  v13[5] = &v14;
  [v5 signWithKey:v6 digest:v7 authContext:v8 forceSystemSession:v9 reply:v13];

  v10 = v21[5];
  if (a3 && !v10)
  {
    *a3 = v15[5];
    v10 = v21[5];
  }

  v11 = v10;
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __35__TKRemoteSEPKey_signDigest_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)computeSharedSecret:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__TKRemoteSEPKey_computeSharedSecret_error___block_invoke;
  v10[3] = &unk_1E86B7F30;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [(TKRemoteSEPKey *)self withError:a4 invoke:v10];

  return v8;
}

id __44__TKRemoteSEPKey_computeSharedSecret_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v6 = [*(a1 + 32) remoteKeyID];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) authContext];
  v9 = *(*(a1 + 32) + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__TKRemoteSEPKey_computeSharedSecret_error___block_invoke_2;
  v13[3] = &unk_1E86B7D78;
  v13[4] = &v20;
  v13[5] = &v14;
  [v5 computeSharedSecretWithKey:v6 publicKey:v7 authContext:v8 forceSystemSession:v9 reply:v13];

  v10 = v21[5];
  if (a3 && !v10)
  {
    *a3 = v15[5];
    v10 = v21[5];
  }

  v11 = v10;
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __44__TKRemoteSEPKey_computeSharedSecret_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)recryptData:(id)a3 attributes:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__TKRemoteSEPKey_recryptData_attributes_error___block_invoke;
  v14[3] = &unk_1E86B7F58;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = [(TKRemoteSEPKey *)self withError:a5 invoke:v14];

  return v12;
}

id __47__TKRemoteSEPKey_recryptData_attributes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v6 = [*(a1 + 32) remoteKeyID];
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = [*(a1 + 32) authContext];
  v10 = *(*(a1 + 32) + 56);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__TKRemoteSEPKey_recryptData_attributes_error___block_invoke_2;
  v14[3] = &unk_1E86B7D78;
  v14[4] = &v21;
  v14[5] = &v15;
  [v5 recryptWithKey:v6 data:v8 attributes:v7 authContext:v9 forceSystemSession:v10 reply:v14];

  v11 = v22[5];
  if (a3 && !v11)
  {
    *a3 = v16[5];
    v11 = v22[5];
  }

  v12 = v11;
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v12;
}

void __47__TKRemoteSEPKey_recryptData_attributes_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)decapsulateKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__TKRemoteSEPKey_decapsulateKey_error___block_invoke;
  v10[3] = &unk_1E86B7F30;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [(TKRemoteSEPKey *)self withError:a4 invoke:v10];

  return v8;
}

id __39__TKRemoteSEPKey_decapsulateKey_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v6 = [*(a1 + 32) remoteKeyID];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) authContext];
  v9 = *(*(a1 + 32) + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__TKRemoteSEPKey_decapsulateKey_error___block_invoke_2;
  v13[3] = &unk_1E86B7D78;
  v13[4] = &v20;
  v13[5] = &v14;
  [v5 decapsulateWithKey:v6 encapsulatedKey:v7 authContext:v8 forceSystemSession:v9 reply:v13];

  v10 = v21[5];
  if (a3 && !v10)
  {
    *a3 = v15[5];
    v10 = v21[5];
  }

  v11 = v10;
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __39__TKRemoteSEPKey_decapsulateKey_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)attestKey:(id)a3 nonce:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TKRemoteSEPKey attestKey:a2 nonce:self error:?];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__TKRemoteSEPKey_attestKey_nonce_error___block_invoke;
  v16[3] = &unk_1E86B7F58;
  v16[4] = self;
  v17 = v11;
  v18 = v10;
  v12 = v10;
  v13 = v11;
  v14 = [(TKRemoteSEPKey *)self withError:a5 invoke:v16];

  return v14;
}

id __40__TKRemoteSEPKey_attestKey_nonce_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  v6 = [*(a1 + 32) remoteKeyID];
  v7 = [*(a1 + 40) remoteKeyID];
  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) authContext];
  v10 = *(*(a1 + 32) + 56);
  v11 = *(*(a1 + 40) + 56);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__TKRemoteSEPKey_attestKey_nonce_error___block_invoke_2;
  v15[3] = &unk_1E86B7D78;
  v15[4] = &v22;
  v15[5] = &v16;
  [v5 attestWithKey:v6 keyToAttest:v7 nonce:v8 authContext:v9 forceSystemSessionAttestingKey:v10 forceSystemSessionKeyToAttest:v11 reply:v15];

  v12 = v23[5];
  if (a3 && !v12)
  {
    *a3 = v17[5];
    v12 = v23[5];
  }

  v13 = v12;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __40__TKRemoteSEPKey_attestKey_nonce_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)lifetimeControlWithType:(int64_t)a3 error:(id *)a4
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__TKRemoteSEPKey_lifetimeControlWithType_error___block_invoke;
  v7[3] = &unk_1E86B7F80;
  v7[4] = self;
  v7[5] = a3;
  v4 = [(TKRemoteSEPKey *)self withError:a4 invoke:v7];
  v5 = [v4 BOOLValue];

  return v5;
}

id __48__TKRemoteSEPKey_lifetimeControlWithType_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v6 = [*(a1 + 32) remoteKeyID];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) authContext];
  v9 = *(*(a1 + 32) + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__TKRemoteSEPKey_lifetimeControlWithType_error___block_invoke_2;
  v13[3] = &unk_1E86B7178;
  v13[4] = &v20;
  v13[5] = &v14;
  [v5 lifetimeControlKey:v6 type:v7 authContext:v8 forceSystemSession:v9 reply:v13];

  v10 = v21[5];
  if (a3 && !v10)
  {
    *a3 = v15[5];
    v10 = v21[5];
  }

  v11 = v10;
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __48__TKRemoteSEPKey_lifetimeControlWithType_error___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

- (void)processServerAtributes:(void *)a1 error:(NSObject *)a2 .cold.1(void **a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (*a1)
  {
    v2 = *v2;
  }

  v4 = 138543362;
  v5 = v2;
  _os_log_fault_impl(&dword_1DF413000, a2, OS_LOG_TYPE_FAULT, "unable to deserialize accessControl, error %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)attestKey:(uint64_t)a1 nonce:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TKRemoteSEPKey.m" lineNumber:244 description:@"attempt to perform attestation with mixed local/remote keys"];
}

@end