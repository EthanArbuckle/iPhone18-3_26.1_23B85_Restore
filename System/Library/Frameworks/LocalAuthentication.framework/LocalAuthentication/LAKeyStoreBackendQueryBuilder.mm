@interface LAKeyStoreBackendQueryBuilder
- (id)_commonGenericPasswordParams;
- (id)_commonKeyParams;
- (id)_commonQueryParams;
- (id)createQueryForGenericPasswordWithIdentifier:(id)a3 domain:(id)a4 data:(id)a5 protectedBy:(id)a6;
- (id)createQueryForKeyWithIdentifier:(id)a3 domain:(id)a4 acl:(id)a5;
- (id)fetchQueryForGenericPasswordWithIdentifier:(id)a3 domain:(id)a4;
- (id)fetchQueryForGenericPasswordsWithDomain:(id)a3;
- (id)fetchQueryForKeyWithIdentifier:(id)a3 domain:(id)a4;
- (id)fetchQueryForKeyWithPublicKeyHash:(id)a3;
- (id)fetchQueryForKeysWithDomain:(id)a3;
- (id)removeQueryForGenericPasswordsWithDomain:(id)a3;
- (id)removeQueryForKeysWithDomain:(id)a3;
@end

@implementation LAKeyStoreBackendQueryBuilder

- (id)createQueryForKeyWithIdentifier:(id)a3 domain:(id)a4 acl:(id)a5
{
  v27[4] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(LAKeyStoreBackendQueryBuilder *)self _commonKeyParams];
  v12 = *MEMORY[0x1E697AD78];
  v13 = *MEMORY[0x1E697ADC8];
  v26[0] = *MEMORY[0x1E697AD68];
  v26[1] = v13;
  v27[0] = v12;
  v27[1] = v10;
  v14 = *MEMORY[0x1E697AD50];
  v27[2] = &unk_1F1A6FBF0;
  v15 = *MEMORY[0x1E697B2D0];
  v26[2] = v14;
  v26[3] = v15;
  v24[0] = *MEMORY[0x1E697ABC8];
  v16 = [MEMORY[0x1E69AD210] deserializeACL:v8];

  v17 = *MEMORY[0x1E697AD18];
  v25[0] = v16;
  v25[1] = MEMORY[0x1E695E118];
  v18 = *MEMORY[0x1E697AC48];
  v24[1] = v17;
  v24[2] = v18;
  v19 = [v9 dataUsingEncoding:4];

  v25[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v27[3] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];

  [v11 addEntriesFromDictionary:v21];
  v22 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)createQueryForGenericPasswordWithIdentifier:(id)a3 domain:(id)a4 data:(id)a5 protectedBy:(id)a6
{
  v24[6] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(LAKeyStoreBackendQueryBuilder *)self _commonGenericPasswordParams];
  v23[0] = *MEMORY[0x1E697ABC8];
  v15 = [MEMORY[0x1E69AD210] allowAllACL];
  v16 = *MEMORY[0x1E697ADC8];
  v24[0] = v15;
  v24[1] = v13;
  v17 = *MEMORY[0x1E697AC30];
  v23[1] = v16;
  v23[2] = v17;
  v18 = *MEMORY[0x1E697AE88];
  v24[2] = v13;
  v24[3] = v12;
  v19 = *MEMORY[0x1E697ACF0];
  v23[3] = v18;
  v23[4] = v19;
  v23[5] = *MEMORY[0x1E697B3C0];
  v24[4] = v10;
  v24[5] = v11;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:6];

  [v14 addEntriesFromDictionary:v20];
  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_commonKeyParams
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [(LAKeyStoreBackendQueryBuilder *)a1 _commonQueryParams];
    v3 = *MEMORY[0x1E697B020];
    v4 = *MEMORY[0x1E697AEC8];
    v8[0] = *MEMORY[0x1E697AFF8];
    v8[1] = v4;
    v5 = *MEMORY[0x1E697AED0];
    v9[0] = v3;
    v9[1] = v5;
    v8[2] = *MEMORY[0x1E697AD30];
    v9[2] = *MEMORY[0x1E697AD38];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0() addEntriesFromDictionary:v1];
  }

  else
  {
    v2 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)fetchQueryForKeyWithIdentifier:(id)a3 domain:(id)a4
{
  v18[5] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(LAKeyStoreBackendQueryBuilder *)self _commonKeyParams];
  v9 = *MEMORY[0x1E697ADC8];
  v18[0] = v7;
  v10 = *MEMORY[0x1E697AC48];
  v17[0] = v9;
  v17[1] = v10;
  v11 = [v6 dataUsingEncoding:4];

  v12 = *MEMORY[0x1E697B328];
  v17[2] = *MEMORY[0x1E697B310];
  v17[3] = v12;
  v17[4] = *MEMORY[0x1E697B260];
  v18[1] = v11;
  v18[2] = MEMORY[0x1E695E118];
  v13 = *MEMORY[0x1E697B270];
  v18[3] = MEMORY[0x1E695E118];
  v18[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  [v8 addEntriesFromDictionary:v14];
  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)fetchQueryForKeyWithPublicKeyHash:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OUTLINED_FUNCTION_0();
  v6 = [(LAKeyStoreBackendQueryBuilder *)v5 _commonKeyParams];
  v11 = *MEMORY[0x1E697AC40];
  v12 = *MEMORY[0x1E697B310];
  v13 = *MEMORY[0x1E697B328];
  v14 = *MEMORY[0x1E697B260];
  v15 = *MEMORY[0x1E697B270];
  OUTLINED_FUNCTION_1_0();
  v8 = [v7 dictionaryWithObjects:? forKeys:? count:?];

  [v6 addEntriesFromDictionary:v8];
  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)fetchQueryForKeysWithDomain:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OUTLINED_FUNCTION_0();
  v6 = [(LAKeyStoreBackendQueryBuilder *)v5 _commonKeyParams];
  v11 = *MEMORY[0x1E697AC48];
  v7 = [v3 dataUsingEncoding:4];

  v12 = *MEMORY[0x1E697B310];
  v13 = *MEMORY[0x1E697B328];
  v14 = *MEMORY[0x1E697B260];
  v15 = *MEMORY[0x1E697B268];
  OUTLINED_FUNCTION_1_0();
  [v8 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() addEntriesFromDictionary:v3];

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)removeQueryForKeysWithDomain:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OUTLINED_FUNCTION_0();
  v6 = [(LAKeyStoreBackendQueryBuilder *)v5 _commonKeyParams];
  v10 = *MEMORY[0x1E697AC48];
  v7 = [v3 dataUsingEncoding:4];

  v11[0] = v7;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() addEntriesFromDictionary:v3];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_commonGenericPasswordParams
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [(LAKeyStoreBackendQueryBuilder *)a1 _commonQueryParams];
    v3 = *MEMORY[0x1E697AFF8];
    v7[0] = *MEMORY[0x1E697AD00];
    v7[1] = v3;
    v4 = *MEMORY[0x1E697B008];
    v8[0] = MEMORY[0x1E695E118];
    v8[1] = v4;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0() addEntriesFromDictionary:v1];
  }

  else
  {
    v2 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)fetchQueryForGenericPasswordWithIdentifier:(id)a3 domain:(id)a4
{
  v17[6] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(LAKeyStoreBackendQueryBuilder *)self _commonGenericPasswordParams];
  v9 = *MEMORY[0x1E697AC30];
  v16[0] = *MEMORY[0x1E697ADC8];
  v16[1] = v9;
  v17[0] = v7;
  v17[1] = v7;
  v10 = *MEMORY[0x1E697B310];
  v16[2] = *MEMORY[0x1E697AE88];
  v16[3] = v10;
  v11 = *MEMORY[0x1E697B260];
  v16[4] = *MEMORY[0x1E697B318];
  v16[5] = v11;
  v17[2] = v6;
  v17[3] = MEMORY[0x1E695E118];
  v12 = *MEMORY[0x1E697B270];
  v17[4] = MEMORY[0x1E695E118];
  v17[5] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];

  [v8 addEntriesFromDictionary:v13];
  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)fetchQueryForGenericPasswordsWithDomain:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OUTLINED_FUNCTION_0();
  v6 = [(LAKeyStoreBackendQueryBuilder *)v5 _commonGenericPasswordParams];
  v11 = *MEMORY[0x1E697AE88];
  v12 = *MEMORY[0x1E697B310];
  v13 = *MEMORY[0x1E697B318];
  v14 = *MEMORY[0x1E697B260];
  v15 = *MEMORY[0x1E697B268];
  OUTLINED_FUNCTION_1_0();
  v8 = [v7 dictionaryWithObjects:? forKeys:? count:?];

  [v6 addEntriesFromDictionary:v8];
  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)removeQueryForGenericPasswordsWithDomain:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OUTLINED_FUNCTION_0();
  v6 = [(LAKeyStoreBackendQueryBuilder *)v5 _commonGenericPasswordParams];
  v10 = *MEMORY[0x1E697AE88];
  v11[0] = v3;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [v6 addEntriesFromDictionary:v7];
  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_commonQueryParams
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *MEMORY[0x1E697B390];
    v6[0] = *MEMORY[0x1E697ACD8];
    v6[1] = v1;
    v7[0] = @"APLA";
    v7[1] = MEMORY[0x1E695E118];
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end