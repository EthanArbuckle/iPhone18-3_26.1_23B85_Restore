@interface ALAsset
+ (CGSize)largePreviewImageSizeForSize:(CGSize)a3;
- (ALAsset)initWithManagedAsset:(id)a3 library:(id)a4;
- (ALAsset)originalAsset;
- (ALAssetRepresentation)defaultRepresentation;
- (ALAssetRepresentation)representationForUTI:(NSString *)representationUTI;
- (BOOL)isDeletable;
- (BOOL)isEditable;
- (BOOL)isValid;
- (CGImageRef)aspectRatioThumbnail;
- (CGImageRef)thumbnail;
- (id)_newContentEditingOutputWithType:(int64_t)a3;
- (id)_typeAsString;
- (id)_uuid;
- (id)valueForProperty:(NSString *)property;
- (void)dealloc;
- (void)requestDefaultRepresentation;
- (void)setImageData:(NSData *)imageData metadata:(NSDictionary *)metadata completionBlock:(ALAssetsLibraryWriteImageCompletionBlock)completionBlock;
- (void)setVideoAtPath:(NSURL *)videoPathURL completionBlock:(ALAssetsLibraryWriteVideoCompletionBlock)completionBlock;
- (void)writeModifiedImageDataToSavedPhotosAlbum:(NSData *)imageData metadata:(NSDictionary *)metadata completionBlock:(ALAssetsLibraryWriteImageCompletionBlock)completionBlock;
- (void)writeModifiedVideoAtPathToSavedPhotosAlbum:(NSURL *)videoPathURL completionBlock:(ALAssetsLibraryWriteVideoCompletionBlock)completionBlock;
@end

@implementation ALAsset

- (void)requestDefaultRepresentation
{
  if ([(ALAsset *)self isValid])
  {
    v3 = [(ALAsset *)self internal];

    [(ALAssetPrivate *)v3 _performBlockAndWait:&__block_literal_global];
  }
}

uint64_t __39__ALAsset_requestDefaultRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a3 isDeleted];
  if ((result & 1) == 0)
  {
    result = [a3 isCloudSharedAsset];
    if (result)
    {
      result = [a3 cloudSharedPlaceholderKind];
      if (result <= 3)
      {
        v6 = [objc_msgSend(a2 "assetsdClient")];
        v7 = [a3 objectID];
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __39__ALAsset_requestDefaultRepresentation__block_invoke_2;
        v8[3] = &unk_278A07588;
        v8[4] = a3;
        return [v6 downloadCloudSharedAsset:v7 withCloudPlaceholderKind:4 shouldPrioritize:0 shouldExtendTimer:0 completionHandler:v8];
      }
    }
  }

  return result;
}

void __39__ALAsset_requestDefaultRepresentation__block_invoke_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  Log = PLBackendGetLog();
  v9 = Log;
  if (a2)
  {
    if (os_log_type_enabled(Log, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = a3;
      v11 = "Downloaded derivative for cloud shared asset %@ to %@";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_236A83000, v12, v13, v11, &v16, 0x16u);
    }
  }

  else if (os_log_type_enabled(Log, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    v16 = 138412546;
    v17 = v14;
    v18 = 2112;
    v19 = a4;
    v11 = "Failed downloading derivative for cloud shared asset %@ : %@";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setVideoAtPath:(NSURL *)videoPathURL completionBlock:(ALAssetsLibraryWriteVideoCompletionBlock)completionBlock
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v7 = [MEMORY[0x277D3B240] sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ALAsset_setVideoAtPath_completionBlock___block_invoke;
  v8[3] = &unk_278A07540;
  v8[4] = self;
  v8[5] = videoPathURL;
  v8[6] = completionBlock;
  v8[7] = v9;
  [v7 checkPhotosAccessAllowedWithScope:4 handler:v8];
  _Block_object_dispose(v9, 8);
}

uint64_t __42__ALAsset_setVideoAtPath_completionBlock___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  result = PLPhotosAccessAllowed();
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    result = [*(a1 + 32) isEditable];
    if (result)
    {
      result = [*(a1 + 32) _uuid];
      if (result)
      {
        v11[0] = [getPHAssetClass() localIdentifierWithUUID:result];
        result = [objc_msgSend(getPHAssetClass() fetchAssetsWithLocalIdentifiers:objc_msgSend(MEMORY[0x277CBEA60] options:{"arrayWithObjects:count:", v11, 1), 0), "lastObject"}];
        if (result)
        {
          v3 = result;
          v4 = [getPHPhotoLibraryClass() sharedPhotoLibrary];
          v9[0] = MEMORY[0x277D85DD0];
          v9[1] = 3221225472;
          v9[2] = __42__ALAsset_setVideoAtPath_completionBlock___block_invoke_2;
          v9[3] = &unk_278A074F0;
          v9[4] = v3;
          v10 = *(a1 + 32);
          v8[0] = MEMORY[0x277D85DD0];
          v8[1] = 3221225472;
          v8[2] = __42__ALAsset_setVideoAtPath_completionBlock___block_invoke_3;
          v8[3] = &unk_278A07518;
          v8[5] = *(a1 + 48);
          v8[4] = v10;
          result = [v4 performChanges:v9 completionHandler:v8];
        }

        else if (*(a1 + 48))
        {
          [objc_msgSend(objc_msgSend(*(a1 + 32) "internal")];
          result = (*(*(a1 + 48) + 16))();
        }
      }

      goto LABEL_12;
    }
  }

  if (!*(a1 + 48))
  {
LABEL_12:
    v7 = *MEMORY[0x277D85DE8];
    return result;
  }

  [objc_msgSend(objc_msgSend(*(a1 + 32) "internal")];
  v5 = *(*(a1 + 48) + 16);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

void __42__ALAsset_setVideoAtPath_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [getPHAssetChangeRequestClass() changeRequestForAsset:*(a1 + 32)];
  v3 = [*(a1 + 40) _newContentEditingOutputWithType:2];
  [v3 setRenderedContentURL:*(a1 + 48)];
  [v2 setContentEditingOutput:v3];
}

uint64_t __42__ALAsset_setVideoAtPath_completionBlock___block_invoke_3(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 40);
  if (v3)
  {
    v4 = result;
    if (a2)
    {
      v6 = [*(result + 32) valueForProperty:@"ALAssetPropertyAssetURL"];
      v7 = *(v3 + 16);
      v8 = v3;
      v9 = a3;
    }

    else
    {
      v9 = [objc_msgSend(objc_msgSend(*(result + 32) "internal")];
      v8 = *(v4 + 40);
      v7 = *(v8 + 16);
      v6 = 0;
    }

    return v7(v8, v6, v9);
  }

  return result;
}

- (void)setImageData:(NSData *)imageData metadata:(NSDictionary *)metadata completionBlock:(ALAssetsLibraryWriteImageCompletionBlock)completionBlock
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v8 = [MEMORY[0x277D3B240] sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__ALAsset_setImageData_metadata_completionBlock___block_invoke;
  v9[3] = &unk_278A07540;
  v9[4] = self;
  v9[5] = imageData;
  v9[6] = completionBlock;
  v9[7] = v10;
  [v8 checkPhotosAccessAllowedWithScope:4 handler:v9];
  _Block_object_dispose(v10, 8);
}

uint64_t __49__ALAsset_setImageData_metadata_completionBlock___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  result = PLPhotosAccessAllowed();
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    result = [*(a1 + 32) isEditable];
    if (result)
    {
      result = [*(a1 + 32) _uuid];
      if (result)
      {
        v11[0] = [getPHAssetClass() localIdentifierWithUUID:result];
        result = [objc_msgSend(getPHAssetClass() fetchAssetsWithLocalIdentifiers:objc_msgSend(MEMORY[0x277CBEA60] options:{"arrayWithObjects:count:", v11, 1), 0), "lastObject"}];
        if (result)
        {
          v3 = result;
          v4 = [getPHPhotoLibraryClass() sharedPhotoLibrary];
          v9[0] = MEMORY[0x277D85DD0];
          v9[1] = 3221225472;
          v9[2] = __49__ALAsset_setImageData_metadata_completionBlock___block_invoke_2;
          v9[3] = &unk_278A074F0;
          v9[4] = v3;
          v10 = *(a1 + 32);
          v8[0] = MEMORY[0x277D85DD0];
          v8[1] = 3221225472;
          v8[2] = __49__ALAsset_setImageData_metadata_completionBlock___block_invoke_3;
          v8[3] = &unk_278A07518;
          v8[5] = *(a1 + 48);
          v8[4] = v10;
          result = [v4 performChanges:v9 completionHandler:v8];
        }

        else if (*(a1 + 48))
        {
          [objc_msgSend(objc_msgSend(*(a1 + 32) "internal")];
          result = (*(*(a1 + 48) + 16))();
        }
      }

      goto LABEL_12;
    }
  }

  if (!*(a1 + 48))
  {
LABEL_12:
    v7 = *MEMORY[0x277D85DE8];
    return result;
  }

  [objc_msgSend(objc_msgSend(*(a1 + 32) "internal")];
  v5 = *(*(a1 + 48) + 16);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

void __49__ALAsset_setImageData_metadata_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [getPHAssetChangeRequestClass() changeRequestForAsset:*(a1 + 32)];
  v3 = [*(a1 + 40) _newContentEditingOutputWithType:1];
  [v3 setRenderedJPEGData:*(a1 + 48)];
  [v2 setContentEditingOutput:v3];
}

uint64_t __49__ALAsset_setImageData_metadata_completionBlock___block_invoke_3(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 40);
  if (v3)
  {
    v4 = result;
    if (a2)
    {
      v6 = [*(result + 32) valueForProperty:@"ALAssetPropertyAssetURL"];
      v7 = *(v3 + 16);
      v8 = v3;
      v9 = a3;
    }

    else
    {
      v9 = [objc_msgSend(objc_msgSend(*(result + 32) "internal")];
      v8 = *(v4 + 40);
      v7 = *(v8 + 16);
      v6 = 0;
    }

    return v7(v8, v6, v9);
  }

  return result;
}

- (id)_newContentEditingOutputWithType:(int64_t)a3
{
  v4 = [@"assets-library-unsupported-edit" dataUsingEncoding:4];
  v5 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy_;
  v6 = getPHAdjustmentDataClass_softClass;
  v21 = __Block_byref_object_dispose_;
  v22 = getPHAdjustmentDataClass_softClass;
  if (!getPHAdjustmentDataClass_softClass)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getPHAdjustmentDataClass_block_invoke;
    v15 = &unk_278A075B0;
    v16 = &v17;
    __getPHAdjustmentDataClass_block_invoke(&v12);
    v6 = v18[5];
  }

  _Block_object_dispose(&v17, 8);
  v7 = [[v6 alloc] initWithFormatIdentifier:v5 formatVersion:@"0" data:v4];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy_;
  v8 = getPHContentEditingOutputClass_softClass;
  v21 = __Block_byref_object_dispose_;
  v22 = getPHContentEditingOutputClass_softClass;
  if (!getPHContentEditingOutputClass_softClass)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getPHContentEditingOutputClass_block_invoke;
    v15 = &unk_278A075B0;
    v16 = &v17;
    __getPHContentEditingOutputClass_block_invoke(&v12);
    v8 = v18[5];
  }

  _Block_object_dispose(&v17, 8);
  v9 = [v8 alloc];
  v10 = [v9 initWithAdjustmentBaseVersion:0 mediaType:a3 appropriateForURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle"), "bundleURL")}];
  [v10 setAdjustmentData:v7];

  return v10;
}

- (BOOL)isDeletable
{
  v2 = [(ALAsset *)self internal];

  return [(ALAssetPrivate *)v2 isDeletable];
}

- (BOOL)isEditable
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [(ALAsset *)self internal];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __21__ALAsset_isEditable__block_invoke;
    v8[3] = &unk_278A074A0;
    v8[4] = v4;
    v8[5] = &v9;
    [(ALAssetPrivate *)v5 _performBlockAndWait:v8];
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __21__ALAsset_isEditable__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isDeleted];
  if ((result & 1) == 0)
  {
    result = [a3 importedByBundleIdentifier];
    if (result)
    {
      v6 = result;
      result = [result length];
      if (result)
      {
        result = [*(a1 + 32) isEqualToString:v6];
        *(*(*(a1 + 40) + 8) + 24) = result;
      }
    }
  }

  return result;
}

- (ALAsset)originalAsset
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v2 = [(ALAsset *)self internal];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__ALAsset_originalAsset__block_invoke;
  v5[3] = &unk_278A074A0;
  v5[4] = v2;
  v5[5] = &v6;
  [(ALAssetPrivate *)v2 _performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

ALAsset *__24__ALAsset_originalAsset__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isDeleted];
  if ((result & 1) == 0)
  {
    result = [a3 originalAsset];
    if (result)
    {
      result = -[ALAsset initWithManagedAsset:library:]([ALAsset alloc], "initWithManagedAsset:library:", result, [*(a1 + 32) library]);
      *(*(*(a1 + 40) + 8) + 40) = result;
    }
  }

  return result;
}

- (void)writeModifiedVideoAtPathToSavedPhotosAlbum:(NSURL *)videoPathURL completionBlock:(ALAssetsLibraryWriteVideoCompletionBlock)completionBlock
{
  v7 = [(ALAsset *)self _uuid];
  if (v7)
  {
    v8 = v7;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v9 setObject:v8 forKey:*MEMORY[0x277D3B290]];
    [(ALAssetsLibrary *)[(ALAssetPrivate *)[(ALAsset *)self internal] library] _writeVideoAtPathToSavedPhotosAlbum:videoPathURL internalProperties:v9 completionBlock:completionBlock];
  }
}

- (void)writeModifiedImageDataToSavedPhotosAlbum:(NSData *)imageData metadata:(NSDictionary *)metadata completionBlock:(ALAssetsLibraryWriteImageCompletionBlock)completionBlock
{
  v9 = [(ALAsset *)self _uuid];
  if (v9)
  {
    v10 = v9;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v11 setObject:v10 forKey:*MEMORY[0x277D3B290]];
    [(ALAssetsLibrary *)[(ALAssetPrivate *)[(ALAsset *)self internal] library] _writeImageToSavedPhotosAlbum:0 orientation:0 imageData:imageData metadata:metadata internalProperties:v11 completionBlock:completionBlock];
  }
}

- (CGImageRef)aspectRatioThumbnail
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v2 = [(ALAsset *)self internal];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__ALAsset_aspectRatioThumbnail__block_invoke;
  v7[3] = &unk_278A07BB8;
  v7[4] = &v8;
  [(ALAssetPrivate *)v2 _performBlockAndWait:v7];
  v3 = v9[5];
  if (v3)
  {
    v4 = [v3 CGImage];
    v5 = v9[5];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __31__ALAsset_aspectRatioThumbnail__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isDeleted];
  if ((result & 1) == 0)
  {
    if (![a3 isCloudSharedAsset] || (result = objc_msgSend(a3, "cloudSharedPlaceholderKind"), result >= 3))
    {
      PLPushPhotoLibraryClient();
      *(*(*(a1 + 32) + 8) + 40) = [a3 imageWithFormat:objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D3B228], "defaultFormatChooser"), "masterThumbnailFormat"), "formatID")];

      return MEMORY[0x28219B488]();
    }
  }

  return result;
}

- (CGImageRef)thumbnail
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v2 = [(ALAsset *)self internal];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __20__ALAsset_thumbnail__block_invoke;
  v7[3] = &unk_278A07BB8;
  v7[4] = &v8;
  [(ALAssetPrivate *)v2 _performBlockAndWait:v7];
  v3 = v9[5];
  if (v3)
  {
    v4 = [v3 CGImage];
    v5 = v9[5];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __20__ALAsset_thumbnail__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isDeleted];
  if ((result & 1) == 0)
  {
    if (![a3 isCloudSharedAsset] || (result = objc_msgSend(a3, "cloudSharedPlaceholderKind"), result >= 3))
    {
      PLPushPhotoLibraryClient();
      *(*(*(a1 + 32) + 8) + 40) = [a3 imageWithFormat:objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D3B228], "defaultFormatChooser"), "indexSheetUnbakedFormat"), "formatID")];

      return MEMORY[0x28219B488]();
    }
  }

  return result;
}

- (ALAssetRepresentation)representationForUTI:(NSString *)representationUTI
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  if ([(ALAsset *)self isValid])
  {
    v5 = [(ALAsset *)self internal];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__ALAsset_representationForUTI___block_invoke;
    v8[3] = &unk_278A074C8;
    v8[5] = v5;
    v8[6] = &v9;
    v8[4] = representationUTI;
    [(ALAssetPrivate *)v5 _performBlockAndWait:v8];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __32__ALAsset_representationForUTI___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  result = [a3 isDeleted];
  if ((result & 1) == 0)
  {
    if (![a3 isCloudSharedAsset] || (result = objc_msgSend(a3, "cloudSharedPlaceholderKind"), result >= 4))
    {
      if ([objc_msgSend(a3 "uniformTypeIdentifier")])
      {
        v6 = [a3 fileExtension];
        v7 = 0;
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v8 = [a3 sortedSidecarFiles];
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v7 = *(*(&v14 + 1) + 8 * i);
              if ([objc_msgSend(v7 "uniformTypeIdentifier")])
              {
                v6 = [objc_msgSend(v7 "originalFilename")];
                goto LABEL_17;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
            v7 = 0;
            v6 = 0;
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v7 = 0;
          v6 = 0;
        }
      }

LABEL_17:
      result = [v6 length];
      if (result)
      {
        result = -[ALAssetRepresentation initWithManagedAsset:sidecar:extension:library:]([ALAssetRepresentation alloc], "initWithManagedAsset:sidecar:extension:library:", a3, v7, v6, [*(a1 + 40) library]);
        *(*(*(a1 + 48) + 8) + 40) = result;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (ALAssetRepresentation)defaultRepresentation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  if ([(ALAsset *)self isValid])
  {
    v3 = [(ALAsset *)self internal];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__ALAsset_defaultRepresentation__block_invoke;
    v6[3] = &unk_278A074A0;
    v6[4] = v3;
    v6[5] = &v7;
    [(ALAssetPrivate *)v3 _performBlockAndWait:v6];
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

ALAssetRepresentation *__32__ALAsset_defaultRepresentation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isDeleted];
  if ((result & 1) == 0)
  {
    if (![a3 isCloudSharedAsset] || (result = objc_msgSend(a3, "cloudSharedPlaceholderKind"), result >= 4))
    {
      result = -[ALAssetRepresentation initWithManagedAsset:sidecar:extension:library:]([ALAssetRepresentation alloc], "initWithManagedAsset:sidecar:extension:library:", a3, 0, [a3 fileExtension], objc_msgSend(*(a1 + 32), "library"));
      *(*(*(a1 + 40) + 8) + 40) = result;
    }
  }

  return result;
}

- (id)valueForProperty:(NSString *)property
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  if ([(ALAsset *)self isValid])
  {
    v5 = [(ALAsset *)self internal];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__ALAsset_valueForProperty___block_invoke;
    v8[3] = &unk_278A074A0;
    v8[4] = property;
    v8[5] = &v9;
    [(ALAssetPrivate *)v5 _performBlockAndWait:v8];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

id __28__ALAsset_valueForProperty___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if ([a3 isDeleted])
  {
    *(*(*(a1 + 40) + 8) + 40) = 0;
    goto LABEL_40;
  }

  if ([*(a1 + 32) isEqualToString:@"ALAssetPropertyType"])
  {
    v5 = [a3 kind];
    v6 = *(*(a1 + 40) + 8);
    if (v5 == 1)
    {
      v7 = @"ALAssetTypeVideo";
    }

    else if (v5)
    {
      v7 = @"ALAssetTypeUnknown";
    }

    else
    {
      v7 = @"ALAssetTypePhoto";
    }

    goto LABEL_39;
  }

  if ([*(a1 + 32) isEqualToString:@"ALAssetPropertyLocation"])
  {
    v8 = [a3 location];
LABEL_9:
    *(*(*(a1 + 40) + 8) + 40) = v8;
    goto LABEL_40;
  }

  if ([*(a1 + 32) isEqualToString:@"ALAssetPropertyDuration"])
  {
    if ([a3 kind] == 1)
    {
      v9 = MEMORY[0x277CCABB0];
      [a3 duration];
      v8 = [v9 numberWithDouble:?];
      goto LABEL_9;
    }

LABEL_38:
    v6 = *(*(a1 + 40) + 8);
    v7 = @"ALErrorInvalidProperty";
LABEL_39:
    *(v6 + 40) = v7;
    goto LABEL_40;
  }

  if ([*(a1 + 32) isEqualToString:@"ALAssetPropertyOrientation"])
  {
    [a3 orientation];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:PLImageOrientationFromExifOrientation()];
    goto LABEL_9;
  }

  if ([*(a1 + 32) isEqualToString:@"ALAssetPropertyDate"])
  {
    v8 = [a3 dateCreated];
    goto LABEL_9;
  }

  if ([*(a1 + 32) isEqualToString:@"ALAssetPropertyRepresentations"])
  {
    v8 = [a3 allUniformTypeIdentifiers];
    goto LABEL_9;
  }

  if (![*(a1 + 32) isEqualToString:@"ALAssetPropertyURLs"])
  {
    if ([*(a1 + 32) isEqualToString:@"ALAssetPropertyAssetURL"])
    {
      v8 = [a3 assetURL];
      goto LABEL_9;
    }

    if ([*(a1 + 32) isEqualToString:@"ALAssetPropertyEditorBundleID"])
    {
      v8 = [a3 editorBundleID];
      goto LABEL_9;
    }

    goto LABEL_38;
  }

  v10 = [a3 sortedSidecarFiles];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [a3 uniformTypeIdentifier];
  if (v12)
  {
    [v11 setObject:objc_msgSend(a3 forKey:{"assetURL"), v12}];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [v17 uniformTypeIdentifier];
        if (v18)
        {
          [v11 setObject:objc_msgSend(a3 forKey:{"assetURLForSidecarFile:", v17), v18}];
        }
      }

      v14 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v11];

LABEL_40:
  result = *(*(*(a1 + 40) + 8) + 40);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isValid
{
  v2 = [(ALAsset *)self internal];

  return [(ALAssetPrivate *)v2 isValid];
}

- (id)_uuid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v2 = [(ALAsset *)self internal];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __16__ALAsset__uuid__block_invoke;
  v5[3] = &unk_278A07BB8;
  v5[4] = &v6;
  [(ALAssetPrivate *)v2 _performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __16__ALAsset__uuid__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 "uuid")];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (id)_typeAsString
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 3;
  v2 = [(ALAsset *)self internal];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__ALAsset__typeAsString__block_invoke;
  v6[3] = &unk_278A07BB8;
  v6[4] = &v7;
  [(ALAssetPrivate *)v2 _performBlockAndWait:v6];
  v3 = @"Unknown";
  if (*(v8 + 12) == 1)
  {
    v3 = @"Video";
  }

  if (*(v8 + 12))
  {
    v4 = v3;
  }

  else
  {
    v4 = @"Photo";
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __24__ALAsset__typeAsString__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isDeleted];
  if ((result & 1) == 0)
  {
    result = [a3 kind];
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

- (void)dealloc
{
  [(ALAsset *)self setInternal:0];
  v3.receiver = self;
  v3.super_class = ALAsset;
  [(ALAsset *)&v3 dealloc];
}

- (ALAsset)initWithManagedAsset:(id)a3 library:(id)a4
{
  v9.receiver = self;
  v9.super_class = ALAsset;
  v6 = [(ALAsset *)&v9 init];
  if (v6)
  {
    v7 = [[ALAssetPrivate alloc] initWithManagedAsset:a3 library:a4];
    [(ALAsset *)v6 setInternal:v7];
  }

  return v6;
}

+ (CGSize)largePreviewImageSizeForSize:(CGSize)a3
{
  v3 = [objc_msgSend(MEMORY[0x277D3B228] "defaultFormatChooser")];
  [v3 fullSizeMinShortSide];
  [v3 fullSizeDesiredLongSide];
  [v3 fullSizeMaxLongSide];

  JUMPOUT(0x2383B6C60);
}

@end