@interface AVTAvatarRecordImageGenerator
+ (id)supportedScopesForScale:(double)scale;
- (AVTAvatarRecordImageGenerator)initWithImageStore:(id)store coreEnvironment:(id)environment;
- (AVTAvatarRecordImageGenerator)initWithImageStore:(id)store renderer:(id)renderer environment:(id)environment;
- (AVTCoreModel)coreModel;
- (BOOL)deleteThumbnailsForAvatarRecordsWithIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)generateThumbnailForAvatarRecordItem:(id)item avatarConfiguration:(id)configuration scope:(id)scope error:(id *)error;
- (BOOL)generateThumbnailsForAvatarRecord:(id)record avatar:(id)avatar error:(id *)error;
- (BOOL)generateThumbnailsForAvatarRecords:(id)records error:(id *)error;
- (BOOL)generateThumbnailsForDuplicateAvatarRecord:(id)record originalRecord:(id)originalRecord error:(id *)error;
- (void)updateThumbnailsForChangesWithTracker:(id)tracker recordProvider:(id)provider;
@end

@implementation AVTAvatarRecordImageGenerator

+ (id)supportedScopesForScale:(double)scale
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = +[AVTRenderingScope gridThumbnailScope];
  v4 = +[AVTRenderingScope listControllerThumbnailScope];
  v8[1] = v4;
  v5 = +[AVTRenderingScope funCamCarouselThumbnailScope];
  v8[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

- (AVTAvatarRecordImageGenerator)initWithImageStore:(id)store renderer:(id)renderer environment:(id)environment
{
  storeCopy = store;
  rendererCopy = renderer;
  environmentCopy = environment;
  v21.receiver = self;
  v21.super_class = AVTAvatarRecordImageGenerator;
  v12 = [(AVTAvatarRecordImageGenerator *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageStore, store);
    objc_storeStrong(&v13->_renderer, renderer);
    v14 = objc_opt_class();
    [environmentCopy mainScreenScale];
    v15 = [v14 supportedScopesForScale:?];
    v16 = [v15 copy];
    scopes = v13->_scopes;
    v13->_scopes = v16;

    logger = [environmentCopy logger];
    logger = v13->_logger;
    v13->_logger = logger;

    objc_storeStrong(&v13->_environment, environment);
  }

  return v13;
}

- (AVTAvatarRecordImageGenerator)initWithImageStore:(id)store coreEnvironment:(id)environment
{
  storeCopy = store;
  environmentCopy = environment;
  v14.receiver = self;
  v14.super_class = AVTAvatarRecordImageGenerator;
  v9 = [(AVTAvatarRecordImageGenerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageStore, store);
    logger = [environmentCopy logger];
    logger = v10->_logger;
    v10->_logger = logger;
  }

  return v10;
}

- (AVTCoreModel)coreModel
{
  environment = [(AVTAvatarRecordImageGenerator *)self environment];
  editorCoreModel = [environment editorCoreModel];

  return editorCoreModel;
}

- (BOOL)generateThumbnailsForAvatarRecord:(id)record avatar:(id)avatar error:(id *)error
{
  recordCopy = record;
  avatarCopy = avatar;
  coreModel = [(AVTAvatarRecordImageGenerator *)self coreModel];
  v11 = [AVTAvatarConfiguration configurationFromAvatar:avatarCopy coreModel:coreModel];

  v12 = [AVTAvatarRecordCacheableResource alloc];
  environment = [(AVTAvatarRecordImageGenerator *)self environment];
  v14 = [(AVTAvatarRecordCacheableResource *)v12 initWithAvatarRecord:recordCopy includeAvatarData:0 environment:environment];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  scopes = [(AVTAvatarRecordImageGenerator *)self scopes];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__AVTAvatarRecordImageGenerator_generateThumbnailsForAvatarRecord_avatar_error___block_invoke;
  v20[3] = &unk_1E7F3A770;
  v23 = &v31;
  v20[4] = self;
  v16 = v14;
  v21 = v16;
  v17 = v11;
  v22 = v17;
  v24 = &v25;
  [scopes enumerateObjectsUsingBlock:v20];

  v18 = *(v32 + 24);
  if (error && (v32[3] & 1) == 0)
  {
    *error = v26[5];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v18;
}

void __80__AVTAvatarRecordImageGenerator_generateThumbnailsForAvatarRecord_avatar_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *(a1[8] + 8);
  obj = *(v9 + 40);
  v10 = [v6 generateThumbnailForAvatarRecordItem:v7 avatarConfiguration:v8 scope:a2 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(a1[7] + 8) + 24) = v10;
  *a4 = *(*(a1[7] + 8) + 24) ^ 1;
}

- (BOOL)generateThumbnailsForAvatarRecords:(id)records error:(id *)error
{
  recordsCopy = records;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__AVTAvatarRecordImageGenerator_generateThumbnailsForAvatarRecords_error___block_invoke;
  v9[3] = &unk_1E7F3A798;
  v9[5] = &v16;
  v9[6] = &v10;
  v9[4] = self;
  [recordsCopy enumerateObjectsUsingBlock:v9];
  v7 = *(v17 + 24);
  if (error && (v17[3] & 1) == 0)
  {
    *error = v11[5];
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

void __74__AVTAvatarRecordImageGenerator_generateThumbnailsForAvatarRecords_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = MEMORY[0x1E698E320];
  v8 = [v6 avatarData];
  LOBYTE(v7) = [v7 canLoadAvatarWithData:v8];

  if (v7)
  {
    v9 = [AVTAvatarRecordCacheableResource alloc];
    v10 = [*(a1 + 32) environment];
    v11 = [(AVTAvatarRecordCacheableResource *)v9 initWithAvatarRecord:v6 includeAvatarData:0 environment:v10];

    v12 = [*(a1 + 32) coreModel];
    v13 = [AVTAvatarConfiguration configurationForRecord:v6 coreModel:v12];

    v14 = [*(a1 + 32) scopes];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__AVTAvatarRecordImageGenerator_generateThumbnailsForAvatarRecords_error___block_invoke_2;
    v20[3] = &unk_1E7F3A770;
    v20[4] = *(a1 + 32);
    v21 = v11;
    v22 = v13;
    v23 = *(a1 + 40);
    v15 = v13;
    v16 = v11;
    [v14 enumerateObjectsUsingBlock:v20];

    *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v17 = [MEMORY[0x1E698E338] errorWithCode:702 userInfo:0];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *a4 = 1;
  }
}

void __74__AVTAvatarRecordImageGenerator_generateThumbnailsForAvatarRecords_error___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *(a1[8] + 8);
  obj = *(v9 + 40);
  v10 = [v6 generateThumbnailForAvatarRecordItem:v7 avatarConfiguration:v8 scope:a2 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(a1[7] + 8) + 24) = v10;
  *a4 = *(*(a1[7] + 8) + 24) ^ 1;
}

- (BOOL)generateThumbnailForAvatarRecordItem:(id)item avatarConfiguration:(id)configuration scope:(id)scope error:(id *)error
{
  itemCopy = item;
  scopeCopy = scope;
  configurationCopy = configuration;
  logger = [(AVTAvatarRecordImageGenerator *)self logger];
  record = [itemCopy record];
  identifier = [record identifier];
  v16 = [scopeCopy description];
  [logger logGeneratingImageForRecord:identifier scope:v16 type:{objc_msgSend(scopeCopy, "renderingType")}];

  renderer = [(AVTAvatarRecordImageGenerator *)self renderer];

  if (!renderer)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"I'm asked to render images but I did not get a renderer"];
  }

  renderer2 = [(AVTAvatarRecordImageGenerator *)self renderer];
  v19 = [renderer2 imageForAvatarConfiguration:configurationCopy scope:scopeCopy];

  imageStore = [(AVTAvatarRecordImageGenerator *)self imageStore];
  v27 = 0;
  v21 = [imageStore saveImage:v19 forItem:itemCopy scope:scopeCopy error:&v27];
  v22 = v27;

  if ((v21 & 1) == 0)
  {
    if (error)
    {
      v23 = v22;
      *error = v22;
    }

    logger2 = [(AVTAvatarRecordImageGenerator *)self logger];
    v25 = [v22 description];
    [logger2 logGeneratingImageError:v25];
  }

  return v21;
}

- (BOOL)deleteThumbnailsForAvatarRecordsWithIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__AVTAvatarRecordImageGenerator_deleteThumbnailsForAvatarRecordsWithIdentifiers_error___block_invoke;
  v9[3] = &unk_1E7F3A7C0;
  v9[4] = self;
  v9[5] = &v16;
  v9[6] = &v10;
  [identifiersCopy enumerateObjectsUsingBlock:v9];
  v7 = *(v17 + 24);
  if (error && (v17[3] & 1) == 0)
  {
    *error = v11[5];
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

void __87__AVTAvatarRecordImageGenerator_deleteThumbnailsForAvatarRecordsWithIdentifiers_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [AVTAvatarRecordCacheableResource persistentIdentifierPrefixForRecordWithIdentifier:a2];
  v7 = [*(a1 + 32) imageStore];
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 deleteImagesForItemsWithPersistentIdentifierPrefix:v6 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v9;

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (BOOL)generateThumbnailsForDuplicateAvatarRecord:(id)record originalRecord:(id)originalRecord error:(id *)error
{
  recordCopy = record;
  identifier = [originalRecord identifier];
  v10 = [AVTAvatarRecordCacheableResource persistentIdentifierPrefixForRecordWithIdentifier:identifier];

  identifier2 = [recordCopy identifier];

  v12 = [AVTAvatarRecordCacheableResource persistentIdentifierPrefixForRecordWithIdentifier:identifier2];

  imageStore = [(AVTAvatarRecordImageGenerator *)self imageStore];
  LOBYTE(error) = [imageStore copyImagesForPersistentIdentifierPrefix:v10 toPersistentIdentifierPrefix:v12 error:error];

  return error;
}

- (void)updateThumbnailsForChangesWithTracker:(id)tracker recordProvider:(id)provider
{
  trackerCopy = tracker;
  providerCopy = provider;
  array = [MEMORY[0x1E695DF70] array];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__AVTAvatarRecordImageGenerator_updateThumbnailsForChangesWithTracker_recordProvider___block_invoke;
  v22[3] = &unk_1E7F3A808;
  v22[4] = self;
  v9 = array;
  v23 = v9;
  v10 = MEMORY[0x1BFB0DE80](v22);
  logger = [(AVTAvatarRecordImageGenerator *)self logger];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__AVTAvatarRecordImageGenerator_updateThumbnailsForChangesWithTracker_recordProvider___block_invoke_3;
  v16[3] = &unk_1E7F3A830;
  v17 = trackerCopy;
  selfCopy = self;
  v19 = v9;
  v20 = v10;
  v21 = providerCopy;
  v12 = providerCopy;
  v13 = v9;
  v14 = v10;
  v15 = trackerCopy;
  [logger updatingThumbnailsForRemoteChanges:v16];
}

uint64_t __86__AVTAvatarRecordImageGenerator_updateThumbnailsForChangesWithTracker_recordProvider___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 avt_map:&__block_literal_global];
  v5 = *(a1 + 32);
  v23 = 0;
  v6 = [v5 deleteThumbnailsForAvatarRecordsWithIdentifiers:v4 error:&v23];
  v7 = v23;
  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v18 = v7;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if (![v13 changeType])
          {
            v14 = *(a1 + 40);
            v15 = [v13 recordIdentifier];
            [v14 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
      v7 = v18;
    }
  }

  else
  {
    v8 = [*(a1 + 32) logger];
    v16 = [v7 description];
    [v8 logErrorDeletingSomeThumbnail:v16];
  }

  return v6;
}

void __86__AVTAvatarRecordImageGenerator_updateThumbnailsForChangesWithTracker_recordProvider___block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) imageStore];
  v4 = [v3 location];
  v5 = *(a1 + 56);
  v24 = 0;
  v6 = [v2 processChangeTransactionsWithChangeTokenLocation:v4 handler:v5 error:&v24];
  v7 = v24;

  if ((v6 & 1) == 0)
  {
    v8 = [*(a1 + 40) logger];
    v9 = [v7 description];
    [v8 logErrorProcessingChangeTransactionsToUpdateThumbnails:v9];
  }

  v10 = [*(a1 + 40) renderer];

  if (v10)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = *(a1 + 48);
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = (*(*(a1 + 64) + 16))(*(a1 + 64));
          v17 = v16;
          if (v16)
          {
            v18 = *(a1 + 40);
            v25 = v16;
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:{1, v20}];
            [v18 generateThumbnailsForAvatarRecords:v19 error:0];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v13);
    }
  }
}

@end