@interface _EXCopyingLoadOperator
- ($115C4C562B26FF47E01F9F4EA65B5887)destinationProcessAuditToken;
- (_EXCopyingLoadOperator)initWithCoder:(id)coder;
- (_EXCopyingLoadOperator)initWithItemProvider:(id)provider destinationProcessAuditToken:(id *)token;
- (id)_sandboxedResourceForItemIfNeeded:(id)needed auditToken:(id *)token error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)loadItemForTypeIdentifier:(id)identifier completionHandler:(id)handler expectedValueClass:(Class)class options:(id)options;
- (void)setDestinationProcessAuditToken:(id *)token;
@end

@implementation _EXCopyingLoadOperator

- (_EXCopyingLoadOperator)initWithItemProvider:(id)provider destinationProcessAuditToken:(id *)token
{
  providerCopy = provider;
  _init = [(_EXLoadOperator *)self _init];
  v8 = _init;
  if (_init)
  {
    [(_EXCopyingLoadOperator *)_init setItemProvider:providerCopy];
    v9 = *&token->var0[4];
    v12[0] = *token->var0;
    v12[1] = v9;
    [(_EXCopyingLoadOperator *)v8 setDestinationProcessAuditToken:v12];
    v10 = v8;
  }

  return v8;
}

- (_EXCopyingLoadOperator)initWithCoder:(id)coder
{
  v31[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = _EXCopyingLoadOperator;
  _init = [(_EXLoadOperator *)&v29 _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codedData"];
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
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"items"];

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

      [(_EXCopyingLoadOperator *)_init setItems:v13];
      v8 = v22;
      v6 = v23;
    }

    v19 = _init;
  }

  v20 = *MEMORY[0x1E69E9840];
  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  v50 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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
  v15 = coderCopy;
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

          v22 = [v17 objectForKeyedSubscript:{*(*(&v35 + 1) + 8 * j), coderCopy}];
          payload = [v22 payload];
          payloadIdentifier = [v22 payloadIdentifier];
          v25 = payloadIdentifier;
          if (payload)
          {
            v26 = payloadIdentifier == 0;
          }

          else
          {
            v26 = 1;
          }

          if (!v26)
          {
            uUIDString = [payloadIdentifier UUIDString];
            [v16 encodeObject:payload forKey:uUIDString];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v19);
    }

    encodedData = [v16 encodedData];
    if (encodedData)
    {
      v29 = [v17 copy];
      [v15 encodeObject:v29 forKey:@"items"];

      [v15 encodeObject:encodedData forKey:@"codedData"];
    }

    v14 = v34;
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)loadItemForTypeIdentifier:(id)identifier completionHandler:(id)handler expectedValueClass:(Class)class options:(id)options
{
  handlerCopy = handler;
  identifierCopy = identifier;
  items = [(_EXCopyingLoadOperator *)self items];
  v11 = [items objectForKeyedSubscript:identifierCopy];

  v12 = +[_EXDefaults sharedInstance];
  plistTypes = [v12 plistTypes];
  LODWORD(class) = [plistTypes containsObject:class];

  v14 = +[_EXDefaults sharedInstance];
  v15 = v14;
  if (class)
  {
    [v14 plistAndValueTypes];
  }

  else
  {
    [v14 itemProviderTypes];
  }
  v16 = ;
  v17 = [v11 payloadOfClasses:v16];

  error = [v11 error];
  if (!error)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      resourceURL = [v17 resourceURL];

      v17 = resourceURL;
    }
  }

  handlerCopy[2](handlerCopy, v17, error);
}

- (id)_sandboxedResourceForItemIfNeeded:(id)needed auditToken:(id *)token error:(id *)error
{
  neededCopy = needed;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [neededCopy isFileURL])
  {
    v8 = [_EXItemProviderSandboxedResource alloc];
    v9 = *&token->var0[4];
    v12[0] = *token->var0;
    v12[1] = v9;
    v10 = [(_EXItemProviderSandboxedResource *)v8 initWithContentsOfURL:neededCopy auditToken:v12 error:error];
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

- (void)setDestinationProcessAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *self->_destinationProcessAuditToken.val = *token->var0;
  *&self->_destinationProcessAuditToken.val[4] = v3;
}

@end