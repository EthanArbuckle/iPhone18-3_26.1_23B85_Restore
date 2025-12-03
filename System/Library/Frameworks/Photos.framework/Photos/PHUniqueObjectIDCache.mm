@interface PHUniqueObjectIDCache
- (id)uniquedOIDs:(id)ds;
- (id)uniquedOIDsFromObjects:(void *)objects;
- (void)_verifyObjectIDIsTagged:(id)tagged;
@end

@implementation PHUniqueObjectIDCache

- (void)_verifyObjectIDIsTagged:(id)tagged
{
  v7 = *MEMORY[0x1E69E9840];
  taggedCopy = tagged;
  if (taggedCopy >= 1)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = 138412290;
      v6 = taggedCopy;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_FAULT, "Unexpected non-tagged NSManagedObjectID: %@", &v5, 0xCu);
    }
  }
}

- (id)uniquedOIDs:(id)ds
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (ds)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [ds _verifyObjectIDIsTagged:*(*(&v10 + 1) + 8 * i)];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    ds = v4;
  }

  return ds;
}

- (id)uniquedOIDsFromObjects:(void *)objects
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (!objects || !v3)
  {
    goto LABEL_26;
  }

  v6 = [v3 count];
  v7 = v6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6];
    v25 = MEMORY[0x1E695DF30];
    v26 = MEMORY[0x1E695D920];
    goto LABEL_31;
  }

  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v6 >= 0x101)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = 8 * v9;
  MEMORY[0x1EEE9AC00]();
  v12 = &v29 - v11;
  bzero(&v29 - v11, v10);
  v31 = &v29;
  if (v7 >= 0x101)
  {
    v15 = malloc_type_calloc(8uLL, v8, 0x80040B8603338uLL);
    if (v15)
    {
      v12 = v15;
      MEMORY[0x1EEE9AC00]();
      v13 = v28;
      bzero(v28, v10);
      v16 = malloc_type_calloc(8uLL, v8, 0x80040B8603338uLL);
      if (v16)
      {
        v14 = v16;
        [v4 getObjects:v12 range:{0, v7}];
LABEL_16:
        v30 = v4;
        for (i = 0; i != v7; ++i)
        {
          v18 = *&v12[8 * i];
          objectID = [v18 objectID];
          [objects _verifyObjectIDIsTagged:objectID];
          v20 = v14[i];
          v14[i] = objectID;
        }

        v4 = v30;
        goto LABEL_19;
      }
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** attempt to create a temporary id buffer of length (%lu) failed", v8];
    v25 = MEMORY[0x1E695DF30];
    v26 = MEMORY[0x1E695DA18];
LABEL_31:
    v27 = [v25 exceptionWithName:*v26 reason:v24 userInfo:0];
    objc_exception_throw(v27);
  }

  bzero(v12, 8 * v8);
  MEMORY[0x1EEE9AC00]();
  v13 = &v29 - ((8 * v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v13, v10);
  bzero(v13, 8 * v8);
  [v4 getObjects:v12 range:{0, v7}];
  v14 = v13;
  if (v7)
  {
    goto LABEL_16;
  }

LABEL_19:
  v5 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:v14 count:v7];
  if (v7 >= 0x101)
  {
    free(v12);
  }

  for (j = 0; j != v8; ++j)
  {
    v22 = v14[j];
    v14[j] = 0;
  }

  if (v7 >= 0x101)
  {
    free(v14);
  }

  do
  {

    v10 -= 8;
  }

  while (v10);
LABEL_26:

  return v5;
}

@end