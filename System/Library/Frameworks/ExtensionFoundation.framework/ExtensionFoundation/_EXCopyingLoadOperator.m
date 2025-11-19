@interface _EXCopyingLoadOperator
- ($115C4C562B26FF47E01F9F4EA65B5887)destinationProcessAuditToken;
- (_EXCopyingLoadOperator)initWithCoder:(id)a3;
- (_EXCopyingLoadOperator)initWithItemProvider:(id)a3 destinationProcessAuditToken:(id *)a4;
- (id)_sandboxedResourceForItemIfNeeded:(id)a3 auditToken:(id *)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
- (void)loadItemForTypeIdentifier:(id)a3 completionHandler:(id)a4 expectedValueClass:(Class)a5 options:(id)a6;
- (void)setDestinationProcessAuditToken:(id *)a3;
@end

@implementation _EXCopyingLoadOperator

- (_EXCopyingLoadOperator)initWithItemProvider:(id)a3 destinationProcessAuditToken:(id *)a4
{
  v6 = a3;
  v7 = [(_EXLoadOperator *)self _init];
  v8 = v7;
  if (v7)
  {
    [(_EXCopyingLoadOperator *)v7 setItemProvider:v6];
    v9 = *&a4->var0[4];
    v12[0] = *a4->var0;
    v12[1] = v9;
    [(_EXCopyingLoadOperator *)v8 setDestinationProcessAuditToken:v12];
    v10 = v8;
  }

  return v8;
}

- (_EXCopyingLoadOperator)initWithCoder:(id)a3
{
  v31[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = _EXCopyingLoadOperator;
  v5 = [(_EXLoadOperator *)&v29 _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codedData"];
    if (v6)
    {
      v28 = 0;
      v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v6 error:&v28];
      v8 = v28;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v31[2] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
    v11 = [v9 setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"items"];

    if (v12)
    {
      v22 = v8;
      v23 = v6;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [v13 objectForKeyedSubscript:{*(*(&v24 + 1) + 8 * i), v22, v23, v24}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v18 setEncodedPayload:v7];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v15);
      }

      [(_EXCopyingLoadOperator *)v5 setItems:v13];
      v8 = v22;
      v6 = v23;
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v34 = objc_opt_new();
  [(_EXCopyingLoadOperator *)self itemProvider];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v45 = 0u;
  obj = [v33 registeredTypeIdentifiers];
  v4 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v43;
    v7 = *MEMORY[0x1E696A4E0];
    v8 = *MEMORY[0x1E696A4D8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = dispatch_semaphore_create(0);
        v47 = v7;
        v48 = v8;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __42___EXCopyingLoadOperator_encodeWithCoder___block_invoke;
        v39[3] = &unk_1E6E4E510;
        v39[4] = self;
        v39[5] = v10;
        v40 = v34;
        v41 = v11;
        v13 = v11;
        [v33 loadItemForTypeIdentifier:v10 options:v12 completionHandler:v39];
        dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      }

      v5 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v5);
  }

  v14 = v34;
  v15 = v31;
  if ([v34 count])
  {
    v16 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v17 = v34;
    v18 = [v17 countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [v17 objectForKeyedSubscript:{*(*(&v35 + 1) + 8 * j), v31}];
          v23 = [v22 payload];
          v24 = [v22 payloadIdentifier];
          v25 = v24;
          if (v23)
          {
            v26 = v24 == 0;
          }

          else
          {
            v26 = 1;
          }

          if (!v26)
          {
            v27 = [v24 UUIDString];
            [v16 encodeObject:v23 forKey:v27];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v19);
    }

    v28 = [v16 encodedData];
    if (v28)
    {
      v29 = [v17 copy];
      [v15 encodeObject:v29 forKey:@"items"];

      [v15 encodeObject:v28 forKey:@"codedData"];
    }

    v14 = v34;
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)loadItemForTypeIdentifier:(id)a3 completionHandler:(id)a4 expectedValueClass:(Class)a5 options:(id)a6
{
  v20 = a4;
  v9 = a3;
  v10 = [(_EXCopyingLoadOperator *)self items];
  v11 = [v10 objectForKeyedSubscript:v9];

  v12 = +[_EXDefaults sharedInstance];
  v13 = [v12 plistTypes];
  LODWORD(a5) = [v13 containsObject:a5];

  v14 = +[_EXDefaults sharedInstance];
  v15 = v14;
  if (a5)
  {
    [v14 plistAndValueTypes];
  }

  else
  {
    [v14 itemProviderTypes];
  }
  v16 = ;
  v17 = [v11 payloadOfClasses:v16];

  v18 = [v11 error];
  if (!v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v17 resourceURL];

      v17 = v19;
    }
  }

  v20[2](v20, v17, v18);
}

- (id)_sandboxedResourceForItemIfNeeded:(id)a3 auditToken:(id *)a4 error:(id *)a5
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isFileURL])
  {
    v8 = [_EXItemProviderSandboxedResource alloc];
    v9 = *&a4->var0[4];
    v12[0] = *a4->var0;
    v12[1] = v9;
    v10 = [(_EXItemProviderSandboxedResource *)v8 initWithContentsOfURL:v7 auditToken:v12 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)destinationProcessAuditToken
{
  v3 = *&self[1].var0[2];
  *retstr->var0 = *&self->var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setDestinationProcessAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *self->_destinationProcessAuditToken.val = *a3->var0;
  *&self->_destinationProcessAuditToken.val[4] = v3;
}

@end