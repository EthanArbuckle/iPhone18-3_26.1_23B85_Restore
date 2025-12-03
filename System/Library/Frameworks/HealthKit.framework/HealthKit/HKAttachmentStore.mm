@interface HKAttachmentStore
+ (id)serverInterface;
- (BOOL)_validateInputWithObject:(id)object contentType:(id)type URL:(id)l error:(id *)error;
- (HKAttachmentStore)initWithHealthStore:(HKHealthStore *)healthStore;
- (NSProgress)getDataForAttachment:(HKAttachment *)attachment completion:(void *)completion;
- (NSProgress)streamDataForAttachment:(HKAttachment *)attachment dataHandler:(void *)dataHandler;
- (void)addAttachmentToObject:(HKObject *)object name:(NSString *)name contentType:(UTType *)contentType URL:(NSURL *)URL metadata:(NSDictionary *)metadata completion:(void *)completion;
- (void)addAttachmentWithName:(id)name contentType:(id)type URL:(id)l toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier attachmentMetadata:(id)metadata referenceMetadata:(id)referenceMetadata completion:(id)self0;
- (void)addReferenceWithAttachment:(id)attachment toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier metadata:(id)metadata completion:(id)completion;
- (void)attachmentReferencesForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier completion:(id)completion;
- (void)getAttachmentsForObject:(HKObject *)object completion:(void *)completion;
- (void)getDataChunkForAttachment:(id)attachment chunkSize:(unint64_t)size offset:(unint64_t)offset completion:(id)completion;
- (void)removeAttachment:(HKAttachment *)attachment fromObject:(HKObject *)object completion:(void *)completion;
- (void)removeReference:(id)reference schemaIdentifier:(id)identifier completion:(id)completion;
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v10 = [(HKTaskServerProxyProvider *)v8 initWithHealthStore:v5 taskIdentifier:@"HKAttachmentStoreServerIdentifier" exportedObject:v7 taskUUID:uUID];
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
    attachmentObjectIdentifier = [(HKObject *)v14 attachmentObjectIdentifier];
    attachmentSchemaIdentifier = [(HKObject *)v14 attachmentSchemaIdentifier];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __84__HKAttachmentStore_addAttachmentToObject_name_contentType_URL_metadata_completion___block_invoke;
    v24[3] = &unk_1E7380240;
    v25 = v19;
    [(HKAttachmentStore *)self addAttachmentWithName:v15 contentType:v16 URL:v17 toObjectWithIdentifier:attachmentObjectIdentifier schemaIdentifier:attachmentSchemaIdentifier attachmentMetadata:v18 referenceMetadata:0 completion:v24];
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
  attachmentObjectIdentifier = [(HKObject *)v7 attachmentObjectIdentifier];
  attachmentSchemaIdentifier = [(HKObject *)v7 attachmentSchemaIdentifier];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__HKAttachmentStore_getAttachmentsForObject_completion___block_invoke;
  v11[3] = &unk_1E737F3D0;
  v12 = v6;
  v10 = v6;
  [(HKAttachmentStore *)self attachmentReferencesForObjectIdentifier:attachmentObjectIdentifier schemaIdentifier:attachmentSchemaIdentifier completion:v11];
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
  data = [MEMORY[0x1E695DF88] data];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__HKAttachmentStore_getDataForAttachment_completion___block_invoke;
  v14[3] = &unk_1E73802B0;
  v15 = data;
  v16 = v8;
  v10 = data;
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
  identifier = [(HKAttachment *)v6 identifier];
  [(NSMutableDictionary *)attachmentDataHandlersByIdentifier setObject:v10 forKeyedSubscript:identifier];

  dataStreamProgressByIdentifier = self->_dataStreamProgressByIdentifier;
  identifier2 = [(HKAttachment *)v6 identifier];
  [(NSMutableDictionary *)dataStreamProgressByIdentifier setObject:v9 forKeyedSubscript:identifier2];

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

- (void)addReferenceWithAttachment:(id)attachment toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier metadata:(id)metadata completion:(id)completion
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  metadataCopy = metadata;
  v16 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __108__HKAttachmentStore_addReferenceWithAttachment_toObjectWithIdentifier_schemaIdentifier_metadata_completion___block_invoke;
  v25[3] = &unk_1E7380328;
  v26 = attachmentCopy;
  v27 = identifierCopy;
  v28 = schemaIdentifierCopy;
  v29 = metadataCopy;
  v30 = v16;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __108__HKAttachmentStore_addReferenceWithAttachment_toObjectWithIdentifier_schemaIdentifier_metadata_completion___block_invoke_2;
  v23[3] = &unk_1E7376960;
  v24 = v30;
  v18 = v30;
  v19 = metadataCopy;
  v20 = schemaIdentifierCopy;
  v21 = identifierCopy;
  v22 = attachmentCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v25 errorHandler:v23];
}

- (void)removeReference:(id)reference schemaIdentifier:(id)identifier completion:(id)completion
{
  referenceCopy = reference;
  identifierCopy = identifier;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__HKAttachmentStore_removeReference_schemaIdentifier_completion___block_invoke;
  v17[3] = &unk_1E7380268;
  v18 = referenceCopy;
  v19 = identifierCopy;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__HKAttachmentStore_removeReference_schemaIdentifier_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = identifierCopy;
  v14 = referenceCopy;
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

- (void)addAttachmentWithName:(id)name contentType:(id)type URL:(id)l toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier attachmentMetadata:(id)metadata referenceMetadata:(id)referenceMetadata completion:(id)self0
{
  nameCopy = name;
  typeCopy = type;
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  metadataCopy = metadata;
  referenceMetadataCopy = referenceMetadata;
  proxyProvider = self->_proxyProvider;
  lCopy = l;
  v24 = [(HKProxyProvider *)proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v49[0] = 0;
  v25 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:lCopy error:v49];

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
  v41 = nameCopy;
  v42 = typeCopy;
  v43 = v25;
  v44 = identifierCopy;
  v45 = schemaIdentifierCopy;
  v46 = metadataCopy;
  v47 = referenceMetadataCopy;
  v48 = v24;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __147__HKAttachmentStore_addAttachmentWithName_contentType_URL_toObjectWithIdentifier_schemaIdentifier_attachmentMetadata_referenceMetadata_completion___block_invoke_2;
  v37[3] = &unk_1E7376820;
  v38 = v43;
  v39 = v48;
  v28 = v48;
  v29 = v43;
  v30 = referenceMetadataCopy;
  v31 = metadataCopy;
  v32 = schemaIdentifierCopy;
  v33 = identifierCopy;
  v34 = typeCopy;
  v35 = nameCopy;
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

- (void)attachmentReferencesForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__HKAttachmentStore_attachmentReferencesForObjectIdentifier_schemaIdentifier_completion___block_invoke;
  v17[3] = &unk_1E7380268;
  v18 = identifierCopy;
  v19 = schemaIdentifierCopy;
  v20 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__HKAttachmentStore_attachmentReferencesForObjectIdentifier_schemaIdentifier_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = schemaIdentifierCopy;
  v14 = identifierCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)getDataChunkForAttachment:(id)attachment chunkSize:(unint64_t)size offset:(unint64_t)offset completion:(id)completion
{
  attachmentCopy = attachment;
  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__HKAttachmentStore_getDataChunkForAttachment_chunkSize_offset_completion___block_invoke;
  v17[3] = &unk_1E7380378;
  v18 = attachmentCopy;
  sizeCopy = size;
  offsetCopy = offset;
  v19 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__HKAttachmentStore_getDataChunkForAttachment_chunkSize_offset_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v19;
  v13 = v19;
  v14 = attachmentCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (BOOL)_validateInputWithObject:(id)object contentType:(id)type URL:(id)l error:(id *)error
{
  objectCopy = object;
  typeCopy = type;
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objectCopy;
    sampleType = [v12 sampleType];
    supportsAttachments = [sampleType supportsAttachments];

    if (supportsAttachments)
    {
      if ([lCopy isFileURL])
      {
        v15 = MEMORY[0x1E6982C40];
        pathExtension = [lCopy pathExtension];
        v17 = [v15 typeWithFilenameExtension:pathExtension];

        if (v17 && ([typeCopy conformsToType:v17] & 1) == 0)
        {
          v33 = [MEMORY[0x1E696ABC0] hk_error:3 format:@"Content Type is not equal to URL extension type"];
          v34 = v33;
          if (v33)
          {
            if (error)
            {
              v35 = v33;
              *error = v34;
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
        path = [lCopy path];
        v39 = v18;
        v40 = 0;
        v20 = [v18 attributesOfItemAtPath:path error:&v40];
        v21 = v40;

        if (v20)
        {
          fileSize = [v20 fileSize];
          sampleType2 = [v12 sampleType];
          v24 = [sampleType2 canAttachFileOfType:typeCopy size:fileSize error:error];
LABEL_30:

LABEL_31:
LABEL_32:

          goto LABEL_33;
        }

        v36 = v21;
        sampleType2 = v36;
        if (v36)
        {
          if (error)
          {
            v37 = v36;
            v24 = 0;
            *error = sampleType2;
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
      if (error)
      {
        v32 = v30;
        *error = v31;
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
    if (error)
    {
      v27 = v25;
      *error = v26;
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