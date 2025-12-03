@interface ALAssetsLibrary
+ (ALAuthorizationStatus)authorizationStatus;
+ (BOOL)_linkedBefore7;
+ (CGImage)_aspectRatioThumbnailForAssetURL:(id)l;
+ (CGImage)_thumbnailForAssetURL:(id)l;
+ (id)_albumsInLibrary:(id)library;
+ (id)_exportSessionForVideoURL:(id)l fallbackFilePath:(id)path exportPreset:(id)preset;
+ (id)_filePathForVideoURL:(id)l outMetadata:(id *)metadata;
+ (id)_library;
+ (id)_playerItemForVideoURL:(id)l fallbackFilePath:(id)path;
+ (int64_t)_estimatedOutputFileLengthForVideoURL:(id)l fallbackFilePath:(id)path exportPreset:(id)preset exportProperties:(id)properties;
- (ALAssetsLibrary)init;
- (BOOL)isValid;
- (BOOL)videoAtPathIsCompatibleWithSavedPhotosAlbum:(NSURL *)videoPathURL;
- (id)_copyGroupForURL:(id)l;
- (void)_addGroupForAlbum:(id)album ofType:(unint64_t)type toArray:(id)array;
- (void)_performBlock:(id)block;
- (void)_performBlockAndWait:(id)wait;
- (void)_setBundlePropertiesOnPropertiesDictionary:(id)dictionary;
- (void)_writeImageToSavedPhotosAlbum:(CGImage *)album orientation:(int64_t)orientation imageData:(id)data metadata:(id)metadata internalProperties:(id)properties completionBlock:(id)block;
- (void)_writeVideoAtPathToSavedPhotosAlbum:(id)album internalProperties:(id)properties completionBlock:(id)block;
- (void)addAssetsGroupAlbumWithName:(NSString *)name resultBlock:(ALAssetsLibraryGroupResultBlock)resultBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock;
- (void)assetForURL:(NSURL *)assetURL resultBlock:(ALAssetsLibraryAssetForURLResultBlock)resultBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock;
- (void)checkPhotosAccessAllowedWithScope:(int64_t)scope handler:(id)handler;
- (void)dealloc;
- (void)enumerateGroupsWithTypes:(ALAssetsGroupType)types usingBlock:(ALAssetsLibraryGroupsEnumerationResultsBlock)enumerationBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock;
- (void)groupForURL:(NSURL *)groupURL resultBlock:(ALAssetsLibraryGroupResultBlock)resultBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock;
- (void)registerAlbum:(id)album assetGroupPrivate:(id)private;
@end

@implementation ALAssetsLibrary

- (void)addAssetsGroupAlbumWithName:(NSString *)name resultBlock:(ALAssetsLibraryGroupResultBlock)resultBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock
{
  objc_sync_enter(self);
  [(ALAssetsLibraryPrivate *)[(ALAssetsLibrary *)self internal] setIsValid:1];
  if (pthread_main_np())
  {
    global_queue = MEMORY[0x277D85CD0];
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__ALAssetsLibrary_addAssetsGroupAlbumWithName_resultBlock_failureBlock___block_invoke;
  v10[3] = &unk_278A07B68;
  v10[4] = global_queue;
  v10[5] = self;
  v10[7] = failureBlock;
  v10[8] = resultBlock;
  v10[6] = name;
  [(ALAssetsLibrary *)self checkPhotosAccessAllowedWithScope:4 handler:v10];
  objc_sync_exit(self);
}

void __72__ALAssetsLibrary_addAssetsGroupAlbumWithName_resultBlock_failureBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = PLPhotosAccessAllowed();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ALAssetsLibrary_addAssetsGroupAlbumWithName_resultBlock_failureBlock___block_invoke_2;
  block[3] = &unk_278A07B40;
  v12 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v10 = *(a1 + 64);
  v11 = a2;
  v8 = vextq_s8(v5, v5, 8uLL);
  v9 = v6;
  dispatch_async(v5.i64[0], block);
}

uint64_t __72__ALAssetsLibrary_addAssetsGroupAlbumWithName_resultBlock_failureBlock___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(result + 80))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__ALAssetsLibrary_addAssetsGroupAlbumWithName_resultBlock_failureBlock___block_invoke_3;
    v6[3] = &unk_278A07B18;
    return [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(result + 32) internal];
  }

  else if (*(result + 56))
  {
    v2 = *(result + 72);
    v3 = *(result + 32);
    if (v2 == 3)
    {
      v4 = -3300;
    }

    else
    {
      v4 = -3311;
    }

    [v3 publicErrorForPrivateDomain:@"ALAssetsLibraryErrorDomain" withPrivateCode:v4];
    v5 = *(*(v1 + 56) + 16);

    return v5();
  }

  return result;
}

void __72__ALAssetsLibrary_addAssetsGroupAlbumWithName_resultBlock_failureBlock___block_invoke_3(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__ALAssetsLibrary_addAssetsGroupAlbumWithName_resultBlock_failureBlock___block_invoke_4;
  v6[3] = &unk_278A07AF0;
  v8 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[4] = a3;
  v6[5] = v5;
  v6[6] = a4;
  v7 = *(a1 + 48);
  dispatch_async(v4, v6);
}

uint64_t __72__ALAssetsLibrary_addAssetsGroupAlbumWithName_resultBlock_failureBlock___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    result = *(a1 + 56);
    if (!result)
    {
      return result;
    }

    v3 = *(result + 16);
LABEL_12:

    return v3();
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (!v5)
  {
    [v4 publicErrorFromPrivateError:*(a1 + 48)];
    result = *(a1 + 64);
    if (!result)
    {
      return result;
    }

    v3 = *(result + 16);
    goto LABEL_12;
  }

  [v4 _copyGroupForURL:?];
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)groupForURL:(NSURL *)groupURL resultBlock:(ALAssetsLibraryGroupResultBlock)resultBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock
{
  objc_sync_enter(self);
  [(ALAssetsLibraryPrivate *)[(ALAssetsLibrary *)self internal] setIsValid:1];
  if (pthread_main_np())
  {
    global_queue = MEMORY[0x277D85CD0];
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__ALAssetsLibrary_groupForURL_resultBlock_failureBlock___block_invoke;
  v10[3] = &unk_278A07B68;
  v10[4] = global_queue;
  v10[5] = self;
  v10[6] = groupURL;
  v10[7] = failureBlock;
  v10[8] = resultBlock;
  [(ALAssetsLibrary *)self checkPhotosAccessAllowedWithScope:2 handler:v10];
  objc_sync_exit(self);
}

void __56__ALAssetsLibrary_groupForURL_resultBlock_failureBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = PLPhotosAccessAllowed();
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ALAssetsLibrary_groupForURL_resultBlock_failureBlock___block_invoke_2;
  v7[3] = &unk_278A07AA0;
  v11 = v4;
  v10 = a2;
  v6 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v6;
  dispatch_async(v5, v7);
}

uint64_t __56__ALAssetsLibrary_groupForURL_resultBlock_failureBlock___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(result + 72))
  {
    [*(result + 32) _copyGroupForURL:*(result + 40)];
    v2 = *(v1 + 56);
    if (v2)
    {
      (*(v2 + 16))();
    }

    return MEMORY[0x2821F96F8]();
  }

  else if (*(result + 48))
  {
    v3 = *(result + 64);
    v4 = *(result + 32);
    if (v3 == 3)
    {
      v5 = -3310;
    }

    else
    {
      v5 = -3311;
    }

    [v4 publicErrorForPrivateDomain:@"ALAssetsLibraryErrorDomain" withPrivateCode:v5];
    v6 = *(*(v1 + 48) + 16);

    return v6();
  }

  return result;
}

- (id)_copyGroupForURL:(id)l
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__140;
  v10 = __Block_byref_object_dispose__141;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__ALAssetsLibrary__copyGroupForURL___block_invoke;
  v5[3] = &unk_278A07AC8;
  v5[4] = self;
  v5[5] = l;
  v5[6] = &v6;
  [(ALAssetsLibrary *)self _performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__ALAssetsLibrary__copyGroupForURL___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "internal")];
  result = [v2 kindValue];
  if (result != 1500)
  {
    if (!v2)
    {
      return result;
    }

LABEL_6:
    v4 = [v2 kindValue];
    v5 = 2;
    if (v4 > 1504)
    {
      if (v4 <= 1551)
      {
        if (v4 != 1505)
        {
          if (v4 != 1551)
          {
LABEL_23:
            result = [[ALAssetsGroup alloc] initWithPhotoAlbum:v2 library:*(a1 + 32) type:v5];
            *(*(*(a1 + 48) + 8) + 40) = result;
            return result;
          }

LABEL_15:
          v5 = 4;
          goto LABEL_23;
        }

LABEL_18:
        v5 = 32;
        goto LABEL_23;
      }

      if (v4 != 1613)
      {
        if (v4 == 1552)
        {
          v5 = 1;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (v4 <= 999)
      {
        if (v4 != 12)
        {
          if (v4 == 15)
          {
            v5 = 8;
          }

          goto LABEL_23;
        }

        goto LABEL_15;
      }

      if (v4 != 1000)
      {
        if (v4 != 1500)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }
    }

    v5 = 16;
    goto LABEL_23;
  }

  result = PLIsCloudPhotoLibraryEnabledForCurrentUser();
  if (v2 && (result & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

- (void)assetForURL:(NSURL *)assetURL resultBlock:(ALAssetsLibraryAssetForURLResultBlock)resultBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock
{
  objc_sync_enter(self);
  [(ALAssetsLibraryPrivate *)[(ALAssetsLibrary *)self internal] setIsValid:1];
  if (pthread_main_np())
  {
    global_queue = MEMORY[0x277D85CD0];
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__ALAssetsLibrary_assetForURL_resultBlock_failureBlock___block_invoke;
  v10[3] = &unk_278A07B68;
  v10[4] = global_queue;
  v10[5] = self;
  v10[6] = assetURL;
  v10[7] = failureBlock;
  v10[8] = resultBlock;
  [(ALAssetsLibrary *)self checkPhotosAccessAllowedWithScope:2 handler:v10];
  objc_sync_exit(self);
}

void __56__ALAssetsLibrary_assetForURL_resultBlock_failureBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = PLPhotosAccessAllowed();
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ALAssetsLibrary_assetForURL_resultBlock_failureBlock___block_invoke_2;
  v7[3] = &unk_278A07AA0;
  v11 = v4;
  v10 = a2;
  v6 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = v6;
  dispatch_async(v5, v7);
}

void __56__ALAssetsLibrary_assetForURL_resultBlock_failureBlock___block_invoke_2(int8x16_t *a1)
{
  if (a1[4].i8[8])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3052000000;
    v14 = __Block_byref_object_copy__140;
    v15 = __Block_byref_object_dispose__141;
    v16 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__ALAssetsLibrary_assetForURL_resultBlock_failureBlock___block_invoke_101;
    v8[3] = &unk_278A07AC8;
    v10 = &v11;
    v2 = a1[2];
    v9 = vextq_s8(v2, v2, 8uLL);
    [v2.i64[0] _performBlockAndWait:v8];
    v3 = a1[3].i64[1];
    if (v3)
    {
      (*(v3 + 16))(v3, v12[5]);
    }

    _Block_object_dispose(&v11, 8);
  }

  else if (a1[3].i64[0])
  {
    v4 = a1[4].i64[0];
    v5 = a1[2].i64[0];
    if (v4 == 3)
    {
      v6 = -3310;
    }

    else
    {
      v6 = -3311;
    }

    [v5 publicErrorForPrivateDomain:@"ALAssetsLibraryErrorDomain" withPrivateCode:v6];
    v7 = *(a1[3].i64[0] + 16);

    v7();
  }
}

uint64_t __56__ALAssetsLibrary_assetForURL_resultBlock_failureBlock___block_invoke_101(void *a1, void *a2)
{
  v3 = [a2 photoFromAssetURL:a1[4]];
  result = PLIsCloudPhotoLibraryEnabledForCurrentUser();
  if (!result || (result = [v3 isPhotoStreamPhoto], (result & 1) == 0))
  {
    if (v3)
    {
      result = [v3 isDeleted];
      if ((result & 1) == 0)
      {
        result = [v3 isInTrash];
        if ((result & 1) == 0)
        {
          result = [v3 hasLegacyRequiredResourcesLocallyAvailable];
          if (result)
          {
            result = [[ALAsset alloc] initWithManagedAsset:v3 library:a1[5]];
            *(*(a1[6] + 8) + 40) = result;
          }
        }
      }
    }
  }

  return result;
}

- (BOOL)videoAtPathIsCompatibleWithSavedPhotosAlbum:(NSURL *)videoPathURL
{
  v3 = MEMORY[0x277D3AD38];
  path = [(NSURL *)videoPathURL path];

  return [v3 canSaveVideoToLibrary:path];
}

- (void)_writeVideoAtPathToSavedPhotosAlbum:(id)album internalProperties:(id)properties completionBlock:(id)block
{
  if (pthread_main_np())
  {
    global_queue = MEMORY[0x277D85CD0];
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__ALAssetsLibrary__writeVideoAtPathToSavedPhotosAlbum_internalProperties_completionBlock___block_invoke;
  v10[3] = &unk_278A07A78;
  v10[7] = album;
  v10[8] = block;
  v10[4] = global_queue;
  v10[5] = self;
  v10[6] = properties;
  [(ALAssetsLibrary *)self checkPhotosAccessAllowedWithScope:1 handler:v10];
}

void __90__ALAssetsLibrary__writeVideoAtPathToSavedPhotosAlbum_internalProperties_completionBlock___block_invoke(uint64_t a1)
{
  v2 = PLPhotosAccessAllowed();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __90__ALAssetsLibrary__writeVideoAtPathToSavedPhotosAlbum_internalProperties_completionBlock___block_invoke_2;
  v5[3] = &unk_278A07A50;
  v9 = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v6 = vextq_s8(v3, v3, 8uLL);
  v7 = v4;
  dispatch_async(v3.i64[0], v5);
}

void __90__ALAssetsLibrary__writeVideoAtPathToSavedPhotosAlbum_internalProperties_completionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __90__ALAssetsLibrary__writeVideoAtPathToSavedPhotosAlbum_internalProperties_completionBlock___block_invoke_3;
    v4[3] = &unk_278A079D8;
    v6 = *(a1 + 64);
    v5 = *(a1 + 32);
    v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:*(a1 + 48)];
    [*(a1 + 32) _setBundlePropertiesOnPropertiesDictionary:v2];
    [v2 setObject:&unk_2849AEA48 forKey:*MEMORY[0x277D3B208]];
    [v2 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3B2C8]];
    [objc_msgSend(MEMORY[0x277D3AC00] "sharedAssetsSaver")];
  }

  else if (*(a1 + 64))
  {
    [*(a1 + 32) publicErrorForPrivateDomain:@"ALAssetsLibraryErrorDomain" withPrivateCode:-3311];
    v3 = *(*(a1 + 64) + 16);

    v3();
  }
}

void __90__ALAssetsLibrary__writeVideoAtPathToSavedPhotosAlbum_internalProperties_completionBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = [*(a1 + 32) publicErrorFromPrivateError:?];
  }

  else
  {
    v5 = 0;
  }

  +[ALAssetRepresentationPrivate _clearFileDescriptorQueue];
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__ALAssetsLibrary__writeVideoAtPathToSavedPhotosAlbum_internalProperties_completionBlock___block_invoke_4;
    block[3] = &unk_278A079B0;
    block[5] = v5;
    block[6] = v6;
    block[4] = a2;
    dispatch_async(v7, block);
  }
}

- (void)_writeImageToSavedPhotosAlbum:(CGImage *)album orientation:(int64_t)orientation imageData:(id)data metadata:(id)metadata internalProperties:(id)properties completionBlock:(id)block
{
  if (pthread_main_np())
  {
    global_queue = MEMORY[0x277D85CD0];
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  CGImageRetain(album);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __115__ALAssetsLibrary__writeImageToSavedPhotosAlbum_orientation_imageData_metadata_internalProperties_completionBlock___block_invoke;
  v16[3] = &unk_278A07A28;
  v16[4] = global_queue;
  v16[5] = self;
  v16[6] = properties;
  v16[7] = metadata;
  v16[10] = album;
  v16[11] = orientation;
  v16[8] = data;
  v16[9] = block;
  [(ALAssetsLibrary *)self checkPhotosAccessAllowedWithScope:1 handler:v16];
}

void __115__ALAssetsLibrary__writeImageToSavedPhotosAlbum_orientation_imageData_metadata_internalProperties_completionBlock___block_invoke(uint64_t a1)
{
  v2 = PLPhotosAccessAllowed();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__ALAssetsLibrary__writeImageToSavedPhotosAlbum_orientation_imageData_metadata_internalProperties_completionBlock___block_invoke_2;
  block[3] = &unk_278A07A00;
  v12 = v2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v7 = vextq_s8(v3, v3, 8uLL);
  v8 = v4;
  v5 = *(a1 + 88);
  v10 = *(a1 + 80);
  v11 = v5;
  v9 = *(a1 + 64);
  dispatch_async(v3.i64[0], block);
}

void __115__ALAssetsLibrary__writeImageToSavedPhotosAlbum_orientation_imageData_metadata_internalProperties_completionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 96))
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __115__ALAssetsLibrary__writeImageToSavedPhotosAlbum_orientation_imageData_metadata_internalProperties_completionBlock___block_invoke_3;
    v5[3] = &unk_278A079D8;
    v7 = *(a1 + 72);
    v6 = *(a1 + 32);
    v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:*(a1 + 48)];
    v3 = v2;
    v4 = *(a1 + 56);
    if (v4)
    {
      [v2 setObject:v4 forKey:*MEMORY[0x277D3B278]];
    }

    [*(a1 + 32) _setBundlePropertiesOnPropertiesDictionary:v3];
    [v3 setObject:&unk_2849AEA48 forKey:*MEMORY[0x277D3B208]];
    [v3 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3B2C8]];
    [objc_msgSend(MEMORY[0x277D3AC00] "sharedAssetsSaver")];
  }

  else if (*(a1 + 72))
  {
    [*(a1 + 32) publicErrorForPrivateDomain:@"ALAssetsLibraryErrorDomain" withPrivateCode:-3311];
    (*(*(a1 + 72) + 16))();
  }

  CGImageRelease(*(a1 + 80));
}

void __115__ALAssetsLibrary__writeImageToSavedPhotosAlbum_orientation_imageData_metadata_internalProperties_completionBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = [*(a1 + 32) publicErrorFromPrivateError:?];
  }

  else
  {
    v5 = 0;
  }

  +[ALAssetRepresentationPrivate _clearFileDescriptorQueue];
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__ALAssetsLibrary__writeImageToSavedPhotosAlbum_orientation_imageData_metadata_internalProperties_completionBlock___block_invoke_4;
    block[3] = &unk_278A079B0;
    block[5] = v5;
    block[6] = v6;
    block[4] = a2;
    dispatch_async(v7, block);
  }
}

- (void)enumerateGroupsWithTypes:(ALAssetsGroupType)types usingBlock:(ALAssetsLibraryGroupsEnumerationResultsBlock)enumerationBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock
{
  objc_sync_enter(self);
  [(ALAssetsLibraryPrivate *)[(ALAssetsLibrary *)self internal] setIsValid:1];
  if (pthread_main_np())
  {
    global_queue = MEMORY[0x277D85CD0];
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke;
  v10[3] = &unk_278A07988;
  v10[4] = global_queue;
  v10[5] = self;
  v10[6] = failureBlock;
  v10[7] = enumerationBlock;
  v10[8] = types;
  [(ALAssetsLibrary *)self checkPhotosAccessAllowedWithScope:2 handler:v10];
  objc_sync_exit(self);
}

void __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = PLPhotosAccessAllowed();
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_2;
  v7[3] = &unk_278A07960;
  v12 = v4;
  v8 = *(a1 + 40);
  v6 = *(a1 + 64);
  v9 = *(a1 + 56);
  v10 = a2;
  v11 = v6;
  dispatch_async(v5, v7);
}

void __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *(a1 + 64);
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_3;
      v28[3] = &unk_278A078E8;
      v28[4] = v2;
      v28[5] = &v29;
      if (_CFExecutableLinkedOnOrAfter())
      {
        v4 = PLIsCloudPhotoLibraryEnabledForCurrentUser() ^ 1;
      }

      else
      {
        LOBYTE(v4) = 0;
      }

      v9 = [MEMORY[0x277D3AD38] _assetsLibrary_isSharedPhotoStreamsSupportEnabled];
      v10 = 30;
      if ((v4 | v9))
      {
        v10 = 62;
      }

      if (v3 == -1)
      {
        v11 = v10;
      }

      else
      {
        v11 = v3;
      }

      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (v11)
      {
        v13 = *(a1 + 32);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_4;
        v27[3] = &unk_278A07910;
        v27[4] = v13;
        v27[5] = v12;
        [v13 _performBlockAndWait:v27];
        [v12 enumerateObjectsUsingBlock:v28];
        [v12 removeAllObjects];
      }

      v14 = *(v30 + 24);
      if ((v14 & 1) == 0 && (v11 & 2) != 0)
      {
        v15 = *(a1 + 32);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_5;
        v26[3] = &unk_278A07910;
        v26[4] = v15;
        v26[5] = v12;
        [v15 _performBlockAndWait:v26];
        [v12 enumerateObjectsUsingBlock:v28];
        [v12 removeAllObjects];
        v14 = *(v30 + 24);
      }

      if ((v14 & 1) == 0 && (v11 & 4) != 0)
      {
        v16 = *(a1 + 32);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_6;
        v25[3] = &unk_278A07910;
        v25[4] = v16;
        v25[5] = v12;
        [v16 _performBlockAndWait:v25];
        [v12 enumerateObjectsUsingBlock:v28];
        [v12 removeAllObjects];
        v14 = *(v30 + 24);
      }

      if ((v14 & 1) == 0 && (v11 & 8) != 0)
      {
        v17 = *(a1 + 32);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_7;
        v24[3] = &unk_278A07910;
        v24[4] = v17;
        v24[5] = v12;
        [v17 _performBlockAndWait:v24];
        [v12 enumerateObjectsUsingBlock:v28];
        [v12 removeAllObjects];
        v14 = *(v30 + 24);
      }

      if ((v14 & 1) == 0 && (v11 & 0x10) != 0)
      {
        v18 = *(a1 + 32);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_8;
        v23[3] = &unk_278A07910;
        v23[4] = v18;
        v23[5] = v12;
        [v18 _performBlockAndWait:v23];
        [v12 enumerateObjectsUsingBlock:v28];
        [v12 removeAllObjects];
      }

      if (((v4 | v9) & 1) != 0 && (v30[3] & 1) == 0 && (v11 & 0x20) != 0)
      {
        v19 = *(a1 + 32);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_9;
        v20[3] = &unk_278A07938;
        v21 = v4;
        v20[4] = v19;
        v20[5] = v12;
        v22 = v9;
        [v19 _performBlockAndWait:v20];
        [v12 enumerateObjectsUsingBlock:v28];
        [v12 removeAllObjects];
      }

      (*(*(a1 + 48) + 16))();
      _Block_object_dispose(&v29, 8);
    }
  }

  else if (*(a1 + 40))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    if (v5 == 3)
    {
      v7 = -3310;
    }

    else
    {
      v7 = -3311;
    }

    [v6 publicErrorForPrivateDomain:@"ALAssetsLibraryErrorDomain" withPrivateCode:v7];
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

uint64_t __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v5 = result;
    result = (*(*(result + 32) + 16))();
    if (*(*(*(v5 + 40) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() _albumsInLibrary:a2];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([v9 isLibrary])
        {
          result = [*(a1 + 32) _addGroupForAlbum:v9 ofType:1 toArray:*(a1 + 40)];
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (_CFExecutableLinkedOnOrAfter())
  {
    v4 = [a2 syncedAlbums];
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = [objc_opt_class() _albumsInLibrary:a2];
  }

  v6 = v4;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) _addGroupForAlbum:*(*(&v23 + 1) + 8 * i) ofType:2 toArray:*(a1 + 40)];
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  result = _CFExecutableLinkedOnOrAfter();
  if (!result)
  {
    result = PLPhysicalDeviceIsIPad();
    if ((result & 1) == 0)
    {
      v12 = *(a1 + 32);
      v13 = [objc_opt_class() _albumsInLibrary:a2];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      result = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (result)
      {
        v14 = result;
        v15 = *v20;
        while (2)
        {
          v16 = 0;
          do
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v19 + 1) + 8 * v16);
            if ([v17 isLibrary])
            {
              result = [*(a1 + 32) _addGroupForAlbum:v17 ofType:1 toArray:*(a1 + 40)];
              goto LABEL_23;
            }

            ++v16;
          }

          while (v14 != v16);
          result = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
          v14 = result;
          if (result)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_23:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() _albumsInLibrary:a2];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) _addGroupForAlbum:*(*(&v20 + 1) + 8 * v9++) ofType:4 toArray:*(a1 + 40)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [objc_msgSend(objc_msgSend(MEMORY[0x277D3ACD8] importListInPhotoLibrary:{a2, 0), "albums"), "array"}];
  result = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (result)
  {
    v12 = result;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(a1 + 32) _addGroupForAlbum:*(*(&v16 + 1) + 8 * v14++) ofType:4 toArray:*(a1 + 40)];
      }

      while (v12 != v14);
      result = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
      v12 = result;
    }

    while (result);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_7(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [MEMORY[0x277D3AC80] albumsWithKind:15 inManagedObjectContext:{objc_msgSend(a2, "managedObjectContext", 0)}];
  result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _addGroupForAlbum:*(*(&v9 + 1) + 8 * v7++) ofType:8 toArray:*(a1 + 40)];
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = result;
    }

    while (result);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277D3AC80] userLibraryAlbumInLibrary:a2];
  v5 = *(a1 + 40);

  return [v3 _addGroupForAlbum:v4 ofType:16 toArray:v5];
}

uint64_t __68__ALAssetsLibrary_enumerateGroupsWithTypes_usingBlock_failureBlock___block_invoke_9(uint64_t result, void *a2)
{
  v3 = result;
  v23 = *MEMORY[0x277D85DE8];
  if (*(result + 48) == 1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [a2 photoStreamAlbums];
    result = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v18;
      do
      {
        v7 = 0;
        do
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(v3 + 32) _addGroupForAlbum:*(*(&v17 + 1) + 8 * v7++) ofType:32 toArray:*(v3 + 40)];
        }

        while (v5 != v7);
        result = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  if (*(v3 + 49) == 1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [MEMORY[0x277D3AC18] allCloudSharedAlbumsInLibrary:{a2, 0}];
    result = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (result)
    {
      v9 = result;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(v3 + 32) _addGroupForAlbum:*(*(&v13 + 1) + 8 * v11++) ofType:32 toArray:*(v3 + 40)];
        }

        while (v9 != v11);
        result = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        v9 = result;
      }

      while (result);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_setBundlePropertiesOnPropertiesDictionary:(id)dictionary
{
  v4 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (v4)
  {
    v5 = v4;
    if ([v4 length])
    {
      [dictionary setObject:v5 forKey:*MEMORY[0x277D3B288]];
    }
  }

  v6 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (v6)
  {
    v7 = v6;
    if ([v6 length])
    {
      v8 = *MEMORY[0x277D3B280];

      [dictionary setObject:v7 forKey:v8];
    }
  }
}

- (void)checkPhotosAccessAllowedWithScope:(int64_t)scope handler:(id)handler
{
  mEMORY[0x277D3B240] = [MEMORY[0x277D3B240] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__ALAssetsLibrary_checkPhotosAccessAllowedWithScope_handler___block_invoke;
  v7[3] = &unk_278A078C0;
  v7[4] = handler;
  v7[5] = scope;
  [mEMORY[0x277D3B240] checkPhotosAccessAllowedWithScope:2 handler:v7];
}

uint64_t __61__ALAssetsLibrary_checkPhotosAccessAllowedWithScope_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 4 && (*(a1 + 40) & 2) != 0)
  {
    [objc_msgSend(MEMORY[0x277D3B240] "sharedInstance")];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_addGroupForAlbum:(id)album ofType:(unint64_t)type toArray:(id)array
{
  if (album && ([album isInTrash] & 1) == 0)
  {
    v9 = [[ALAssetsGroup alloc] initWithPhotoAlbum:album library:self type:type];
    [array addObject:v9];
  }
}

- (void)_performBlock:(id)block
{
  photoLibrary = [(ALAssetsLibraryPrivate *)[(ALAssetsLibrary *)self internal] photoLibrary];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__ALAssetsLibrary__performBlock___block_invoke;
  v5[3] = &unk_278A07C30;
  v5[4] = photoLibrary;
  v5[5] = block;
  [(PLPhotoLibrary *)photoLibrary performBlock:v5];
}

- (void)_performBlockAndWait:(id)wait
{
  photoLibrary = [(ALAssetsLibraryPrivate *)[(ALAssetsLibrary *)self internal] photoLibrary];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ALAssetsLibrary__performBlockAndWait___block_invoke;
  v5[3] = &unk_278A07C30;
  v5[4] = photoLibrary;
  v5[5] = wait;
  [(PLPhotoLibrary *)photoLibrary performBlockAndWait:v5];
}

- (void)registerAlbum:(id)album assetGroupPrivate:(id)private
{
  internal = [(ALAssetsLibrary *)self internal];

  [(ALAssetsLibraryPrivate *)internal registerAlbum:album assetGroupPrivate:private];
}

- (BOOL)isValid
{
  internal = [(ALAssetsLibrary *)self internal];

  return [(ALAssetsLibraryPrivate *)internal isValid];
}

- (void)dealloc
{
  [self->_internal setAssetsLibrary:0];

  self->_internal = 0;
  v3.receiver = self;
  v3.super_class = ALAssetsLibrary;
  [(ALAssetsLibrary *)&v3 dealloc];
}

- (ALAssetsLibrary)init
{
  v4.receiver = self;
  v4.super_class = ALAssetsLibrary;
  v2 = [(ALAssetsLibrary *)&v4 init];
  if (v2)
  {
    v2->_internal = [[ALAssetsLibraryPrivate alloc] initWithAssetsLibrary:v2];
  }

  return v2;
}

+ (BOOL)_linkedBefore7
{
  if (_linkedBefore7_onceToken != -1)
  {
    dispatch_once(&_linkedBefore7_onceToken, &__block_literal_global_105);
  }

  return _linkedBefore7_linkedBefore7;
}

uint64_t __33__ALAssetsLibrary__linkedBefore7__block_invoke()
{
  result = dyld_get_program_sdk_version();
  _linkedBefore7_linkedBefore7 = result < 0x70000;
  return result;
}

+ (ALAuthorizationStatus)authorizationStatus
{
  v2 = [objc_msgSend(MEMORY[0x277D3B240] "sharedInstance")];
  if (v2 > 4)
  {
    return 0;
  }

  else
  {
    return qword_236A8EF30[v2];
  }
}

+ (id)_albumsInLibrary:(id)library
{
  v3 = [objc_msgSend(MEMORY[0x277D3ACD8] albumListInPhotoLibrary:{library), "albums"}];

  return [v3 array];
}

+ (id)_library
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  Weak = objc_loadWeak(&_library__assetsLibraryPhotoLibrary);
  if (!Weak)
  {
    v10 = 0;
    systemLibraryURL = [MEMORY[0x277D3B238] systemLibraryURL];
    v5 = objc_alloc_init(MEMORY[0x277D3AD40]);
    [v5 setRequiredState:6];
    [v5 setAutomaticallyMergesContext:1];
    [v5 setAutomaticallyPinToFirstFetch:0];
    [v5 setLibraryInitiator:1];
    v6 = [MEMORY[0x277D3AD38] newPhotoLibraryWithName:"+[ALAssetsLibrary _library]" loadedFromURL:systemLibraryURL options:v5 error:&v10];
    if (!v6)
    {
      Log = PLMigrationGetLog();
      if (os_log_type_enabled(Log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v12 = "+[ALAssetsLibrary _library]";
        v13 = 2112;
        v14 = systemLibraryURL;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_236A83000, Log, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
      }
    }

    [objc_msgSend(v6 "managedObjectContext")];
    Weak = objc_storeWeak(&_library__assetsLibraryPhotoLibrary, v6);
  }

  objc_sync_exit(self);
  v8 = *MEMORY[0x277D85DE8];
  return Weak;
}

+ (id)_playerItemForVideoURL:(id)l fallbackFilePath:(id)path
{
  v6 = MEMORY[0x277D3ABF8];
  systemPhotoLibrary = [MEMORY[0x277D3AD38] systemPhotoLibrary];

  return [v6 playerItemForVideoURL:l fallbackFilePath:path library:systemPhotoLibrary];
}

+ (id)_exportSessionForVideoURL:(id)l fallbackFilePath:(id)path exportPreset:(id)preset
{
  v8 = MEMORY[0x277D3ABF8];
  systemPhotoLibrary = [MEMORY[0x277D3AD38] systemPhotoLibrary];

  return [v8 exportSessionForVideoURL:l library:systemPhotoLibrary fallbackFilePath:path exportPreset:preset];
}

+ (int64_t)_estimatedOutputFileLengthForVideoURL:(id)l fallbackFilePath:(id)path exportPreset:(id)preset exportProperties:(id)properties
{
  v10 = MEMORY[0x277D3ABF8];
  systemPhotoLibrary = [MEMORY[0x277D3AD38] systemPhotoLibrary];

  return [v10 estimatedOutputFileLengthForVideoURL:l library:systemPhotoLibrary fallbackFilePath:path exportPreset:preset exportProperties:properties];
}

+ (id)_filePathForVideoURL:(id)l outMetadata:(id *)metadata
{
  v6 = MEMORY[0x277D3ABF8];
  systemPhotoLibrary = [MEMORY[0x277D3AD38] systemPhotoLibrary];

  return [v6 filePathForVideoURL:l library:systemPhotoLibrary outMetadata:metadata];
}

+ (CGImage)_aspectRatioThumbnailForAssetURL:(id)l
{
  v4 = MEMORY[0x277D3ABF8];
  systemPhotoLibrary = [MEMORY[0x277D3AD38] systemPhotoLibrary];

  return [v4 aspectRatioThumbnailForAssetURL:l library:systemPhotoLibrary];
}

+ (CGImage)_thumbnailForAssetURL:(id)l
{
  v4 = MEMORY[0x277D3ABF8];
  systemPhotoLibrary = [MEMORY[0x277D3AD38] systemPhotoLibrary];

  return [v4 thumbnailForAssetURL:l library:systemPhotoLibrary];
}

@end