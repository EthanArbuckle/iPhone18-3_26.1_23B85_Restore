@interface AFContextDonationService
+ (id)defaultService;
- (id)_connection;
- (id)_init;
- (void)deviceContextConnectionDidInvalidate:(id)invalidate;
- (void)donateContext:(id)context withMetadata:(id)metadata pushToRemote:(BOOL)remote completion:(id)completion;
- (void)registerContextTransformer:(id)transformer forType:(id)type;
- (void)setDonationService:(id)service;
@end

@implementation AFContextDonationService

+ (id)defaultService
{
  if (defaultService_onceToken != -1)
  {
    dispatch_once(&defaultService_onceToken, &__block_literal_global_47986);
  }

  v3 = defaultService_sDonation;

  return v3;
}

- (void)deviceContextConnectionDidInvalidate:(id)invalidate
{
  connection = self->_connection;
  self->_connection = 0;
}

- (void)donateContext:(id)context withMetadata:(id)metadata pushToRemote:(BOOL)remote completion:(id)completion
{
  contextCopy = context;
  metadataCopy = metadata;
  completionCopy = completion;
  type = [metadataCopy type];
  if (type)
  {
    queue = self->_queue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke;
    v15[3] = &unk_1E7349578;
    v15[4] = self;
    v16 = contextCopy;
    v17 = metadataCopy;
    remoteCopy = remote;
    v19 = completionCopy;
    v18 = type;
    dispatch_async(queue, v15);
  }
}

void __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__47966;
    v41 = __Block_byref_object_dispose__47967;
    v42 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__47966;
    v35 = __Block_byref_object_dispose__47967;
    v36 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_5;
    v25[3] = &unk_1E7349500;
    v25[4] = v2;
    v28 = &v37;
    v29 = &v31;
    v26 = *(a1 + 56);
    v30 = *(a1 + 72);
    v27 = *(a1 + 64);
    v7 = MEMORY[0x193AFB7B0](v25);
    v8 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 56)];
    v9 = [*(a1 + 40) serializedBackingStore];
    v10 = v9;
    if (v8)
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_3;
      v19[3] = &unk_1E7349550;
      v19[4] = *(a1 + 32);
      v23 = &v37;
      v20 = v9;
      v24 = &v31;
      v21 = *(a1 + 48);
      v22 = v7;
      [v8 getRedactedContextForContextSnapshot:v11 metadata:v12 privacyPolicy:50 completion:v19];
    }

    else
    {
      v45 = &unk_1F056EFB8;
      v46[0] = v9;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v14 = v38[5];
      v38[5] = v13;

      v15 = *(a1 + 48);
      v43 = &unk_1F056EFB8;
      v44 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v17 = v32[5];
      v32[5] = v16;

      v7[2](v7);
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);

    goto LABEL_10;
  }

  [v3 donateContext:*(a1 + 40) withMetadata:*(a1 + 48) pushToRemote:*(a1 + 72)];
  v4 = *(a1 + 64);
  if (!v4)
  {
LABEL_10:
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = *(v4 + 16);
  v6 = *MEMORY[0x1E69E9840];

  v5();
}

void __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = *(a1 + 72);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_2;
  v7[3] = &unk_1E73494D8;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v2 donateSerializedContextMapByPrivacyClass:v3 withMetadataMap:v4 forType:v6 pushToRemote:v5 completion:v7];
}

void __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_4;
  block[3] = &unk_1E7349528;
  v16 = v5;
  v17 = v6;
  v8 = *(a1 + 64);
  v9 = *(a1 + 40);
  v20 = *(a1 + 72);
  v10 = *(a1 + 48);
  *&v11 = *(a1 + 56);
  *(&v11 + 1) = v8;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v18 = v12;
  v19 = v11;
  v13 = v6;
  v14 = v5;
  dispatch_async(v7, block);
}

uint64_t __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_4(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v25 = a1[4];
    v26 = a1[5];
    *buf = 136315650;
    v36 = "[AFContextDonationService donateContext:withMetadata:pushToRemote:completion:]_block_invoke_4";
    v37 = 2112;
    v38 = v25;
    v39 = 2112;
    v40 = v26;
    _os_log_debug_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEBUG, "%s #hal redacted: %@ %@", buf, 0x20u);
  }

  v3 = a1[4];
  if (v3 && a1[5])
  {
    v4 = a1[6];
    v33[0] = &unk_1F056EFB8;
    v33[1] = &unk_1F056EFD0;
    v34[0] = v4;
    v5 = [v3 serializedBackingStore];
    v34[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v7 = *(a1[9] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = a1[7];
    v31[0] = &unk_1F056EFB8;
    v31[1] = &unk_1F056EFD0;
    v10 = a1[5];
    v32[0] = v9;
    v32[1] = v10;
    v11 = MEMORY[0x1E695DF20];
    v12 = v32;
    v13 = v31;
    v14 = 2;
  }

  else
  {
    v15 = a1[6];
    v29 = &unk_1F056EFB8;
    v30 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v17 = *(a1[9] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = a1[7];
    v27 = &unk_1F056EFB8;
    v28 = v19;
    v11 = MEMORY[0x1E695DF20];
    v12 = &v28;
    v13 = &v27;
    v14 = 1;
  }

  v20 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:{v14, v27, v28}];
  v21 = *(a1[10] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  result = (*(a1[8] + 16))();
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __79__AFContextDonationService_donateContext_withMetadata_pushToRemote_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)registerContextTransformer:(id)transformer forType:(id)type
{
  transformerCopy = transformer;
  typeCopy = type;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AFContextDonationService_registerContextTransformer_forType___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v12 = transformerCopy;
  v13 = typeCopy;
  v9 = typeCopy;
  v10 = transformerCopy;
  dispatch_async(queue, block);
}

uint64_t __63__AFContextDonationService_registerContextTransformer_forType___block_invoke(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 24))
  {
    return [*(v1 + 24) registerContextTransformer:a1[5] forType:a1[6]];
  }

  else
  {
    return [*(v1 + 8) setObject:a1[5] forKey:a1[6]];
  }
}

- (void)setDonationService:(id)service
{
  serviceCopy = service;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AFContextDonationService_setDonationService___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = serviceCopy;
  v6 = serviceCopy;
  dispatch_async(queue, v7);
}

void __47__AFContextDonationService_setDonationService___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  if ([*(*(a1 + 32) + 8) count])
  {
    v2 = *(a1 + 32);
    if (*(v2 + 24))
    {
      v7 = [*(v2 + 8) keyEnumerator];
      v3 = [v7 nextObject];
      if (v3)
      {
        v4 = v3;
        do
        {
          v5 = [*(*(a1 + 32) + 8) objectForKey:v4];
          [*(*(a1 + 32) + 24) registerContextTransformer:v5 forType:v4];

          v6 = [v7 nextObject];

          v4 = v6;
        }

        while (v6);
      }
    }
  }
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [AFDeviceContextConnection alloc];
    queue = self->_queue;
    v6 = +[AFInstanceContext currentContext];
    v7 = [(AFDeviceContextConnection *)v4 initWithQueue:queue instanceContext:v6 delegate:self];
    v8 = self->_connection;
    self->_connection = v7;

    connection = self->_connection;
  }

  return connection;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = AFContextDonationService;
  v2 = [(AFContextDonationService *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AFContextDonationService", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    transformersByType = v2->_transformersByType;
    v2->_transformersByType = strongToWeakObjectsMapTable;
  }

  return v2;
}

void __42__AFContextDonationService_defaultService__block_invoke()
{
  v0 = [[AFContextDonationService alloc] _init];
  v1 = defaultService_sDonation;
  defaultService_sDonation = v0;
}

@end