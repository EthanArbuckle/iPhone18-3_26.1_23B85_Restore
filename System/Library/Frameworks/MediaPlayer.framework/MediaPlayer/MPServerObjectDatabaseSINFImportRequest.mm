@interface MPServerObjectDatabaseSINFImportRequest
- (BOOL)performWithDatabaseOperations:(id)a3 error:(id *)a4;
- (MPServerObjectDatabaseSINFImportRequest)initWithPayload:(id)a3 requestPayload:(id)a4 hashedPersonID:(id)a5;
@end

@implementation MPServerObjectDatabaseSINFImportRequest

- (BOOL)performWithDatabaseOperations:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v24 = [(MPServerObjectDatabaseImportRequest *)self payload];
  v29 = [&stru_1F14B8848 dataUsingEncoding:4];
  v5 = [self->_requestPayload objectForKeyedSubscript:@"adamIds"];
  v28 = self;
  v23 = [self->_requestPayload objectForKeyedSubscript:@"flavors"];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v25 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v25)
  {
    v6 = 1;
    v22 = *v36;
    do
    {
      v7 = 0;
      do
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v7;
        v8 = *(*(&v35 + 1) + 8 * v7);
        v9 = [v24 objectForKeyedSubscript:v8];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v27 = v23;
        v10 = [v27 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v32;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v32 != v12)
              {
                objc_enumerationMutation(v27);
              }

              v14 = *(*(&v31 + 1) + 8 * i);
              v15 = v29;
              v16 = [v9 objectForKeyedSubscript:v14];
              if ([v16 length])
              {
                v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v16 options:0];

                v15 = v17;
              }

              v18 = v14;
              if ([&unk_1F1509F70 containsObject:v18])
              {
                v19 = 1;
              }

              else if ([&unk_1F1509F88 containsObject:v18])
              {
                v19 = 2;
              }

              else if ([&unk_1F1509FA0 containsObject:v18])
              {
                v19 = 3;
              }

              else if ([&unk_1F1509FB8 containsObject:v18])
              {
                v19 = 4;
              }

              else
              {
                v19 = 0;
              }

              v6 &= [v30 importAssetSinf:v15 type:2 forIdentifier:v8 hashedPersonID:v28->_hashedPersonID flavor:v19 sinfPayload:0];
            }

            v11 = [v27 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v11);
        }

        v7 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v25);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6 & 1;
}

- (MPServerObjectDatabaseSINFImportRequest)initWithPayload:(id)a3 requestPayload:(id)a4 hashedPersonID:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MPServerObjectDatabaseSINFImportRequest;
  v11 = [(MPServerObjectDatabaseImportRequest *)&v14 _initWithPayload:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 5, a4);
    objc_storeStrong(&v12->_hashedPersonID, a5);
  }

  return v12;
}

@end