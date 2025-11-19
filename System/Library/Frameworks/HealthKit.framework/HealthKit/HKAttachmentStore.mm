@interface HKAttachmentStore
+ (id)serverInterface;
- (BOOL)_validateInputWithObject:(id)a3 contentType:(id)a4 URL:(id)a5 error:(id *)a6;
- (HKAttachmentStore)initWithHealthStore:(HKHealthStore *)healthStore;
- (NSProgress)getDataForAttachment:(HKAttachment *)attachment completion:(void *)completion;
- (NSProgress)streamDataForAttachment:(HKAttachment *)attachment dataHandler:(void *)dataHandler;
- (void)addAttachmentToObject:(HKObject *)object name:(NSString *)name contentType:(UTType *)contentType URL:(NSURL *)URL metadata:(NSDictionary *)metadata completion:(void *)completion;
- (void)addAttachmentWithName:(id)a3 contentType:(id)a4 URL:(id)a5 toObjectWithIdentifier:(id)a6 schemaIdentifier:(id)a7 attachmentMetadata:(id)a8 referenceMetadata:(id)a9 completion:(id)a10;
- (void)addReferenceWithAttachment:(id)a3 toObjectWithIdentifier:(id)a4 schemaIdentifier:(id)a5 metadata:(id)a6 completion:(id)a7;
- (void)attachmentReferencesForObjectIdentifier:(id)a3 schemaIdentifier:(id)a4 completion:(id)a5;
- (void)getAttachmentsForObject:(HKObject *)object completion:(void *)completion;
- (void)getDataChunkForAttachment:(id)a3 chunkSize:(unint64_t)a4 offset:(unint64_t)a5 completion:(id)a6;
- (void)removeAttachment:(HKAttachment *)attachment fromObject:(HKObject *)object completion:(void *)completion;
- (void)removeReference:(id)a3 schemaIdentifier:(id)a4 completion:(id)a5;
@end

@implementation HKAttachmentStore

- (HKAttachmentStore)initWithHealthStore:(HKHealthStore *)healthStore
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = healthStore;
  v19.receiver = self;
  v19.super_class = HKAttachmentStore;
  v6 = [(HKAttachmentStore *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, healthStore);
    v8 = [HKTaskServerProxyProvider alloc];
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [(HKTaskServerProxyProvider *)v8 initWithHealthStore:v5 taskIdentifier:@"HKAttachmentStoreServerIdentifier" exportedObject:v7 taskUUID:v9];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attachmentDataHandlersByIdentifier = v7->_attachmentDataHandlersByIdentifier;
    v7->_attachmentDataHandlersByIdentifier = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dataStreamProgressByIdentifier = v7->_dataStreamProgressByIdentifier;
    v7->_dataStreamProgressByIdentifier = v14;

    v7->_lock._os_unfair_lock_opaque = 0;
    [(HKProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:1];
    _HKInitializeLogging();
    v16 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v7;
      _os_log_impl(&dword_19197B000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Created new attachment store", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7D78];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_remote_addReferenceWithAttachment_toObjectWithIdentifier_schemaIdentifier_metadata_completion_ argumentIndex:0 ofReply:1];
  [v2 setClasses:v5 forSelector:sel_remote_attachmentReferencesForObjectIdentifier_schemaIdentifier_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (void)addAttachmentToObject:(HKObject *)object name:(NSString *)name contentType:(UTType *)contentType URL:(NSURL *)URL metadata:(NSDictionary *)metadata completion:(void *)completion
{
  v14 = object;
  v15 = name;
  v16 = contentType;
  v17 = URL;
  v18 = metadata;
  v19 = completion;
  v26 = 0;
  v20 = [(HKAttachmentStore *)self _validateInputWithObject:v14 contentType:v16 URL:v17 error:&v26];
  v21 = v26;
  if (v20)
  {
    v22 = [(HKObject *)v14 attachmentObjectIdentifier];
    v23 = [(HKObject *)v14 attachmentSchemaIdentifier];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __84__HKAttachmentStore_addAttachmentToObject_name_contentType_URL_metadata_completion___block_invoke;
    v24[3] = &unk_1E7380240;
    v25 = v19;
    [(HKAttachmentStore *)self addAttachmentWithName:v15 contentType:v16 URL:v17 toObjectWithIdentifier:v22 schemaIdentifier:v23 attachmentMetadata:v18 referenceMetadata:0 completion:v24];
  }

  else
  {
    (*(v19 + 2))(v19, 0, v21);
  }
}

void __84__HKAttachmentStore_addAttachmentToObject_name_contentType_URL_metadata_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 attachment];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)removeAttachment:(HKAttachment *)attachment fromObject:(HKObject *)object completion:(void *)completion
{
  v8 = attachment;
  v9 = object;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__HKAttachmentStore_removeAttachment_fromObject_completion___block_invoke;
  v17[3] = &unk_1E7380268;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__HKAttachmentStore_removeAttachment_fromObject_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

void __60__HKAttachmentStore_removeAttachment_fromObject_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 identifier];
  v5 = [*(a1 + 40) attachmentObjectIdentifier];
  v6 = [*(a1 + 40) attachmentSchemaIdentifier];
  [v4 remote_removeAllReferencesWithAttachmentIdentifier:v7 objectIdentifier:v5 schemaIdentifier:v6 completion:*(a1 + 48)];
}

- (void)getAttachmentsForObject:(HKObject *)object completion:(void *)completion
{
  v6 = completion;
  v7 = object;
  v8 = [(HKObject *)v7 attachmentObjectIdentifier];
  v9 = [(HKObject *)v7 attachmentSchemaIdentifier];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__HKAttachmentStore_getAttachmentsForObject_completion___block_invoke;
  v11[3] = &unk_1E737F3D0;
  v12 = v6;
  v10 = v6;
  [(HKAttachmentStore *)self attachmentReferencesForObjectIdentifier:v8 schemaIdentifier:v9 completion:v11];
}

void __56__HKAttachmentStore_getAttachmentsForObject_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 hk_map:&__block_literal_global_77];
  (*(*(a1 + 32) + 16))();
}

- (NSProgress)getDataForAttachment:(HKAttachment *)attachment completion:(void *)completion
{
  proxyProvider = self->_proxyProvider;
  v7 = attachment;
  v8 = [(HKProxyProvider *)proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v9 = [MEMORY[0x1E695DF88] data];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__HKAttachmentStore_getDataForAttachment_completion___block_invoke;
  v14[3] = &unk_1E73802B0;
  v15 = v9;
  v16 = v8;
  v10 = v9;
  v11 = v8;
  v12 = [(HKAttachmentStore *)self streamDataForAttachment:v7 dataHandler:v14];

  return v12;
}

void __53__HKAttachmentStore_getDataForAttachment_completion___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v10 = a2;
  v7 = a3;
  if (v10)
  {
    [*(a1 + 32) appendData:?];
    if (a4)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) copy];
      (*(v8 + 16))(v8, v9, 0);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (NSProgress)streamDataForAttachment:(HKAttachment *)attachment dataHandler:(void *)dataHandler
{
  v6 = attachment;
  v7 = dataHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__HKAttachmentStore_streamDataForAttachment_dataHandler___block_invoke;
  aBlock[3] = &unk_1E73802D8;
  aBlock[4] = self;
  v25 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{-[HKAttachment size](v6, "size")}];
  os_unfair_lock_lock(&self->_lock);
  v10 = _Block_copy(v8);
  attachmentDataHandlersByIdentifier = self->_attachmentDataHandlersByIdentifier;
  v12 = [(HKAttachment *)v6 identifier];
  [(NSMutableDictionary *)attachmentDataHandlersByIdentifier setObject:v10 forKeyedSubscript:v12];

  dataStreamProgressByIdentifier = self->_dataStreamProgressByIdentifier;
  v14 = [(HKAttachment *)v6 identifier];
  [(NSMutableDictionary *)dataStreamProgressByIdentifier setObject:v9 forKeyedSubscript:v14];

  os_unfair_lock_unlock(&self->_lock);
  proxyProvider = self->_proxyProvider;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__HKAttachmentStore_streamDataForAttachment_dataHandler___block_invoke_3;
  v22[3] = &unk_1E7380300;
  v23 = v6;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__HKAttachmentStore_streamDataForAttachment_dataHandler___block_invoke_4;
  v19[3] = &unk_1E73786A8;
  v19[4] = self;
  v20 = v23;
  v21 = v8;
  v16 = v8;
  v17 = v23;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v22 errorHandler:v19];

  return v9;
}

void __57__HKAttachmentStore_streamDataForAttachment_dataHandler___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(*(a1 + 32) + 40) clientQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__HKAttachmentStore_streamDataForAttachment_dataHandler___block_invoke_2;
  v13[3] = &unk_1E737D7A0;
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v14 = v7;
  v17 = a4;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

uint64_t __57__HKAttachmentStore_streamDataForAttachment_dataHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), *(a1 + 40), *(a1 + 56));
  }

  return result;
}

void __57__HKAttachmentStore_streamDataForAttachment_dataHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  os_unfair_lock_lock(v3 + 6);
  v4 = *(*(a1 + 32) + 8);
  v5 = [*(a1 + 40) identifier];
  [v4 setObject:0 forKeyedSubscript:v5];

  v6 = *(*(a1 + 32) + 16);
  v7 = [*(a1 + 40) identifier];
  [v6 setObject:0 forKeyedSubscript:v7];

  os_unfair_lock_unlock((*(a1 + 32) + 24));
  (*(*(a1 + 48) + 16))();
}

- (void)addReferenceWithAttachment:(id)a3 toObjectWithIdentifier:(id)a4 schemaIdentifier:(id)a5 metadata:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a7];
  proxyProvider = self->_proxyProvider;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __108__HKAttachmentStore_addReferenceWithAttachment_toObjectWithIdentifier_schemaIdentifier_metadata_completion___block_invoke;
  v25[3] = &unk_1E7380328;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __108__HKAttachmentStore_addReferenceWithAttachment_toObjectWithIdentifier_schemaIdentifier_metadata_completion___block_invoke_2;
  v23[3] = &unk_1E7376960;
  v24 = v30;
  v18 = v30;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v25 errorHandler:v23];
}

- (void)removeReference:(id)a3 schemaIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__HKAttachmentStore_removeReference_schemaIdentifier_completion___block_invoke;
  v17[3] = &unk_1E7380268;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__HKAttachmentStore_removeReference_schemaIdentifier_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

void __65__HKAttachmentStore_removeReference_schemaIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 attachment];
  v5 = [v7 identifier];
  v6 = [*(a1 + 32) objectIdentifier];
  [v4 remote_removeAllReferencesWithAttachmentIdentifier:v5 objectIdentifier:v6 schemaIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)addAttachmentWithName:(id)a3 contentType:(id)a4 URL:(id)a5 toObjectWithIdentifier:(id)a6 schemaIdentifier:(id)a7 attachmentMetadata:(id)a8 referenceMetadata:(id)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  proxyProvider = self->_proxyProvider;
  v23 = a5;
  v24 = [(HKProxyProvider *)proxyProvider clientQueueObjectHandlerWithCompletion:a10];
  v49[0] = 0;
  v25 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v23 error:v49];

  v26 = v49[0];
  if (!v25)
  {
    (v24)[2](v24, 0, v26);
  }

  v36 = v26;
  v27 = self->_proxyProvider;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __147__HKAttachmentStore_addAttachmentWithName_contentType_URL_toObjectWithIdentifier_schemaIdentifier_attachmentMetadata_referenceMetadata_completion___block_invoke;
  v40[3] = &unk_1E7380350;
  v41 = v16;
  v42 = v17;
  v43 = v25;
  v44 = v18;
  v45 = v19;
  v46 = v20;
  v47 = v21;
  v48 = v24;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __147__HKAttachmentStore_addAttachmentWithName_contentType_URL_toObjectWithIdentifier_schemaIdentifier_attachmentMetadata_referenceMetadata_completion___block_invoke_2;
  v37[3] = &unk_1E7376820;
  v38 = v43;
  v39 = v48;
  v28 = v48;
  v29 = v43;
  v30 = v21;
  v31 = v20;
  v32 = v19;
  v33 = v18;
  v34 = v17;
  v35 = v16;
  [(HKProxyProvider *)v27 fetchProxyWithHandler:v40 errorHandler:v37];
}

void __147__HKAttachmentStore_addAttachmentWithName_contentType_URL_toObjectWithIdentifier_schemaIdentifier_attachmentMetadata_referenceMetadata_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 identifier];
  [v5 remote_addAttachmentWithName:v3 contentTypeIdentifier:v6 fileHandle:a1[6] toObjectWithIdentifier:a1[7] schemaIdentifier:a1[8] attachmentMetadata:a1[9] referenceMetadata:a1[10] completion:a1[11]];
}

void __147__HKAttachmentStore_addAttachmentWithName_contentType_URL_toObjectWithIdentifier_schemaIdentifier_attachmentMetadata_referenceMetadata_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 closeFile];
  (*(*(a1 + 40) + 16))();
}

- (void)attachmentReferencesForObjectIdentifier:(id)a3 schemaIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__HKAttachmentStore_attachmentReferencesForObjectIdentifier_schemaIdentifier_completion___block_invoke;
  v17[3] = &unk_1E7380268;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__HKAttachmentStore_attachmentReferencesForObjectIdentifier_schemaIdentifier_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)getDataChunkForAttachment:(id)a3 chunkSize:(unint64_t)a4 offset:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a6];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__HKAttachmentStore_getDataChunkForAttachment_chunkSize_offset_completion___block_invoke;
  v17[3] = &unk_1E7380378;
  v18 = v10;
  v20 = a4;
  v21 = a5;
  v19 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__HKAttachmentStore_getDataChunkForAttachment_chunkSize_offset_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v19;
  v13 = v19;
  v14 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (BOOL)_validateInputWithObject:(id)a3 contentType:(id)a4 URL:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v9;
    v13 = [v12 sampleType];
    v14 = [v13 supportsAttachments];

    if (v14)
    {
      if ([v11 isFileURL])
      {
        v15 = MEMORY[0x1E6982C40];
        v16 = [v11 pathExtension];
        v17 = [v15 typeWithFilenameExtension:v16];

        if (v17 && ([v10 conformsToType:v17] & 1) == 0)
        {
          v33 = [MEMORY[0x1E696ABC0] hk_error:3 format:@"Content Type is not equal to URL extension type"];
          v34 = v33;
          if (v33)
          {
            if (a6)
            {
              v35 = v33;
              *a6 = v34;
            }

            else
            {
              _HKLogDroppedError(v33);
            }
          }

          v24 = 0;
          goto LABEL_31;
        }

        v18 = objc_alloc_init(MEMORY[0x1E696AC08]);
        v19 = [v11 path];
        v39 = v18;
        v40 = 0;
        v20 = [v18 attributesOfItemAtPath:v19 error:&v40];
        v21 = v40;

        if (v20)
        {
          v22 = [v20 fileSize];
          v23 = [v12 sampleType];
          v24 = [v23 canAttachFileOfType:v10 size:v22 error:a6];
LABEL_30:

LABEL_31:
LABEL_32:

          goto LABEL_33;
        }

        v36 = v21;
        v23 = v36;
        if (v36)
        {
          if (a6)
          {
            v37 = v36;
            v24 = 0;
            *a6 = v23;
            goto LABEL_30;
          }

          _HKLogDroppedError(v36);
        }

        v24 = 0;
        goto LABEL_30;
      }

      v28 = MEMORY[0x1E696ABC0];
      v29 = @"Only file URLs are supported";
    }

    else
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = @"The object type is not supported";
    }

    v30 = [v28 hk_error:3 format:v29];
    v31 = v30;
    if (v30)
    {
      if (a6)
      {
        v32 = v30;
        *a6 = v31;
      }

      else
      {
        _HKLogDroppedError(v30);
      }
    }

    v24 = 0;
    goto LABEL_32;
  }

  v25 = [MEMORY[0x1E696ABC0] hk_error:3 format:@"The object type is not supported"];
  v26 = v25;
  if (v25)
  {
    if (a6)
    {
      v27 = v25;
      *a6 = v26;
    }

    else
    {
      _HKLogDroppedError(v25);
    }
  }

  v24 = 0;
LABEL_33:

  return v24;
}

@end