@interface AVTAvatarRecordImageGenerator
+ (id)supportedScopesForScale:(double)a3;
- (AVTAvatarRecordImageGenerator)initWithImageStore:(id)a3 coreEnvironment:(id)a4;
- (AVTAvatarRecordImageGenerator)initWithImageStore:(id)a3 renderer:(id)a4 environment:(id)a5;
- (AVTCoreModel)coreModel;
- (BOOL)deleteThumbnailsForAvatarRecordsWithIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)generateThumbnailForAvatarRecordItem:(id)a3 avatarConfiguration:(id)a4 scope:(id)a5 error:(id *)a6;
- (BOOL)generateThumbnailsForAvatarRecord:(id)a3 avatar:(id)a4 error:(id *)a5;
- (BOOL)generateThumbnailsForAvatarRecords:(id)a3 error:(id *)a4;
- (BOOL)generateThumbnailsForDuplicateAvatarRecord:(id)a3 originalRecord:(id)a4 error:(id *)a5;
- (void)updateThumbnailsForChangesWithTracker:(id)a3 recordProvider:(id)a4;
@end

@implementation AVTAvatarRecordImageGenerator

+ (id)supportedScopesForScale:(double)a3
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

- (AVTAvatarRecordImageGenerator)initWithImageStore:(id)a3 renderer:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = AVTAvatarRecordImageGenerator;
  v12 = [(AVTAvatarRecordImageGenerator *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageStore, a3);
    objc_storeStrong(&v13->_renderer, a4);
    v14 = objc_opt_class();
    [v11 mainScreenScale];
    v15 = [v14 supportedScopesForScale:?];
    v16 = [v15 copy];
    scopes = v13->_scopes;
    v13->_scopes = v16;

    v18 = [v11 logger];
    logger = v13->_logger;
    v13->_logger = v18;

    objc_storeStrong(&v13->_environment, a5);
  }

  return v13;
}

- (AVTAvatarRecordImageGenerator)initWithImageStore:(id)a3 coreEnvironment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AVTAvatarRecordImageGenerator;
  v9 = [(AVTAvatarRecordImageGenerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageStore, a3);
    v11 = [v8 logger];
    logger = v10->_logger;
    v10->_logger = v11;
  }

  return v10;
}

- (AVTCoreModel)coreModel
{
  v2 = [(AVTAvatarRecordImageGenerator *)self environment];
  v3 = [v2 editorCoreModel];

  return v3;
}

- (BOOL)generateThumbnailsForAvatarRecord:(id)a3 avatar:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(AVTAvatarRecordImageGenerator *)self coreModel];
  v11 = [AVTAvatarConfiguration configurationFromAvatar:v9 coreModel:v10];

  v12 = [AVTAvatarRecordCacheableResource alloc];
  v13 = [(AVTAvatarRecordImageGenerator *)self environment];
  v14 = [(AVTAvatarRecordCacheableResource *)v12 initWithAvatarRecord:v8 includeAvatarData:0 environment:v13];

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
  v15 = [(AVTAvatarRecordImageGenerator *)self scopes];
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
  [v15 enumerateObjectsUsingBlock:v20];

  v18 = *(v32 + 24);
  if (a5 && (v32[3] & 1) == 0)
  {
    *a5 = v26[5];
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

- (BOOL)generateThumbnailsForAvatarRecords:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = *(v17 + 24);
  if (a4 && (v17[3] & 1) == 0)
  {
    *a4 = v11[5];
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

- (BOOL)generateThumbnailForAvatarRecordItem:(id)a3 avatarConfiguration:(id)a4 scope:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [(AVTAvatarRecordImageGenerator *)self logger];
  v14 = [v10 record];
  v15 = [v14 identifier];
  v16 = [v11 description];
  [v13 logGeneratingImageForRecord:v15 scope:v16 type:{objc_msgSend(v11, "renderingType")}];

  v17 = [(AVTAvatarRecordImageGenerator *)self renderer];

  if (!v17)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"I'm asked to render images but I did not get a renderer"];
  }

  v18 = [(AVTAvatarRecordImageGenerator *)self renderer];
  v19 = [v18 imageForAvatarConfiguration:v12 scope:v11];

  v20 = [(AVTAvatarRecordImageGenerator *)self imageStore];
  v27 = 0;
  v21 = [v20 saveImage:v19 forItem:v10 scope:v11 error:&v27];
  v22 = v27;

  if ((v21 & 1) == 0)
  {
    if (a6)
    {
      v23 = v22;
      *a6 = v22;
    }

    v24 = [(AVTAvatarRecordImageGenerator *)self logger];
    v25 = [v22 description];
    [v24 logGeneratingImageError:v25];
  }

  return v21;
}

- (BOOL)deleteThumbnailsForAvatarRecordsWithIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = *(v17 + 24);
  if (a4 && (v17[3] & 1) == 0)
  {
    *a4 = v11[5];
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

- (BOOL)generateThumbnailsForDuplicateAvatarRecord:(id)a3 originalRecord:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 identifier];
  v10 = [AVTAvatarRecordCacheableResource persistentIdentifierPrefixForRecordWithIdentifier:v9];

  v11 = [v8 identifier];

  v12 = [AVTAvatarRecordCacheableResource persistentIdentifierPrefixForRecordWithIdentifier:v11];

  v13 = [(AVTAvatarRecordImageGenerator *)self imageStore];
  LOBYTE(a5) = [v13 copyImagesForPersistentIdentifierPrefix:v10 toPersistentIdentifierPrefix:v12 error:a5];

  return a5;
}

- (void)updateThumbnailsForChangesWithTracker:(id)a3 recordProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__AVTAvatarRecordImageGenerator_updateThumbnailsForChangesWithTracker_recordProvider___block_invoke;
  v22[3] = &unk_1E7F3A808;
  v22[4] = self;
  v9 = v8;
  v23 = v9;
  v10 = MEMORY[0x1BFB0DE80](v22);
  v11 = [(AVTAvatarRecordImageGenerator *)self logger];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__AVTAvatarRecordImageGenerator_updateThumbnailsForChangesWithTracker_recordProvider___block_invoke_3;
  v16[3] = &unk_1E7F3A830;
  v17 = v6;
  v18 = self;
  v19 = v9;
  v20 = v10;
  v21 = v7;
  v12 = v7;
  v13 = v9;
  v14 = v10;
  v15 = v6;
  [v11 updatingThumbnailsForRemoteChanges:v16];
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