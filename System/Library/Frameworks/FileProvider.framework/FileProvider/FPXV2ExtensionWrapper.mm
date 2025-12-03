@interface FPXV2ExtensionWrapper
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isInteractionSuppressedForIdentifier:(id)identifier;
- (FPXV2ExtensionWrapper)initWithDomain:(id)domain;
- (id)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields contents:(id)contents options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (id)deleteItemWithIdentifier:(id)identifier baseVersion:(id)version options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (id)enumeratorForContainerItemIdentifier:(id)identifier request:(id)request error:(id *)error;
- (id)enumeratorForSearch:(id)search request:(id)request error:(id *)error;
- (id)fetchContentsForItemWithIdentifier:(id)identifier version:(id)version request:(id)request completionHandler:(id)handler;
- (id)fetchContentsForItemWithIdentifier:(id)identifier version:(id)version usingExistingContentsAtURL:(id)l existingVersion:(id)existingVersion request:(id)request completionHandler:(id)handler;
- (id)itemForIdentifier:(id)identifier request:(id)request completionHandler:(id)handler;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)modifyItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (id)performActionWithIdentifier:(id)identifier onItemsWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (id)supportedServiceSourcesForItemIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation FPXV2ExtensionWrapper

- (FPXV2ExtensionWrapper)initWithDomain:(id)domain
{
  domainCopy = domain;
  v15.receiver = self;
  v15.super_class = FPXV2ExtensionWrapper;
  v5 = [(FPXV2ExtensionWrapper *)&v15 init];
  if (v5)
  {
    identifier = [domainCopy identifier];
    v7 = [identifier isEqualToString:@"NSFileProviderDomainDefaultIdentifier"];

    if (v7)
    {

      domainCopy = 0;
    }

    v8 = [(objc_class *)v5->_extensionClass instancesRespondToSelector:sel_initWithDomain_];
    extensionClass = v5->_extensionClass;
    if (v8)
    {
      v10 = [[extensionClass alloc] initWithDomain:domainCopy];
      extension = v5->_extension;
      v5->_extension = v10;
    }

    else
    {
      v12 = objc_alloc_init(extensionClass);
      v13 = v5->_extension;
      v5->_extension = v12;

      if (domainCopy)
      {
        [(NSFileProviderExtension *)v5->_extension setDomain:domainCopy];
      }
    }
  }

  return v5;
}

- (id)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields contents:(id)contents options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  extension = self->_extension;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__FPXV2ExtensionWrapper_createItemBasedOnTemplate_fields_contents_options_request_completionHandler___block_invoke;
  v18[3] = &unk_1E793BAB8;
  v19 = handlerCopy;
  v15 = handlerCopy;
  [(NSFileProviderExtension *)extension createItemBasedOnTemplate:template fields:fields contents:contents options:options completionHandler:v18];

  v16 = objc_opt_new();

  return v16;
}

- (id)deleteItemWithIdentifier:(id)identifier baseVersion:(id)version options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  [(NSFileProviderExtension *)self->_extension deleteItemWithIdentifier:identifier baseVersion:version options:options completionHandler:handler];
  v7 = objc_opt_new();

  return v7;
}

- (id)enumeratorForContainerItemIdentifier:(id)identifier request:(id)request error:(id *)error
{
  identifierCopy = identifier;
  requestCopy = request;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__11;
  v28 = __Block_byref_object_dispose__11;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__11;
  v23 = 0;
  extension = self->_extension;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__FPXV2ExtensionWrapper_enumeratorForContainerItemIdentifier_request_error___block_invoke;
  v14[3] = &unk_1E793BAE0;
  v16 = &v24;
  v14[4] = self;
  v11 = identifierCopy;
  v15 = v11;
  v17 = &v18;
  [(NSFileProviderExtension *)extension _withRequest:requestCopy execute:v14];
  if (error)
  {
    *error = v19[5];
  }

  v12 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __76__FPXV2ExtensionWrapper_enumeratorForContainerItemIdentifier_request_error___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 16);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v3 enumeratorForContainerItemIdentifier:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)enumeratorForSearch:(id)search request:(id)request error:(id *)error
{
  searchCopy = search;
  requestCopy = request;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__11;
  v29 = __Block_byref_object_dispose__11;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  extension = self->_extension;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__FPXV2ExtensionWrapper_enumeratorForSearch_request_error___block_invoke;
  v14[3] = &unk_1E793BB08;
  v11 = searchCopy;
  v15 = v11;
  selfCopy = self;
  v17 = &v25;
  v18 = &v19;
  [(NSFileProviderExtension *)extension _withRequest:requestCopy execute:v14];
  if (error)
  {
    *error = v20[5];
  }

  v12 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __59__FPXV2ExtensionWrapper_enumeratorForSearch_request_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) legacySearchQuery];
  v3 = *(*(a1 + 40) + 16);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v3 enumeratorForSearchQuery:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)fetchContentsForItemWithIdentifier:(id)identifier version:(id)version request:(id)request completionHandler:(id)handler
{
  identifierCopy = identifier;
  versionCopy = version;
  requestCopy = request;
  handlerCopy = handler;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__11;
  v29 = __Block_byref_object_dispose__11;
  v30 = 0;
  extension = self->_extension;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__FPXV2ExtensionWrapper_fetchContentsForItemWithIdentifier_version_request_completionHandler___block_invoke;
  v20[3] = &unk_1E793BB30;
  v24 = &v25;
  v20[4] = self;
  v15 = identifierCopy;
  v21 = v15;
  v16 = versionCopy;
  v22 = v16;
  v17 = handlerCopy;
  v23 = v17;
  [(NSFileProviderExtension *)extension _withRequest:requestCopy execute:v20];
  v18 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v18;
}

uint64_t __94__FPXV2ExtensionWrapper_fetchContentsForItemWithIdentifier_version_request_completionHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) fetchContentsForItemWithIdentifier:a1[5] version:a1[6] completionHandler:a1[7]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)fetchContentsForItemWithIdentifier:(id)identifier version:(id)version usingExistingContentsAtURL:(id)l existingVersion:(id)existingVersion request:(id)request completionHandler:(id)handler
{
  identifierCopy = identifier;
  versionCopy = version;
  lCopy = l;
  existingVersionCopy = existingVersion;
  requestCopy = request;
  handlerCopy = handler;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__11;
  v39 = __Block_byref_object_dispose__11;
  v40 = 0;
  extension = self->_extension;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __137__FPXV2ExtensionWrapper_fetchContentsForItemWithIdentifier_version_usingExistingContentsAtURL_existingVersion_request_completionHandler___block_invoke;
  v28[3] = &unk_1E793BB58;
  v34 = &v35;
  v28[4] = self;
  v21 = identifierCopy;
  v29 = v21;
  v22 = versionCopy;
  v30 = v22;
  v23 = lCopy;
  v31 = v23;
  v24 = existingVersionCopy;
  v32 = v24;
  v25 = handlerCopy;
  v33 = v25;
  [(NSFileProviderExtension *)extension _withRequest:requestCopy execute:v28];
  v26 = v36[5];

  _Block_object_dispose(&v35, 8);

  return v26;
}

uint64_t __137__FPXV2ExtensionWrapper_fetchContentsForItemWithIdentifier_version_usingExistingContentsAtURL_existingVersion_request_completionHandler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) fetchContentsForItemWithIdentifier:a1[5] version:a1[6] usingExistingContentsAtURL:a1[7] existingVersion:a1[8] completionHandler:a1[9]];
  v3 = *(a1[10] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)itemForIdentifier:(id)identifier request:(id)request completionHandler:(id)handler
{
  extension = self->_extension;
  v12 = 0;
  handlerCopy = handler;
  v8 = [(NSFileProviderExtension *)extension itemForIdentifier:identifier error:&v12];
  v9 = v12;
  handlerCopy[2](handlerCopy, v8, v9);

  v10 = objc_opt_new();

  return v10;
}

- (id)modifyItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  [(NSFileProviderExtension *)self->_extension changeItem:item baseVersion:version changedFields:fields contents:contents options:options completionHandler:handler];
  v9 = objc_opt_new();

  return v9;
}

- (id)supportedServiceSourcesForItemIdentifier:(id)identifier completionHandler:(id)handler
{
  extension = self->_extension;
  v11 = 0;
  handlerCopy = handler;
  v7 = [(NSFileProviderExtension *)extension supportedServiceSourcesForItemIdentifier:identifier error:&v11];
  v8 = v11;
  handlerCopy[2](handlerCopy, v7, v8);

  v9 = objc_opt_new();

  return v9;
}

- (id)performActionWithIdentifier:(id)identifier onItemsWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  extension = self->_extension;
  if (objc_opt_respondsToSelector())
  {
    v12 = [(NSFileProviderExtension *)self->_extension performActionWithIdentifier:identifierCopy onItemsWithIdentifiers:identifiersCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    handlerCopy[2](handlerCopy, v13);

    v12 = objc_opt_new();
  }

  v14 = v12;

  return v14;
}

- (BOOL)isInteractionSuppressedForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  extension = self->_extension;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(NSFileProviderExtension *)self->_extension isInteractionSuppressedForIdentifier:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v5 = [(NSFileProviderExtension *)self->_extension methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = FPXV2ExtensionWrapper;
    v7 = [(FPXV2ExtensionWrapper *)&v10 methodSignatureForSelector:selector];
  }

  v8 = v7;

  return v8;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v7.receiver = self;
  v7.super_class = FPXV2ExtensionWrapper;
  if ([(FPXV2ExtensionWrapper *)&v7 conformsToProtocol:protocolCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(NSFileProviderExtension *)self->_extension conformsToProtocol:protocolCopy];
  }

  return v5;
}

@end