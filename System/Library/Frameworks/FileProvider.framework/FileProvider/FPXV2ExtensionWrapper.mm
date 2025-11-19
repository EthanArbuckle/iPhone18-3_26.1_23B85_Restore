@interface FPXV2ExtensionWrapper
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isInteractionSuppressedForIdentifier:(id)a3;
- (FPXV2ExtensionWrapper)initWithDomain:(id)a3;
- (id)createItemBasedOnTemplate:(id)a3 fields:(unint64_t)a4 contents:(id)a5 options:(unint64_t)a6 request:(id)a7 completionHandler:(id)a8;
- (id)deleteItemWithIdentifier:(id)a3 baseVersion:(id)a4 options:(unint64_t)a5 request:(id)a6 completionHandler:(id)a7;
- (id)enumeratorForContainerItemIdentifier:(id)a3 request:(id)a4 error:(id *)a5;
- (id)enumeratorForSearch:(id)a3 request:(id)a4 error:(id *)a5;
- (id)fetchContentsForItemWithIdentifier:(id)a3 version:(id)a4 request:(id)a5 completionHandler:(id)a6;
- (id)fetchContentsForItemWithIdentifier:(id)a3 version:(id)a4 usingExistingContentsAtURL:(id)a5 existingVersion:(id)a6 request:(id)a7 completionHandler:(id)a8;
- (id)itemForIdentifier:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)modifyItem:(id)a3 baseVersion:(id)a4 changedFields:(unint64_t)a5 contents:(id)a6 options:(unint64_t)a7 request:(id)a8 completionHandler:(id)a9;
- (id)performActionWithIdentifier:(id)a3 onItemsWithIdentifiers:(id)a4 completionHandler:(id)a5;
- (id)supportedServiceSourcesForItemIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation FPXV2ExtensionWrapper

- (FPXV2ExtensionWrapper)initWithDomain:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FPXV2ExtensionWrapper;
  v5 = [(FPXV2ExtensionWrapper *)&v15 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v7 = [v6 isEqualToString:@"NSFileProviderDomainDefaultIdentifier"];

    if (v7)
    {

      v4 = 0;
    }

    v8 = [(objc_class *)v5->_extensionClass instancesRespondToSelector:sel_initWithDomain_];
    extensionClass = v5->_extensionClass;
    if (v8)
    {
      v10 = [[extensionClass alloc] initWithDomain:v4];
      extension = v5->_extension;
      v5->_extension = v10;
    }

    else
    {
      v12 = objc_alloc_init(extensionClass);
      v13 = v5->_extension;
      v5->_extension = v12;

      if (v4)
      {
        [(NSFileProviderExtension *)v5->_extension setDomain:v4];
      }
    }
  }

  return v5;
}

- (id)createItemBasedOnTemplate:(id)a3 fields:(unint64_t)a4 contents:(id)a5 options:(unint64_t)a6 request:(id)a7 completionHandler:(id)a8
{
  v13 = a8;
  extension = self->_extension;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__FPXV2ExtensionWrapper_createItemBasedOnTemplate_fields_contents_options_request_completionHandler___block_invoke;
  v18[3] = &unk_1E793BAB8;
  v19 = v13;
  v15 = v13;
  [(NSFileProviderExtension *)extension createItemBasedOnTemplate:a3 fields:a4 contents:a5 options:a6 completionHandler:v18];

  v16 = objc_opt_new();

  return v16;
}

- (id)deleteItemWithIdentifier:(id)a3 baseVersion:(id)a4 options:(unint64_t)a5 request:(id)a6 completionHandler:(id)a7
{
  [(NSFileProviderExtension *)self->_extension deleteItemWithIdentifier:a3 baseVersion:a4 options:a5 completionHandler:a7];
  v7 = objc_opt_new();

  return v7;
}

- (id)enumeratorForContainerItemIdentifier:(id)a3 request:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v11 = v8;
  v15 = v11;
  v17 = &v18;
  [(NSFileProviderExtension *)extension _withRequest:v9 execute:v14];
  if (a5)
  {
    *a5 = v19[5];
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

- (id)enumeratorForSearch:(id)a3 request:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v11 = v8;
  v15 = v11;
  v16 = self;
  v17 = &v25;
  v18 = &v19;
  [(NSFileProviderExtension *)extension _withRequest:v9 execute:v14];
  if (a5)
  {
    *a5 = v20[5];
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

- (id)fetchContentsForItemWithIdentifier:(id)a3 version:(id)a4 request:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v15 = v10;
  v21 = v15;
  v16 = v11;
  v22 = v16;
  v17 = v13;
  v23 = v17;
  [(NSFileProviderExtension *)extension _withRequest:v12 execute:v20];
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

- (id)fetchContentsForItemWithIdentifier:(id)a3 version:(id)a4 usingExistingContentsAtURL:(id)a5 existingVersion:(id)a6 request:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
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
  v21 = v14;
  v29 = v21;
  v22 = v15;
  v30 = v22;
  v23 = v16;
  v31 = v23;
  v24 = v17;
  v32 = v24;
  v25 = v19;
  v33 = v25;
  [(NSFileProviderExtension *)extension _withRequest:v18 execute:v28];
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

- (id)itemForIdentifier:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  extension = self->_extension;
  v12 = 0;
  v7 = a5;
  v8 = [(NSFileProviderExtension *)extension itemForIdentifier:a3 error:&v12];
  v9 = v12;
  v7[2](v7, v8, v9);

  v10 = objc_opt_new();

  return v10;
}

- (id)modifyItem:(id)a3 baseVersion:(id)a4 changedFields:(unint64_t)a5 contents:(id)a6 options:(unint64_t)a7 request:(id)a8 completionHandler:(id)a9
{
  [(NSFileProviderExtension *)self->_extension changeItem:a3 baseVersion:a4 changedFields:a5 contents:a6 options:a7 completionHandler:a9];
  v9 = objc_opt_new();

  return v9;
}

- (id)supportedServiceSourcesForItemIdentifier:(id)a3 completionHandler:(id)a4
{
  extension = self->_extension;
  v11 = 0;
  v6 = a4;
  v7 = [(NSFileProviderExtension *)extension supportedServiceSourcesForItemIdentifier:a3 error:&v11];
  v8 = v11;
  v6[2](v6, v7, v8);

  v9 = objc_opt_new();

  return v9;
}

- (id)performActionWithIdentifier:(id)a3 onItemsWithIdentifiers:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  extension = self->_extension;
  if (objc_opt_respondsToSelector())
  {
    v12 = [(NSFileProviderExtension *)self->_extension performActionWithIdentifier:v8 onItemsWithIdentifiers:v9 completionHandler:v10];
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    v10[2](v10, v13);

    v12 = objc_opt_new();
  }

  v14 = v12;

  return v14;
}

- (BOOL)isInteractionSuppressedForIdentifier:(id)a3
{
  v4 = a3;
  extension = self->_extension;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(NSFileProviderExtension *)self->_extension isInteractionSuppressedForIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)methodSignatureForSelector:(SEL)a3
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
    v7 = [(FPXV2ExtensionWrapper *)&v10 methodSignatureForSelector:a3];
  }

  v8 = v7;

  return v8;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FPXV2ExtensionWrapper;
  if ([(FPXV2ExtensionWrapper *)&v7 conformsToProtocol:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(NSFileProviderExtension *)self->_extension conformsToProtocol:v4];
  }

  return v5;
}

@end