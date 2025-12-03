@interface _EXItemProviderCopyingLoadOperator
- ($115C4C562B26FF47E01F9F4EA65B5887)destinationProcessAuditToken;
- (_EXItemProviderCopyingLoadOperator)initWithCoder:(id)coder;
- (_EXItemProviderCopyingLoadOperator)initWithItemProvider:(id)provider destinationProcessAuditToken:(id *)token;
- (id)_loadItemsForTypeIdentifiers:(id)identifiers auditToken:(id *)token itemProvider:(id)provider;
- (id)_sandboxedResourceForItemIfNeeded:(id)needed auditToken:(id *)token error:(id *)error;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)loadItemForTypeIdentifier:(id)identifier completionHandler:(id)handler expectedValueClass:(Class)class options:(id)options;
- (void)setDestinationProcessAuditToken:(id *)token;
@end

@implementation _EXItemProviderCopyingLoadOperator

- (_EXItemProviderCopyingLoadOperator)initWithItemProvider:(id)provider destinationProcessAuditToken:(id *)token
{
  providerCopy = provider;
  v7 = [(_EXItemProviderCopyingLoadOperator *)self init];
  v8 = v7;
  if (v7)
  {
    [(_EXItemProviderCopyingLoadOperator *)v7 setItemProvider:providerCopy];
    v9 = *&token->var0[4];
    v12[0] = *token->var0;
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

- (_EXItemProviderCopyingLoadOperator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_EXItemProviderCopyingLoadOperator *)self init];
  if (v5)
  {
    allowedClasses = [coderCopy allowedClasses];
    v7 = [coderCopy decodeObjectOfClasses:allowedClasses forKey:@"loadedItems"];
    [(_EXItemProviderCopyingLoadOperator *)v5 setLoadedItems:v7];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  itemProvider = [(_EXItemProviderCopyingLoadOperator *)self itemProvider];
  registeredTypeIdentifiers = [itemProvider registeredTypeIdentifiers];
  v7 = *&self->_destinationProcessAuditToken.val[4];
  v9[0] = *self->_destinationProcessAuditToken.val;
  v9[1] = v7;
  v8 = [(_EXItemProviderCopyingLoadOperator *)self _loadItemsForTypeIdentifiers:registeredTypeIdentifiers auditToken:v9 itemProvider:itemProvider];
  if (v8)
  {
    [coderCopy encodeObject:v8 forKey:@"loadedItems"];
  }
}

- (void)loadItemForTypeIdentifier:(id)identifier completionHandler:(id)handler expectedValueClass:(Class)class options:(id)options
{
  handlerCopy = handler;
  identifierCopy = identifier;
  loadedItems = [(_EXItemProviderCopyingLoadOperator *)self loadedItems];
  v10 = [loadedItems objectForKeyedSubscript:identifierCopy];

  v11 = [v10 objectForKeyedSubscript:@"item"];
  v12 = [v10 objectForKeyedSubscript:@"error"];
  if (!v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      resourceURL = [v11 resourceURL];

      v11 = resourceURL;
    }
  }

  handlerCopy[2](handlerCopy, v11, v12);
}

- (id)_loadItemsForTypeIdentifiers:(id)identifiers auditToken:(id *)token itemProvider:(id)provider
{
  identifiersCopy = identifiers;
  providerCopy = provider;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91___EXItemProviderCopyingLoadOperator__loadItemsForTypeIdentifiers_auditToken_itemProvider___block_invoke;
  v14[3] = &unk_1E6E4E760;
  v10 = providerCopy;
  v15 = v10;
  selfCopy = self;
  v11 = *&token->var0[4];
  v18 = *token->var0;
  v19 = v11;
  v17 = &v20;
  [identifiersCopy enumerateObjectsUsingBlock:v14];
  v12 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v12;
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
  v3 = *token->var0;
  *&self->_destinationProcessAuditToken.val[4] = *&token->var0[4];
  *self->_destinationProcessAuditToken.val = v3;
}

@end