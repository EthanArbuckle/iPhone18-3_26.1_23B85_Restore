@interface _EXItemProviderCopyingLoadOperator
- ($115C4C562B26FF47E01F9F4EA65B5887)destinationProcessAuditToken;
- (_EXItemProviderCopyingLoadOperator)initWithCoder:(id)a3;
- (_EXItemProviderCopyingLoadOperator)initWithItemProvider:(id)a3 destinationProcessAuditToken:(id *)a4;
- (id)_loadItemsForTypeIdentifiers:(id)a3 auditToken:(id *)a4 itemProvider:(id)a5;
- (id)_sandboxedResourceForItemIfNeeded:(id)a3 auditToken:(id *)a4 error:(id *)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadItemForTypeIdentifier:(id)a3 completionHandler:(id)a4 expectedValueClass:(Class)a5 options:(id)a6;
- (void)setDestinationProcessAuditToken:(id *)a3;
@end

@implementation _EXItemProviderCopyingLoadOperator

- (_EXItemProviderCopyingLoadOperator)initWithItemProvider:(id)a3 destinationProcessAuditToken:(id *)a4
{
  v6 = a3;
  v7 = [(_EXItemProviderCopyingLoadOperator *)self init];
  v8 = v7;
  if (v7)
  {
    [(_EXItemProviderCopyingLoadOperator *)v7 setItemProvider:v6];
    v9 = *&a4->var0[4];
    v12[0] = *a4->var0;
    v12[1] = v9;
    [(_EXItemProviderCopyingLoadOperator *)v8 setDestinationProcessAuditToken:v12];
    v10 = v8;
  }

  return v8;
}

- (void)dealloc
{
  [(_EXItemProviderCopyingLoadOperator *)self setItemProvider:0];
  [(_EXItemProviderCopyingLoadOperator *)self setLoadedItems:0];
  v3.receiver = self;
  v3.super_class = _EXItemProviderCopyingLoadOperator;
  [(_EXItemProviderCopyingLoadOperator *)&v3 dealloc];
}

- (_EXItemProviderCopyingLoadOperator)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_EXItemProviderCopyingLoadOperator *)self init];
  if (v5)
  {
    v6 = [v4 allowedClasses];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"loadedItems"];
    [(_EXItemProviderCopyingLoadOperator *)v5 setLoadedItems:v7];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_EXItemProviderCopyingLoadOperator *)self itemProvider];
  v6 = [v5 registeredTypeIdentifiers];
  v7 = *&self->_destinationProcessAuditToken.val[4];
  v9[0] = *self->_destinationProcessAuditToken.val;
  v9[1] = v7;
  v8 = [(_EXItemProviderCopyingLoadOperator *)self _loadItemsForTypeIdentifiers:v6 auditToken:v9 itemProvider:v5];
  if (v8)
  {
    [v4 encodeObject:v8 forKey:@"loadedItems"];
  }
}

- (void)loadItemForTypeIdentifier:(id)a3 completionHandler:(id)a4 expectedValueClass:(Class)a5 options:(id)a6
{
  v14 = a4;
  v8 = a3;
  v9 = [(_EXItemProviderCopyingLoadOperator *)self loadedItems];
  v10 = [v9 objectForKeyedSubscript:v8];

  v11 = [v10 objectForKeyedSubscript:@"item"];
  v12 = [v10 objectForKeyedSubscript:@"error"];
  if (!v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v11 resourceURL];

      v11 = v13;
    }
  }

  v14[2](v14, v11, v12);
}

- (id)_loadItemsForTypeIdentifiers:(id)a3 auditToken:(id *)a4 itemProvider:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91___EXItemProviderCopyingLoadOperator__loadItemsForTypeIdentifiers_auditToken_itemProvider___block_invoke;
  v14[3] = &unk_1E6E4E760;
  v10 = v9;
  v15 = v10;
  v16 = self;
  v11 = *&a4->var0[4];
  v18 = *a4->var0;
  v19 = v11;
  v17 = &v20;
  [v8 enumerateObjectsUsingBlock:v14];
  v12 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v12;
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
  v3 = *a3->var0;
  *&self->_destinationProcessAuditToken.val[4] = *&a3->var0[4];
  *self->_destinationProcessAuditToken.val = v3;
}

@end