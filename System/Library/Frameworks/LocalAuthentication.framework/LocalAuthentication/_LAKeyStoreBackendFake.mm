@interface _LAKeyStoreBackendFake
- (BOOL)createGenericPasswordWithQuery:(id)query error:(id *)error;
- (BOOL)createKeyWithQuery:(id)query error:(id *)error;
- (BOOL)removeItemsWithQuery:(id)query error:(id *)error;
- (_LAKeyStoreBackendFake)init;
- (id)fetchItemWithQuery:(id)query error:(id *)error;
- (id)fetchItemsWithQuery:(id)query error:(id *)error;
@end

@implementation _LAKeyStoreBackendFake

- (_LAKeyStoreBackendFake)init
{
  v9.receiver = self;
  v9.super_class = _LAKeyStoreBackendFake;
  v2 = [(_LAKeyStoreBackendFake *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x1E695E0F8];
    v4 = [MEMORY[0x1E695E0F8] mutableCopy];
    keys = v2->_keys;
    v2->_keys = v4;

    v6 = [v3 mutableCopy];
    genps = v2->_genps;
    v2->_genps = v6;
  }

  return v2;
}

- (BOOL)createKeyWithQuery:(id)query error:(id *)error
{
  queryCopy = query;
  error = 0;
  v7 = *MEMORY[0x1E697B2D0];
  v8 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697B2D0]];
  v9 = *MEMORY[0x1E697AC48];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E697AC48]];

  v11 = [queryCopy objectForKeyedSubscript:v7];
  v12 = *MEMORY[0x1E697ABC8];
  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x1E697ABC8]];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __51___LAKeyStoreBackendFake_createKeyWithQuery_error___block_invoke;
  v33[3] = &unk_1E77CBFD8;
  v14 = queryCopy;
  v34 = v14;
  v15 = __51___LAKeyStoreBackendFake_createKeyWithQuery_error___block_invoke(v33);
  v16 = SecKeyCreateRandomKey(v15, &error);
  errorCopy2 = error;
  if (!error)
  {
    selfCopy = self;
    v19 = SecKeyCopyAttributes(v16);
    v20 = [(__CFDictionary *)v19 mutableCopy];

    if (v20 && [v20 count])
    {
      v21 = *MEMORY[0x1E697ADC8];
      v22 = [v14 objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];
      [v20 setObject:v22 forKeyedSubscript:v21];

      [v20 setObject:v10 forKeyedSubscript:v9];
      [v20 setObject:v13 forKeyedSubscript:v12];
      [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x1E697B3D0]];

      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v10 encoding:4];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __51___LAKeyStoreBackendFake_createKeyWithQuery_error___block_invoke_2;
      v30[3] = &unk_1E77CC000;
      v30[4] = selfCopy;
      v31 = v23;
      v32 = v20;
      v24 = v23;
      v25 = __51___LAKeyStoreBackendFake_createKeyWithQuery_error___block_invoke_2(v30);
      [(NSMutableDictionary *)selfCopy->_keys setObject:v25 forKeyedSubscript:v24];

      v18 = 1;
    }

    else
    {
      if (v16)
      {
        CFRelease(v16);
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Key creation failed for query %@", v14];
      v27 = [LAAuthorizationError genericErrorWithMessage:v26];

      v18 = 0;
      if (!error || !v27)
      {
        goto LABEL_16;
      }

      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Key creation failed for query %@", v14];
      [LAAuthorizationError genericErrorWithMessage:v24];
      *error = v18 = 0;
    }

LABEL_16:
    goto LABEL_17;
  }

  if (v16)
  {
    CFRelease(v16);
    errorCopy2 = error;
  }

  v18 = 0;
  if (error && errorCopy2)
  {
    v18 = 0;
    *error = errorCopy2;
  }

LABEL_17:

  return v18;
}

- (BOOL)createGenericPasswordWithQuery:(id)query error:(id *)error
{
  queryCopy = query;
  v6 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697AE88]];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___LAKeyStoreBackendFake_createGenericPasswordWithQuery_error___block_invoke;
  v11[3] = &unk_1E77CC000;
  v11[4] = self;
  v12 = v6;
  v13 = queryCopy;
  v7 = queryCopy;
  v8 = v6;
  v9 = __63___LAKeyStoreBackendFake_createGenericPasswordWithQuery_error___block_invoke(v11);
  [(NSMutableDictionary *)self->_genps setObject:v9 forKeyedSubscript:v8];

  return 1;
}

- (id)fetchItemWithQuery:(id)query error:(id *)error
{
  v83 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v7 = *MEMORY[0x1E697AFF8];
  v8 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697AFF8]];
  v9 = [v8 isEqualToString:*MEMORY[0x1E697B008]];

  if (v9)
  {
    errorCopy = error;
    v10 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697AE88]];
    v59 = queryCopy;
    v11 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    selfCopy = self;
    v61 = v10;
    v12 = [(NSMutableDictionary *)self->_genps objectForKeyedSubscript:v10];
    v13 = [v12 countByEnumeratingWithState:&v75 objects:v82 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v76;
      v16 = *MEMORY[0x1E697AC30];
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v76 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v75 + 1) + 8 * i);
          v19 = [v18 objectForKeyedSubscript:v16];
          v20 = [v19 isEqualToString:v11];

          if (v20)
          {
            v35 = v18;

            queryCopy = v59;
LABEL_45:

            goto LABEL_46;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v75 objects:v82 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    error = errorCopy;
    queryCopy = v59;
    self = selfCopy;
  }

  v21 = [queryCopy objectForKeyedSubscript:v7];
  v22 = [v21 isEqualToString:*MEMORY[0x1E697B020]];

  if (v22)
  {
    v23 = *MEMORY[0x1E697ADC8];
    v61 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];
    if (v61)
    {
      v24 = objc_alloc(MEMORY[0x1E696AEC0]);
      v25 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697AC48]];
      v26 = [v24 initWithData:v25 encoding:4];

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      allValues = [(NSMutableDictionary *)self->_keys objectForKeyedSubscript:v26];
      v28 = [allValues countByEnumeratingWithState:&v71 objects:v81 count:16];
      if (v28)
      {
        v29 = v28;
        errorCopy2 = error;
        v30 = *v72;
        while (2)
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v72 != v30)
            {
              objc_enumerationMutation(allValues);
            }

            v32 = *(*(&v71 + 1) + 8 * j);
            v33 = [v32 objectForKeyedSubscript:v23];
            v34 = [v33 isEqualToString:v61];

            if (v34)
            {
              v35 = v32;
              goto LABEL_44;
            }
          }

          v29 = [allValues countByEnumeratingWithState:&v71 objects:v81 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }

        error = errorCopy2;
      }
    }

    else
    {
      v36 = *MEMORY[0x1E697AC40];
      v26 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697AC40]];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      allValues = [(NSMutableDictionary *)self->_keys allValues];
      v53 = [allValues countByEnumeratingWithState:&v67 objects:v80 count:16];
      if (v53)
      {
        v37 = *v68;
        errorCopy3 = error;
        v60 = queryCopy;
        v52 = *v68;
        do
        {
          v38 = 0;
          do
          {
            if (*v68 != v37)
            {
              objc_enumerationMutation(allValues);
            }

            v55 = v38;
            v39 = *(*(&v67 + 1) + 8 * v38);
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v40 = v39;
            v41 = [v40 countByEnumeratingWithState:&v63 objects:v79 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v64;
              while (2)
              {
                for (k = 0; k != v42; ++k)
                {
                  if (*v64 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(*(&v63 + 1) + 8 * k);
                  v46 = [v45 objectForKeyedSubscript:v36];
                  v47 = [v46 isEqualToData:v26];

                  if (v47)
                  {
                    v35 = v45;

                    queryCopy = v60;
LABEL_44:

                    goto LABEL_45;
                  }
                }

                v42 = [v40 countByEnumeratingWithState:&v63 objects:v79 count:16];
                if (v42)
                {
                  continue;
                }

                break;
              }
            }

            v38 = v55 + 1;
            error = errorCopy3;
            queryCopy = v60;
            v37 = v52;
          }

          while (v55 + 1 != v53);
          v53 = [allValues countByEnumeratingWithState:&v67 objects:v80 count:16];
        }

        while (v53);
      }
    }
  }

  queryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No results for query %@", queryCopy];
  v49 = [LAAuthorizationError resourceNotFoundWithMessage:queryCopy];

  v35 = MEMORY[0x1E695E0F8];
  if (error && v49)
  {
    queryCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No results for query %@", queryCopy];
    *error = [LAAuthorizationError resourceNotFoundWithMessage:?];
  }

LABEL_46:

  v50 = *MEMORY[0x1E69E9840];

  return v35;
}

- (id)fetchItemsWithQuery:(id)query error:(id *)error
{
  queryCopy = query;
  v7 = *MEMORY[0x1E697AFF8];
  v8 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697AFF8]];
  v9 = [v8 isEqualToString:*MEMORY[0x1E697B008]];

  if (v9)
  {
    v10 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697AE88]];
    v11 = [MEMORY[0x1E695E0F0] mutableCopy];
    genps = self->_genps;
    if (!v10)
    {
      allValues = [(NSMutableDictionary *)genps allValues];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __52___LAKeyStoreBackendFake_fetchItemsWithQuery_error___block_invoke;
      v27[3] = &unk_1E77CC028;
      v28 = v11;
      [allValues enumerateObjectsUsingBlock:v27];

      v14 = v28;
LABEL_13:

      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v15 = [queryCopy objectForKeyedSubscript:v7];
  v16 = [v15 isEqualToString:*MEMORY[0x1E697B020]];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697AC48]];
    v10 = [v17 initWithData:v18 encoding:4];

    v11 = [MEMORY[0x1E695E0F0] mutableCopy];
    if (!v10 || ![v10 length])
    {
      allValues2 = [(NSMutableDictionary *)self->_keys allValues];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __52___LAKeyStoreBackendFake_fetchItemsWithQuery_error___block_invoke_2;
      v25[3] = &unk_1E77CC028;
      v26 = v11;
      [allValues2 enumerateObjectsUsingBlock:v25];

      v14 = v26;
      goto LABEL_13;
    }

    genps = self->_keys;
LABEL_8:
    v19 = [(NSMutableDictionary *)genps objectForKeyedSubscript:v10];
    [v11 addObjectsFromArray:v19];

LABEL_14:
    goto LABEL_15;
  }

  queryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid fetch query %@", queryCopy];
  v21 = [LAAuthorizationError genericErrorWithMessage:queryCopy];

  v11 = MEMORY[0x1E695E0F0];
  if (error && v21)
  {
    queryCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid fetch query %@", queryCopy];
    *error = [LAAuthorizationError genericErrorWithMessage:queryCopy2];

    v11 = MEMORY[0x1E695E0F0];
  }

LABEL_15:

  return v11;
}

- (BOOL)removeItemsWithQuery:(id)query error:(id *)error
{
  queryCopy = query;
  v7 = *MEMORY[0x1E697AFF8];
  v8 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697AFF8]];
  v9 = [v8 isEqualToString:*MEMORY[0x1E697B008]];

  if (v9)
  {
    queryCopy2 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697AE88]];
    genps = self->_genps;
    if (!queryCopy2)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v12 = [queryCopy objectForKeyedSubscript:v7];
  v13 = [v12 isEqualToString:*MEMORY[0x1E697B020]];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [queryCopy objectForKeyedSubscript:*MEMORY[0x1E697AC48]];
    queryCopy2 = [v14 initWithData:v15 encoding:4];

    if (!queryCopy2 || ![queryCopy2 length])
    {
      genps = self->_keys;
LABEL_13:
      [(NSMutableDictionary *)genps removeAllObjects];
      goto LABEL_14;
    }

    genps = self->_keys;
LABEL_8:
    v16 = [(NSMutableDictionary *)genps objectForKeyedSubscript:queryCopy2];
    [v16 removeAllObjects];

LABEL_14:
    v19 = 1;
    goto LABEL_15;
  }

  queryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid remove query %@", queryCopy];
  v18 = [LAAuthorizationError genericErrorWithMessage:queryCopy];

  v19 = 0;
  if (error && v18)
  {
    queryCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid remove query %@", queryCopy];
    [LAAuthorizationError genericErrorWithMessage:queryCopy2];
    *error = v19 = 0;
LABEL_15:
  }

  return v19;
}

@end