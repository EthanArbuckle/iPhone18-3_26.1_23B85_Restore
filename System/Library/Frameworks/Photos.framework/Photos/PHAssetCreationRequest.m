@interface PHAssetCreationRequest
+ (BOOL)_shouldGenerateThumbnailsDuringCreationForImageSource:(CGImageSource *)a3 contentType:(id)a4 timeZoneLookup:(id)a5;
+ (BOOL)setDeferredIdentifierAndCreateDeferredDestinationURLFromCurrentDstURL:(id *)a3 withMainFileMetadata:(id)a4 managedAsset:(id)a5 photoLibrary:(id)a6 error:(id *)a7;
+ (BOOL)setdbgFileWithAsset:(id)a3 dbgFilePath:(id)a4 photoFilename:(id)a5;
+ (id)_cameraMetadataURLForPrimaryAssetURL:(id)a3 photoLibrary:(id)a4;
+ (id)_creationRequestForAssetUsingUUID:(id)a3;
+ (id)_imageIOThumbnailCreationOptionsFromDerivativeContext:(id)a3;
+ (id)_jpegDataFromRAWData:(id)a3 derivativeContext:(id)a4;
+ (id)_photoIrisIndicatorFilePathForPhotoAtPath:(id)a3 UUID:(id)a4;
+ (id)_uuidForAssetWithSyndicationIdentifier:(id)a3 inLibrary:(id)a4 isTrashed:(BOOL *)a5;
+ (id)creationRequestForAssetCopyFromAsset:(id)a3 options:(id)a4;
+ (id)creationRequestForAssetFromAssetBundle:(id)a3;
+ (id)creationRequestForAssetFromGuestAsset:(id)a3 checkForMomentShareAsset:(BOOL)a4;
+ (id)creationRequestForAssetFromImage:(id)a3;
+ (id)creationRequestForAssetFromImageAtFileURL:(id)a3;
+ (id)creationRequestForAssetFromImageData:(id)a3 options:(id)a4;
+ (id)creationRequestForAssetFromImageData:(id)a3 usingUUID:(id)a4;
+ (id)creationRequestForAssetFromImageJobDictionary:(id)a3 holdingDirectoryPath:(id)a4;
+ (id)creationRequestForAssetFromScreenshotImage:(id)a3;
+ (id)creationRequestForAssetFromVideoAtFileURL:(id)a3;
+ (id)creationRequestForAssetFromVideoComplementBundle:(id)a3;
+ (id)creationRequestForAssetFromVideoJobDictionary:(id)a3;
+ (id)creationRequestForAssetFromVideoPreviewJobDict:(id)a3 withPreviewImageSurface:(__IOSurface *)a4;
+ (id)creationRequestForAssetWithSyndicationIdentifier:(id)a3;
+ (id)creationRequestForAssetWithUUID:(id)a3 options:(id)a4;
+ (int64_t)_originalResourceTypeFromAdjustedResourceType:(int64_t)a3 sourceAssetIsLoopingVideo:(BOOL)a4 sourceAssetIsVideo:(BOOL)a5;
- (BOOL)_accessWritableURLForUUID:(id)a3 imageUTI:(id)a4 originalFilename:(id)a5 photoLibrary:(id)a6 withHandler:(id)a7;
- (BOOL)_assetAlreadyExistsAsPlaceholder:(BOOL)a3 mediaType:(int64_t)a4 uuid:(id)a5 photoLibrary:(id)a6 fetchAsset:(id *)a7;
- (BOOL)_createAssetAsAdjusted:(id)a3 fromValidatedResources:(id)a4 mainFileMetadata:(id)a5 error:(id *)a6;
- (BOOL)_createAssetAsPhotoIris:(id)a3 fromValidatedResources:(id)a4 mainFileMetadata:(id)a5 error:(id *)a6;
- (BOOL)_createAudioResourceForAsset:(id)a3 fromValidatedResources:(id)a4 photoLibrary:(id)a5 error:(id *)a6;
- (BOOL)_createOriginalResourceForAsset:(id)a3 fromValidatedResource:(id)a4 resourceType:(unsigned int)a5 photoLibrary:(id)a6 destinationURL:(id)a7 error:(id *)a8;
- (BOOL)_createRAWSidecarForAsset:(id)a3 fromValidatedResources:(id)a4 mainFileMetadata:(id)a5 photoLibrary:(id)a6 error:(id *)a7;
- (BOOL)_createSocResourceForAsset:(id)a3 fromValidatedResources:(id)a4 photoLibrary:(id)a5 error:(id *)a6;
- (BOOL)_createXmpResourceForAsset:(id)a3 fromValidatedResources:(id)a4 photoLibrary:(id)a5 error:(id *)a6;
- (BOOL)_filePathIsInIncomingDirectory:(id)a3;
- (BOOL)_ingestOriginalInPlaceSrcURL:(id)a3 dstURL:(id)a4 asset:(id)a5 error:(id *)a6;
- (BOOL)_populateDuplicatingAssetCreationRequest:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)_restoreMovedFilesOnFailure;
- (BOOL)_setupSemanticEnhanceMetadataIfNeededWithDestinationURL:(id)a3 photoLibrary:(id)a4 semanticEnhanceResult:(id *)a5 ingestJobCameraMetadata:(id)a6;
- (BOOL)_unTrashAndResetAsset:(id)a3;
- (BOOL)_validateNewObjectUUID:(id)a3 inPhotoLibrary:(id)a4 error:(id *)a5;
- (BOOL)_writeDataToDisk:(id)a3 imageUTIType:(id)a4 primaryImageProperties:(id)a5 mainFileURL:(id)a6 thumbnailData:(id)a7;
- (BOOL)_writeOutCameraMetadata:(id)a3 destinationURL:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)isDuplicateAssetCreationRequest;
- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (CGImageSource)_imageSourceForDerivatives;
- (PHAssetCreationRequest)initWithCoder:(id)a3;
- (PHAssetCreationRequest)initWithHelper:(id)a3;
- (PHAssetCreationRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (PHShare)share;
- (id)_captureSessionIdentifier;
- (id)_createAdjustmentsFileFromJobDictionary:(id)a3 cameraIngestOptions:(id)a4;
- (id)_createAssetAdjustmentsFromBackupWithAsset:(id)a3;
- (id)_createAssetFromValidatedResources:(id)a3 withUUID:(id)a4 assetAlreadyExistsAsPlaceholder:(BOOL)a5 inPhotoLibrary:(id)a6 error:(id *)a7;
- (id)_createTimelapsePlaceholderAssetWithUUID:(id)a3 InPhotoLibrary:(id)a4;
- (id)_externalLivePhotoResourceForAsset:(id)a3;
- (id)_filteredImagePropertiesByConditionallyRemovingLivePhotoIdentifiersFromSourceImageProperties:(id)a3;
- (id)_ingestOriginalFromSrcURL:(id)a3 toDstURL:(id)a4 useSecureMove:(BOOL)a5 resource:(id)a6 resourceType:(unsigned int)a7 asset:(id)a8 error:(id *)a9;
- (id)_managedAssetFromPrimaryResourceData:(id)a3 validatedResources:(id)a4 withUUID:(id)a5 photoLibrary:(id)a6 mainFileMetadata:(id *)a7 getImageSource:(CGImageSource *)a8 imageData:(id *)a9;
- (id)_mutableMomentShareObjectIDsAndUUIDs;
- (id)_resolveResourceHoldingDirectoryPath;
- (id)_secureMove:(BOOL)a3 assetResource:(id)a4 photoLibrary:(id)a5 error:(id *)a6;
- (id)_secureMove:(BOOL)a3 fileAtURL:(id)a4 toURL:(id)a5 capabilities:(id)a6 error:(id *)a7;
- (id)createAssetFromValidatedResources:(id)a3 withUUID:(id)a4 assetAlreadyExistsAsPlaceholder:(BOOL)a5 inPhotoLibrary:(id)a6 error:(id *)a7;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)duplicatedAssetResourcesFromAsset:(id)a3 stillSourceTime:(id *)a4 flattenLivePhotoIntoStillPhoto:(BOOL)a5 duplicateAsOriginal:(BOOL)a6 duplicateWithAdjustmentsBakedIn:(BOOL)a7 duplicatePhotoAsData:(BOOL)a8 error:(id *)a9;
- (id)initForNewObjectWithUUID:(id)a3;
- (id)placeholderForCreatedAsset;
- (id)urlsForResources:(id)a3;
- (int64_t)_mediaTypeForCreatedAsset;
- (int64_t)accessScopeOptionsRequirement;
- (signed)_savedAssetTypeForAsset;
- (void)_addResourceWithType:(int64_t)a3 data:(id)a4 orFileURL:(id)a5 options:(id)a6;
- (void)_checkAndGenerateThumbnailsForAsset:(id)a3 imageSource:(CGImageSource *)a4 imageData:(id)a5 previewImage:(id)a6 thumbnailImage:(id)a7 timeZoneLookup:(id)a8 resourceBag:(id)a9;
- (void)_checkAndSetForSemanticEnhancementForAsset:(id)a3 resourceBag:(id)a4;
- (void)_copyMediaAnalysisProperties:(id)a3;
- (void)_copyMetadataFromAsset:(id)a3;
- (void)_copyUserSpecificMetadataFromAsset:(id)a3;
- (void)_deleteJobFileAtPath:(id)a3 withAsset:(id)a4;
- (void)_didMoveFileFromURL:(id)a3 toURL:(id)a4;
- (void)_prepareMomentShareHelperIfNeeded;
- (void)_removePhotoKitCameraIngestFiles:(id)a3 originalFileURL:(id)a4 resourceBag:(id)a5;
- (void)_resetMovedFiles;
- (void)_setCaptureSessionIdentifierOnAsset:(id)a3;
- (void)_setCreatingAssetIsBusy:(BOOL)a3;
- (void)_setDuplicateStillSourceTime:(id *)a3;
- (void)_setModificationDateOnAsset:(id)a3;
- (void)_setupDerivativeCreationContextForAsset:(id)a3 imageSource:(CGImageSource *)a4 imageData:(id)a5;
- (void)_setupIrisPairingTimeoutForAsset:(id)a3 imageFile:(id)a4 library:(id)a5;
- (void)_updateMutationsForDuplicatingPrivateMetadataFromAsset:(id)a3;
- (void)didSendChangeToServiceHandlerWithResult:(BOOL)a3;
- (void)encodeToXPCDict:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)finalizeRequestWithBatchSuccess:(BOOL)a3;
- (void)overrideAssetUUIDForCrashRecovery:(id)a3;
- (void)performConcurrentWork;
- (void)performTransactionCompletionHandlingInPhotoLibrary:(id)a3;
- (void)setCollectionShare:(id)a3;
- (void)setConversationID:(id)a3;
- (void)setCustomAssetProperties:(id)a3;
- (void)setImportSessionID:(id)a3;
- (void)setImportedBy:(int64_t)a3;
- (void)setImportedByBundleIdentifier:(id)a3;
- (void)setMomentShare:(id)a3;
- (void)setShare:(id)a3;
- (void)setSyndicationIdentifier:(id)a3;
@end

@implementation PHAssetCreationRequest

- (void)_setDuplicateStillSourceTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_duplicateStillSourceTime.value = *&a3->var0;
  self->_duplicateStillSourceTime.epoch = var3;
}

- (PHAssetCreationRequest)initWithCoder:(id)a3
{
  v117 = *MEMORY[0x1E69E9840];
  v115.receiver = self;
  v115.super_class = PHAssetCreationRequest;
  v3 = a3;
  v4 = [(PHAssetChangeRequest *)&v115 initWithCoder:v3];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetResources"];
    v12 = [v3 decodeObjectOfClasses:v10 forKey:v11];

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sandboxExtensionTokens"];
    v109 = [v3 decodeObjectOfClasses:v15 forKey:v16];

    v108 = v12;
    if (v12)
    {
      v107 = v4;
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v18 = v12;
      v19 = [v18 countByEnumeratingWithState:&v111 objects:v116 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v112;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v112 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [[PHExternalAssetResource alloc] initWithPropertyListRepresentation:*(*(&v111 + 1) + 8 * i)];
            v24 = [(PHExternalAssetResource *)v23 fileURL];
            v25 = [v24 path];
            v26 = [v109 objectForKeyedSubscript:v25];

            if (v26)
            {
              v27 = objc_alloc(MEMORY[0x1E69BF2E8]);
              v28 = [(PHExternalAssetResource *)v23 fileURL];
              v29 = [v27 initWithURL:v28 sandboxExtensionToken:v26 consume:1];

              [(PHExternalAssetResource *)v23 setFileURL:v29];
            }

            [(NSMutableArray *)v17 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v111 objects:v116 count:16];
        }

        while (v20);
      }

      v4 = v107;
      assetResources = v107->_assetResources;
      v107->_assetResources = v17;
    }

    v31 = objc_opt_class();
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateAssetIdentifier"];
    v33 = [v3 decodeObjectOfClass:v31 forKey:v32];

    if (v33)
    {
      objc_storeStrong(&v4->_duplicateAssetIdentifier, v33);
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateLivePhotoAsStill"];
      v4->_duplicateLivePhotoAsStill = [v3 decodeBoolForKey:v34];
    }

    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateAssetPhotoLibraryType"];
    v4->_duplicateAssetPhotoLibraryType = [v3 decodeIntegerForKey:v35];

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = [v36 setWithObjects:{v37, v38, objc_opt_class(), 0}];
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateLivePhotoStillTimeKey"];
    v41 = [v3 decodeObjectOfClasses:v39 forKey:v40];

    v42 = v4;
    p_duplicateStillSourceTime = &v4->_duplicateStillSourceTime;
    CMTimeMakeFromDictionary(&v110, v41);
    v44 = *&v110.value;
    p_duplicateStillSourceTime->epoch = v110.epoch;
    *&p_duplicateStillSourceTime->value = v44;
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateAsOriginal"];
    v42->_duplicateAsOriginal = [v3 decodeBoolForKey:v45];

    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateAsAlternateAsset"];
    v42->_duplicateAsAlternateAsset = [v3 decodeBoolForKey:v46];

    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"createScreenshot"];
    v42->_shouldCreateScreenshot = [v3 decodeBoolForKey:v47];

    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"useAutomaticallyGeneratedOriginalFilename"];
    v42->_shouldUseAutomaticallyGeneratedOriginalFilename = [v3 decodeBoolForKey:v48];

    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"reduceProcessingForIngest"];
    v42->_reduceProcessingForIngest = [v3 decodeBoolForKey:v49];

    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"createAsCompanionSyncedAsset"];
    v42->_createAsCompanionSyncedAsset = [v3 decodeBoolForKey:v50];

    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bundleScope"];
    v42->_bundleScope = [v3 decodeIntegerForKey:v51];

    v52 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"momentShare"];
    momentShareHelper = v42->_momentShareHelper;
    v42->_momentShareHelper = v52;

    v54 = objc_opt_class();
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"momentShareUUID"];
    v56 = [v3 decodeObjectOfClass:v54 forKey:v55];
    momentShareUUID = v42->_momentShareUUID;
    v42->_momentShareUUID = v56;

    v58 = objc_opt_class();
    v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"collectionShareUUID"];
    v60 = [v3 decodeObjectOfClass:v58 forKey:v59];
    collectionShareUUID = v42->_collectionShareUUID;
    v42->_collectionShareUUID = v60;

    v62 = objc_opt_class();
    v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"importSessionID"];
    v64 = [v3 decodeObjectOfClass:v62 forKey:v63];
    importSessionID = v42->_importSessionID;
    v42->_importSessionID = v64;

    v66 = objc_opt_class();
    v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"conversationID"];
    v68 = [v3 decodeObjectOfClass:v66 forKey:v67];
    conversationID = v42->_conversationID;
    v42->_conversationID = v68;

    v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"importedBy"];
    v42->_importedBy = [v3 decodeIntegerForKey:v70];

    [(PHChangeRequest *)v42 setShouldPerformConcurrentWork:v42->_importedBy == 5];
    v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateSinglePhotoFromBurst"];
    v42->_duplicateSinglePhotoFromBurst = [v3 decodeBoolForKey:v71];

    v72 = objc_opt_class();
    v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"adjustmentBakeInOptions"];
    v74 = [v3 decodeObjectOfClass:v72 forKey:v73];
    adjustmentBakeInOptions = v42->_adjustmentBakeInOptions;
    v42->_adjustmentBakeInOptions = v74;

    v76 = objc_opt_class();
    v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"metadataCopyOptions"];
    v78 = [v3 decodeObjectOfClass:v76 forKey:v77];
    metadataCopyOptions = v42->_metadataCopyOptions;
    v42->_metadataCopyOptions = v78;

    v80 = objc_opt_class();
    v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"importedByBundleIdentifier"];
    v82 = [v3 decodeObjectOfClass:v80 forKey:v81];
    importedByBundleIdentifier = v42->_importedByBundleIdentifier;
    v42->_importedByBundleIdentifier = v82;

    v84 = objc_opt_class();
    v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationIdentifier"];
    v86 = [v3 decodeObjectOfClass:v84 forKey:v85];
    syndicationIdentifier = v42->_syndicationIdentifier;
    v42->_syndicationIdentifier = v86;

    v88 = MEMORY[0x1E695DFD8];
    v89 = objc_opt_class();
    v90 = objc_opt_class();
    v91 = objc_opt_class();
    v92 = objc_opt_class();
    v93 = [v88 setWithObjects:{v89, v90, v91, v92, objc_opt_class(), 0}];
    v94 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"customAssetProperties"];
    v95 = [v3 decodeObjectOfClasses:v93 forKey:v94];
    customAssetProperties = v42->_customAssetProperties;
    v42->_customAssetProperties = v95;

    v97 = objc_opt_class();
    v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetExistsWithSyndicationIdentifier"];
    v99 = [v3 decodeObjectOfClass:v97 forKey:v98];
    assetExistsWithSyndicationIdentifier = v42->_assetExistsWithSyndicationIdentifier;
    v42->_assetExistsWithSyndicationIdentifier = v99;

    v4 = v42;
    if ([(NSNumber *)v42->_assetExistsWithSyndicationIdentifier BOOLValue])
    {
      v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetExistingWithSyndicationIdentifierIsTrashed"];
      v42->_assetExistingWithSyndicationIdentifierIsTrashed = [v3 decodeBoolForKey:v101];
    }

    v102 = objc_opt_class();
    v103 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resourceHoldingDirectoryPath"];
    v104 = [v3 decodeObjectOfClass:v102 forKey:v103];
    resourceHoldingDirectoryPath = v42->_resourceHoldingDirectoryPath;
    v42->_resourceHoldingDirectoryPath = v104;

    v42->_retryCount = [v3 decodeIntForKey:@"PHAssetCreationRequestRetryCountKey"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v79.receiver = self;
  v79.super_class = PHAssetCreationRequest;
  [(PHAssetChangeRequest *)&v79 encodeWithCoder:v4];
  v5 = 0x1E696A000;
  if (self->_assetResources)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v73 = [MEMORY[0x1E695DF90] dictionary];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v72 = self;
    v7 = self->_assetResources;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v76;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v76 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v75 + 1) + 8 * i);
          v13 = [v12 propertyListRepresentation];
          [v6 addObject:v13];

          v14 = [v12 fileURL];

          if (v14)
          {
            v15 = [v12 fileURL];
            v16 = [v15 path];

            v17 = [v12 creationOptions];
            [v17 shouldMoveFile];

            v18 = PLGetSandboxExtensionToken();
            [v73 setObject:v18 forKeyedSubscript:v16];
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v9);
    }

    v5 = 0x1E696A000uLL;
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetResources"];
    [v4 encodeObject:v6 forKey:v19];

    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sandboxExtensionTokens"];
    [v4 encodeObject:v73 forKey:v20];

    self = v72;
  }

  duplicateAssetIdentifier = self->_duplicateAssetIdentifier;
  v22 = [*(v5 + 3776) stringWithUTF8String:"duplicateAssetIdentifier"];
  [v4 encodeObject:duplicateAssetIdentifier forKey:v22];

  duplicateLivePhotoAsStill = self->_duplicateLivePhotoAsStill;
  v24 = [*(v5 + 3776) stringWithUTF8String:"duplicateLivePhotoAsStill"];
  [v4 encodeBool:duplicateLivePhotoAsStill forKey:v24];

  duplicateAssetPhotoLibraryType = self->_duplicateAssetPhotoLibraryType;
  v26 = [*(v5 + 3776) stringWithUTF8String:"duplicateAssetPhotoLibraryType"];
  [v4 encodeInteger:duplicateAssetPhotoLibraryType forKey:v26];

  duplicateAsOriginal = self->_duplicateAsOriginal;
  v28 = [*(v5 + 3776) stringWithUTF8String:"duplicateAsOriginal"];
  [v4 encodeBool:duplicateAsOriginal forKey:v28];

  duplicateAsAlternateAsset = self->_duplicateAsAlternateAsset;
  v30 = [*(v5 + 3776) stringWithUTF8String:"duplicateAsAlternateAsset"];
  [v4 encodeBool:duplicateAsAlternateAsset forKey:v30];

  createAsCompanionSyncedAsset = self->_createAsCompanionSyncedAsset;
  v32 = [*(v5 + 3776) stringWithUTF8String:"createAsCompanionSyncedAsset"];
  [v4 encodeBool:createAsCompanionSyncedAsset forKey:v32];

  shouldCreateScreenshot = self->_shouldCreateScreenshot;
  v34 = [*(v5 + 3776) stringWithUTF8String:"createScreenshot"];
  [v4 encodeBool:shouldCreateScreenshot forKey:v34];

  shouldUseAutomaticallyGeneratedOriginalFilename = self->_shouldUseAutomaticallyGeneratedOriginalFilename;
  v36 = [*(v5 + 3776) stringWithUTF8String:"useAutomaticallyGeneratedOriginalFilename"];
  [v4 encodeBool:shouldUseAutomaticallyGeneratedOriginalFilename forKey:v36];

  reduceProcessingForIngest = self->_reduceProcessingForIngest;
  v38 = [*(v5 + 3776) stringWithUTF8String:"reduceProcessingForIngest"];
  [v4 encodeBool:reduceProcessingForIngest forKey:v38];

  if (self->_duplicateStillSourceTime.flags)
  {
    time = self->_duplicateStillSourceTime;
    v39 = CMTimeCopyAsDictionary(&time, 0);
    v40 = [*(v5 + 3776) stringWithUTF8String:"duplicateLivePhotoStillTimeKey"];
    [v4 encodeObject:v39 forKey:v40];
  }

  if (self->_momentShare)
  {
    v41 = [(PHAssetCreationRequest *)self momentShareHelper];
    v42 = [(PHAssetCreationRequest *)self momentShareHelper];
    v43 = [v42 relationshipName];
    [v4 encodeObject:v41 forKey:v43];

    momentShareUUID = self->_momentShareUUID;
    v45 = [*(v5 + 3776) stringWithUTF8String:"momentShareUUID"];
    [v4 encodeObject:momentShareUUID forKey:v45];
  }

  if (self->_collectionShare)
  {
    collectionShareUUID = self->_collectionShareUUID;
    v47 = [*(v5 + 3776) stringWithUTF8String:"collectionShareUUID"];
    [v4 encodeObject:collectionShareUUID forKey:v47];
  }

  importSessionID = self->_importSessionID;
  v49 = [*(v5 + 3776) stringWithUTF8String:"importSessionID"];
  [v4 encodeObject:importSessionID forKey:v49];

  conversationID = self->_conversationID;
  v51 = [*(v5 + 3776) stringWithUTF8String:"conversationID"];
  [v4 encodeObject:conversationID forKey:v51];

  importedBy = self->_importedBy;
  if (importedBy)
  {
    v53 = [*(v5 + 3776) stringWithUTF8String:"importedBy"];
    [v4 encodeInteger:importedBy forKey:v53];
  }

  duplicateSinglePhotoFromBurst = self->_duplicateSinglePhotoFromBurst;
  v55 = [*(v5 + 3776) stringWithUTF8String:"duplicateSinglePhotoFromBurst"];
  [v4 encodeBool:duplicateSinglePhotoFromBurst forKey:v55];

  adjustmentBakeInOptions = self->_adjustmentBakeInOptions;
  v57 = [*(v5 + 3776) stringWithUTF8String:"adjustmentBakeInOptions"];
  [v4 encodeObject:adjustmentBakeInOptions forKey:v57];

  metadataCopyOptions = self->_metadataCopyOptions;
  v59 = [*(v5 + 3776) stringWithUTF8String:"metadataCopyOptions"];
  [v4 encodeObject:metadataCopyOptions forKey:v59];

  importedByBundleIdentifier = self->_importedByBundleIdentifier;
  v61 = [*(v5 + 3776) stringWithUTF8String:"importedByBundleIdentifier"];
  [v4 encodeObject:importedByBundleIdentifier forKey:v61];

  syndicationIdentifier = self->_syndicationIdentifier;
  v63 = [*(v5 + 3776) stringWithUTF8String:"syndicationIdentifier"];
  [v4 encodeObject:syndicationIdentifier forKey:v63];

  customAssetProperties = self->_customAssetProperties;
  v65 = [*(v5 + 3776) stringWithUTF8String:"customAssetProperties"];
  [v4 encodeObject:customAssetProperties forKey:v65];

  assetExistsWithSyndicationIdentifier = self->_assetExistsWithSyndicationIdentifier;
  v67 = [*(v5 + 3776) stringWithUTF8String:"assetExistsWithSyndicationIdentifier"];
  [v4 encodeObject:assetExistsWithSyndicationIdentifier forKey:v67];

  if ([(NSNumber *)self->_assetExistsWithSyndicationIdentifier BOOLValue])
  {
    assetExistingWithSyndicationIdentifierIsTrashed = self->_assetExistingWithSyndicationIdentifierIsTrashed;
    v69 = [*(v5 + 3776) stringWithUTF8String:"assetExistingWithSyndicationIdentifierIsTrashed"];
    [v4 encodeBool:assetExistingWithSyndicationIdentifierIsTrashed forKey:v69];
  }

  resourceHoldingDirectoryPath = self->_resourceHoldingDirectoryPath;
  v71 = [*(v5 + 3776) stringWithUTF8String:"resourceHoldingDirectoryPath"];
  [v4 encodeObject:resourceHoldingDirectoryPath forKey:v71];

  if (self->_retryCount >= 1)
  {
    [v4 encodeInt:? forKey:?];
  }
}

- (int64_t)accessScopeOptionsRequirement
{
  if ([(PHAssetCreationRequest *)self isDuplicateAssetCreationRequest])
  {
    return 7;
  }

  else
  {
    return 1;
  }
}

- (BOOL)isDuplicateAssetCreationRequest
{
  v2 = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (void)setShare:(id)a3
{
  v8 = a3;
  v5 = [v8 localIdentifier];
  v6 = [PHObject identifierCodeFromLocalIdentifier:v5];

  if ([v6 isEqualToString:@"140"])
  {
    [(PHAssetCreationRequest *)self setMomentShare:v8];
  }

  else if ([v6 isEqualToString:@"260"])
  {
    [(PHAssetCreationRequest *)self setCollectionShare:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4636 description:{@"%s must be called with a MomentShare or CollectionShare object", "-[PHAssetCreationRequest setShare:]"}];
  }
}

- (PHShare)share
{
  v3 = [(PHAssetCreationRequest *)self momentShare];

  if (v3)
  {
    [(PHAssetCreationRequest *)self momentShare];
  }

  else
  {
    [(PHAssetCreationRequest *)self collectionShare];
  }
  v4 = ;

  return v4;
}

- (void)setCollectionShare:(id)a3
{
  objc_storeStrong(&self->_collectionShare, a3);
  v7 = a3;
  v5 = [v7 uuid];
  collectionShareUUID = self->_collectionShareUUID;
  self->_collectionShareUUID = v5;
}

- (void)setMomentShare:(id)a3
{
  objc_storeStrong(&self->_momentShare, a3);
  v7 = a3;
  v5 = [v7 uuid];
  momentShareUUID = self->_momentShareUUID;
  self->_momentShareUUID = v5;
}

- (id)_mutableMomentShareObjectIDsAndUUIDs
{
  [(PHAssetCreationRequest *)self _prepareMomentShareHelperIfNeeded];
  momentShareHelper = self->_momentShareHelper;

  return [(PHRelationshipChangeRequestHelper *)momentShareHelper mutableObjectIDsAndUUIDs];
}

- (void)_prepareMomentShareHelperIfNeeded
{
  v3 = [(PHRelationshipChangeRequestHelper *)self->_momentShareHelper originalObjectIDs];

  if (!v3)
  {
    [(PHRelationshipChangeRequestHelper *)self->_momentShareHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  v4 = [(PHRelationshipChangeRequestHelper *)self->_momentShareHelper mutableObjectIDsAndUUIDs];

  if (!v4)
  {
    momentShareHelper = self->_momentShareHelper;
    v7 = [(PHRelationshipChangeRequestHelper *)momentShareHelper originalObjectIDs];
    v6 = [v7 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)momentShareHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (void)performTransactionCompletionHandlingInPhotoLibrary:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [(PHAssetCreationRequest *)self _limitedLibraryFetchFilterObjectID];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69BE9C0];
    v7 = [(PHAssetCreationRequest *)self _limitedLibraryFetchFilterObjectID];
    v11 = *MEMORY[0x1E69BE9C8];
    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 clientBundleIdentifier];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v5 postNotificationName:v6 object:v7 userInfo:v10];
  }
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v8 = a3;
  v25.receiver = self;
  v25.super_class = PHAssetCreationRequest;
  v26 = 0;
  v9 = [(PHAssetChangeRequest *)&v25 applyMutationsToManagedObject:v8 photoLibrary:a4 error:&v26];
  v10 = v26;
  v11 = [(PHAssetCreationRequest *)self momentShareHelper];
  v12 = v11;
  if ((v9 & 1) == 0)
  {

    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v13 = [v11 mutableObjectIDsAndUUIDs];
  v14 = [v13 count];

  if (v14)
  {
    [v12 setAllowsInsert:1];
    v15 = +[PHMomentShare managedEntityName];
    [v12 setDestinationEntityName:v15];

    v24 = v10;
    LODWORD(v15) = [v12 applyMutationsToManagedObjectToOneRelationship:v8 error:&v24];
    v16 = v24;

    v10 = v16;
    if (!v15)
    {
      if (a5)
      {
LABEL_5:
        v17 = v10;
        v18 = 0;
        *a5 = v10;
        goto LABEL_12;
      }

LABEL_7:
      v18 = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  collectionShareUUID = self->_collectionShareUUID;
  if (collectionShareUUID)
  {
    v20 = MEMORY[0x1E69BE358];
    v21 = [v8 managedObjectContext];
    v18 = 1;
    v22 = [v20 shareWithUUID:collectionShareUUID includeTrashed:1 inManagedObjectContext:v21];

    [v8 setCollectionShareWithCurrentUserAsContributor:v22];
    [v22 recomputeCachedValues];
  }

  else
  {
    v18 = 1;
  }

LABEL_12:

  return v18;
}

- (id)_captureSessionIdentifier
{
  v2 = [(PHChangeRequest *)self helper];
  v3 = [v2 clientAuthorization];
  v4 = [v3 captureSessionState];

  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 sessionIdentifier];
  }

  else
  {
    objc_opt_class();
    v9 = v5;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v8 = [v11 sessionIdentifier];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_setCaptureSessionIdentifierOnAsset:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHAssetCreationRequest *)self _captureSessionIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isEqualToString:&stru_1F0FC60C8];

    if ((v7 & 1) == 0)
    {
      v8 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v4 uuidDescription];
        v10 = 138412546;
        v11 = v9;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "Capture Session: Setting session identifier of new asset %@: %@", &v10, 0x16u);
      }

      [v4 setCaptureSessionIdentifier:v6];
    }
  }
}

- (void)_setModificationDateOnAsset:(id)a3
{
  v5 = a3;
  v4 = [(PHAssetChangeRequest *)self modificationDate];
  if (v4)
  {
    [v5 setModificationDate:v4];
  }
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (![(PHAssetResourceBag *)self->_assetResourceBag didValidateForInsertion])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4461 description:@"expect prior validation"];
  }

  if (![(PHAssetResourceBag *)self->_assetResourceBag isValid])
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4462 description:@"expect validated asset resources upon asset creation"];
  }

  if ([(PHAssetResourceBag *)self->_assetResourceBag isValid])
  {
    v8 = [(PHChangeRequest *)self uuid];
    v27 = 0;
    v9 = [(PHAssetCreationRequest *)self _validateNewObjectUUID:v8 inPhotoLibrary:v7 error:&v27];
    v10 = v27;
    if (v9)
    {
      v23 = v8;
      v11 = [(PHChangeRequest *)self helper];
      v26 = 0;
      v12 = [MEMORY[0x1E69BE540] entityName];
      v25 = v10;
      v13 = [v11 getCloudGUIDIfReserved:&v26 entityName:v12 photoLibrary:v7 error:&v25];
      v14 = v26;
      v15 = v25;

      if (v13)
      {
        assetResourceBag = self->_assetResourceBag;
        v24 = v15;
        v8 = v23;
        v17 = [(PHAssetCreationRequest *)self createAssetFromValidatedResources:assetResourceBag withUUID:v23 assetAlreadyExistsAsPlaceholder:0 inPhotoLibrary:v7 error:&v24];
        v10 = v24;

        if (v17)
        {
          if (v14)
          {
            [v17 setCloudAssetGUID:v14];
          }

          [(PHAssetCreationRequest *)self _setModificationDateOnAsset:v17];
          [(PHAssetCreationRequest *)self _setCaptureSessionIdentifierOnAsset:v17];
          [(PHAssetCreationRequest *)self _tracePhotoKitAssetCreationWithUUID:v23];
          goto LABEL_23;
        }

        v19 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v10;
          _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Unable to create asset from validated resources: %@", buf, 0xCu);
        }

        if (!a4)
        {
          goto LABEL_22;
        }

LABEL_18:
        v18 = v10;
        v17 = 0;
        *a4 = v10;
LABEL_23:

        goto LABEL_24;
      }

      v10 = v15;
      v8 = v23;
      if (a4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v14 = 0;
      if (a4)
      {
        goto LABEL_18;
      }
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  if (a4)
  {
    [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"Unable to create asset from invalid resources"];
    *a4 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_24:

  return v17;
}

- (void)overrideAssetUUIDForCrashRecovery:(id)a3
{
  v5 = a3;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4454 description:{@"%@ can only be called from assetsd", v7}];
  }

  v8 = [(PHChangeRequest *)self helper];
  [v8 overrideNewObjectUUIDForCrashRecovery:v5];
}

- (BOOL)_validateNewObjectUUID:(id)a3 inPhotoLibrary:(id)a4 error:(id *)a5
{
  v41[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![(PHChangeRequest *)self isClientEntitled])
  {
    v9 = [(PHAssetCreationRequest *)self assetExistsWithSyndicationIdentifier];
    v10 = [v9 isEqualToNumber:MEMORY[0x1E695E118]];

    if ((v10 & 1) == 0)
    {
      if (![v7 length] || (*uu = 0, *&uu[8] = 0, (v12 = objc_msgSend(v7, "cStringUsingEncoding:", 4)) == 0) || uuid_parse(v12, uu))
      {
        v13 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *uu = 138543362;
          *&uu[4] = v7;
          _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "Failed to validate malformed UUID '%{public}@'", uu, 0xCu);
        }

        v14 = MEMORY[0x1E696ABC0];
        v40 = *MEMORY[0x1E696A278];
        v41[0] = @"Malformed UUID";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
        v16 = [v14 errorWithDomain:@"PHPhotosErrorDomain" code:3140 userInfo:v15];

        v11 = 0;
        goto LABEL_10;
      }

      v18 = MEMORY[0x1E69BE540];
      v38[0] = v7;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
      v20 = [v8 managedObjectContext];
      v33 = 0;
      v21 = [v18 countForAssetsWithUUIDs:v19 includePendingChanges:1 inManagedObjectContext:v20 error:&v33];
      v16 = v33;

      if (v21)
      {
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *uu = 138543618;
            *&uu[4] = v7;
            *&uu[12] = 2112;
            *&uu[14] = v16;
            _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Failed to validate UUID '%{public}@' uniqueness, fetch error %@", uu, 0x16u);
          }

          v23 = MEMORY[0x1E696ABC0];
          v36 = *MEMORY[0x1E696A278];
          v37 = @"Unable to check UUID uniqueness";
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v25 = [v23 errorWithDomain:@"PHPhotosErrorDomain" code:3140 userInfo:v24];

LABEL_28:
          v11 = 0;
          v16 = v25;
          goto LABEL_10;
        }

        v26 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];
        v27 = [v26 isEqualToString:*MEMORY[0x1E69C0470]];
        if (v21 == 1)
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        if (!v28)
        {
          v30 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *uu = 138543362;
            *&uu[4] = v7;
            _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "UUID '%{public}@' is not unique", uu, 0xCu);
          }

          v31 = MEMORY[0x1E696ABC0];
          v34 = *MEMORY[0x1E696A278];
          v35 = @"UUID is not unique";
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v25 = [v31 errorWithDomain:@"PHPhotosErrorDomain" code:3140 userInfo:v32];

          goto LABEL_28;
        }

        v29 = PLPhotoKitIngestGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *uu = 0;
          _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_DEFAULT, "Duplicate asset is a timelapse placeholder. Ignoring.", uu, 2u);
        }
      }

      v11 = 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (self->_assetResourceBag)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4357 description:@"expect single call to validate"];
  }

  v8 = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
  if (v8)
  {
    v35 = 0;
    v9 = [(PHAssetCreationRequest *)self _populateDuplicatingAssetCreationRequest:self photoLibrary:v7 error:&v35];
    v10 = v35;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [[PHAssetResourceBag alloc] initWithAssetResources:self->_assetResources assetCreationRequest:self];
  assetResourceBag = self->_assetResourceBag;
  self->_assetResourceBag = v12;

  v14 = self->_assetResourceBag;
  v34 = v10;
  v9 = [(PHAssetResourceBag *)v14 validateForInsertIntoPhotoLibrary:v7 error:&v34];
  v10 = v34;

  if (v9)
  {
    if (![(PHAssetChangeRequest *)self didChangeAdjustments]|| ([(PHAssetChangeRequest *)self contentEditingOutput], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      LOBYTE(v9) = 1;
      goto LABEL_24;
    }

    v16 = [(PHAssetChangeRequest *)self contentEditingOutput];
    v33 = v10;
    LOBYTE(v9) = [(PHAssetChangeRequest *)self validateContentEditingOutput:v16 error:&v33];
    v17 = v33;

    v10 = v17;
  }

LABEL_11:
  if (a4 && !v9)
  {
    v18 = [v10 userInfo];
    v19 = [v18 objectForKeyedSubscript:@"_PHResourceUrlsErrorKey"];

    if (!v19)
    {
      v20 = self->_assetResources;
      v21 = [v10 userInfo];
      v22 = [v21 mutableCopy];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = [MEMORY[0x1E695DF90] dictionary];
      }

      v25 = v24;

      if ([(NSMutableArray *)v20 count])
      {
        v26 = [(NSMutableArray *)v20 _pl_map:&__block_literal_global_15592];
        if ([v26 count])
        {
          [v25 setObject:v26 forKeyedSubscript:@"_PHResourceUrlsErrorKey"];
        }
      }

      v27 = MEMORY[0x1E696ABC0];
      v28 = [v10 domain];
      v29 = [v27 ph_errorWithDomain:v28 code:objc_msgSend(v10 userInfo:{"code"), v25}];

      v10 = v29;
    }

    v30 = v10;
    LOBYTE(v9) = 0;
    *a4 = v10;
  }

LABEL_24:

  return v9;
}

- (BOOL)_populateDuplicatingAssetCreationRequest:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v60[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = self->_assetResources;
  v11 = [v8 duplicateAssetIdentifier];
  v57 = 0uLL;
  v58 = 0;
  if (v8)
  {
    [v8 duplicateStillSourceTime];
  }

  v12 = [[PHPhotoLibrary alloc] initWithPLPhotoLibrary:v9 type:self->_duplicateAssetPhotoLibraryType];
  v13 = [(PHPhotoLibrary *)v12 librarySpecificFetchOptions];

  if (self->_duplicateAssetPhotoLibraryType)
  {
    if (self->_duplicateAssetPhotoLibraryType != 1)
    {
      goto LABEL_8;
    }

    v14 = 8;
  }

  else
  {
    v14 = 7;
  }

  [v13 setIncludeAssetSourceTypes:v14];
LABEL_8:
  [v13 setIncludeHiddenAssets:1];
  [v13 setIncludeAllBurstAssets:1];
  v60[0] = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
  v16 = [PHAsset fetchAssetsWithLocalIdentifiers:v15 options:v13];
  v17 = [v16 firstObject];

  if (self->_duplicateAsAlternateAsset)
  {
    v18 = [(NSMutableArray *)v10 mutableCopy];
    [(NSMutableArray *)v10 removeAllObjects];
    if (v17)
    {
      goto LABEL_10;
    }

LABEL_13:
    v19 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Cannot create a copy of missing asset"];
    goto LABEL_14;
  }

  v18 = 0;
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_10:
  if ([(NSMutableArray *)v10 count])
  {
    v19 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Cannot copy asset with added resources"];
LABEL_14:
    v20 = v19;
    v21 = 0;
    goto LABEL_15;
  }

  v47 = self;
  v48 = v18;
  v24 = [v8 duplicateSinglePhotoFromBurst];
  v25 = [v8 duplicateLivePhotoAsStill];
  if (v25)
  {
    if (([v17 isPhotoIris] & 1) == 0)
    {
      v38 = MEMORY[0x1E696ABC0];
      v39 = [v17 mediaType];
      v46 = v13;
      if ((v39 - 1) > 2)
      {
        v40 = @"unknown";
      }

      else
      {
        v40 = off_1E75A7238[v39 - 1];
      }

      v41 = v40;
      v42 = +[PHAsset descriptionForMediaSubtypes:](PHAsset, "descriptionForMediaSubtypes:", [v17 mediaSubtypes]);
      v20 = [v38 ph_errorWithCode:3300 localizedDescription:{@"Cannot create still photo from asset type %@/%@, requires live photo", v41, v42}];

      v21 = 0;
      v13 = v46;
      goto LABEL_41;
    }

    v24 = 1;
  }

  v26 = [v8 duplicateAsOriginal];
  v54 = v57;
  v55 = v58;
  v56 = 0;
  v27 = [(PHAssetCreationRequest *)v47 duplicatedAssetResourcesFromAsset:v17 stillSourceTime:&v54 flattenLivePhotoIntoStillPhoto:v25 duplicateAsOriginal:v26 duplicateWithAdjustmentsBakedIn:0 duplicatePhotoAsData:v24 error:&v56];
  v28 = v56;

  if (![(NSMutableArray *)v27 count])
  {
    v36 = [MEMORY[0x1E696ABC0] ph_genericErrorWithUnderlyingError:v28 localizedDescription:@"Failed to copy asset resources"];

    v21 = 0;
    v37 = v36;
    v10 = v27;
    v20 = v37;
LABEL_41:
    v18 = v48;
    goto LABEL_15;
  }

  v45 = v28;
  if ([v18 count])
  {
    v43 = v11;
    v44 = v8;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = v18;
    v30 = [v29 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v51;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v51 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v50 + 1) + 8 * i);
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __86__PHAssetCreationRequest__populateDuplicatingAssetCreationRequest_photoLibrary_error___block_invoke;
          v49[3] = &unk_1E75A5F88;
          v49[4] = v34;
          v35 = [(NSMutableArray *)v27 indexOfObjectPassingTest:v49];
          if (v35 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableArray *)v27 addObject:v34];
          }

          else
          {
            [(NSMutableArray *)v27 replaceObjectAtIndex:v35 withObject:v34];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v31);
    }

    v8 = v44;
    v11 = v43;
  }

  objc_storeStrong(&v47->_assetResources, v27);
  [(PHAssetCreationRequest *)v47 _updateMutationsForDuplicatingPrivateMetadataFromAsset:v17];
  v21 = 1;
  v10 = v27;
  v18 = v48;
  v20 = v45;
LABEL_15:
  if (a5 && v20)
  {
    v22 = v20;
    *a5 = v20;
  }

  return v21;
}

- (void)_updateMutationsForDuplicatingPrivateMetadataFromAsset:(id)a3
{
  v5 = [a3 descriptionProperties];
  v4 = [v5 assetDescription];
  if (v4)
  {
    [(PHAssetCreationRequest *)self _setDuplicateAllowsPrivateMetadata:1];
    [(PHAssetChangeRequest *)self setAssetDescription:v4];
  }
}

- (id)duplicatedAssetResourcesFromAsset:(id)a3 stillSourceTime:(id *)a4 flattenLivePhotoIntoStillPhoto:(BOOL)a5 duplicateAsOriginal:(BOOL)a6 duplicateWithAdjustmentsBakedIn:(BOOL)a7 duplicatePhotoAsData:(BOOL)a8 error:(id *)a9
{
  v94[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v56 = [PHAssetResource assetResourcesForAsset:v15 includeDerivatives:0 includeMetadata:0 includeAdjustmentOverflowDataBlob:1];
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__15607;
  v89 = __Block_byref_object_dispose__15608;
  v90 = [MEMORY[0x1E695DF70] array];
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0x7FFFFFFFFFFFFFFFLL;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__15607;
  v79 = __Block_byref_object_dispose__15608;
  v80 = 0;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __186__PHAssetCreationRequest_duplicatedAssetResourcesFromAsset_stillSourceTime_flattenLivePhotoIntoStillPhoto_duplicateAsOriginal_duplicateWithAdjustmentsBakedIn_duplicatePhotoAsData_error___block_invoke;
  v64[3] = &unk_1E75A5F38;
  v16 = *&a4->var0;
  var3 = a4->var3;
  v69 = v16;
  v71 = a7;
  v72 = a5;
  v73 = a6;
  v74 = a8;
  v66 = &v81;
  v64[4] = self;
  v17 = v15;
  v65 = v17;
  v67 = &v85;
  v68 = &v75;
  [v56 enumerateObjectsUsingBlock:v64];
  if (a9)
  {
    v18 = v76[5];
    if (v18)
    {
      *a9 = v18;
    }
  }

  if (a4->var2)
  {
    if (([v17 isPhotoIris] & 1) == 0)
    {
      v45 = [MEMORY[0x1E696AAA8] currentHandler];
      [v45 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4190 description:@"Can't extract a still image from the video complement when duplicating a non-iris asset"];
    }

    if (v82[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v46 = [MEMORY[0x1E696AAA8] currentHandler];
      [v46 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4191 description:@"Can't extract a still image without a video complement"];
    }

    v19 = [v56 objectAtIndexedSubscript:?];
    v20 = [v19 privateFileURL];
    v50 = v19;
    v51 = [MEMORY[0x1E6987E28] assetWithURL:v20];
    v21 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:?];
    v58 = *MEMORY[0x1E6960CC0];
    *v52 = v58;
    v59 = *(MEMORY[0x1E6960CC0] + 16);
    v22 = v59;
    [v21 setRequestedTimeToleranceBefore:&v58];
    v58 = *v52;
    v59 = v22;
    [v21 setRequestedTimeToleranceAfter:&v58];
    [v21 setAppliesPreferredTrackTransform:1];
    v63 = 0;
    v58 = *&a4->var0;
    v59 = a4->var3;
    v23 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:v21 atTime:&v58 actualTime:0 error:&v63];
    v53 = v63;
    if (v23)
    {
      v24 = [v20 path];
      v25 = PFVideoComplementMetadataForVideoAtPath();

      v93 = *MEMORY[0x1E696DE30];
      v91 = *MEMORY[0x1E69867A8];
      v26 = [v25 pairingIdentifier];
      v92 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      v94[0] = v27;
      properties = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:&v93 count:1];

      v28 = [MEMORY[0x1E695DF88] data];
      v29 = [*MEMORY[0x1E6982E58] identifier];
      v30 = CGImageDestinationCreateWithData(v28, v29, 1uLL, 0);

      CGImageDestinationAddImage(v30, v23, properties);
      CGImageDestinationFinalize(v30);
      v31 = [[PHExternalAssetResource alloc] initWithResourceType:1];
      [(PHExternalAssetResource *)v31 setPixelWidth:CGImageGetWidth(v23)];
      [(PHExternalAssetResource *)v31 setPixelHeight:CGImageGetHeight(v23)];
      [(PHExternalAssetResource *)v31 setData:v28];
      [v86[5] addObject:v31];
      CGImageRelease(v23);
      CFRelease(v30);
      if (!a5)
      {
        v32 = dispatch_group_create();
        v33 = objc_alloc(MEMORY[0x1E69C0638]);
        v58 = *&a4->var0;
        v59 = a4->var3;
        v48 = [v33 initWithAsset:v51 stillImageTime:&v58];
        v34 = [MEMORY[0x1E696AFB0] UUID];
        v35 = [v34 UUIDString];
        v55 = [v35 stringByAppendingPathExtension:@"mov"];

        v36 = NSTemporaryDirectory();
        v47 = [v36 stringByAppendingPathComponent:v55];

        v37 = [MEMORY[0x1E695DFF8] fileURLWithPath:v47];
        dispatch_group_enter(v32);
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __186__PHAssetCreationRequest_duplicatedAssetResourcesFromAsset_stillSourceTime_flattenLivePhotoIntoStillPhoto_duplicateAsOriginal_duplicateWithAdjustmentsBakedIn_duplicatePhotoAsData_error___block_invoke_2;
        v61[3] = &unk_1E75A89F8;
        v38 = v32;
        v62 = v38;
        [v48 writeToURL:v37 progress:0 completion:v61];
        dispatch_group_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
        *&v58 = 0;
        *(&v58 + 1) = &v58;
        v59 = 0x2020000000;
        v60 = 0x7FFFFFFFFFFFFFFFLL;
        v39 = v86[5];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __186__PHAssetCreationRequest_duplicatedAssetResourcesFromAsset_stillSourceTime_flattenLivePhotoIntoStillPhoto_duplicateAsOriginal_duplicateWithAdjustmentsBakedIn_duplicatePhotoAsData_error___block_invoke_3;
        v57[3] = &unk_1E75A5F60;
        v57[4] = &v58;
        [v39 enumerateObjectsUsingBlock:v57];
        if (*(*(&v58 + 1) + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v42 = v86[5];
          v86[5] = 0;
        }

        else
        {
          v42 = [[PHExternalAssetResource alloc] initWithResourceType:9];
          [(PHExternalAssetResource *)v42 setFileURL:v37];
          [v86[5] replaceObjectAtIndex:*(*(&v58 + 1) + 24) withObject:v42];
        }

        _Block_object_dispose(&v58, 8);
      }
    }

    else
    {
      v40 = v86[5];
      v86[5] = 0;

      if (a9)
      {
        v41 = v53;
        *a9 = v53;
      }
    }
  }

  v43 = v86[5];

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v85, 8);

  return v43;
}

void __186__PHAssetCreationRequest_duplicatedAssetResourcesFromAsset_stillSourceTime_flattenLivePhotoIntoStillPhoto_duplicateAsOriginal_duplicateWithAdjustmentsBakedIn_duplicatePhotoAsData_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 type];
  if (v8 <= 12)
  {
    if (v8 > 6)
    {
      if ((v8 - 7) >= 2)
      {
        if ((v8 - 10) < 2)
        {
          if (*(a1 + 97))
          {
            goto LABEL_35;
          }

          goto LABEL_13;
        }

        if (v8 == 9)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      }

      goto LABEL_10;
    }

    if ((v8 - 5) < 2)
    {
LABEL_13:
      if (*(a1 + 98))
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v8 != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if ((v8 - 106) <= 9)
  {
    if (((1 << (v8 - 106)) & 0x309) != 0)
    {
      goto LABEL_35;
    }

    if (v8 == 108)
    {
LABEL_10:
      if (*(a1 + 98))
      {
        goto LABEL_35;
      }

LABEL_23:
      if (*(a1 + 96))
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }
  }

  if (v8 == 15)
  {
LABEL_22:
    *(*(*(a1 + 48) + 8) + 24) = a3;
    if (*(a1 + 97))
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  if (v8 == 13)
  {
LABEL_19:
    if (*(a1 + 84))
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

LABEL_24:
  v9 = *(a1 + 99) == 1 && [v7 type] == 1;
  if (*(a1 + 96))
  {
    v10 = [objc_opt_class() _originalResourceTypeFromAdjustedResourceType:objc_msgSend(v7 sourceAssetIsLoopingVideo:"type") sourceAssetIsVideo:{objc_msgSend(*(a1 + 40), "isLoopingVideo"), objc_msgSend(*(a1 + 40), "isVideo")}];
    if (!v10)
    {
      goto LABEL_35;
    }

    v20 = 0;
    v11 = &v20;
    v12 = [PHExternalAssetResource assetResourceForDuplicatingAssetResource:v7 newResourceType:v10 asData:v9 error:&v20];
  }

  else
  {
    v21 = 0;
    v11 = &v21;
    v12 = [PHExternalAssetResource assetResourceForDuplicatingAssetResource:v7 asData:v9 error:&v21];
  }

  v13 = v12;
  v14 = *v11;
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  if (v13)
  {
    [v16 addObject:v13];
  }

  else
  {
    *(v15 + 40) = 0;

    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v14;
    v19 = v14;

    *a4 = 1;
  }

LABEL_35:
}

uint64_t __186__PHAssetCreationRequest_duplicatedAssetResourcesFromAsset_stillSourceTime_flattenLivePhotoIntoStillPhoto_duplicateAsOriginal_duplicateWithAdjustmentsBakedIn_duplicatePhotoAsData_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 type];
  if (result == 9)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)encodeToXPCDict:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = PHAssetCreationRequest;
  [(PHAssetChangeRequest *)&v44 encodeToXPCDict:v4];
  if (self->_assetResources)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v37 = [MEMORY[0x1E695DF90] dictionary];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = self;
    v6 = self->_assetResources;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v41;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v40 + 1) + 8 * i);
          v12 = [v11 propertyListRepresentation];
          [v5 addObject:v12];

          v13 = [v11 fileURL];

          if (v13)
          {
            v14 = [v11 fileURL];
            v15 = [v14 path];

            v16 = [v11 creationOptions];
            [v16 shouldMoveFile];

            v17 = PLGetSandboxExtensionToken();
            [v37 setObject:v17 forKeyedSubscript:v15];
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v8);
    }

    PLXPCDictionarySetArray();
    PLXPCDictionarySetDictionary();

    self = v36;
  }

  if (self->_duplicateAssetIdentifier)
  {
    PLXPCDictionarySetString();
    xpc_dictionary_set_BOOL(v4, "duplicateLivePhotoAsStill", self->_duplicateLivePhotoAsStill);
  }

  xpc_dictionary_set_int64(v4, "duplicateAssetPhotoLibraryType", self->_duplicateAssetPhotoLibraryType);
  xpc_dictionary_set_BOOL(v4, "duplicateAsOriginal", self->_duplicateAsOriginal);
  xpc_dictionary_set_BOOL(v4, "duplicateAsAlternateAsset", self->_duplicateAsAlternateAsset);
  xpc_dictionary_set_BOOL(v4, "createAsCompanionSyncedAsset", self->_createAsCompanionSyncedAsset);
  xpc_dictionary_set_int64(v4, "bundleScope", self->_bundleScope);
  if ([(PHAssetCreationRequest *)self _shouldCreateScreenshot])
  {
    xpc_dictionary_set_BOOL(v4, "createScreenshot", 1);
  }

  if ([(PHAssetCreationRequest *)self _shouldUseAutomaticallyGeneratedOriginalFilename])
  {
    xpc_dictionary_set_BOOL(v4, "useAutomaticallyGeneratedOriginalFilename", 1);
  }

  if (self->_duplicateStillSourceTime.flags)
  {
    time = self->_duplicateStillSourceTime;
    v18 = CMTimeCopyAsDictionary(&time, 0);
    PLXPCDictionarySetDictionary();
  }

  if (self->_momentShare)
  {
    v19 = [(PHAssetCreationRequest *)self _mutableMomentShareObjectIDsAndUUIDs];
    [v19 removeAllObjects];

    v20 = [(PHAssetCreationRequest *)self _mutableMomentShareObjectIDsAndUUIDs];
    v21 = PLObjectIDOrUUIDFromPHObject(self->_momentShare);
    [v20 addObject:v21];

    v22 = [(PHAssetCreationRequest *)self momentShareHelper];
    [v22 encodeToXPCDict:v4];

    PLXPCDictionarySetString();
  }

  if (self->_collectionShare)
  {
    PLXPCDictionarySetString();
  }

  if (self->_importSessionID)
  {
    PLXPCDictionarySetString();
  }

  if (self->_conversationID)
  {
    PLXPCDictionarySetString();
  }

  importedBy = self->_importedBy;
  if (importedBy)
  {
    xpc_dictionary_set_int64(v4, "importedBy", importedBy);
  }

  if (self->_duplicateSinglePhotoFromBurst)
  {
    xpc_dictionary_set_BOOL(v4, "duplicateSinglePhotoFromBurst", 1);
  }

  if (self->_adjustmentBakeInOptions)
  {
    v24 = [(PHAssetCreationRequest *)self adjustmentBakeInOptions];
    [v24 encodeToXPCDict:v4];
  }

  if (self->_metadataCopyOptions)
  {
    v25 = [(PHAssetCreationRequest *)self metadataCopyOptions];
    [v25 encodeToXPCDict:v4];
  }

  if (self->_cameraIngestOptions)
  {
    v26 = [(PHAssetCreationRequest *)self cameraIngestOptions];
    [v26 encodeToXPCDict:v4];
  }

  if (self->_importedByBundleIdentifier)
  {
    PLXPCDictionarySetString();
  }

  if (self->_syndicationIdentifier)
  {
    PLXPCDictionarySetString();
  }

  if (self->_customAssetProperties)
  {
    PLXPCDictionarySetDictionary();
  }

  assetExistsWithSyndicationIdentifier = self->_assetExistsWithSyndicationIdentifier;
  if (assetExistsWithSyndicationIdentifier)
  {
    xpc_dictionary_set_BOOL(v4, "assetExistsWithSyndicationIdentifier", [(NSNumber *)assetExistsWithSyndicationIdentifier BOOLValue]);
    if ([(NSNumber *)self->_assetExistsWithSyndicationIdentifier BOOLValue])
    {
      xpc_dictionary_set_BOOL(v4, "assetExistingWithSyndicationIdentifierIsTrashed", self->_assetExistingWithSyndicationIdentifierIsTrashed);
    }
  }

  if (self->_resourceHoldingDirectoryPath)
  {
    PLXPCDictionarySetString();
    resourceHoldingDirectoryPath = self->_resourceHoldingDirectoryPath;
    if (resourceHoldingDirectoryPath)
    {
      v29 = [@"XPCDict" stringByAppendingPathExtension:@"plist"];
      v30 = [(NSString *)resourceHoldingDirectoryPath stringByAppendingPathComponent:v29];

      v39 = 0;
      v31 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v39];
      v32 = v39;
      if (v31)
      {
        v38 = 0;
        v33 = [v31 writeToFile:v30 options:1073741825 error:&v38];
        v34 = v38;
        if ((v33 & 1) == 0)
        {
          v35 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            LODWORD(time.value) = 138412546;
            *(&time.value + 4) = v30;
            LOWORD(time.flags) = 2112;
            *(&time.flags + 2) = v34;
            _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_ERROR, "Unable to write out XPC dict to holding path %@: %@", &time, 0x16u);
          }
        }
      }
    }
  }

  if (self->_reduceProcessingForIngest)
  {
    xpc_dictionary_set_BOOL(v4, "reduceProcessingForIngest", 1);
  }
}

- (PHAssetCreationRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v72 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v70.receiver = self;
  v70.super_class = PHAssetCreationRequest;
  v10 = [(PHAssetChangeRequest *)&v70 initWithXPCDict:v8 request:v9 clientAuthorization:a5];
  if (v10)
  {
    v62 = v9;
    v11 = PLArrayFromXPCDictionary();
    PLDictionaryFromXPCDictionary();
    v64 = v63 = v11;
    if (v11)
    {
      v60 = v10;
      v61 = v8;
      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v66 objects:v71 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v67;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v67 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [[PHExternalAssetResource alloc] initWithPropertyListRepresentation:*(*(&v66 + 1) + 8 * i)];
            v19 = [(PHExternalAssetResource *)v18 fileURL];
            v20 = [v19 path];
            v21 = [v64 objectForKeyedSubscript:v20];

            if (v21)
            {
              v22 = objc_alloc(MEMORY[0x1E69BF2E8]);
              v23 = [(PHExternalAssetResource *)v18 fileURL];
              v24 = [v22 initWithURL:v23 sandboxExtensionToken:v21 consume:1];

              [(PHExternalAssetResource *)v18 setFileURL:v24];
            }

            [(NSMutableArray *)v12 addObject:v18, v60];
          }

          v15 = [v13 countByEnumeratingWithState:&v66 objects:v71 count:16];
        }

        while (v15);
      }

      v10 = v60;
      assetResources = v60->_assetResources;
      v60->_assetResources = v12;

      v8 = v61;
    }

    v26 = PLStringFromXPCDictionary();
    if (v26)
    {
      objc_storeStrong(&v10->_duplicateAssetIdentifier, v26);
      v10->_duplicateLivePhotoAsStill = xpc_dictionary_get_BOOL(v8, "duplicateLivePhotoAsStill");
    }

    v10->_duplicateAssetPhotoLibraryType = xpc_dictionary_get_int64(v8, "duplicateAssetPhotoLibraryType");
    v27 = PLDictionaryFromXPCDictionary();
    CMTimeMakeFromDictionary(&v65, v27);
    v28 = *&v65.value;
    v10->_duplicateStillSourceTime.epoch = v65.epoch;
    *&v10->_duplicateStillSourceTime.value = v28;
    v10->_duplicateAsOriginal = xpc_dictionary_get_BOOL(v8, "duplicateAsOriginal");
    v10->_duplicateAsAlternateAsset = xpc_dictionary_get_BOOL(v8, "duplicateAsAlternateAsset");
    v10->_createAsCompanionSyncedAsset = xpc_dictionary_get_BOOL(v8, "createAsCompanionSyncedAsset");
    v10->_bundleScope = xpc_dictionary_get_int64(v8, "bundleScope");
    if (xpc_dictionary_get_BOOL(v8, "createScreenshot"))
    {
      [(PHAssetCreationRequest *)v10 _setShouldCreateScreenshot:1];
    }

    v9 = v62;
    if (xpc_dictionary_get_BOOL(v8, "useAutomaticallyGeneratedOriginalFilename"))
    {
      [(PHAssetCreationRequest *)v10 _setShouldUseAutomaticallyGeneratedOriginalFilename:1];
    }

    [v62 recordInsertRequest:{v10, v60}];
    v29 = [PHRelationshipChangeRequestHelper alloc];
    v30 = [(PHChangeRequest *)v10 helper];
    v31 = [(PHRelationshipChangeRequestHelper *)v29 initWithRelationshipName:@"momentShare" xpcDict:v8 changeRequestHelper:v30];
    momentShareHelper = v10->_momentShareHelper;
    v10->_momentShareHelper = v31;

    v33 = PLStringFromXPCDictionary();
    if (v33)
    {
      objc_storeStrong(&v10->_momentShareUUID, v33);
    }

    v34 = PLStringFromXPCDictionary();
    if (v34)
    {
      objc_storeStrong(&v10->_collectionShareUUID, v34);
    }

    v35 = PLStringFromXPCDictionary();
    importSessionID = v10->_importSessionID;
    v10->_importSessionID = v35;

    v37 = PLStringFromXPCDictionary();
    conversationID = v10->_conversationID;
    v10->_conversationID = v37;

    int64 = xpc_dictionary_get_int64(v8, "importedBy");
    v10->_importedBy = int64;
    [(PHChangeRequest *)v10 setShouldPerformConcurrentWork:int64 == 5];
    v10->_duplicateSinglePhotoFromBurst = xpc_dictionary_get_BOOL(v8, "duplicateSinglePhotoFromBurst");
    v40 = [[PHAssetCreationAdjustmentBakeInOptions alloc] initWithXPCDict:v8];
    adjustmentBakeInOptions = v10->_adjustmentBakeInOptions;
    v10->_adjustmentBakeInOptions = v40;

    v42 = [[PHAssetCreationMetadataCopyOptions alloc] initWithXPCDict:v8];
    metadataCopyOptions = v10->_metadataCopyOptions;
    v10->_metadataCopyOptions = v42;

    v44 = [PHAssetCreationCameraIngestOptions optionsFromXPCDict:v8];
    cameraIngestOptions = v10->_cameraIngestOptions;
    v10->_cameraIngestOptions = v44;

    v46 = PLStringFromXPCDictionary();
    importedByBundleIdentifier = v10->_importedByBundleIdentifier;
    v10->_importedByBundleIdentifier = v46;

    v48 = PLStringFromXPCDictionary();
    syndicationIdentifier = v10->_syndicationIdentifier;
    v10->_syndicationIdentifier = v48;

    v50 = PLDictionaryFromXPCDictionary();
    customAssetProperties = v10->_customAssetProperties;
    v10->_customAssetProperties = v50;

    v52 = xpc_dictionary_get_value(v8, "assetExistsWithSyndicationIdentifier");
    v53 = v52;
    if (v52)
    {
      value = xpc_BOOL_get_value(v52);
      v55 = [MEMORY[0x1E696AD98] numberWithBool:value];
      assetExistsWithSyndicationIdentifier = v10->_assetExistsWithSyndicationIdentifier;
      v10->_assetExistsWithSyndicationIdentifier = v55;

      if (value)
      {
        v10->_assetExistingWithSyndicationIdentifierIsTrashed = xpc_dictionary_get_BOOL(v8, "assetExistingWithSyndicationIdentifierIsTrashed");
      }
    }

    v57 = PLStringFromXPCDictionary();
    resourceHoldingDirectoryPath = v10->_resourceHoldingDirectoryPath;
    v10->_resourceHoldingDirectoryPath = v57;

    v10->_reduceProcessingForIngest = xpc_dictionary_get_BOOL(v8, "reduceProcessingForIngest");
  }

  return v10;
}

- (void)setCustomAssetProperties:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  customAssetProperties = self->_customAssetProperties;
  self->_customAssetProperties = v4;
}

- (void)setImportedByBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v6 = [v4 copy];
  importedByBundleIdentifier = self->_importedByBundleIdentifier;
  self->_importedByBundleIdentifier = v6;
}

- (void)setConversationID:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  conversationID = self->_conversationID;
  self->_conversationID = v4;
}

- (void)setImportSessionID:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  importSessionID = self->_importSessionID;
  self->_importSessionID = v4;
}

- (void)setImportedBy:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  self->_importedBy = a3;
}

- (int64_t)_mediaTypeForCreatedAsset
{
  v6 = 0;
  v3 = [(NSMutableArray *)self->_assetResources valueForKey:@"type"];
  [PHAssetResourceBag supportsAssetResourceTypes:v3 mediaType:&v6 importedBy:[(PHAssetCreationRequest *)self importedBy]];
  v4 = v6;

  return v4;
}

- (id)placeholderForCreatedAsset
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  [v4 setAssetMediaType:{-[PHAssetCreationRequest _mediaTypeForCreatedAsset](self, "_mediaTypeForCreatedAsset")}];

  return v4;
}

- (void)_addResourceWithType:(int64_t)a3 data:(id)a4 orFileURL:(id)a5 options:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = [[PHExternalAssetResource alloc] initWithResourceType:a3];
  [(PHExternalAssetResource *)v13 setData:v12];

  if (!self->_useRecoverableStagingDirectory || ([(PHAssetCreationRequest *)self _resolveResourceHoldingDirectoryPath], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    [(PHExternalAssetResource *)v13 setFileURL:v10];
    goto LABEL_21;
  }

  resourceHoldingDirectoryPath = self->_resourceHoldingDirectoryPath;
  v16 = [v10 lastPathComponent];
  v17 = [(NSString *)resourceHoldingDirectoryPath stringByAppendingPathComponent:v16];

  v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v17];
  v19 = [v10 path];

  if (v19)
  {
    if ([(PHAssetResourceCreationOptions *)v11 shouldMoveFile])
    {
      v20 = [(PHChangeRequest *)self photoLibrary];
      v21 = [v20 pathManager];
      v22 = [v21 capabilities];
      v32 = 0;
      v30 = v18;
      v23 = [(PHAssetCreationRequest *)self _secureMove:1 fileAtURL:v10 toURL:v18 capabilities:v22 error:&v32];
      v24 = v32;

      if (v23)
      {
        v25 = 0;
        v18 = v30;
LABEL_17:
        [(PHExternalAssetResource *)v13 setFileURL:v18];

        goto LABEL_18;
      }

      v29 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v34 = v17;
        v35 = 2112;
        v36 = v24;
        _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_ERROR, "Unable to secure move resource to holding directory location %@: %@", buf, 0x16u);
      }

      v25 = 0;
      v18 = v30;
    }

    else
    {
      v26 = v18;
      v27 = MEMORY[0x1E69BF238];
      v28 = [v10 path];
      v31 = 0;
      LOBYTE(v27) = [v27 cloneFileAtPath:v28 toPath:v17 error:&v31];
      v25 = v31;

      if (v27)
      {
        v24 = 0;
        v18 = v26;
        goto LABEL_17;
      }

      v29 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v34 = v17;
        v35 = 2112;
        v36 = v25;
        _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_ERROR, "Unable to clone resource to holding directory location %@: %@", buf, 0x16u);
      }

      v24 = 0;
      v18 = v26;
    }

    goto LABEL_17;
  }

LABEL_18:
  if (!v11)
  {
    v11 = objc_alloc_init(PHAssetResourceCreationOptions);
  }

  [(PHAssetResourceCreationOptions *)v11 setShouldMoveFile:1];

LABEL_21:
  [(PHExternalAssetResource *)v13 setCreationOptions:v11];
  [(NSMutableArray *)self->_assetResources addObject:v13];
}

- (id)_resolveResourceHoldingDirectoryPath
{
  v30 = *MEMORY[0x1E69E9840];
  if ((PLIsAssetsd() & 1) == 0 && !self->_resourceHoldingDirectoryPath)
  {
    v3 = [(PHChangeRequest *)self photoLibrary];
    v23 = 0;
    v4 = [v3 requestSandboxExtensionsIfNeededWithError:&v23];
    v5 = v23;

    if (!v4)
    {
      v9 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v5;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Error resolving resource holding directory path: %@", buf, 0xCu);
      }

      goto LABEL_17;
    }

    v6 = [(PHChangeRequest *)self photoLibrary];
    v7 = [v6 pathManager];
    v8 = [(PHChangeRequest *)self uuid];
    v9 = [v7 assetCreationHoldingDirectoryForAssetUUID:v8];

    if (v9)
    {
      v22 = 0;
      v10 = [MEMORY[0x1E69BF238] createDirectoryAtPath:v9 error:&v22];
      v11 = v22;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
    }

    if (![MEMORY[0x1E69BF238] isFileExistsError:v11])
    {
      v12 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [(PHChangeRequest *)self uuid];
        resourceHoldingDirectoryPath = self->_resourceHoldingDirectoryPath;
        *buf = 138543874;
        v25 = v13;
        v26 = 2112;
        v27 = resourceHoldingDirectoryPath;
        v28 = 2112;
        v29 = v11;
        v15 = "Unable to create resource holding directory for %{public}@ at %@: %@";
        v16 = v12;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 32;
        goto LABEL_15;
      }

LABEL_16:

LABEL_17:
      goto LABEL_18;
    }

LABEL_11:
    objc_storeStrong(&self->_resourceHoldingDirectoryPath, v9);
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(PHChangeRequest *)self uuid];
      v14 = self->_resourceHoldingDirectoryPath;
      *buf = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v15 = "PHAssetCreationRequest resolved resourceHoldingDirectoryPath for %{public}@: %@";
      v16 = v12;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 22;
LABEL_15:
      _os_log_impl(&dword_19C86F000, v16, v17, v15, buf, v18);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_18:
  v20 = self->_resourceHoldingDirectoryPath;

  return v20;
}

- (PHAssetCreationRequest)initWithHelper:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PHAssetCreationRequest;
  v5 = [(PHAssetChangeRequest *)&v11 initWithHelper:v4];
  if (v5)
  {
    [v4 setNewRequest:1];
    v6 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"momentShare" changeRequestHelper:v4];
    momentShareHelper = v5->_momentShareHelper;
    v5->_momentShareHelper = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetResources = v5->_assetResources;
    v5->_assetResources = v8;

    v5->_duplicateAssetPhotoLibraryType = 0;
    v5->_importedBy = 0;
    v5->_bundleScope = 0;
  }

  return v5;
}

- (id)initForNewObjectWithUUID:(id)a3
{
  v4 = a3;
  v5 = [[PHChangeRequestHelper alloc] initForNewObjectWithUUID:v4 changeRequest:self];

  v6 = [(PHAssetCreationRequest *)self initWithHelper:v5];
  return v6;
}

- (id)urlsForResources:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) fileURL];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_createAssetFromValidatedResources:(id)a3 withUUID:(id)a4 assetAlreadyExistsAsPlaceholder:(BOOL)a5 inPhotoLibrary:(id)a6 error:(id *)a7
{
  v9 = a5;
  v469[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v417 = a6;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v370 = [MEMORY[0x1E696AAA8] currentHandler];
    v371 = NSStringFromSelector(a2);
    [v370 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:3027 description:{@"%@ can only be called from assetsd", v371}];
  }

  v15 = [(PHAssetCreationRequest *)self syndicationIdentifier];

  if (!v15)
  {
    goto LABEL_18;
  }

  LOBYTE(v434[0]) = 0;
  v16 = [(PHAssetCreationRequest *)self assetExistsWithSyndicationIdentifier];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    v18 = [(PHChangeRequest *)self helper];
    v19 = [v18 uuid];

    LOBYTE(v434[0]) = [(PHAssetCreationRequest *)self assetExistingWithSyndicationIdentifierIsTrashed];
    v20 = PLSyndicationGetLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v21 = [(PHAssetCreationRequest *)self syndicationIdentifier];
    *buf = 138543618;
    *&buf[4] = v21;
    *&buf[12] = 2114;
    *&buf[14] = v19;
    v22 = "assetExistsWithSyndicationIdentifier=YES (%{public}@), helper provided uuid %{public}@";
  }

  else
  {
    v23 = [(PHAssetCreationRequest *)self assetExistsWithSyndicationIdentifier];

    if (v23)
    {
      goto LABEL_18;
    }

    v24 = [(PHAssetCreationRequest *)self syndicationIdentifier];
    v19 = [PHAssetCreationRequest _uuidForAssetWithSyndicationIdentifier:v24 inLibrary:v417 isTrashed:v434];

    v20 = PLSyndicationGetLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v21 = [(PHAssetCreationRequest *)self syndicationIdentifier];
    *buf = 138543618;
    *&buf[4] = v21;
    *&buf[12] = 2114;
    *&buf[14] = v19;
    v22 = "Check for existing asset with syndication identifier %{public}@ returned uuid %{public}@";
  }

  _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_INFO, v22, buf, 0x16u);

LABEL_11:
  if (v19)
  {
    v25 = [MEMORY[0x1E69BE540] assetWithUUID:v19 inLibrary:v417];
    if (LOBYTE(v434[0]) == 1 && ![(PHAssetCreationRequest *)self _unTrashAndResetAsset:v25])
    {
    }

    else if (v25)
    {
      [v25 syndicatedAssetDidSaveToUserLibrary];
      goto LABEL_363;
    }
  }

LABEL_18:
  v410 = v9;
  v386 = a2;
  v26 = MEMORY[0x1E69BF2D0];
  v27 = [MEMORY[0x1E695DFB0] null];
  v19 = [v26 successWithResult:v27];

  v404 = v13;
  v28 = v13;
  v412 = [v28 mediaType];
  v396 = [v28 mediaSubtype];
  v29 = [v28 primaryResource];
  v30 = [(PHChangeRequest *)self helper];
  v31 = [v30 clientAuthorization];
  v408 = [v31 isCameraClient];

  v32 = [(PHChangeRequest *)self helper];
  v33 = [v32 clientAuthorization];
  v34 = [v33 trustedCallerBundleID];
  v388 = [v34 isEqualToString:@"com.apple.nebulad"];

  v406 = [v28 validatedDataForAssetResource:v29];
  v35 = [v28 validatedURLForAssetResource:v29];
  v36 = [v29 creationOptions];
  [v36 ensureOptionsAreCompleteForURL:v35];

  v416 = v29;
  v37 = [v29 creationOptions];
  v38 = [v37 forcePairingIdentifier];
  forcePairingIdentifier = self->_forcePairingIdentifier;
  self->_forcePairingIdentifier = v38;

  if (self->_forcePairingIdentifier)
  {
    v40 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = self->_forcePairingIdentifier;
      *buf = 138412290;
      *&buf[4] = v41;
      _os_log_impl(&dword_19C86F000, v40, OS_LOG_TYPE_DEFAULT, "forcing pairing identifier %@", buf, 0xCu);
    }
  }

  v409 = v14;
  v42 = MEMORY[0x1E69C08F0];
  v43 = [v35 pathExtension];
  v44 = [v42 typeWithFilenameExtension:v43];

  v447 = xmmword_19CB295E0;
  v45 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions cameraMetadataPath];

  if (v45)
  {
    v46 = objc_alloc(MEMORY[0x1E69BE4B0]);
    v47 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions cameraMetadataPath];
    v48 = [v46 initWithCameraMetadataPath:v47];

    [v48 deserializeCameraMetadata];
    v407 = v48;
    if ([v44 conformsToType:*MEMORY[0x1E6982F88]])
    {
      v398 = 0;
    }

    else
    {
      v49 = MEMORY[0x1E69C0868];
      v50 = [v48 cameraMetadata];
      *&v447 = [v49 semanticEnhanceSceneForCameraMetadata:v50];
      *(&v447 + 1) = v51;

      v398 = [MEMORY[0x1E69BE498] semanticEnhanceSceneIsValid:v447];
    }
  }

  else
  {
    v407 = 0;
    v398 = 0;
  }

  v403 = v44;
  if (![v44 conformsToType:*MEMORY[0x1E6982F10]] || self->_duplicateAssetPhotoLibraryType == 1)
  {
    v446 = 0;
    HasInternalDiagnostics = PFOSVariantHasInternalDiagnostics();
    v52 = PLBackendGetLog();
    v53 = os_signpost_id_make_with_pointer(v52, self);
    v405 = v28;
    v395 = v35;
    v415 = v52;
    v392 = a7;
    spid = v53;
    if (!v416)
    {
      v66 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];
      v67 = [v66 isEqualToString:*MEMORY[0x1E69C0480]];

      if (v67)
      {
        a7 = [(PHAssetCreationRequest *)self _createTimelapsePlaceholderAssetWithUUID:v14 InPhotoLibrary:v417];
        v68 = v52;
        if (!a7)
        {
          v83 = MEMORY[0x1E69BF2D0];
          v84 = MEMORY[0x1E696ABC0];
          v453 = *MEMORY[0x1E696A278];
          v390 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create a timelapse video from video preview image for uuid (%@)", v14];
          v454 = v390;
          v69 = 1;
          v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v454 forKeys:&v453 count:1];
          v86 = v84;
          v87 = v85;
          v394 = [v86 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v85];
          v88 = [v83 failureWithError:?];

          v413 = 0;
          v414 = 0;
          v402 = 0;
          v411 = 0;
          v19 = v88;
          goto LABEL_181;
        }

        v413 = 0;
        v414 = 0;
        v402 = 0;
        v411 = 0;
        v69 = 1;
      }

      else
      {
        v413 = 0;
        v414 = 0;
        v402 = 0;
        v411 = 0;
        a7 = 0;
        v69 = 1;
        v68 = v52;
      }

LABEL_182:
      if ([v19 isSuccess] && v412 == 1 && v396 == 8)
      {
        v433 = 0;
        v202 = [(PHAssetCreationRequest *)self _createAssetAsPhotoIris:a7 fromValidatedResources:v28 mainFileMetadata:v413 error:&v433];
        v203 = v433;
        if (!v202)
        {
          v204 = MEMORY[0x1E69BF2D0];
          v205 = MEMORY[0x1E696ABC0];
          v451 = *MEMORY[0x1E696A278];
          v452 = @"Failed to create LivePhoto resource";
          v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v452 forKeys:&v451 count:1];
          v207 = [v205 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v206];
          v208 = [v204 failureWithError:v207];

          v68 = v415;
          v28 = v405;
          v19 = v208;
        }
      }

      if ([v19 isSuccess] && -[PHAssetCreationRequest _shouldCreateScreenshot](self, "_shouldCreateScreenshot") && objc_msgSend(a7, "kindSubtype") != 10)
      {
        v209 = MEMORY[0x1E69BF2D0];
        v210 = MEMORY[0x1E696ABC0];
        v449 = *MEMORY[0x1E696A278];
        v450 = @"Unable to create screenshot asset from available resources";
        v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v450 forKeys:&v449 count:1];
        v212 = [v210 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v211];
        v213 = [v209 failureWithError:v212];

        v68 = v415;
        v19 = v213;
      }

      if ([v19 isSuccess] && objc_msgSend(v28, "hasSpatialOverCapture"))
      {
        v432 = 0;
        v214 = [(PHAssetCreationRequest *)self _createSocResourceForAsset:a7 fromValidatedResources:v28 photoLibrary:v417 error:&v432];
        v215 = v432;
        if (!v214)
        {
          v216 = [MEMORY[0x1E69BF2D0] failureWithError:v215];

          v19 = v216;
        }
      }

      if ([v19 isSuccess])
      {
        v431 = 0;
        v217 = [(PHAssetCreationRequest *)self _createXmpResourceForAsset:a7 fromValidatedResources:v28 photoLibrary:v417 error:&v431];
        v218 = v431;
        if (!v217)
        {
          v219 = [MEMORY[0x1E69BF2D0] failureWithError:v218];

          v19 = v219;
        }
      }

      if ([v19 isSuccess])
      {
        v430 = 0;
        v220 = [(PHAssetCreationRequest *)self _createAudioResourceForAsset:a7 fromValidatedResources:v28 photoLibrary:v417 error:&v430];
        v221 = v430;
        if (!v220)
        {
          v222 = [MEMORY[0x1E69BF2D0] failureWithError:v221];

          v19 = v222;
        }
      }

      if (![v19 isSuccess])
      {
        goto LABEL_260;
      }

      if ([(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions candidateOptions])
      {
        v223 = [a7 additionalAttributes];
        [v223 setDeferredProcessingCandidateOptions:{-[PHAssetCreationCameraIngestOptions candidateOptions](self->_cameraIngestOptions, "candidateOptions")}];
      }

      if ([v28 hasAdjustments])
      {
        if (v411 && v412 == 1 && v396 == 8)
        {
          [a7 setPlaybackStyle:{objc_msgSend(v411, "playbackStyle")}];
          [a7 setPlaybackVariation:{objc_msgSend(v411, "playbackVariation")}];
        }

        v429 = 0;
        v224 = [(PHAssetCreationRequest *)self _createAssetAsAdjusted:a7 fromValidatedResources:v28 mainFileMetadata:v413 error:&v429];
        v225 = v429;
        if (!v224)
        {
          v226 = [MEMORY[0x1E69BF2D0] failureWithError:v225];

          v19 = v226;
        }

LABEL_239:
        v247 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions portraitEffectFilterName];

        if (!v247)
        {
          goto LABEL_245;
        }

        v248 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions portraitEffectFilterName];
        if (([v248 isEqualToString:@"CIPortraitEffectStageWhite"] & 1) == 0)
        {
          v249 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions portraitEffectFilterName];
          if (![v249 isEqualToString:@"CIPortraitEffectStageMonoV2"])
          {
            v254 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions portraitEffectFilterName];
            v255 = [v254 isEqualToString:@"CIPortraitEffectStageV2"];

            v68 = v415;
            if ((v255 & 1) == 0)
            {
LABEL_245:
              if ([v19 isSuccess])
              {
                if ([v416 type] == 19)
                {
                  v250 = v69;
                }

                else
                {
                  v250 = 1;
                }

                v28 = v405;
                if ((v250 & 1) == 0)
                {
                  v426 = 0;
                  v427 = v414;
                  v251 = [PHAssetCreationRequest setDeferredIdentifierAndCreateDeferredDestinationURLFromCurrentDstURL:&v427 withMainFileMetadata:v413 managedAsset:a7 photoLibrary:v417 error:&v426];
                  v252 = v427;

                  v253 = v426;
                  if (v251)
                  {
                    if ([v413 isDeferredPhotoProxyExpectingDepth])
                    {
                      [a7 setDepthType:1];
                      [a7 setEditableDepthBadgeAttribute:1];
                    }
                  }

                  else
                  {
                    v256 = PLPhotoKitGetLog();
                    if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
                    {
                      v257 = [a7 uuid];
                      *buf = 138412290;
                      *&buf[4] = v257;
                      _os_log_impl(&dword_19C86F000, v256, OS_LOG_TYPE_ERROR, "Deferred identifier could not be created for asset with UUID: %@", buf, 0xCu);

                      v28 = v405;
                    }

                    v258 = [MEMORY[0x1E69BF2D0] failureWithError:v253];

                    v19 = v258;
                  }

                  v68 = v415;

                  v414 = v252;
                }
              }

              else
              {
                v28 = v405;
              }

LABEL_260:
              if ([v19 isSuccess])
              {
                v259 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];

                if (v259)
                {
                  v260 = PLPhotoKitIngestGetLog();
                  if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
                  {
                    v261 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions captureID];
                    v262 = v261;
                    if (v261)
                    {
                      v263 = v261;
                    }

                    else
                    {
                      v263 = @"(unknown capture ID)";
                    }

                    v264 = [v414 lastPathComponent];
                    if (v264)
                    {
                      v265 = [v414 lastPathComponent];
                    }

                    else
                    {
                      v265 = &stru_1F0FC60C8;
                    }

                    v266 = [a7 uuid];
                    *buf = 138543874;
                    *&buf[4] = v263;
                    *&buf[12] = 2114;
                    *&buf[14] = v265;
                    *&buf[22] = 2114;
                    *&buf[24] = v266;
                    _os_log_impl(&dword_19C86F000, v260, OS_LOG_TYPE_DEFAULT, "PhotoKit Camera Ingest: %{public}@ Created asset %{public}@ with UUID %{public}@", buf, 0x20u);

                    if (v264)
                    {
                    }

                    v28 = v405;
                    v68 = v415;
                  }
                }

                if ((([v28 hasCurrentAdjustment] ^ 1) & v398 & v408) == 1)
                {
                  v267 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions previewImageData];
                  v268 = DCIM_newPLImageWithStoredJPEGData();

                  v269 = v446;
                  v270 = [v417 libraryBundle];
                  v271 = [v270 timeZoneLookup];
                  [(PHAssetCreationRequest *)self _checkAndGenerateThumbnailsForAsset:a7 imageSource:v269 imageData:v402 previewImage:v268 thumbnailImage:0 timeZoneLookup:v271 resourceBag:v28];

                  v68 = v415;
                }

                if (v412 == 1 && [v28 hasRAW])
                {
                  v425 = 0;
                  v272 = [(PHAssetCreationRequest *)self _createRAWSidecarForAsset:a7 fromValidatedResources:v28 mainFileMetadata:v413 photoLibrary:v417 error:&v425];
                  v273 = v425;
                  if (!v272)
                  {
                    v274 = [MEMORY[0x1E69BF2D0] failureWithError:v273];

                    v19 = v274;
                  }
                }
              }

              if ([v19 isSuccess])
              {
                if (v407)
                {
                  [v407 applyCameraMetadataToAsset:a7];
                  if (HasInternalDiagnostics)
                  {
                    v275 = MEMORY[0x1E69BE540];
                    v276 = [a7 filename];
                    v277 = [v275 diagnosticFilePathForLibrary:v417 mainFilename:v276 createIfNeeded:1];

                    v278 = [v277 stringByDeletingPathExtension];
                    v279 = [v278 stringByAppendingPathExtension:*MEMORY[0x1E69C00C0]];

                    v280 = [MEMORY[0x1E69BF238] fileManager];
                    v281 = [(PHAssetCreationRequest *)self cameraIngestOptions];
                    v282 = [v281 cameraMetadataPath];
                    v424 = 0;
                    v283 = [v280 copyItemAtPath:v282 toPath:v279 error:&v424];
                    v284 = v424;

                    if ((v283 & 1) == 0)
                    {
                      v285 = PLPhotoKitIngestGetLog();
                      if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v284;
                        _os_log_impl(&dword_19C86F000, v285, OS_LOG_TYPE_ERROR, "Failed to copy MDATA file to CaptureDebug destination with error: %@", buf, 0xCu);
                      }
                    }

                    v28 = v405;
                  }
                }

                if (a7)
                {
                  v286 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  v423 = 0;
                  v287 = [MEMORY[0x1E69BE740] installInternalResourcesForExistingAsset:a7 assumeNoExistingResources:0 referencedResourceURLs:v286 error:&v423];
                  v288 = v423;
                  if ((v287 & 1) == 0)
                  {
                    v289 = [MEMORY[0x1E69BF2D0] failureWithError:v288];

                    v19 = v289;
                  }

                  v68 = v415;
                }

                else
                {
                  v68 = v415;
                }
              }

              if ([v19 isSuccess])
              {
                if (v411)
                {
                  v421 = 0u;
                  v422 = 0u;
                  v419 = 0u;
                  v420 = 0u;
                  v290 = [v411 modernResources];
                  v291 = [v290 countByEnumeratingWithState:&v419 objects:v448 count:16];
                  if (v291)
                  {
                    v292 = v291;
                    v293 = *v420;
                    do
                    {
                      for (i = 0; i != v292; ++i)
                      {
                        if (*v420 != v293)
                        {
                          objc_enumerationMutation(v290);
                        }

                        v295 = *(*(&v419 + 1) + 8 * i);
                        if ([v295 supportsTrashedState])
                        {
                          [a7 setTrashedState:objc_msgSend(v295 forResourceType:{"trashedState"), objc_msgSend(v295, "cplType")}];
                        }
                      }

                      v292 = [v290 countByEnumeratingWithState:&v419 objects:v448 count:16];
                    }

                    while (v292);
                  }

                  if ([v411 cameraProcessingAdjustmentState])
                  {
                    [a7 setCameraProcessingAdjustmentState:{objc_msgSend(a7, "cameraProcessingAdjustmentState") | 1}];
                  }

                  v28 = v405;
                  if (([v411 cameraProcessingAdjustmentState] & 4) != 0)
                  {
                    [a7 setCameraProcessingAdjustmentState:{objc_msgSend(a7, "cameraProcessingAdjustmentState") | 4}];
                  }

                  if (([v411 cameraProcessingAdjustmentState] & 8) != 0)
                  {
                    [a7 setCameraProcessingAdjustmentState:{objc_msgSend(a7, "cameraProcessingAdjustmentState") | 8}];
                  }
                }

                [a7 setDeferredProcessingNeeded:{objc_msgSend(a7, "expectedDeferredProcessingNeededOnAssetCreation")}];
                if ([a7 deferredProcessingNeeded])
                {
                  v296 = [v417 libraryServicesManager];
                  v297 = [v296 backgroundJobService];
                  v298 = [MEMORY[0x1E69BE2B8] typesMaskForDeferredProcessingNeeded:{objc_msgSend(a7, "deferredProcessingNeeded")}];
                  [v297 signalBackgroundProcessingNeededOnLibrary:v417 workerTypes:v298];
                }

                if (v408)
                {
                  v299 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];
                  if (v299)
                  {
                    v300 = v299;
                    v301 = [v413 smartStyleExpectingReversibility];
                    v302 = [v301 BOOLValue];

                    if (v302)
                    {
                      [a7 setIsSmartStyleableWithMetadata:v413];
                    }
                  }
                }

                [(PHAssetCreationRequest *)self _resetMovedFiles];
                v303 = [(PHAssetCreationRequest *)self customAssetProperties];

                if (v303)
                {
                  v304 = [(PHAssetCreationRequest *)self customAssetProperties];
                  [a7 updateWithCustomAssetProperties:v304];
                }

                [a7 persistMetadataToFilesystem];
                v68 = v415;
                if ([(PHChangeRequest *)self shouldPerformConcurrentWork])
                {
                  [(PHAssetCreationRequest *)self _setupDerivativeCreationContextForAsset:a7 imageSource:v446 imageData:v402];
                }
              }

              v305 = v68;
              v306 = v305;
              if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v305))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_19C86F000, v306, OS_SIGNPOST_INTERVAL_END, spid, "Ingest-CreateAsset", "END: asset creation", buf, 2u);
              }

              v307 = [v417 libraryBundle];
              [v307 touch];

              if ([v19 isSuccess])
              {
                if ([(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions isEligibleForQuickFaceAnalysis])
                {
                  v308 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions deferredPhotoIdentifier];

                  v309 = [v417 libraryBundle];
                  v310 = [v309 constraintsDirector];
                  v311 = v310;
                  if (v308)
                  {
                    [v310 informPhotoCapturedThatNeedsDeferredProcessing];
                  }

                  else
                  {
                    [v310 informPhotoCapturedThatNeedsQuickFace];
                  }
                }

                v326 = [a7 additionalAttributes];
                v327 = [v326 syndicationIdentifier];

                if (v327)
                {
                  [a7 syndicatedAssetDidSaveToUserLibrary];
                }

                if (self->_resourceHoldingDirectoryPath)
                {
                  v328 = [MEMORY[0x1E69BF238] fileManager];
                  resourceHoldingDirectoryPath = self->_resourceHoldingDirectoryPath;
                  v418 = 0;
                  v330 = [v328 removeItemAtPath:resourceHoldingDirectoryPath error:&v418];
                  v331 = v418;

                  if ((v330 & 1) == 0)
                  {
                    v332 = PLPhotoKitGetLog();
                    if (os_log_type_enabled(v332, OS_LOG_TYPE_ERROR))
                    {
                      v333 = [a7 uuid];
                      *buf = 138412546;
                      *&buf[4] = v333;
                      *&buf[12] = 2112;
                      *&buf[14] = v331;
                      _os_log_impl(&dword_19C86F000, v332, OS_LOG_TYPE_ERROR, "Unable to remove asset creation recovery directory for %@: %@", buf, 0x16u);
                    }
                  }
                }

                v334 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];
                v335 = (v334 != 0) & v408;

                if (v335 == 1)
                {
                  v35 = v395;
                  [(PHAssetCreationRequest *)self _removePhotoKitCameraIngestFiles:a7 originalFileURL:v395 resourceBag:v28];
                  v13 = v404;
                }

                else
                {
                  v13 = v404;
                  v35 = v395;
                }

                v75 = v407;
                v14 = v409;
              }

              else
              {
                v14 = v409;
                if (a7)
                {
                  v312 = [(PHAssetCreationRequest *)self _restoreMovedFilesOnFailure];
                  if (v416 && v312)
                  {
                    v313 = [MEMORY[0x1E69BE288] transactionReason:@"Unable to create asset from resources"];
                    [a7 deleteWithReason:v313];
                  }

                  else
                  {
                    v313 = PLPhotoKitGetLog();
                    if (os_log_type_enabled(v313, OS_LOG_TYPE_ERROR))
                    {
                      v314 = [(PHAssetCreationRequest *)self _movedFiles];
                      *buf = 138412546;
                      *&buf[4] = a7;
                      *&buf[12] = 2112;
                      *&buf[14] = v314;
                      _os_log_impl(&dword_19C86F000, v313, OS_LOG_TYPE_ERROR, "Complete asset ingestion failed, but moved files could not be restored to their original location.  Leaving partially ingested asset %@ with orphaned supporting files %@.", buf, 0x16u);
                    }
                  }
                }

                v315 = [v28 assetResources];
                v316 = [MEMORY[0x1E695DF90] dictionary];
                v317 = [v315 count];
                v318 = @"Failed to create asset from data";
                if (!v406)
                {
                  v318 = @"Failed to create asset";
                }

                if (v317)
                {
                  v319 = @"Failed to create asset from resources";
                }

                else
                {
                  v319 = v318;
                }

                [v316 setObject:v319 forKeyedSubscript:*MEMORY[0x1E696A278]];
                v320 = [v19 error];
                [v316 setObject:v320 forKeyedSubscript:*MEMORY[0x1E696AA08]];

                v321 = [(PHAssetCreationRequest *)self urlsForResources:v315];
                if ([v321 count])
                {
                  [v316 setObject:v321 forKeyedSubscript:@"_PHResourceUrlsErrorKey"];
                }

                v322 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v316];
                v323 = v322;
                if (v392)
                {
                  v324 = v322;
                  *v392 = v323;
                }

                v325 = [MEMORY[0x1E69BF2D0] failureWithError:v323];

                a7 = 0;
                v19 = v325;
                v13 = v404;
                v35 = v395;
                v75 = v407;
              }

              if ([v19 isSuccess])
              {
                v336 = a7;
              }

              else
              {
                v336 = 0;
              }

              v25 = v336;

              goto LABEL_362;
            }

LABEL_244:
            [a7 setPlaybackStyle:1];
            [a7 setVideoCpVisibilityState:1];
            goto LABEL_245;
          }
        }

        goto LABEL_244;
      }

      if ([v413 customRendered] != 9)
      {
        [a7 setDefaultAdjustmentsIfNecessaryWithMainFileMetadata:v413];
        goto LABEL_239;
      }

      v428 = 0;
      v227 = [a7 generatePortraitAdjustment:&v428];
      v228 = v428;
      v229 = v228;
      if (v227)
      {
        v397 = v69;
        v391 = v228;
        v230 = [v227 objectForKeyedSubscript:*MEMORY[0x1E69BF380]];
        v389 = [v227 objectForKeyedSubscript:*MEMORY[0x1E69BF388]];
        v231 = [v227 objectForKeyedSubscript:*MEMORY[0x1E69BF370]];
        v232 = [(PHAssetChangeRequest *)self editorBundleID];
        v233 = [v227 objectForKeyedSubscript:*MEMORY[0x1E69BF368]];
        v234 = [v233 integerValue];

        v235 = [objc_alloc(MEMORY[0x1E69C0660]) initWithFormatIdentifier:v230 formatVersion:v389 data:v231 baseVersion:v234 editorBundleID:v232 renderTypes:0];
        if (v235)
        {
          v236 = [a7 dateCreated];
          [v235 setAdjustmentTimestamp:v236];

          v237 = [MEMORY[0x1E69BE258] assetAdjustmentOptionsForPortraitImportWithMainFileMetadata:v413];
          [a7 setAdjustments:v235 options:v237];

          [a7 setDeferredProcessingNeeded:2];
        }

        else
        {
          v246 = PLImportGetLog();
          if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218498;
            *&buf[4] = v231;
            *&buf[12] = 2112;
            *&buf[14] = v230;
            *&buf[22] = 2112;
            *&buf[24] = v389;
            _os_log_impl(&dword_19C86F000, v246, OS_LOG_TYPE_ERROR, "Unable to create adjustment info from adjustment data (%p), format identifier (%@) and format version (%@)", buf, 0x20u);
          }
        }

        v68 = v415;
        v229 = v391;
      }

      else
      {
        if (!v228)
        {
LABEL_238:

          goto LABEL_239;
        }

        v397 = v69;
        v230 = PLImportGetLog();
        if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
        {
          v238 = MEMORY[0x1E69BF220];
          v239 = [a7 mainFileURL];
          v240 = [v238 descriptionWithFileURL:v239];
          *buf = 138412546;
          *&buf[4] = v240;
          *&buf[12] = 2112;
          *&buf[14] = v229;
          _os_log_impl(&dword_19C86F000, v230, OS_LOG_TYPE_ERROR, "Unable to get adjustment info from original file '%@': %@", buf, 0x16u);

          v68 = v415;
        }
      }

      v69 = v397;
      goto LABEL_238;
    }

    v54 = v53;
    v55 = [v416 creationOptions];
    v382 = [v55 shouldMoveFile];

    v56 = [v416 creationOptions];
    v401 = [v56 shouldIngestInPlace];

    v384 = [(PHAssetCreationRequest *)self _savedAssetTypeForAsset];
    v57 = v52;
    v58 = v57;
    v59 = v54 - 1;
    if (v54 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v58, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Ingest-Prepare", "START: file operation + metadata", buf, 2u);
    }

    if (!v35)
    {
      if (v406)
      {
        if (v412 == 1)
        {
          v64 = 0;
          v390 = 0;
          v414 = 0;
          goto LABEL_75;
        }

        v77 = MEMORY[0x1E69BF2D0];
        v81 = MEMORY[0x1E696ABC0];
        v464 = *MEMORY[0x1E696A578];
        v465 = @"Cannot create an asset with data for non-image types";
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v465 forKeys:&v464 count:1];
        v79 = v81;
        v80 = 3302;
      }

      else
      {
        v77 = MEMORY[0x1E69BF2D0];
        v78 = MEMORY[0x1E696ABC0];
        v462 = *MEMORY[0x1E696A578];
        v463 = @"Missing both resources and data. Cannot create asset.";
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v463 forKeys:&v462 count:1];
        v79 = v78;
        v80 = 3303;
      }

      v65 = [v79 errorWithDomain:@"PHPhotosErrorDomain" code:v80 userInfo:v60];
      v82 = [v77 failureWithError:v65];

      v64 = 0;
      v390 = 0;
      v414 = 0;
LABEL_56:
      v19 = v82;
      goto LABEL_73;
    }

    if (v401)
    {
      v60 = [v417 pathManager];
      v61 = MEMORY[0x1E69BF238];
      [v60 capabilities];
      v63 = v62 = v35;
      v445 = 0;
      v64 = [v61 ingestItemAtURL:v62 toURL:v62 type:0 options:3 capabilities:v63 error:&v445];
      v65 = v445;

      if (v64)
      {
        v414 = v62;
        v64 = 0;
        v390 = 0;
      }

      else
      {
        v76 = [MEMORY[0x1E69BF2D0] failureWithError:v65];

        v390 = 0;
        v414 = 0;
        v19 = v76;
      }

      goto LABEL_73;
    }

    if (v412 != 1)
    {
      goto LABEL_65;
    }

    if ([v28 hasCurrentAdjustment])
    {
      v74 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions deferredPhotoIdentifier];
      if (v74)
      {

        goto LABEL_59;
      }

      if ((v398 & 1) == 0)
      {
LABEL_65:
        v443 = 0;
        v100 = [(PHAssetCreationRequest *)self _secureMove:v382 assetResource:v416 photoLibrary:v417 error:&v443];
        v60 = v443;
        v414 = v100;
        if (v100)
        {
          v64 = 0;
          v390 = 0;
LABEL_74:

          v28 = v405;
LABEL_75:
          v104 = v58;
          v105 = v104;
          if (v59 > 0xFFFFFFFFFFFFFFFDLL)
          {

            v107 = v105;
          }

          else
          {
            if (os_signpost_enabled(v104))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_19C86F000, v105, OS_SIGNPOST_INTERVAL_END, spid, "Ingest-Prepare", "END: file operation + metadata", buf, 2u);
            }

            v106 = v105;
            if (os_signpost_enabled(v106))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_19C86F000, v106, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Ingest-CreateAsset", "START: asset creation", buf, 2u);
            }
          }

          v108 = [v416 creationOptions];
          v394 = [v108 uniformTypeIdentifier];

          if ([v19 isSuccess])
          {
            v68 = v52;
            if (v414)
            {
              if ([v416 type] == 1 || objc_msgSend(v416, "type") == 19)
              {
                v109 = objc_alloc(MEMORY[0x1E69C0718]);
                v110 = [v417 libraryBundle];
                v111 = [v110 timeZoneLookup];
                v112 = [v109 initWithImageURL:v414 contentType:0 options:14 timeZoneLookup:v111 cacheImageSource:1 cacheImageData:1];
              }

              else
              {
                v113 = objc_alloc(MEMORY[0x1E69C0718]);
                v110 = [v417 libraryBundle];
                v111 = [v110 timeZoneLookup];
                v112 = [v113 initWithAVURL:v414 options:14 timeZoneLookup:v111];
              }

              v413 = v112;

              v68 = v52;
            }

            else
            {
              v413 = 0;
            }

            v442 = 0;
            v114 = [(PHAssetCreationRequest *)self _assetAlreadyExistsAsPlaceholder:v410 mediaType:v412 uuid:v409 photoLibrary:v417 fetchAsset:&v442];
            v115 = v442;
            v87 = v115;
            if (v114)
            {
              if (v115)
              {
                v116 = [v115 bundleScope];
                v441 = 0;
                [v87 setAttributesFromMainFileURL:v414 mainFileMetadata:v413 savedAssetType:v384 bundleScope:v116 isPlaceholder:0 placeholderFileURL:0 imageSource:&v446 imageData:&v441];
                v402 = v441;
                v87 = v87;
                a7 = v87;
                goto LABEL_106;
              }

              v121 = MEMORY[0x1E69BF2D0];
              v122 = MEMORY[0x1E696ABC0];
              v460 = *MEMORY[0x1E696A278];
              v123 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected to find an existing placeholder asset in the library for uuid '%@'", v409];
              v461 = v123;
              v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v461 forKeys:&v460 count:1];
              v125 = [v122 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v124];
              v126 = [v121 failureWithError:v125];

              v87 = 0;
              v68 = v52;
              v402 = 0;
              v19 = v126;
            }

            else
            {
              if (v64)
              {
                v117 = MEMORY[0x1E69BE540];
                v118 = [(PHAssetCreationRequest *)self bundleScope];
                v440 = 0;
                LOWORD(v373) = 257;
                a7 = [v117 insertAssetIntoPhotoLibrary:v417 mainFileURL:v390 mainFileMetadata:v413 savedAssetType:v384 bundleScope:v118 uuid:v409 replacementUUID:0 imageSource:&v446 imageData:&v440 isPlaceholder:v373 deleteFileOnFailure:?];
                v402 = v440;
                [a7 setAttributesFromMainFileURL:v390 mainFileMetadata:v413 savedAssetType:v384 bundleScope:0 isPlaceholder:1 placeholderFileURL:v414 imageSource:0 imageData:0];
              }

              else if (v414)
              {
                v119 = MEMORY[0x1E69BE540];
                v120 = [(PHAssetCreationRequest *)self bundleScope];
                v439 = 0;
                BYTE1(v373) = ((v382 | v401) & 1) == 0;
                LOBYTE(v373) = 0;
                a7 = [v119 insertAssetIntoPhotoLibrary:v417 mainFileURL:v414 mainFileMetadata:v413 savedAssetType:v384 bundleScope:v120 uuid:v409 replacementUUID:0 imageSource:&v446 imageData:&v439 isPlaceholder:v373 deleteFileOnFailure:?];
                v402 = v439;
              }

              else
              {
                v130 = v115;
                v438 = v413;
                v437 = 0;
                a7 = [(PHAssetCreationRequest *)self _managedAssetFromPrimaryResourceData:v416 validatedResources:v28 withUUID:v409 photoLibrary:v417 mainFileMetadata:&v438 getImageSource:&v446 imageData:&v437];
                v131 = v438;

                v87 = v130;
                v402 = v437;
                v413 = v131;
              }

              if (a7)
              {
                goto LABEL_106;
              }
            }

            if ([v19 isSuccess])
            {
              v132 = MEMORY[0x1E69BF2D0];
              v133 = v87;
              v134 = MEMORY[0x1E696ABC0];
              v458 = *MEMORY[0x1E696A278];
              v459 = @"Unable to create asset from primary resource";
              v135 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v459 forKeys:&v458 count:1];
              v136 = [v134 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v135];
              v137 = [v132 failureWithError:v136];

              v87 = v133;
              v68 = v52;
              a7 = 0;
              v19 = v137;
            }

            else
            {
              a7 = 0;
            }

            goto LABEL_106;
          }

          v87 = 0;
          v413 = 0;
          v402 = 0;
          a7 = 0;
          v68 = v52;
LABEL_106:
          if ([v19 isSuccess])
          {
            v383 = v87;
            if (v409)
            {
              v138 = [a7 uuid];
              v139 = [v409 isEqualToString:v138];

              if ((v139 & 1) == 0)
              {
                v372 = [MEMORY[0x1E696AAA8] currentHandler];
                [v372 handleFailureInMethod:v386 object:self file:@"PHAssetCreationRequest.m" lineNumber:3228 description:{@"Invalid parameter not satisfying: %@", @"[uuid isEqualToString:asset.uuid]"}];
              }
            }

            v140 = [a7 additionalAttributes];
            v141 = [v416 creationOptions];
            v142 = [v141 alternateImportImageDate];
            [v140 setAlternateImportImageDate:v142];

            if (!v413)
            {
              v399 = 0;
              goto LABEL_118;
            }

            v143 = [v413 photoProcessingFlags];
            if ((v143 & 0x1000) != 0)
            {
              v145 = [v413 photoCaptureFlags];
              LODWORD(v144) = 1;
              if ((v145 & 0x4000000000) != 0)
              {
                v399 = 1;
                [a7 setSpatialType:1];
LABEL_118:
                v146 = [(PHAssetCreationRequest *)self importSessionID];

                if (v146)
                {
                  v147 = [(PHAssetCreationRequest *)self importSessionID];
                  [a7 setImportSessionAlbumWithImportSessionID:v147];
                }

                v148 = [(PHAssetCreationRequest *)self conversationID];

                if (v148)
                {
                  v149 = [(PHAssetCreationRequest *)self conversationID];
                  [a7 setConversationAlbumWithConversationID:v149];
                }

                v150 = [(PHAssetCreationRequest *)self syndicationIdentifier];

                if (v150)
                {
                  v151 = [(PHAssetCreationRequest *)self syndicationIdentifier];
                  v152 = [a7 additionalAttributes];
                  [v152 setSyndicationIdentifier:v151];
                }

                v153 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions creationDate];

                if (v153)
                {
                  v154 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions creationDate];
                  [a7 setDateCreated:v154];
                }

                [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions finalAssetHeight];
                if (v155 != 0.0)
                {
                  [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions finalAssetWidth];
                  if (v156 != 0.0)
                  {
                    [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions finalAssetHeight];
                    [a7 setHeight:v157];
                    [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions finalAssetWidth];
                    [a7 setWidth:v158];
                  }
                }

                v159 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions cameraMetadataPath];
                if (v159)
                {
                  v160 = v159;
                  v161 = [MEMORY[0x1E69BE498] semanticEnhanceSceneIsValid:v447];

                  if (v161)
                  {
                    [(PHAssetCreationRequest *)self _checkAndSetForSemanticEnhancementForAsset:a7 resourceBag:v28];
                  }
                }

                if (![a7 kind] && -[PHAssetCreationCameraIngestOptions isExpectingPairedVideo](self->_cameraIngestOptions, "isExpectingPairedVideo"))
                {
                  [(PHAssetCreationRequest *)self _setupIrisPairingTimeoutForAsset:a7 imageFile:v395 library:v417];
                }

                v162 = [(PHAssetCreationRequest *)self cameraIngestOptions];
                v163 = [v162 dbgFilePath];

                if (v163)
                {
                  v164 = HasInternalDiagnostics;
                }

                else
                {
                  v164 = 0;
                }

                if (v164 == 1)
                {
                  v165 = [a7 filename];
                  [PHAssetCreationRequest setdbgFileWithAsset:a7 dbgFilePath:v163 photoFilename:v165];
                }

                v381 = v163;
                v166 = [v416 creationOptions];
                [a7 setAvalanchePickType:{objc_msgSend(v166, "burstPickType")}];

                v167 = [v416 creationOptions];
                v168 = [v167 originalFilename];
                if (v168)
                {
                  v169 = v168;
                }

                else
                {
                  v169 = [v395 lastPathComponent];

                  if (!v169)
                  {
                    goto LABEL_144;
                  }
                }

                if (!self->_shouldUseAutomaticallyGeneratedOriginalFilename)
                {
LABEL_145:
                  if ((v408 & 1) == 0)
                  {
                    v172 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];
                    v173 = [v172 isEqualToString:*MEMORY[0x1E69C0470]];

                    if ((v173 & 1) == 0)
                    {
                      [a7 setOriginalFilename:v169];
                    }
                  }

                  if (v394)
                  {
                    [a7 setUniformTypeIdentifier:?];
                  }

                  v174 = PLPhotoKitGetLog();
                  if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
                  {
                    v175 = [a7 uuid];
                    *buf = 138412290;
                    *&buf[4] = v175;
                    _os_log_impl(&dword_19C86F000, v174, OS_LOG_TYPE_DEBUG, "Generating new thumbnails for asset with UUID %@", buf, 0xCu);
                  }

                  v380 = v169;
                  if (v412 == 2)
                  {
                    if ([(PHChangeRequest *)self shouldPerformConcurrentWork])
                    {
                      v385 = 0;
                      v387 = 0;
                    }

                    else
                    {
                      v177 = [v414 path];
                      v436 = 0;
                      v435 = 0;
                      PLPreviewImageAndDurationForVideoAtPath();
                      v387 = v436;
                      v385 = v435;
                    }

                    v178 = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
                    if (v178)
                    {
                      v179 = [PHObject uuidFromLocalIdentifier:v178];
                      v176 = [MEMORY[0x1E69BE540] assetWithUUID:v179 inLibrary:v417];
                      if (v176)
                      {
                        [a7 additionalAttributes];
                        v181 = v180 = v176;
                        v182 = [v180 additionalAttributes];
                        [v181 setCameraCaptureDevice:{objc_msgSend(v182, "cameraCaptureDevice")}];

                        v28 = v405;
                        v176 = v180;
                      }
                    }

                    else
                    {
                      v176 = 0;
                    }
                  }

                  else
                  {
                    v385 = 0;
                    v387 = 0;
                    v176 = 0;
                  }

                  v183 = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
                  v184 = v183;
                  if (!v176 && v183)
                  {
                    v185 = [PHObject uuidFromLocalIdentifier:v183];
                    v176 = [MEMORY[0x1E69BE540] assetWithUUID:v185 inLibrary:v417];
                  }

                  if (v176)
                  {
                    v186 = [v176 additionalAttributes];
                    [v186 setDestinationAssetCopyState:2];
                  }

                  v187 = [v176 momentShare];

                  v411 = v176;
                  v379 = v184;
                  if (v187)
                  {
                    v188 = [a7 additionalAttributes];
                    [v188 setImportedBy:7];
                    v189 = v188;
                    v190 = 1;
LABEL_172:
                    [v189 setShareType:v190];
                    v192 = [v176 additionalAttributes];
                    v193 = [v192 shareOriginator];
                    [v188 setShareOriginator:v193];
                    goto LABEL_173;
                  }

                  v191 = [v176 collectionShare];

                  if (v191)
                  {
                    v188 = [a7 additionalAttributes];
                    [v188 setImportedBy:15];
                    v189 = v188;
                    v190 = 3;
                    goto LABEL_172;
                  }

                  v241 = [(PHAssetCreationRequest *)self importedBy];
                  v242 = [(PHChangeRequest *)self helper];
                  v188 = [v242 clientBundleIdentifier];

                  v243 = [(PHChangeRequest *)self helper];
                  v378 = [v243 clientDisplayName];

                  if (v241)
                  {
                    v244 = v241;
                  }

                  else
                  {
                    v244 = 3;
                  }

                  if ([v188 hasPrefix:@"com.apple."])
                  {
                    if ((v408 | v388))
                    {
                      v245 = [(PHAssetCreationRequest *)self cameraIngestOptions];
                      if ([v245 isRearFacingCamera])
                      {
                        v244 = 1;
                      }

                      else
                      {
                        v244 = 2;
                      }
                    }

                    else
                    {
                      if (v244 == 6)
                      {
                        v338 = 9;
                      }

                      else
                      {
                        v338 = v244;
                      }

                      if (v244 == 3)
                      {
                        v244 = 8;
                      }

                      else
                      {
                        v244 = v338;
                      }
                    }
                  }

                  if ([v188 length])
                  {
                    v339 = [(PHChangeRequest *)self helper];
                    v340 = [v339 isClientInLimitedLibraryMode];

                    if (v340)
                    {
                      v341 = [(PHChangeRequest *)self helper];
                      v342 = [v341 fetchFilterIdentifier];

                      memset(buf, 0, sizeof(buf));
                      v343 = [(PHChangeRequest *)self helper];
                      v344 = [v343 clientAuthorization];
                      v345 = v344;
                      if (v344)
                      {
                        [v344 clientAuditToken];
                      }

                      else
                      {
                        memset(buf, 0, sizeof(buf));
                      }

                      v346 = MEMORY[0x1E69BE510];
                      v347 = [v417 managedObjectContext];
                      v434[0] = *buf;
                      v434[1] = *&buf[16];
                      v348 = [v346 fetchOrCreateLimitedLibraryFetchFilterWithApplicationIdentifier:v342 auditToken:v434 inManagedObjectContext:v347];

                      v349 = [(PHChangeRequest *)self uuid];
                      v457 = v349;
                      v350 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v457 count:1];
                      [v348 addAssetsWithUUIDs:v350];

                      v351 = [v348 objectID];
                      [(PHAssetCreationRequest *)self _setLimitedLibraryFetchFilterObjectID:v351];
                    }
                  }

                  v352 = [a7 additionalAttributes];
                  [v352 setImportedBy:v244];

                  if ([(NSString *)self->_importedByBundleIdentifier length])
                  {
                    importedByBundleIdentifier = self->_importedByBundleIdentifier;
                    v354 = [a7 additionalAttributes];
                    [v354 setImportedByBundleIdentifier:importedByBundleIdentifier];

                    v355 = self->_importedByBundleIdentifier;
                  }

                  else
                  {
                    if ([v188 length])
                    {
                      v367 = [a7 additionalAttributes];
                      [v367 setImportedByBundleIdentifier:v188];

                      v368 = [MEMORY[0x1E69BE250] shouldPersistImportedByDisplayName:v378];
                      v355 = v188;
                      v356 = v394;
                      if (v368)
                      {
                        v369 = [a7 additionalAttributes];
                        [v369 setImportedByDisplayName:v378];

                        v355 = v188;
                      }

                      goto LABEL_381;
                    }

                    v355 = *MEMORY[0x1E69BF500];
                  }

                  v356 = v394;
LABEL_381:
                  v193 = v355;
                  v357 = *MEMORY[0x1E69BF4D0];
                  v456[0] = v193;
                  v358 = *MEMORY[0x1E69BF4F0];
                  v455[0] = v357;
                  v455[1] = v358;
                  v359 = v356;
                  if (!v356)
                  {
                    v359 = [MEMORY[0x1E695DFB0] null];
                  }

                  v376 = v359;
                  v456[1] = v359;
                  v455[2] = *MEMORY[0x1E69BF4E8];
                  v360 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a7, "originalFilesize")}];
                  v361 = v360;
                  if (!v360)
                  {
                    v360 = [MEMORY[0x1E695DFB0] null];
                  }

                  v375 = v360;
                  v456[2] = v360;
                  v455[3] = *MEMORY[0x1E69BF4E0];
                  v362 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a7, "width")}];
                  v377 = v362;
                  if (!v362)
                  {
                    v362 = [MEMORY[0x1E695DFB0] null];
                  }

                  v374 = v362;
                  v456[3] = v362;
                  v455[4] = *MEMORY[0x1E69BF4D8];
                  v363 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a7, "height")}];
                  v364 = v363;
                  if (!v363)
                  {
                    v363 = [MEMORY[0x1E695DFB0] null];
                  }

                  v365 = v363;
                  v456[4] = v363;
                  v366 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v456 forKeys:v455 count:5];
                  PLSendCoreAnalyticEvent();

                  v192 = v378;
                  if (!v364)
                  {
                  }

                  if (!v377)
                  {
                  }

                  v28 = v405;
                  if (!v361)
                  {
                  }

                  if (!v394)
                  {
                  }

LABEL_173:

                  v194 = [MEMORY[0x1E69BE498] semanticEnhanceSceneIsValid:v447];
                  v195 = [v28 hasCurrentAdjustment];
                  if (v408)
                  {
                    if (((v195 | v399 | v194) & 1) == 0)
                    {
LABEL_175:
                      v196 = v446;
                      v197 = [v417 libraryBundle];
                      v198 = [v197 timeZoneLookup];
                      [(PHAssetCreationRequest *)self _checkAndGenerateThumbnailsForAsset:a7 imageSource:v196 imageData:v402 previewImage:v387 thumbnailImage:v385 timeZoneLookup:v198 resourceBag:v405];

                      v28 = v405;
                      v199 = 0;
LABEL_178:
                      v68 = v415;
                      v200 = PLPhotoKitGetLog();
                      if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
                      {
                        v201 = [a7 uuid];
                        *buf = 138412546;
                        *&buf[4] = a7;
                        *&buf[12] = 2114;
                        *&buf[14] = v201;
                        _os_log_impl(&dword_19C86F000, v200, OS_LOG_TYPE_DEFAULT, "Created asset %@ uuid %{public}@ from valid resources ", buf, 0x16u);

                        v68 = v415;
                      }

                      v69 = v399 ^ 1;
                      v398 = v199 | v194;
                      v87 = v383;
                      goto LABEL_181;
                    }
                  }

                  else if ((v195 & 1) == 0)
                  {
                    goto LABEL_175;
                  }

                  v199 = v408 & v399;
                  goto LABEL_178;
                }

LABEL_144:
                v170 = [a7 mainFileURL];
                v171 = [v170 lastPathComponent];

                v169 = v171;
                goto LABEL_145;
              }
            }

            else
            {
              v144 = (v143 >> 12) & 1;
            }

            v399 = v144;
            goto LABEL_118;
          }

          v411 = 0;
          v69 = 1;
LABEL_181:

          goto LABEL_182;
        }

        [MEMORY[0x1E69BF2D0] failureWithError:v60];
        v64 = 0;
        v390 = 0;
        v414 = 0;
        v19 = v65 = v19;
LABEL_73:

        goto LABEL_74;
      }
    }

    else if (!v398)
    {
      goto LABEL_65;
    }

LABEL_59:
    v89 = [v417 libraryServicesManager];
    v90 = [v89 imageWriter];
    v91 = v35;
    v92 = v90;
    v93 = [v91 pathExtension];
    v94 = [v93 uppercaseString];
    v60 = [v92 cameraAssetPathForNewAssetWithExtension:v94 assetUUID:v409];

    v95 = [MEMORY[0x1E695DFF8] fileURLWithPath:v60];
    v414 = [MEMORY[0x1E69BE670] deferredPhotoPreviewDestinationURLForPrimaryAssetURL:v95];
    if (v398)
    {
      v96 = [(PHAssetCreationRequest *)self _setupSemanticEnhanceMetadataIfNeededWithDestinationURL:v95 photoLibrary:v417 semanticEnhanceResult:&v447 ingestJobCameraMetadata:v407];
      v97 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions deferredPhotoIdentifier];

      if (!v97 && v96)
      {
        v98 = [MEMORY[0x1E69BE498] semanticEnhancePreviewDestinationURLForPrimaryAssetURL:v95];
        v99 = v395;
LABEL_70:

        v414 = v98;
        goto LABEL_71;
      }

      v101 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions deferredPhotoIdentifier];
      v102 = v101 != 0 || v96;

      v99 = v395;
      if (!v102)
      {
        v98 = v95;

        v95 = 0;
        v414 = v98;
        goto LABEL_70;
      }
    }

    else
    {
      v99 = v395;
    }

LABEL_71:
    v444 = 0;
    v103 = [MEMORY[0x1E69BF238] copyItemAtURL:v99 toURL:v414 error:&v444];
    v65 = v444;
    v390 = v95;
    if (v103)
    {
      v64 = v95 != 0;
      goto LABEL_73;
    }

    v127 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      v128 = [v395 path];
      v129 = [v414 path];
      *buf = 138412802;
      *&buf[4] = v128;
      *&buf[12] = 2112;
      *&buf[14] = v129;
      *&buf[22] = 2112;
      *&buf[24] = v65;
      _os_log_impl(&dword_19C86F000, v127, OS_LOG_TYPE_ERROR, "Failed to copy file from %@ to %@ with error: %@", buf, 0x20u);
    }

    v82 = [MEMORY[0x1E69BF2D0] failureWithError:v65];

    v64 = 0;
    goto LABEL_56;
  }

  if (a7)
  {
    v70 = MEMORY[0x1E696ABC0];
    v71 = *MEMORY[0x1E696A278];
    v468[1] = @"_PHResourceUrlsErrorKey";
    v469[0] = @"Importing PDF types is not supported.";
    v467 = v35;
    v468[0] = v71;
    v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v467 count:1];
    v469[1] = v72;
    v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v469 forKeys:v468 count:2];
    *a7 = [v70 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v73];

    v414 = 0;
    v411 = 0;
    a7 = 0;
  }

  else
  {
    v414 = 0;
    v411 = 0;
  }

  v25 = 0;
  v13 = v404;
  v75 = v407;
LABEL_362:

LABEL_363:

  return v25;
}

- (BOOL)_unTrashAndResetAsset:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 metadataFromMediaPropertiesOrOriginalResource];
  if (v5)
  {
    [v4 unTrash];
    [v4 revertToOriginal];
    v6 = [(PHAssetCreationRequest *)self importSessionID];
    [v4 setImportSessionAlbumWithImportSessionID:v6];

    [v4 setDateCreated:0];
    v7 = [v4 additionalAttributes];
    [v7 setTimeZoneName:0];

    v8 = [v4 additionalAttributes];
    [v8 setTimeZoneOffset:0];

    [v4 setTitle:0];
    [v4 setLongDescription:0];
    [v4 setLocation:0];
    v9 = [v4 additionalAttributes];
    [v9 setKeywords:0];

    v10 = [v4 filename];
    v11 = [v4 directory];
    v12 = [v4 additionalAttributes];
    v13 = [v12 originalFilename];

    [v4 setAttributesFromMainFileURL:0 mainFileMetadata:v5 savedAssetType:objc_msgSend(v4 bundleScope:"savedAssetType") isPlaceholder:objc_msgSend(v4 placeholderFileURL:"bundleScope") imageSource:0 imageData:{0, 0, 0}];
    [v4 setFilename:v10];
    [v4 setDirectory:v11];
    v14 = [v4 additionalAttributes];
    [v14 setOriginalFilename:v13];
  }

  else
  {
    v15 = PLSyndicationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v4 uuid];
      v17 = [(PHAssetCreationRequest *)self syndicationIdentifier];
      *buf = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Found existing trashed asset (%@) with same syndication id (%@), but it is missing both media metadata and original", buf, 0x16u);
    }

    [v4 expunge];
  }

  return v5 != 0;
}

- (void)didSendChangeToServiceHandlerWithResult:(BOOL)a3
{
  if (self->_fileCoordinator)
  {
    v4 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEBUG, "[AssetCreationRecovery] Closing asset creation indicator file", v7, 2u);
    }

    fileCoordinator = self->_fileCoordinator;
    v6 = [(PHChangeRequest *)self uuid];
    [(PLIndicatorFileCoordinator *)fileCoordinator setCreatingAssetIsBusy:0 uuid:v6];
  }
}

- (void)_setCreatingAssetIsBusy:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHAssetCreationRequest *)self _resolveResourceHoldingDirectoryPath];

  if (v5)
  {
    fileCoordinator = self->_fileCoordinator;
    if (!fileCoordinator)
    {
      v7 = [objc_alloc(MEMORY[0x1E69BE4A8]) initWithResourceHoldingDirectoryPath:self->_resourceHoldingDirectoryPath];
      v8 = self->_fileCoordinator;
      self->_fileCoordinator = v7;

      fileCoordinator = self->_fileCoordinator;
    }

    v10 = [(PHChangeRequest *)self uuid];
    [(PLIndicatorFileCoordinator *)fileCoordinator setCreatingAssetIsBusy:v3 uuid:v10];
  }

  else
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_FAULT, "[AssetCreationRecovery] Could not resolve resource holding directory path and unable to write out indicator file", buf, 2u);
    }
  }
}

- (id)createAssetFromValidatedResources:(id)a3 withUUID:(id)a4 assetAlreadyExistsAsPlaceholder:(BOOL)a5 inPhotoLibrary:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = [v15 libraryServicesManager];
  if (!v16)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:2936 description:{@"Invalid parameter not satisfying: %@", @"libraryServicesManager"}];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__15607;
  v41 = __Block_byref_object_dispose__15608;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__15607;
  v35 = __Block_byref_object_dispose__15608;
  v36 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __122__PHAssetCreationRequest_createAssetFromValidatedResources_withUUID_assetAlreadyExistsAsPlaceholder_inPhotoLibrary_error___block_invoke;
  v24[3] = &unk_1E75A5F10;
  v28 = &v37;
  v24[4] = self;
  v17 = v13;
  v25 = v17;
  v18 = v14;
  v26 = v18;
  v30 = a5;
  v19 = v15;
  v27 = v19;
  v29 = &v31;
  [v16 performBlockWithImportMutex:v24];
  if (a7)
  {
    v20 = v32[5];
    if (v20)
    {
      *a7 = v20;
    }
  }

  v21 = v38[5];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v21;
}

void __122__PHAssetCreationRequest_createAssetFromValidatedResources_withUUID_assetAlreadyExistsAsPlaceholder_inPhotoLibrary_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 80);
  v6 = *(a1 + 56);
  v7 = *(*(a1 + 72) + 8);
  obj = *(v7 + 40);
  v8 = [v2 _createAssetFromValidatedResources:v3 withUUID:v4 assetAlreadyExistsAsPlaceholder:v5 inPhotoLibrary:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)finalizeRequestWithBatchSuccess:(BOOL)a3
{
  v3 = a3;
  v33 = *MEMORY[0x1E69E9840];
  v5 = PLBackendGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, self);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Ingest-FinalizeRequest", "START: finalize thumbnails", &v31, 2u);
  }

  if (!v3)
  {
    v23 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v31 = 136315138;
      v32 = "[PHAssetCreationRequest finalizeRequestWithBatchSuccess:]";
      _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "%s: Creation request failed. Clean up installed files", &v31, 0xCu);
    }

    goto LABEL_17;
  }

  derivativeContext = self->_derivativeContext;
  if (derivativeContext)
  {
    if (![(PHAssetCreationDerivativeContext *)derivativeContext thumbnailWriteSucceeded])
    {
      v10 = objc_alloc(MEMORY[0x1E696AC90]);
      v11 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      v12 = [v10 initWithIndex:{objc_msgSend(v11, "effectiveThumbnailIndex")}];

      v13 = MEMORY[0x1E69BE840];
      v14 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      v15 = [v14 photoLibrary];
      [v13 recycleThumbnailIndexes:v12 inLibrary:v15];

      v16 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      [v16 setEffectiveThumbnailIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    if ([(PHAssetCreationDerivativeContext *)self->_derivativeContext assetKind]== 1)
    {
      v17 = MEMORY[0x1E69BE740];
      v18 = [MEMORY[0x1E69BE750] recipeFromID:65741];
      v19 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      if ([v19 hasAdjustments])
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      v21 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      v22 = [v17 onDemand_installPrimaryImageResourceWithRecipe:v18 version:v20 forAsset:v21];
    }

    v23 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext originalHash];
    if (v23)
    {
      v24 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      v25 = [v24 additionalAttributes];
      [v25 setOriginalHash:v23];

      v26 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      v27 = [v26 additionalAttributes];
      v28 = [v23 base64EncodedStringWithOptions:0];
      [v27 setOriginalStableHash:v28];
    }

LABEL_17:
  }

  v29 = v8;
  v30 = v29;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v30, OS_SIGNPOST_INTERVAL_END, v6, "Ingest-FinalizeRequest", "END: finalize thumbnails", &v31, 2u);
  }
}

- (void)performConcurrentWork
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = PLBackendGetLog();
  v4 = os_signpost_id_make_with_pointer(v3, self);
  v5 = v3;
  v6 = v5;
  v7 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Ingest-ConcurrentWork", "START: concurrent work", buf, 2u);
  }

  v8 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext assetKind];
  if (v8 == 1)
  {
    v41 = v4 - 1;
    v42 = v4;
    v12 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext pathForOriginalFile];
    v20 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext fullsizeRenderVideoPath];

    if (v20)
    {
      v21 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext fullsizeRenderVideoPath];

      v12 = v21;
    }

    PLPreviewImageAndDurationForVideoAtPath();
    v9 = 0;
    v22 = 0;
    v19 = 0;
    v18 = 0;
    goto LABEL_18;
  }

  if (v8)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v9 = [(PHAssetCreationRequest *)self _imageSourceForDerivatives];
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v9);
  if (!v9)
  {
LABEL_13:
    v22 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_23;
  }

  v11 = PrimaryImageIndex;
  v41 = v4 - 1;
  v42 = v4;
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setImageData:0];
  v12 = [PHAssetCreationRequest _imageIOThumbnailCreationOptionsFromDerivativeContext:self->_derivativeContext];
  v13 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v14 = *MEMORY[0x1E6982E58];
  v15 = [*MEMORY[0x1E6982E58] identifier];
  v16 = CGImageDestinationCreateWithData(v13, v15, 1uLL, 0);

  CGImageDestinationAddImageFromSource(v16, v9, v11, v12);
  v17 = CGImageDestinationFinalize(v16);
  CFRelease(v16);
  if (v17)
  {
    v18 = v13;
    v19 = [v14 identifier];
    v9 = DCIM_newPLImageWithData();
  }

  else
  {
    v23 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v44 = "[PHAssetCreationRequest performConcurrentWork]";
      _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "%s failed to write preview image", buf, 0xCu);
    }

    v19 = 0;
    v18 = 0;
    v9 = 0;
  }

  v22 = 0;
LABEL_18:

  if (v9)
  {
    v40 = v6;
    v37 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext nextAvailableThumbnailIndex];
    v24 = objc_alloc(MEMORY[0x1E69BE488]);
    v25 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext auxiliaryImageRecords];
    v38 = v18;
    v39 = v19;
    v26 = [v24 initWithPLImage:v9 backingData:v18 uniformTypeIdentifier:v19 auxiliaryImageRecords:v25];

    v27 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext thumbnailManager];
    v28 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext thumbnailIdentifier];
    v29 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext assetUUID];
    v30 = v22;
    v31 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext assetKind];
    v32 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext assetExtension];
    v33 = v31;
    v22 = v30;
    -[PHAssetCreationDerivativeContext setThumbnailWriteSucceeded:](self->_derivativeContext, "setThumbnailWriteSucceeded:", [v27 setThumbnailsForThumbIdentifier:v28 thumbnailIndex:v37 assetUUID:v29 kind:v33 extension:v32 withImage:v26]);

    if ([(PHAssetCreationDerivativeContext *)self->_derivativeContext assetKind]== 1)
    {
      v34 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext pathForVideoPreviewFile];
      PLWriteImageWithEmbeddedThumbnailToPath();
    }

    v7 = v41;
    v4 = v42;
    v19 = v39;
    v6 = v40;
    v18 = v38;
  }

  else
  {
    v7 = v41;
    v4 = v42;
  }

LABEL_23:
  v35 = v6;
  v36 = v35;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v36, OS_SIGNPOST_INTERVAL_END, v4, "Ingest-ConcurrentWork", "END: concurrent work", buf, 2u);
  }
}

- (CGImageSource)_imageSourceForDerivatives
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext imageData];
  v4 = MEMORY[0x1E69C08F0];
  v5 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext originalUTI];
  v6 = [v4 typeWithIdentifier:v5];

  v7 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext fullsizeRenderImagePath];

  if (v7)
  {
    v8 = MEMORY[0x1E695DEF0];
    v9 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext fullsizeRenderImagePath];
    v19 = 0;
    v10 = [v8 dataWithContentsOfFile:v9 options:1 error:&v19];
    v11 = v19;

    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 == 0;
    }

    if (!v12)
    {
      v13 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext fullsizeRenderImagePath];
        *buf = 138412546;
        v21 = v14;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "Failed to read data from %@ (%@)", buf, 0x16u);
      }
    }

    v3 = v10;
  }

  else if ([v6 conformsToType:*MEMORY[0x1E6982F88]])
  {
    v15 = [PHAssetCreationRequest _jpegDataFromRAWData:v3 derivativeContext:self->_derivativeContext];

    v3 = v15;
  }

  if (v3 && [v3 length])
  {
    v16 = CGImageSourceCreateWithData(v3, 0);
    v17 = v16;
    if (v16)
    {
      CFAutorelease(v16);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_setupDerivativeCreationContextForAsset:(id)a3 imageSource:(CGImageSource *)a4 imageData:(id)a5
{
  v34 = a3;
  v8 = a5;
  if ([v34 hasAllThumbs])
  {
    v9 = [v34 photoLibrary];
    v10 = [v9 thumbnailManager];
    v11 = [v34 thumbnailIdentifier];
    v12 = [v34 effectiveThumbnailIndex];
    v13 = [v34 uuid];
    [v10 deleteThumbnailsWithIdentifier:v11 orIndex:v12 uuid:v13];
  }

  v14 = objc_alloc_init(PHAssetCreationDerivativeContext);
  derivativeContext = self->_derivativeContext;
  self->_derivativeContext = v14;

  v16 = MEMORY[0x1E69BE840];
  v17 = [v34 photoLibrary];
  -[PHAssetCreationDerivativeContext setNextAvailableThumbnailIndex:](self->_derivativeContext, "setNextAvailableThumbnailIndex:", [v16 nextAvailableThumbnailIndexInLibrary:v17]);

  [v34 setEffectiveThumbnailIndex:{-[PHAssetCreationDerivativeContext nextAvailableThumbnailIndex](self->_derivativeContext, "nextAvailableThumbnailIndex")}];
  v18 = [v34 photoLibrary];
  v19 = [v18 thumbnailManager];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setThumbnailManager:v19];

  v20 = [v34 thumbnailIdentifier];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setThumbnailIdentifier:v20];

  v21 = [v34 fileURLForThumbnailFile];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setFileURLForThumbnailFile:v21];

  v22 = [(PHAssetResourceBag *)self->_assetResourceBag assetResourceWithType:5];

  if (v22)
  {
    v23 = [v34 pathForFullsizeRenderImageFile];
    [(PHAssetCreationDerivativeContext *)self->_derivativeContext setFullsizeRenderImagePath:v23];
  }

  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setAsset:v34];
  v24 = [v34 uuid];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setAssetUUID:v24];

  -[PHAssetCreationDerivativeContext setAssetKind:](self->_derivativeContext, "setAssetKind:", [v34 kind]);
  v25 = [v34 pathForOriginalFile];
  v26 = [v25 pathExtension];
  v27 = [v26 uppercaseString];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setAssetExtension:v27];

  v28 = [v34 originalUniformTypeIdentifier];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setOriginalUTI:v28];

  -[PHAssetCreationDerivativeContext setAssetOrientation:](self->_derivativeContext, "setAssetOrientation:", [v34 orientation]);
  [v34 imageSize];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setAssetOrientedImageSize:?];
  -[PHAssetCreationDerivativeContext setEmbeddedThumbnailSize:](self->_derivativeContext, "setEmbeddedThumbnailSize:", [v34 embeddedThumbnailWidth], objc_msgSend(v34, "embeddedThumbnailHeight"));
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setImageData:v8];

  v29 = [v34 pathForOriginalFile];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setPathForOriginalFile:v29];

  v30 = [v34 pathForVideoPreviewFile];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setPathForVideoPreviewFile:v30];

  v31 = [(PHAssetResourceBag *)self->_assetResourceBag assetResourceWithType:6];

  if (v31)
  {
    v32 = [v34 pathForFullsizeRenderVideoFile];
    [(PHAssetCreationDerivativeContext *)self->_derivativeContext setFullsizeRenderVideoPath:v32];
  }

  if (!v8)
  {
    v33 = [MEMORY[0x1E69C0708] auxiliaryImageRecordsToPreserveForDerivativesFromPrimaryImageInImageSource:a4];
    [(PHAssetCreationDerivativeContext *)self->_derivativeContext setAuxiliaryImageRecords:v33];
  }
}

- (id)_createAssetAdjustmentsFromBackupWithAsset:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions finalAssetWidth];
  v8 = v7;
  [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions finalAssetHeight];
  v10 = v8 != 0.0;
  v11 = v9 != 0.0;
  if (v10 && v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (!v10 || !v11)
  {
    v8 = v5;
  }

  if (v5 == v8 && v6 == v12)
  {
    v12 = 0.0;
    v8 = 0.0;
    if ([v4 originalWidth] >= 1)
    {
      v8 = [v4 originalWidth];
    }

    if ([v4 originalHeight] >= 1)
    {
      v12 = [v4 originalHeight];
    }
  }

  v14 = [v4 orientation];
  if (v4)
  {
    [v4 photoIrisVideoDuration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v15 = [MEMORY[0x1E69BE640] exportPropertiesWithImageWidth:v8 imageHeight:v12 exifOrientation:v14 duration:CMTimeGetSeconds(&time)];
  v16 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions cameraMetadataPath];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E69BE4B0]);
    v18 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions cameraMetadataPath];
    v16 = [v17 initWithCameraMetadataPath:v18];

    [v16 deserializeCameraMetadata];
  }

  v19 = MEMORY[0x1E69BE498];
  v20 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions backupAdjustmentsFile];
  v21 = [v16 cameraMetadata];
  v22 = [v19 assetAdjustmentsFromCameraAdjustmentsFileAtPath:v20 exportProperties:v15 cameraMetadata:v21];

  return v22;
}

- (void)_deleteJobFileAtPath:(id)a3 withAsset:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  if (v6)
  {
    v9 = [(PHAssetCreationRequest *)self _filePathIsInIncomingDirectory:v6];
    v10 = PLPhotoKitIngestGetLog();
    v11 = v10;
    if (!v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v17 = [MEMORY[0x1E69BF220] descriptionWithPath:v6];
        v18 = [v7 uuid];
        *buf = 138412546;
        v21 = v17;
        v22 = 2114;
        v23 = v18;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "File not in Incoming, skipping deletion: %@, for UUID:%{public}@", buf, 0x16u);
      }

      v14 = 0;
      goto LABEL_13;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 uuid];
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "Will remove file at path: %@, for UUID:%@", buf, 0x16u);
    }

    v19 = 0;
    v13 = [v8 removeItemAtPath:v6 error:&v19];
    v14 = v19;
    if ((v13 & 1) == 0 && (PLIsErrorFileNotFound() & 1) == 0)
    {
      v11 = PLPhotoKitIngestGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = [MEMORY[0x1E69BF220] descriptionWithPath:v6];
        v16 = [v7 uuid];
        *buf = 138412802;
        v21 = v15;
        v22 = 2114;
        v23 = v16;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "Failed to remove file at path: %@, for UUID:%{public}@ %@", buf, 0x20u);
      }

LABEL_13:
    }
  }

  else
  {
    v14 = 0;
  }
}

- (void)_removePhotoKitCameraIngestFiles:(id)a3 originalFileURL:(id)a4 resourceBag:(id)a5
{
  v25 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 path];
  v11 = [(PHAssetCreationRequest *)self _filePathIsInIncomingDirectory:v10];

  if (v11)
  {
    v12 = [v8 path];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:v12 withAsset:v25];

    v13 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions cameraMetadataPath];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:v13 withAsset:v25];

    v14 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions backupAdjustmentsFile];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:v14 withAsset:v25];

    v15 = [v9 assetResourceWithType:5];
    v16 = [v9 validatedURLForAssetResource:v15];

    v17 = [v16 path];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:v17 withAsset:v25];

    v18 = [v9 assetResourceWithType:107];
    v19 = [v9 validatedURLForAssetResource:v18];

    v20 = [v19 path];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:v20 withAsset:v25];

    v21 = [v9 assetResourceWithType:7];
    v22 = [v9 validatedURLForAssetResource:v21];

    v23 = [v22 path];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:v23 withAsset:v25];

    v24 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions dbgFilePath];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:v24 withAsset:v25];
  }
}

- (BOOL)_filePathIsInIncomingDirectory:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  v21 = -1;
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4 isDirectory:0];

  v7 = MEMORY[0x1E695DFF8];
  v8 = [MEMORY[0x1E69BF178] incomingDirectoryPath];
  v9 = [v7 fileURLWithPath:v8 isDirectory:1];
  v20 = 0;
  v10 = [v5 getRelationship:&v21 ofDirectoryAtURL:v9 toItemAtURL:v6 error:&v20];
  v11 = v20;

  if (v10)
  {
    if (!v21)
    {
      v18 = 1;
      goto LABEL_9;
    }

    v12 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v6];
      *buf = 138412290;
      v23 = v13;
      v14 = "File not in Incoming, skipping deletion: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 12;
LABEL_7:
      _os_log_impl(&dword_19C86F000, v15, v16, v14, buf, v17);
    }
  }

  else
  {
    v12 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v6];
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v11;
      v14 = "Unable to get relationship between incoming dir and %@: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 22;
      goto LABEL_7;
    }
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (void)_setupIrisPairingTimeoutForAsset:(id)a3 imageFile:(id)a4 library:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [v9 setKindSubtype:2];
  v10 = [v8 path];

  v11 = [v10 stringByDeletingLastPathComponent];

  v12 = [v9 uuid];

  v13 = [PHAssetCreationRequest _photoIrisIndicatorFilePathForPhotoAtPath:v11 UUID:v12];

  if (v13)
  {
    PLMakeIndicatorFileExistAtPath();
    v14 = [MEMORY[0x1E69BF360] transaction:"-[PHAssetCreationRequest _setupIrisPairingTimeoutForAsset:imageFile:library:]"];
    v15 = dispatch_time(0, 8000000000);
    v16 = [MEMORY[0x1E69BE378] sharedLimiter];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__PHAssetCreationRequest__setupIrisPairingTimeoutForAsset_imageFile_library___block_invoke;
    v18[3] = &unk_1E75AB248;
    v19 = v7;
    v20 = v13;
    v21 = v14;
    v17 = v14;
    [v16 dispatchAfterTime:v15 library:v19 block:v18];
  }
}

void __77__PHAssetCreationRequest__setupIrisPairingTimeoutForAsset_imageFile_library___block_invoke(id *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__PHAssetCreationRequest__setupIrisPairingTimeoutForAsset_imageFile_library___block_invoke_2;
  v3[3] = &unk_1E75AB248;
  v2 = a1[4];
  v4 = a1[5];
  v5 = a1[4];
  v6 = a1[6];
  [v2 performTransactionAndWait:v3];
}

uint64_t __77__PHAssetCreationRequest__setupIrisPairingTimeoutForAsset_imageFile_library___block_invoke_2(void *a1)
{
  [MEMORY[0x1E69BE498] photoIrisPairingDidSucceed:0 fileIndicatorPath:a1[4] photoAsset:0 photoLibrary:a1[5]];
  v2 = a1[6];

  return [v2 stillAlive];
}

- (BOOL)_writeOutCameraMetadata:(id)a3 destinationURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E696ACC8];
  v9 = [a3 cameraMetadata];
  v16 = 0;
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v16];
  v11 = v16;

  v15 = v11;
  LOBYTE(v9) = [v10 writeToURL:v7 options:1 error:&v15];
  v12 = v15;

  if ((v9 & 1) == 0)
  {

    v7 = 0;
  }

  if (a5 && v12)
  {
    v13 = v12;
    *a5 = v12;
  }

  return v12 == 0;
}

- (BOOL)_setupSemanticEnhanceMetadataIfNeededWithDestinationURL:(id)a3 photoLibrary:(id)a4 semanticEnhanceResult:(id *)a5 ingestJobCameraMetadata:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  var0 = a5->var0;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v11 cameraMetadata];
  [v14 setSemanticEnhanceScene:var0];

  var1 = a5->var1;
  v16 = [v11 cameraMetadata];
  [v16 setSemanticEnhanceSceneConfidence:var1];

  v17 = [PHAssetCreationRequest _cameraMetadataURLForPrimaryAssetURL:v13 photoLibrary:v12];

  v23 = 0;
  v18 = [(PHAssetCreationRequest *)self _writeOutCameraMetadata:v11 destinationURL:v17 error:&v23];

  v19 = v23;
  if (!v18)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v17 path];
      *buf = 138412546;
      v25 = v21;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "[SemDev] Error writing out MDATA file to destination %@, skipping SemDev: %@", buf, 0x16u);
    }

    a5->var0 = -1;
  }

  return v18;
}

- (void)_checkAndSetForSemanticEnhancementForAsset:(id)a3 resourceBag:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions deferredPhotoIdentifier];

  v7 = MEMORY[0x1E69C08F0];
  v8 = [v5 uniformTypeIdentifier];
  v9 = [v7 typeWithIdentifier:v8];
  v10 = [v9 conformsToType:*MEMORY[0x1E6982F88]];

  if ((v10 & 1) == 0)
  {
    v11 = [v5 additionalAttributes];
    [v11 setDeferredProcessingCandidateOptions:{objc_msgSend(v11, "deferredProcessingCandidateOptions") | 8}];

    if (v6)
    {
      v12 = 1;
    }

    else
    {
      v12 = 10;
    }

    [v5 setDeferredProcessingNeeded:v12];
    v13 = PLAssetImportGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v5 uuidDescription];
      v23 = 138543362;
      v24 = v14;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "Signaling background processing needed for %{public}@, due to needs capture scheduling", &v23, 0xCu);
    }

    v15 = [v5 photoLibrary];
    v16 = [v15 libraryServicesManager];
    v17 = [v16 backgroundJobService];
    [v17 startWatchdogTimerIfNeededWithSourceDescription:@"CameraIngest"];

    v18 = [v5 photoLibrary];
    v19 = [v18 libraryServicesManager];
    v20 = [v19 backgroundJobService];
    v21 = [v5 photoLibrary];
    v22 = [MEMORY[0x1E69BE2B8] typesMaskForDeferredProcessingNeeded:{objc_msgSend(v5, "deferredProcessingNeeded")}];
    [v20 signalBackgroundProcessingNeededOnLibrary:v21 workerTypes:v22];
  }
}

- (void)_checkAndGenerateThumbnailsForAsset:(id)a3 imageSource:(CGImageSource *)a4 imageData:(id)a5 previewImage:(id)a6 thumbnailImage:(id)a7 timeZoneLookup:(id)a8 resourceBag:(id)a9
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if ([v15 isPhoto])
  {
    v42 = v17;
    v43 = v16;
    v21 = v18;
    v22 = v20;
    v23 = self;
    v24 = MEMORY[0x1E69C08F0];
    v25 = [v15 uniformTypeIdentifier];
    v26 = v24;
    self = v23;
    v27 = [v26 typeWithIdentifier:v25];

    v28 = [objc_opt_class() _shouldGenerateThumbnailsDuringCreationForImageSource:a4 contentType:v27 timeZoneLookup:v19];
    if ((v28 & 1) == 0)
    {
      v29 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [(PHChangeRequest *)v23 uuid];
        *buf = 138543362;
        v46 = v30;
        _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_INFO, "Delaying thumbnail generation for %{public}@", buf, 0xCu);
      }

      self = v23;
    }

    v31 = v28 ^ 1;
    v20 = v22;
    v18 = v21;
    v17 = v42;
    v16 = v43;
  }

  else
  {
    v31 = 0;
  }

  v32 = [(PHChangeRequest *)self shouldPerformConcurrentWork];
  if ((v31 & 1) == 0 && !v32)
  {
    v44 = self;
    v33 = [(PHChangeRequest *)self helper];
    v34 = [v33 clientAuthorization];
    v35 = [v34 isCameraClient];

    if (v35)
    {
      v36 = [v15 avalancheUUID];

      if (!v36)
      {
        a4 = 0;
        v38 = v16;
        v16 = 0;
LABEL_18:
        v41 = v44;

LABEL_19:
        [v15 generateAndUpdateThumbnailsWithPreviewImage:v17 thumbnailImage:v18 fromImageSource:a4 imageData:v16 forceSRGBConversion:0 reduceProcessingForIngest:{-[PHAssetCreationRequest reduceProcessingForIngest](v41, "reduceProcessingForIngest")}];
        if ([(PHAssetCreationRequest *)v41 reduceProcessingForIngest])
        {
          [v15 setDeferredProcessingNeeded:4];
        }

        goto LABEL_21;
      }

      v37 = [v15 avalancheUUID];

      if (v37)
      {
        v38 = [v20 assetResourceWithType:111];
        v39 = [v20 validatedDataForAssetResource:v38];
        if ([v39 length])
        {
          v40 = DCIM_newPLImageWithStoredJPEGData();

          v17 = v40;
        }

        goto LABEL_18;
      }
    }

    v41 = v44;
    goto LABEL_19;
  }

LABEL_21:
}

- (BOOL)_assetAlreadyExistsAsPlaceholder:(BOOL)a3 mediaType:(int64_t)a4 uuid:(id)a5 photoLibrary:(id)a6 fetchAsset:(id *)a7
{
  v12 = a5;
  v13 = a6;
  if (a4 == 2)
  {
    v14 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];
    v15 = [v14 isEqualToString:*MEMORY[0x1E69C0470]];

    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
    if (a3)
    {
LABEL_7:
      *a7 = [MEMORY[0x1E69BE540] assetWithUUID:v12 inLibrary:v13];
      v16 = v15 | a3;
      goto LABEL_8;
    }
  }

  if (v15)
  {
    goto LABEL_7;
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (id)_createTimelapsePlaceholderAssetWithUUID:(id)a3 InPhotoLibrary:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 pathManager];
  v9 = [v8 simpleDCIMDirectory];

  v10 = [PHContentEditingOutput defaultExtensionForUniformTypeIdentifierType:*MEMORY[0x1E6982F80]];
  v11 = [v9 nextAvailableFileURLWithExtension:v10];
  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = [v11 path];
  v14 = [v13 stringByDeletingLastPathComponent];
  v43 = 0;
  v15 = [v12 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v43];
  v42 = v43;

  if (v15)
  {
    v16 = [MEMORY[0x1E69BF328] savedAssetTypeForCameraAsset];
    [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions previewImgSurfaceRef];
    v17 = PLCreateCGImageFromIOSurface();
    if (v17)
    {
      v18 = v17;
      v19 = DCIM_newPLImageWithCGImage();
      if (v19)
      {
        v20 = PLCreateImageWithFormatFromImage();
      }

      else
      {
        v20 = 0;
      }

      CFRelease(v18);
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    LOWORD(v40) = 257;
    v24 = [MEMORY[0x1E69BE540] insertAssetIntoPhotoLibrary:v7 mainFileURL:v11 mainFileMetadata:0 savedAssetType:v16 bundleScope:-[PHAssetCreationRequest bundleScope](self uuid:"bundleScope") replacementUUID:v6 imageSource:0 imageData:0 isPlaceholder:0 deleteFileOnFailure:v40];
    v23 = v24;
    if (v24)
    {
      [v24 setAttributesFromMainFileURL:v11 mainFileMetadata:0 savedAssetType:v16 bundleScope:0 isPlaceholder:1 placeholderFileURL:0 imageSource:0 imageData:0];
      [v23 generateAndUpdateThumbnailsWithPreviewImage:v19 thumbnailImage:v20 fromImageSource:0 imageData:0 forceSRGBConversion:0];
      v25 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions isRearFacingCamera];
      [v23 additionalAttributes];
      v41 = v11;
      v26 = v7;
      v27 = v10;
      v28 = v9;
      v30 = v29 = v20;
      [v30 setCameraCaptureDevice:!v25];

      v31 = [v23 additionalAttributes];
      v32 = v31;
      if (v25)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      [v31 setImportedBy:v33];

      v20 = v29;
      v9 = v28;
      v10 = v27;
      v7 = v26;
      v11 = v41;
      v34 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions creationDate];
      [v23 setDateCreated:v34];

      [v23 setKindSubtype:102];
      [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions placeholderHeight];
      v36 = v35;
      [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions placeholderWidth];
      v22 = v42;
      if (v37 && v36)
      {
        [v23 setWidth:?];
        [v23 setHeight:v36];
      }
    }

    else
    {
      v38 = PLPhotoKitIngestGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v45 = v6;
        _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_ERROR, "Could not create timelapse PLManagedAsset placeholder for uuid: %{public}@", buf, 0xCu);
      }

      v22 = v42;
    }
  }

  else
  {
    v19 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = [v11 path];
      *buf = 138412546;
      v45 = v21;
      v46 = 2112;
      v22 = v42;
      v47 = v42;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "PhotoKit Camera Ingest: Failed to create directory for timelapse placeholder at path: %@, Error: %@", buf, 0x16u);

      v23 = 0;
    }

    else
    {
      v23 = 0;
      v22 = v42;
    }
  }

  return v23;
}

- (id)_createAdjustmentsFileFromJobDictionary:(id)a3 cameraIngestOptions:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:*MEMORY[0x1E69C0378]];
  v8 = [v5 objectForKey:*MEMORY[0x1E69C0350]];
  v9 = [v5 objectForKey:*MEMORY[0x1E69C04A8]];
  v10 = *MEMORY[0x1E69C0410];
  v11 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
  v12 = *MEMORY[0x1E69C0478];
  v13 = [v11 isEqual:*MEMORY[0x1E69C0478]];

  v14 = objc_alloc(MEMORY[0x1E695DFF8]);
  v15 = MEMORY[0x1E69C05A0];
  if (!v13)
  {
    v15 = MEMORY[0x1E69C0518];
  }

  v16 = [v5 objectForKeyedSubscript:*v15];
  v63 = [v14 initFileURLWithPath:v16 isDirectory:0];

  v17 = *MEMORY[0x1E695F060];
  v18 = *(MEMORY[0x1E695F060] + 8);
  v19 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69C03F0]];
  v20 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69C03E0]];
  v21 = v20;
  if (v19 && v20)
  {
    [v19 floatValue];
    v17 = v22;
    [v21 floatValue];
    v18 = v23;
  }

  v60 = v21;
  v61 = v19;
  v24 = [MEMORY[0x1E69BE640] exportPropertiesWithImageWidth:v17 imageHeight:v18 exifOrientation:objc_msgSend(v9 duration:{"intValue"), 0.0}];
  v62 = v9;
  if (!v7)
  {
    v59 = 0;
    v25 = 0;
    v27 = 0;
    goto LABEL_11;
  }

  v67 = 0;
  v25 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v7 options:2 error:&v67];
  v26 = v67;
  v59 = v26;
  if (!v25)
  {
    v48 = v26;
    v25 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v69 = v7;
      v70 = 2112;
      v71 = v48;
      _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Error reading camera metadata at path: %@ error: %@", buf, 0x16u);
    }

    goto LABEL_35;
  }

  v66 = 0;
  v27 = [MEMORY[0x1E69C0688] deserializedMetadataFromData:v25 error:&v66];
  v28 = v66;
  v29 = v28;
  if (!v27)
  {
    v52 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [v25 length];
      *buf = 134218242;
      v69 = v53;
      v70 = 2112;
      v71 = v29;
      _os_log_impl(&dword_19C86F000, v52, OS_LOG_TYPE_ERROR, "Error deserialization camera metadata (length=%lu): %@", buf, 0x16u);
    }

LABEL_35:
    v27 = 0;
    v44 = 0;
    v47 = 0;
    goto LABEL_36;
  }

LABEL_11:
  v30 = [v5 objectForKeyedSubscript:v10];
  v31 = [v30 isEqual:v12];

  v57 = v24;
  v58 = v8;
  if (v31)
  {
    v32 = [MEMORY[0x1E69BE498] assetAdjustmentsFromCameraAdjustmentData:v8 cameraMetadata:v27 exportProperties:v24 applySemanticEnhance:0 assetType:1 sourceURL:v63];
  }

  else
  {
    v32 = [MEMORY[0x1E69BE498] assetAdjustmentsFromCameraAdjustmentData:v8 cameraMetadata:v27 exportProperties:v24 applySemanticEnhance:0 assetType:0 sourceURL:v63];
    v65 = 0;
    v33 = [MEMORY[0x1E69C0670] deserializedAdjustmentsFromData:v8 error:&v65];
    v34 = v33;
    if (v6 && v33)
    {
      v55 = v7;
      v35 = v6;
      v36 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69C04F0]];
      v37 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69C03B0]];
      v38 = [v34 canBeRenderedByCapturePipelineWithVideoComplement:v36 != 0 deferredIdentifier:v37];

      if (v38)
      {
        [v35 setCandidateOptions:16];
      }

      v39 = [v34 portraitEffectFilterName];
      v6 = v35;
      [v35 setPortraitEffectFilterName:v39];

      v7 = v55;
    }
  }

  v40 = [v32 propertyListDictionary];
  if (v40)
  {
    v56 = v7;
    v41 = v6;
    v42 = [v63 absoluteString];
    v43 = [PHAssetCreationRequestBridge buildAdjustmentsPlistPathForPhotoKitIngestJob:v5 withSourcePath:v42];

    v44 = [MEMORY[0x1E695DFF8] fileURLWithPath:v43];
    v64 = 0;
    v45 = [v40 writeToURL:v44 error:&v64];
    v46 = v64;
    if (v45)
    {
      v47 = v44;
    }

    else
    {
      v51 = PLPhotoKitIngestGetLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v69 = v43;
        v70 = 2112;
        v71 = v46;
        _os_log_impl(&dword_19C86F000, v51, OS_LOG_TYPE_ERROR, "PhotoKit Image Ingest: Could not write propertyListDictionary to URL %@. error: %@", buf, 0x16u);
      }

      v47 = 0;
    }

    v6 = v41;
    v7 = v56;
  }

  else
  {
    v43 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v49 = [v5 objectForKeyedSubscript:v10];
      v50 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
      *buf = 138412546;
      v69 = v49;
      v70 = 2112;
      v71 = v50;
      _os_log_impl(&dword_19C86F000, v43, OS_LOG_TYPE_ERROR, "PhotoKit ingest pipeline: property list dictionary for asset of job type %@ with uuid %@ is empty.", buf, 0x16u);
    }

    v44 = 0;
    v47 = 0;
  }

  v24 = v57;
  v8 = v58;
LABEL_36:

  return v47;
}

- (id)_externalLivePhotoResourceForAsset:(id)a3
{
  v5 = a3;
  v6 = [v5 kind];
  if (v6 >= 2)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:2269 description:@"This method is intended to create external assets for images and videos only"];
  }

  v7 = [PHExternalAssetResource alloc];
  if (v6)
  {
    v8 = 9;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(PHExternalAssetResource *)v7 initWithResourceType:v8];
  v10 = [v5 pathManager];
  v11 = [v10 shouldUseFileIdentifierForBundleScope:{objc_msgSend(v5, "bundleScope")}];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E69BF298]);
    v13 = [v5 uuid];
    v14 = [v5 bundleScope];
    v15 = [v5 uniformTypeIdentifier];
    v16 = [v5 originalFilename];
    v17 = [v12 initWithAssetUuid:v13 bundleScope:v14 uti:v15 resourceVersion:0 resourceType:v6 != 0 recipeID:0 originalFilename:v16 customSuffix:0];

    v18 = [v5 photoLibrary];

    if (!v18)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:2276 description:{@"Invalid parameter not satisfying: %@", @"asset.photoLibrary"}];
    }

    v19 = [v5 pathManager];
    v20 = [v19 readOnlyUrlWithIdentifier:v17];
  }

  else
  {
    v20 = [v5 mainFileURL];
  }

  v21 = objc_alloc_init(PHAssetResourceCreationOptions);
  [(PHAssetResourceCreationOptions *)v21 setShouldMoveFile:0];
  v22 = [v5 uniformTypeIdentifier];
  [(PHAssetResourceCreationOptions *)v21 setUniformTypeIdentifier:v22];

  v23 = [v5 additionalAttributes];
  v24 = [v23 alternateImportImageDate];
  [(PHAssetResourceCreationOptions *)v21 setAlternateImportImageDate:v24];

  v25 = [v5 originalFilename];
  [(PHAssetResourceCreationOptions *)v21 setOriginalFilename:v25];

  [(PHExternalAssetResource *)v9 setFileURL:v20];
  [(PHExternalAssetResource *)v9 setCreationOptions:v21];

  return v9;
}

- (BOOL)_writeDataToDisk:(id)a3 imageUTIType:(id)a4 primaryImageProperties:(id)a5 mainFileURL:(id)a6 thumbnailData:(id)a7
{
  v54[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([MEMORY[0x1E69BE540] isPrimaryImageFormatForUTI:v13])
  {
    v17 = [(PHAssetCreationRequest *)self _filteredImagePropertiesByConditionallyRemovingLivePhotoIdentifiersFromSourceImageProperties:v14];
    IsEqual = PLObjectIsEqual();
    v19 = [MEMORY[0x1E6982C40] typeWithIdentifier:v13];
    v20 = [v19 isEqual:*MEMORY[0x1E6982E58]];

    if (!v20)
    {
      if ((IsEqual & 1) == 0)
      {
        v31 = CGImageSourceCreateWithData(v12, 0);
        if (v31)
        {
          v32 = v31;
          v53 = *MEMORY[0x1E696DFC8];
          v54[0] = MEMORY[0x1E695E118];
          v33 = CGImageSourceCopyProperties(v31, [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1]);
          v41[1] = MEMORY[0x1E69E9820];
          v41[2] = 3221225472;
          v41[3] = __105__PHAssetCreationRequest__writeDataToDisk_imageUTIType_primaryImageProperties_mainFileURL_thumbnailData___block_invoke;
          v41[4] = &unk_1E75A5EE8;
          v43 = self;
          v44 = v32;
          v42 = v33;
          v23 = v33;
          v34 = PFFigCopyImageDataToURLWithUpdatedProperties();
          v28 = v34 == 0;
          if (v34)
          {
            v35 = v34;
            log = PLPhotoKitGetLog();
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218754;
              v46 = v12;
              v47 = 2048;
              v48 = [(__CFData *)v12 length];
              v49 = 2112;
              v50 = v15;
              v51 = 2048;
              v52 = v35;
              _os_log_impl(&dword_19C86F000, log, OS_LOG_TYPE_ERROR, "Failed to copy primary image data (%p %ld) to URL %@, %ld", buf, 0x2Au);
            }
          }

          CFRelease(v32);

          goto LABEL_26;
        }

        v23 = PLPhotoKitGetLog();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v24 = "Failed to create image source from finalized image data";
        v25 = v23;
        v26 = 2;
        goto LABEL_13;
      }

      v41[0] = 0;
      v29 = [(__CFData *)v12 writeToURL:v15 options:1073741825 error:v41];
      v23 = v41[0];
      if (v29)
      {
        v28 = 1;
LABEL_26:

        goto LABEL_27;
      }

      v36 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = [(__CFData *)v12 length];
        *buf = 134218754;
        v46 = v12;
        v47 = 2048;
        v48 = v37;
        v49 = 2112;
        v50 = v15;
        v51 = 2112;
        v52 = v23;
        _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_ERROR, "Failed to copy primary image data (%p %ld) to URL %@: %@", buf, 0x2Au);
      }

      goto LABEL_25;
    }

    v21 = [MEMORY[0x1E69BF178] sharedDCIMWriter];
    v22 = [v21 writeJPEGToURL:v15 withData:v12 thumbnail:v16 properties:v17];

    if ((v22 & 1) == 0)
    {
      v23 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v46 = v12;
        v47 = 2048;
        v48 = [(__CFData *)v12 length];
        v49 = 2112;
        v50 = v15;
        v24 = "Failed to write JPEG image data (%p %ld) to URL %@.";
        v25 = v23;
        v26 = 32;
LABEL_13:
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v40 = 0;
    v27 = [(__CFData *)v12 writeToURL:v15 options:1073741825 error:&v40];
    v17 = v40;
    if ((v27 & 1) == 0)
    {
      v23 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v30 = [(__CFData *)v12 length];
        *buf = 134218754;
        v46 = v12;
        v47 = 2048;
        v48 = v30;
        v49 = 2112;
        v50 = v15;
        v51 = 2112;
        v52 = v17;
        v24 = "Failed to write image data (%p %ld) to URL %@, %@";
        v25 = v23;
        v26 = 42;
        goto LABEL_13;
      }

LABEL_25:
      v28 = 0;
      goto LABEL_26;
    }
  }

  v28 = 1;
LABEL_27:

  return v28;
}

id __105__PHAssetCreationRequest__writeDataToDisk_imageUTIType_primaryImageProperties_mainFileURL_thumbnailData___block_invoke(uint64_t a1)
{
  v2 = 0;
  if (PFFigGetImageSourceImageIndexForContainerItemID())
  {
    v3 = CGImageSourceCopyPropertiesAtIndex(*(a1 + 48), 0, 0);
    v2 = [*(a1 + 40) _filteredImagePropertiesByConditionallyRemovingLivePhotoIdentifiersFromSourceImageProperties:v3];
  }

  return v2;
}

- (BOOL)_accessWritableURLForUUID:(id)a3 imageUTI:(id)a4 originalFilename:(id)a5 photoLibrary:(id)a6 withHandler:(id)a7
{
  v44 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v17 = [v15 pathManager];
  v18 = [v17 shouldUseFileIdentifierForBundleScope:self->_bundleScope];

  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x1E69BF298]) initWithAssetUuid:v12 bundleScope:-[PHAssetCreationRequest bundleScope](self uti:"bundleScope") resourceVersion:v13 resourceType:0 recipeID:31 originalFilename:0 customSuffix:{v14, 0}];
    v20 = [v15 pathManager];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __103__PHAssetCreationRequest__accessWritableURLForUUID_imageUTI_originalFilename_photoLibrary_withHandler___block_invoke;
    v30[3] = &unk_1E75A5EC0;
    v35 = &v36;
    v34 = v16;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    [v20 obtainAccessAndWaitWithFileWithIdentifier:v19 mode:2 toURLWithHandler:v30];

    v21 = v34;
  }

  else
  {
    v19 = [MEMORY[0x1E69BF178] defaultFileExtensionForAssetType:0];
    if (v13)
    {
      v22 = [MEMORY[0x1E69BF178] preferredFileExtensionForType:v13];
      if ([v22 length])
      {
        v23 = v22;

        v19 = v23;
      }
    }

    v24 = [v15 libraryServicesManager];
    v25 = [v24 imageWriter];
    v21 = [v25 cameraAssetPathForNewAssetWithExtension:v19 assetUUID:v12];

    *(v37 + 24) = v21 != 0;
    if (v21)
    {
      v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21 isDirectory:0];
      v27 = (*(v16 + 2))(v16, v26);
      *(v37 + 24) = v27;
    }

    else
    {
      v26 = PLBackendGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v41 = v19;
        v42 = 2114;
        v43 = v12;
        _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_ERROR, "Failed to get a valid path from [PLImageWriter cameraAssetPathForNewAssetWithExtension:assetUUID:] for extension: %{public}@, UUID: %{public}@", buf, 0x16u);
      }
    }
  }

  v28 = *(v37 + 24);
  _Block_object_dispose(&v36, 8);

  return v28 & 1;
}

void __103__PHAssetCreationRequest__accessWritableURLForUUID_imageUTI_originalFilename_photoLibrary_withHandler___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    *(*(a1[8] + 8) + 24) = (*(a1[7] + 16))();
  }

  else
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[4];
      v8 = a1[5];
      v9 = a1[6];
      v10 = 138413058;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Unable to obtain writable URL for UUID: %@, UTI: %@, and original filename: %@, error: %@", &v10, 0x2Au);
    }

    *(*(a1[8] + 8) + 24) = 0;
  }
}

- (id)_managedAssetFromPrimaryResourceData:(id)a3 validatedResources:(id)a4 withUUID:(id)a5 photoLibrary:(id)a6 mainFileMetadata:(id *)a7 getImageSource:(CGImageSource *)a8 imageData:(id *)a9
{
  v75[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__15607;
  v71 = __Block_byref_object_dispose__15608;
  v72 = 0;
  data = [v13 data];
  v14 = [v13 creationOptions];
  v15 = [v14 uniformTypeIdentifier];

  context = objc_autoreleasePoolPush();
  if (v15)
  {
    v74 = *MEMORY[0x1E696E118];
    v75[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
  }

  else
  {
    v16 = 0;
  }

  v17 = CGImageSourceCreateWithData(data, v16);
  v18 = v17;
  if (v15)
  {

    v19 = v18 != 0;
  }

  else if (v17)
  {
    v15 = CGImageSourceGetType(v17);
    v19 = 1;
  }

  else
  {
    v19 = 0;
    v15 = 0;
  }

  if ((([v53 hasCurrentAdjustment] ^ 1) & v19 & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v15];
  v21 = objc_opt_class();
  v22 = [v55 libraryBundle];
  v23 = [v22 timeZoneLookup];
  LOBYTE(v21) = [v21 _shouldGenerateThumbnailsDuringCreationForImageSource:v18 contentType:v20 timeZoneLookup:v23];

  if (v21)
  {

LABEL_12:
    v24 = 0;
    *buf = 0;
    v25 = MEMORY[0x1E69BF178];
    obj = 0;
    v26 = buf;
    p_obj = &obj;
    goto LABEL_16;
  }

  v28 = PLThumbnailsGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = [(PHChangeRequest *)self uuid];
    *buf = 138543362;
    *&buf[4] = v29;
    _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_INFO, "Delaying thumbnail generation from image data for %{public}@", buf, 0xCu);
  }

  p_obj = 0;
  v26 = 0;
  *buf = 0;
  v25 = MEMORY[0x1E69BF178];
  v24 = 1;
LABEL_16:
  v64 = 0;
  v65 = 0;
  v63 = 0;
  [v25 writeableDataForImageData:data imageUTIType:v15 imageSource:v18 thumbnailDataOut:p_obj imageUTITypeOut:&v65 primaryImagePropertiesOut:&v64 imageDataOut:&v63];
  if ((v24 & 1) == 0)
  {
    objc_storeStrong(v26, obj);
  }

  v30 = v65;
  v31 = v64;
  v32 = v63;
  if (v19)
  {
    CFRelease(v18);
  }

  v33 = [v13 creationOptions];
  v34 = [v33 originalFilename];

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __146__PHAssetCreationRequest__managedAssetFromPrimaryResourceData_validatedResources_withUUID_photoLibrary_mainFileMetadata_getImageSource_imageData___block_invoke;
  v57[3] = &unk_1E75A5E98;
  v62 = &v67;
  v57[4] = self;
  v35 = v32;
  v58 = v35;
  v36 = v30;
  v59 = v36;
  v37 = v31;
  v60 = v37;
  v38 = *buf;
  v61 = v38;
  v39 = [(PHAssetCreationRequest *)self _accessWritableURLForUUID:v54 imageUTI:v36 originalFilename:v34 photoLibrary:v55 withHandler:v57];

  objc_autoreleasePoolPop(context);
  if (v39)
  {
    v40 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v15];
    v41 = objc_alloc(MEMORY[0x1E69C0718]);
    v42 = [v55 libraryBundle];
    v43 = [v42 timeZoneLookup];
    v44 = [v41 initWithImageData:data contentType:v40 options:14 timeZoneLookup:v43 cacheImageSource:1 cacheImageData:1];

    if (v44)
    {
      if (a7)
      {
        v45 = v44;
        *a7 = v44;
      }

      LOWORD(v49) = 256;
      v46 = [MEMORY[0x1E69BE540] insertAssetIntoPhotoLibrary:v55 mainFileURL:v68[5] mainFileMetadata:v44 savedAssetType:-[PHAssetCreationRequest _savedAssetTypeForAsset](self bundleScope:"_savedAssetTypeForAsset") uuid:-[PHAssetCreationRequest bundleScope](self replacementUUID:"bundleScope") imageSource:v54 imageData:0 isPlaceholder:a8 deleteFileOnFailure:{a9, v49}];
      [v46 setUniformTypeIdentifier:v36];
    }

    else
    {
      v44 = PLBackendGetLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v47 = v68[5];
        *buf = 138412290;
        *&buf[4] = v47;
        _os_log_impl(&dword_19C86F000, v44, OS_LOG_TYPE_ERROR, "Unable to read metadata from data written to disk at %@", buf, 0xCu);
      }

      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  _Block_object_dispose(&v67, 8);

  return v46;
}

uint64_t __146__PHAssetCreationRequest__managedAssetFromPrimaryResourceData_validatedResources_withUUID_photoLibrary_mainFileMetadata_getImageSource_imageData___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEBUG, "Writing data for new asset to URL: %@", &v10, 0xCu);
  }

  v5 = [v3 copy];
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) _writeDataToDisk:*(a1 + 40) imageUTIType:*(a1 + 48) primaryImageProperties:*(a1 + 56) mainFileURL:v3 thumbnailData:*(a1 + 64)];
  return v8;
}

- (signed)_savedAssetTypeForAsset
{
  if (self->_createAsCompanionSyncedAsset)
  {
    return [MEMORY[0x1E69BF328] savedAssetTypeForCompanionSyncedAsset];
  }

  if (self->_momentShareUUID)
  {
    return [MEMORY[0x1E69BF328] savedAssetTypeForMomentSharedAsset];
  }

  if (self->_collectionShareUUID)
  {
    return [MEMORY[0x1E69BF328] savedAssetTypeForCollectionShareAsset];
  }

  if (self->_importedBy == 4)
  {
    return [MEMORY[0x1E69BF328] savedAssetTypeForImportedByCameraConnectionKit];
  }

  if (self->_duplicateAsAlternateAsset)
  {
    return [MEMORY[0x1E69BF328] savedAssetTypeForDuplicateAsAlternateAsset];
  }

  return [MEMORY[0x1E69BF328] defaultSavedAssetTypeForPhotoKitAssetCreationRequest];
}

- (id)_filteredImagePropertiesByConditionallyRemovingLivePhotoIdentifiersFromSourceImageProperties:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
    v8 = [(PHAssetCreationRequest *)self forcePairingIdentifier];
    v9 = [(PHAssetCreationRequest *)self duplicateLivePhotoAsStill];
    v10 = [(PHAssetCreationRequest *)self duplicateSinglePhotoFromBurst];
    v11 = v10;
    if (v7 != 0 && (v9 || v10) || v8)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v19 = 138413058;
        v20 = v7;
        v21 = 2112;
        v22 = v8;
        v23 = 1024;
        v24 = v9;
        v25 = 1024;
        v26 = v11;
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_INFO, "Asset creation request rewrites metadata: duplicateAssetIdentifier=%@, forcePairingIdentifier=%@, duplicateLivePhotoAsStill=%d, duplicateSinglePhotoFromBurst=%d", &v19, 0x22u);
      }

      v13 = *MEMORY[0x1E696DE30];
      v14 = [v6 objectForKey:*MEMORY[0x1E696DE30]];
      v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v14];
      v16 = v15;
      if (v8)
      {
        [v15 setObject:v8 forKey:*MEMORY[0x1E69867A8]];
      }

      else
      {
        if (v9)
        {
          [v15 removeObjectForKey:*MEMORY[0x1E69867A8]];
        }

        if (v11)
        {
          [v16 removeObjectForKey:*MEMORY[0x1E69867B0]];
        }
      }

      v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
      [v17 setObject:v16 forKey:v13];

      v6 = v17;
    }
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = self;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Unexpected nil image properties while processing creation request %@", &v19, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_createOriginalResourceForAsset:(id)a3 fromValidatedResource:(id)a4 resourceType:(unsigned int)a5 photoLibrary:(id)a6 destinationURL:(id)a7 error:(id *)a8
{
  v11 = *&a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__15607;
  v65 = __Block_byref_object_dispose__15608;
  v66 = 0;
  if (v15)
  {
    v18 = [v15 fileURL];
    v44 = v17;
    v45 = a8;
    v46 = v14;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__15607;
    v59 = __Block_byref_object_dispose__15608;
    v60 = 0;
    v19 = [v15 creationOptions];
    v20 = [v19 shouldIngestInPlace];

    v21 = [v16 pathManager];
    v22 = v21;
    if (v20)
    {
      v23 = MEMORY[0x1E69BF238];
      v24 = [v21 capabilities];
      v25 = v62;
      obj = v62[5];
      LODWORD(v23) = [v23 ingestItemAtURL:v18 toURL:v18 type:0 options:3 capabilities:v24 error:&obj];
      objc_storeStrong(v25 + 5, obj);

      if (v23)
      {
        objc_storeStrong(v56 + 5, v18);
        v26 = 1;
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v27 = [v15 creationOptions];
    v28 = [v27 shouldMoveFile];

    if ([v22 shouldUseFileIdentifierForBundleScope:self->_bundleScope])
    {
      v42 = v28;
      v43 = objc_alloc(MEMORY[0x1E69BF298]);
      v29 = [(PHChangeRequest *)self uuid];
      v30 = [v46 bundleScope];
      v31 = [v15 uniformTypeIdentifier];
      v32 = [v15 originalFilename];
      v33 = [v43 initWithAssetUuid:v29 bundleScope:v30 uti:v31 resourceVersion:0 resourceType:v11 recipeID:0 originalFilename:v32 customSuffix:0];

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __127__PHAssetCreationRequest__createOriginalResourceForAsset_fromValidatedResource_resourceType_photoLibrary_destinationURL_error___block_invoke;
      v48[3] = &unk_1E75A5E48;
      v51 = &v55;
      v48[4] = self;
      v53 = v42;
      v49 = v18;
      v50 = v22;
      v52 = &v61;
      [v50 obtainAccessAndWaitWithFileWithIdentifier:v33 mode:2 toURLWithHandler:v48];
    }

    else
    {
      objc_storeStrong(v56 + 5, a7);
      v34 = v56[5];
      if (!v34)
      {
LABEL_12:
        v26 = 0;
LABEL_13:

        _Block_object_dispose(&v55, 8);
        a8 = v45;
        v14 = v46;
        v17 = v44;
        if (!v45)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v33 = [v22 capabilities];
      v35 = v28;
      v36 = v62;
      v47 = v62[5];
      v37 = [(PHAssetCreationRequest *)self _secureMove:v35 fileAtURL:v18 toURL:v34 capabilities:v33 error:&v47];
      objc_storeStrong(v36 + 5, v47);
      v38 = v56[5];
      v56[5] = v37;
    }

    v26 = v56[5] != 0;
    goto LABEL_13;
  }

  v26 = 0;
  if (!a8)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (!v26)
  {
    v39 = v62[5];
    if (v39)
    {
      *a8 = v39;
    }

    else
    {
      v40 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Failed to create spatial over capture from resources"];
      *a8 = v40;
    }
  }

LABEL_18:
  _Block_object_dispose(&v61, 8);

  return v26;
}

void __127__PHAssetCreationRequest__createOriginalResourceForAsset_fromValidatedResource_resourceType_photoLibrary_destinationURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) capabilities];
    v11 = *(*(a1 + 64) + 8);
    obj = *(v11 + 40);
    v12 = [v8 _secureMove:v7 fileAtURL:v9 toURL:v5 capabilities:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }
}

- (BOOL)_createAudioResourceForAsset:(id)a3 fromValidatedResources:(id)a4 photoLibrary:(id)a5 error:(id *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v11 isValid])
  {
    v13 = [v11 assetResourceWithType:3];
    if (v13)
    {
      v14 = MEMORY[0x1E695DFF8];
      v30 = [v10 pathForOriginalFile];
      v15 = [v30 stringByDeletingPathExtension];
      v16 = [v13 fileURL];
      [v16 pathExtension];
      v17 = v10;
      v18 = v13;
      v19 = v12;
      v21 = v20 = a6;
      [v15 stringByAppendingPathExtension:v21];
      v22 = v29 = self;
      v23 = [v14 fileURLWithPath:v22];

      v24 = v20;
      v12 = v19;
      v13 = v18;
      v10 = v17;

      v25 = [(PHAssetCreationRequest *)v29 _createOriginalResourceForAsset:v17 fromValidatedResource:v13 resourceType:2 photoLibrary:v12 destinationURL:v23 error:v24];
      if (v25)
      {
        [MEMORY[0x1E69BE740] installSupplementalResourceForExistingFileAtURL:v23 ptpTrashedState:0 index:0 forAsset:v17 imageOrientation:0 resultingResource:0 error:v24];
      }

      else
      {
        v26 = PLBackendGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = *v24;
          *buf = 138412290;
          v32 = v27;
          _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    else
    {
      LOBYTE(v25) = 1;
    }
  }

  else
  {
    LOBYTE(v25) = 1;
  }

  return v25;
}

- (BOOL)_createXmpResourceForAsset:(id)a3 fromValidatedResources:(id)a4 photoLibrary:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v11 isValid])
  {
    v13 = [v11 assetResourceWithType:17];
    if (v13)
    {
      v14 = MEMORY[0x1E695DFF8];
      v15 = [v10 pathForXMPFile];
      v16 = [v14 fileURLWithPath:v15];
      v17 = [(PHAssetCreationRequest *)self _createOriginalResourceForAsset:v10 fromValidatedResource:v13 resourceType:5 photoLibrary:v12 destinationURL:v16 error:a6];
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (BOOL)_createSocResourceForAsset:(id)a3 fromValidatedResources:(id)a4 photoLibrary:(id)a5 error:(id *)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v11 isValid])
  {
    v13 = [v11 assetResourceWithType:13];
    if (!v13)
    {
      v13 = [v11 assetResourceWithType:14];
    }

    v14 = [v10 pathForSpatialOverCaptureContentFile];
    if (v14)
    {
      v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
      v16 = [v13 creationOptions];
      [v16 ensureOptionsAreCompleteForURL:v15];

      LODWORD(a6) = [(PHAssetCreationRequest *)self _createOriginalResourceForAsset:v10 fromValidatedResource:v13 resourceType:10 photoLibrary:v12 destinationURL:v15 error:a6];
      if (a6)
      {
        [v10 setCameraProcessingAdjustmentState:{objc_msgSend(v10, "cameraProcessingAdjustmentState") | 1}];
      }
    }

    else if (a6)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E69BFF48];
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"invalid parameters required for fileIdentifier";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *a6 = [v17 errorWithDomain:v18 code:46801 userInfo:v19];

      LOBYTE(a6) = 0;
    }
  }

  else
  {
    LOBYTE(a6) = 0;
  }

  return a6;
}

- (BOOL)_createRAWSidecarForAsset:(id)a3 fromValidatedResources:(id)a4 mainFileMetadata:(id)a5 photoLibrary:(id)a6 error:(id *)a7
{
  v59 = a3;
  v11 = a4;
  v58 = a5;
  v60 = a6;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__15607;
  v84 = __Block_byref_object_dispose__15608;
  v85 = 0;
  v12 = [v11 assetResourceWithType:4];
  v13 = [v11 validatedURLForAssetResource:v12];
  v14 = [v12 creationOptions];
  [v14 ensureOptionsAreCompleteForURL:v13];

  v15 = [[_PHAssetCreationRequestValidator alloc] initWithAssetCreationRequest:self];
  v16 = v81;
  v79 = v81[5];
  LODWORD(a5) = [(PHValidator *)v15 validateURL:v13 withOptions:1 error:&v79];
  objc_storeStrong(v16 + 5, v79);
  if (a5)
  {
    v73 = 0;
    v74 = &v73;
    v75 = 0x3032000000;
    v76 = __Block_byref_object_copy__15607;
    v77 = __Block_byref_object_dispose__15608;
    v78 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __111__PHAssetCreationRequest__createRAWSidecarForAsset_fromValidatedResources_mainFileMetadata_photoLibrary_error___block_invoke;
    aBlock[3] = &unk_1E75A5E70;
    v54 = v59;
    v70 = v54;
    v17 = v13;
    v71 = v17;
    v72 = &v73;
    v55 = _Block_copy(aBlock);
    v18 = [v12 creationOptions];
    v19 = [v18 shouldIngestInPlace];

    v56 = [v60 pathManager];
    if (v19)
    {
      v55[2]();
      v20 = v74[5];
      if (!v20)
      {
        goto LABEL_6;
      }

      if (![v20 isEqual:v17])
      {
        goto LABEL_6;
      }

      v21 = MEMORY[0x1E69BF238];
      v22 = v74[5];
      v23 = [v56 capabilities];
      v24 = v81;
      obj = v81[5];
      LOBYTE(v21) = [v21 ingestItemAtURL:v22 toURL:v22 type:0 options:3 capabilities:v23 error:&obj];
      objc_storeStrong(v24 + 5, obj);

      if ((v21 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    v26 = [v12 creationOptions];
    v27 = [v26 shouldMoveFile];

    if ([v56 shouldUseFileIdentifierForBundleScope:self->_bundleScope])
    {
      v52 = v27;
      v53 = objc_alloc(MEMORY[0x1E69BF298]);
      v28 = [(PHChangeRequest *)self uuid];
      v29 = [v54 bundleScope];
      v30 = [v12 uniformTypeIdentifier];
      v31 = [v12 originalFilename];
      v32 = [v53 initWithAssetUuid:v28 bundleScope:v29 uti:v30 resourceVersion:0 resourceType:4 recipeID:0 originalFilename:v31 customSuffix:0];

      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __111__PHAssetCreationRequest__createRAWSidecarForAsset_fromValidatedResources_mainFileMetadata_photoLibrary_error___block_invoke_2;
      v62[3] = &unk_1E75A5E48;
      v65 = &v73;
      v62[4] = self;
      v67 = v52;
      v63 = v17;
      v64 = v56;
      v66 = &v80;
      [v64 obtainAccessAndWaitWithFileWithIdentifier:v32 mode:2 toURLWithHandler:v62];
    }

    else
    {
      if (!(v55[2])())
      {
        goto LABEL_13;
      }

      v33 = v74[5];
      v32 = [v56 capabilities];
      v34 = v81;
      v61 = v81[5];
      v35 = [(PHAssetCreationRequest *)self _secureMove:v27 fileAtURL:v17 toURL:v33 capabilities:v32 error:&v61];
      objc_storeStrong(v34 + 5, v61);
      v36 = v74[5];
      v74[5] = v35;
    }

LABEL_13:
    if (!v74[5])
    {
LABEL_6:
      v25 = 0;
LABEL_17:

      _Block_object_dispose(&v73, 8);
      goto LABEL_18;
    }

LABEL_14:
    if ([v56 isDCIM])
    {
      v37 = objc_alloc_init(MEMORY[0x1E69BE870]);
      [v37 setResourceType:4];
      [v37 setFileURL:v74[5]];
      [v37 persistResourceTypeToFileURL];
    }

    v38 = v74[5];
    v39 = [v54 dateCreated];
    v40 = [v12 creationOptions];
    v41 = [v40 uniformTypeIdentifier];
    v42 = [v58 orientation];
    v43 = [v60 pathManager];
    LODWORD(v51) = v42;
    [v54 addSidecarFileAtIndex:0 sidecarURL:v38 withFilename:0 compressedSize:0 captureDate:v39 modificationDate:0 uniformTypeIdentifier:v41 imageOrientation:v51 pathManager:v43];

    v25 = 1;
    goto LABEL_17;
  }

  v25 = 0;
LABEL_18:
  v44 = a7;
  if (a7 && !v25)
  {
    v45 = v81;
    v46 = v81[5];
    if (v46)
    {
      v47 = v46;
      v48 = v45[5];
      v45[5] = v47;
    }

    else
    {
      v49 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Failed to create sidecar from resources"];
      v48 = v81[5];
      v81[5] = v49;
      v44 = a7;
    }

    *v44 = v81[5];
  }

  _Block_object_dispose(&v80, 8);
  return v25;
}

BOOL __111__PHAssetCreationRequest__createRAWSidecarForAsset_fromValidatedResources_mainFileMetadata_photoLibrary_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pathForOriginalFile];
  v3 = [v2 lastPathComponent];
  v4 = [v3 stringByDeletingPathExtension];
  v5 = [*(a1 + 40) pathExtension];
  v6 = [v4 stringByAppendingPathExtension:v5];

  v7 = [*(a1 + 32) fileURLForHypotheticalSidecarFileWithFilename:v6];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v10;
}

void __111__PHAssetCreationRequest__createRAWSidecarForAsset_fromValidatedResources_mainFileMetadata_photoLibrary_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) capabilities];
    v11 = *(*(a1 + 64) + 8);
    obj = *(v11 + 40);
    v12 = [v8 _secureMove:v7 fileAtURL:v9 toURL:v5 capabilities:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }
}

- (BOOL)_createAssetAsPhotoIris:(id)a3 fromValidatedResources:(id)a4 mainFileMetadata:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v14 = [v10 pathForOriginalFile];
  if (v14)
  {
    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
    [v13 addObject:v15];
  }

  v61 = v14;
  v16 = [v11 assetResourceWithType:9];
  v17 = [v11 validatedURLForAssetResource:v16];
  if (v17)
  {
    [v13 addObject:v17];
  }

  v18 = [v16 creationOptions];
  [v18 ensureOptionsAreCompleteForURL:v17];

  v60 = self;
  v19 = [[_PHAssetCreationRequestValidator alloc] initWithAssetCreationRequest:self];
  v78[0] = 0;
  LODWORD(v18) = [(PHValidator *)v19 validateURLs:v13 withOptions:64 videoComplementMetadata:0 error:v78];
  v20 = v78[0];
  v64 = v19;
  if (v18)
  {
    v58 = a6;
    v21 = [(_PHAssetCreationRequestValidator *)v19 validatedPairingIdentifier];
    [v13 removeAllObjects];
    v22 = [v11 assetResourceWithType:13];
    v23 = [v11 validatedURLForAssetResource:v22];
    v59 = v10;
    v57 = v21;
    if (!v23)
    {
      v55 = v12;

      v62 = 0;
      v63 = 0;
LABEL_13:
      v32 = [v16 creationOptions];
      v33 = [v32 shouldIngestInPlace];

      v34 = MEMORY[0x1E695DFF8];
      v35 = [v59 pathForVideoComplementFile];
      v36 = [v34 fileURLWithPath:v35 isDirectory:0];
      if (v33)
      {
        v76 = v20;
        v37 = [(PHAssetCreationRequest *)v60 _ingestOriginalInPlaceSrcURL:v17 dstURL:v36 asset:v59 error:&v76];
        v56 = v76;

        v10 = v59;
        if (!v37)
        {
          v38 = 0;
          LOBYTE(v31) = 0;
          v12 = v55;
LABEL_35:
          v30 = v57;
          a6 = v58;
          goto LABEL_36;
        }

        v38 = v17;
        if (!v63)
        {
          v31 = 0;
          v12 = v55;
LABEL_28:
          a6 = v58;
          v47 = v64;
          goto LABEL_29;
        }
      }

      else
      {
        v39 = [v16 creationOptions];
        v75 = v20;
        v40 = -[PHAssetCreationRequest _ingestOriginalFromSrcURL:toDstURL:useSecureMove:resource:resourceType:asset:error:](v60, "_ingestOriginalFromSrcURL:toDstURL:useSecureMove:resource:resourceType:asset:error:", v17, v36, [v39 shouldMoveFile], v16, 3, v59, &v75);
        v56 = v75;

        v38 = v40;
        v10 = v59;
        if (!v38 || !v63)
        {
          v31 = 0;
          v12 = v55;
          a6 = v58;
          v47 = v64;
          if (v38)
          {
LABEL_29:
            v71 = 0uLL;
            v72 = 0;
            if (v47)
            {
              [(_PHAssetCreationRequestValidator *)v47 validatedVideoDuration];
              v69 = 0uLL;
              v70 = 0;
              [(_PHAssetCreationRequestValidator *)v47 validatedImageDisplayTime];
            }

            else
            {
              v69 = 0uLL;
              v70 = 0;
            }

            v67 = v71;
            v68 = v72;
            v65 = v69;
            v66 = v70;
            v30 = v57;
            v50 = [v10 becomePhotoIrisWithMediaGroupUUID:v57 mainFileMetadata:v12 videoURL:v38 spatialOverCaptureURL:v31 videoDuration:&v67 stillDisplayTime:&v65 options:0];
            v51 = v31;
            LOBYTE(v31) = v50;

            goto LABEL_36;
          }

          v38 = 0;
          LOBYTE(v31) = 0;
          v30 = v57;
LABEL_36:

          v20 = v56;
          goto LABEL_37;
        }
      }

      v41 = v56;
      v42 = [v62 creationOptions];
      v43 = [v42 shouldIngestInPlace];

      v44 = MEMORY[0x1E695DFF8];
      v54 = [v59 pathForVideoComplementSpatialOverCaptureContentFile];
      v45 = [v44 fileURLWithPath:? isDirectory:?];
      if (v43)
      {
        v74 = v56;
        v46 = [(PHAssetCreationRequest *)v60 _ingestOriginalInPlaceSrcURL:v63 dstURL:v45 asset:v59 error:&v74];
        v56 = v74;

        v10 = v59;
        if (v46)
        {
          v31 = v63;
LABEL_27:
          v12 = v55;
          goto LABEL_28;
        }

        LOBYTE(v31) = 0;
      }

      else
      {
        v48 = [v62 creationOptions];
        v73 = v56;
        v49 = -[PHAssetCreationRequest _ingestOriginalFromSrcURL:toDstURL:useSecureMove:resource:resourceType:asset:error:](v60, "_ingestOriginalFromSrcURL:toDstURL:useSecureMove:resource:resourceType:asset:error:", v63, v45, [v48 shouldMoveFile], v62, 11, v59, &v73);
        v56 = v73;

        v31 = v49;
        v10 = v59;
        if (v31)
        {
          goto LABEL_27;
        }
      }

      v12 = v55;
      goto LABEL_35;
    }

    v24 = v23;
    [v13 addObject:v23];
    v25 = [v11 assetResourceWithType:15];
    v26 = [v11 validatedURLForAssetResource:v25];
    if (v26)
    {
      [v13 addObject:v26];
    }

    v62 = v25;
    v27 = [v25 creationOptions];
    v63 = v26;
    [v27 ensureOptionsAreCompleteForURL:v26];

    v77 = v20;
    v28 = [(PHValidator *)v64 validateURLs:v13 withOptions:64 videoComplementMetadata:0 error:&v77];
    v29 = v77;

    if (v28)
    {
      v55 = v12;
      v20 = v29;
      goto LABEL_13;
    }

    LOBYTE(v31) = 0;
    v20 = v29;
    a6 = v58;
    v10 = v59;
    v30 = v57;
  }

  else
  {
    v62 = 0;
    v63 = 0;
    v30 = 0;
    LOBYTE(v31) = 0;
  }

LABEL_37:
  if (a6 && (v31 & 1) == 0)
  {
    if (!v20)
    {
      v20 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Failed to create videoComplement from resources"];
    }

    v52 = v20;
    *a6 = v20;
  }

  return v31;
}

- (id)_ingestOriginalFromSrcURL:(id)a3 toDstURL:(id)a4 useSecureMove:(BOOL)a5 resource:(id)a6 resourceType:(unsigned int)a7 asset:(id)a8 error:(id *)a9
{
  v10 = *&a7;
  v40 = a5;
  v67 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__15607;
  v59 = __Block_byref_object_dispose__15608;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__15607;
  v53 = __Block_byref_object_dispose__15608;
  v54 = 0;
  v17 = [v16 photoLibrary];
  v18 = [v17 pathManager];

  if (![v18 shouldUseFileIdentifierForBundleScope:self->_bundleScope])
  {
    if (!v14)
    {
LABEL_12:
      if (a9)
      {
        *a9 = v56[5];
      }

      v33 = v50[5];
      goto LABEL_15;
    }

    v20 = [v16 photoLibrary];
    v21 = [v20 pathManager];

    v22 = [v21 capabilities];
    v23 = (v56 + 5);
    obj = v56[5];
    v24 = [(PHAssetCreationRequest *)self _secureMove:v40 fileAtURL:v41 toURL:v14 capabilities:v22 error:&obj];
    objc_storeStrong(v23, obj);
    v25 = v50[5];
    v50[5] = v24;

LABEL_11:
    goto LABEL_12;
  }

  if (v15)
  {
    v19 = [v15 uniformTypeIdentifier];
    if (v19)
    {

LABEL_8:
      v28 = objc_alloc(MEMORY[0x1E69BF298]);
      v29 = [v16 uuid];
      v30 = [v15 uniformTypeIdentifier];
      v31 = [v15 originalFilename];
      v21 = [v28 initWithAssetUuid:v29 bundleScope:0 uti:v30 resourceVersion:0 resourceType:v10 recipeID:0 originalFilename:v31 customSuffix:0];

      v32 = [v16 photoLibrary];
      LODWORD(v28) = v32 == 0;

      if (v28)
      {
        v38 = [MEMORY[0x1E696AAA8] currentHandler];
        [v38 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1719 description:{@"Invalid parameter not satisfying: %@", @"asset.photoLibrary"}];
      }

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __109__PHAssetCreationRequest__ingestOriginalFromSrcURL_toDstURL_useSecureMove_resource_resourceType_asset_error___block_invoke;
      v43[3] = &unk_1E75A5E48;
      v46 = &v49;
      v43[4] = self;
      v48 = v40;
      v44 = v41;
      v45 = v18;
      v47 = &v55;
      [v45 obtainAccessAndWaitWithFileWithIdentifier:v21 mode:2 toURLWithHandler:v43];

      goto LABEL_11;
    }

    v26 = [v15 originalFilename];
    v27 = v26 == 0;

    if (!v27)
    {
      goto LABEL_8;
    }
  }

  v35 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = [v15 uniformTypeIdentifier];
    v37 = [v15 originalFilename];
    *buf = 134218498;
    v62 = v15;
    v63 = 2112;
    v64 = v36;
    v65 = 2112;
    v66 = v37;
    _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_ERROR, "Resource (%p) must be non-nil and either resource.uniformTypeIdentifier (%@) or resource.originalFilename (%@) must be non-nil", buf, 0x20u);
  }

  if (a9)
  {
    [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Failed to ingest resource file from source to destination"];
    *a9 = v33 = 0;
  }

  else
  {
    v33 = 0;
  }

LABEL_15:

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  return v33;
}

void __109__PHAssetCreationRequest__ingestOriginalFromSrcURL_toDstURL_useSecureMove_resource_resourceType_asset_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) capabilities];
    v11 = *(*(a1 + 64) + 8);
    obj = *(v11 + 40);
    v12 = [v8 _secureMove:v7 fileAtURL:v9 toURL:v5 capabilities:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }
}

- (BOOL)_ingestOriginalInPlaceSrcURL:(id)a3 dstURL:(id)a4 asset:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 path];
  v13 = [v12 stringByDeletingPathExtension];

  v14 = [v9 path];
  v15 = [v14 stringByDeletingPathExtension];

  v16 = 0;
  v17 = 0;
  if (v15 && v13)
  {
    if (![v13 isEqualToString:v15])
    {
      v17 = 0;
      v16 = 0;
      if (!a6)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v18 = [v11 photoLibrary];
    v19 = [v18 pathManager];
    v20 = [v19 capabilities];

    v23 = 0;
    v16 = [MEMORY[0x1E69BF238] ingestItemAtURL:v9 toURL:v10 type:0 options:3 capabilities:v20 error:&v23];
    v17 = v23;
  }

  if (a6)
  {
LABEL_6:
    v21 = v17;
    *a6 = v17;
  }

LABEL_7:

  return v16;
}

- (BOOL)_createAssetAsAdjusted:(id)a3 fromValidatedResources:(id)a4 mainFileMetadata:(id)a5 error:(id *)a6
{
  v216 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (([v12 hasAdjustments] & 1) == 0)
  {
    v149 = [MEMORY[0x1E696AAA8] currentHandler];
    [v149 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1395 description:@"expect adjustment resources"];
  }

  v180 = [v12 mediaType];
  v186 = self;
  if (![v12 hasCurrentAdjustment])
  {
    goto LABEL_127;
  }

  v184 = v13;
  v14 = [v12 assetResourceWithType:7];
  v181 = [v12 assetResourceWithType:108];
  v176 = [v12 assetResourceWithType:110];
  v15 = [v12 validatedURLForAssetResource:v14];
  v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v15];
  v177 = v14;
  v175 = v15;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v25 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions backupAdjustmentsFile];

    if (!v25 || (v26 = objc_alloc(MEMORY[0x1E695DF20]), -[PHAssetCreationCameraIngestOptions backupAdjustmentsFile](self->_cameraIngestOptions, "backupAdjustmentsFile"), v27 = objc_claimAutoreleasedReturnValue(), v17 = [v26 initWithContentsOfFile:v27], v27, !v17))
    {
      v28 = MEMORY[0x1E696ABC0];
      v200 = *MEMORY[0x1E696A278];
      v201 = @"Unable to determine adjustment data";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v201 forKeys:&v200 count:1];
      v29 = [v28 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v17];
      goto LABEL_126;
    }
  }

  v18 = [v14 creationOptions];
  v19 = [v18 shouldMoveFile];

  if (v19)
  {
    v20 = [MEMORY[0x1E69BF238] fileManager];
    v191 = 0;
    [v20 removeItemAtURL:v15 error:&v191];
    v163 = v191;
  }

  else
  {
    v163 = 0;
  }

  v183 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BF380]];
  v182 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BF388]];
  v21 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BF370]];
  v22 = v186;
  v23 = [(PHAssetChangeRequest *)v186 editorBundleID];
  v24 = v23;
  if (v23)
  {
    v170 = v23;
  }

  else
  {
    v170 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BF378]];
  }

  v30 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BF368]];
  v157 = [v30 integerValue];

  v31 = *MEMORY[0x1E69BF390];
  v32 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BF390]];
  v162 = [v32 intValue];

  v153 = [(PHChangeRequest *)v186 shouldPerformConcurrentWork];
  if ([v11 importedBy] == 1)
  {
    v156 = 0;
    if (v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v156 = [v11 importedBy] != 2;
    if (v21)
    {
      goto LABEL_24;
    }
  }

  if (v181)
  {
    v33 = v11;
    v34 = a6;
    v35 = [v12 validatedURLForAssetResource:v181];
    v36 = [MEMORY[0x1E696AC08] defaultManager];
    v37 = [v35 path];
    v38 = [v36 fileExistsAtPath:v37];

    if (v38)
    {
      v21 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v35];
    }

    else
    {
      v21 = 0;
    }

    a6 = v34;
    v11 = v33;
    v22 = v186;
  }

LABEL_24:
  v173 = a6;
  v178 = v21;
  if (!v183 || !v182 || !v21)
  {
    v39 = [(PHAssetCreationCameraIngestOptions *)v22->_cameraIngestOptions backupAdjustmentsFile];

    if (!v39)
    {
      v54 = MEMORY[0x1E696ABC0];
      v204 = *MEMORY[0x1E696A278];
      v205 = @"Unable to determine adjustment data format and version";
      v179 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v205 forKeys:&v204 count:1];
      v29 = [v54 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:?];
      v158 = 0;
      v166 = 0;
      v168 = 0;
      v53 = 0;
      v171 = 0;
      v165 = 0;
      goto LABEL_53;
    }
  }

  v40 = [v11 playbackStyle] == 3 || objc_msgSend(v11, "playbackStyle") == 5;
  if (!v22->_duplicateAssetIdentifier)
  {
    v40 = ([v12 mediaSubtype] >> 3) & 1;
  }

  v190 = 0;
  v41 = [MEMORY[0x1E69BE650] validateAdjustmentData:v178 formatIdentifier:v183 formatVersion:v182 error:&v190];
  v179 = v190;
  if ((v41 & 1) == 0)
  {
    v42 = [(PHAssetCreationCameraIngestOptions *)v22->_cameraIngestOptions backupAdjustmentsFile];

    if (!v42)
    {
      v43 = PLBackendGetLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = NSStringFromSelector(a2);
        *buf = 138412546;
        v213 = v44;
        v214 = 2112;
        v215 = v179;
        _os_log_impl(&dword_19C86F000, v43, OS_LOG_TYPE_DEFAULT, "%@ - Invalid adjustment. Relying on rendered resources. Error: %@", buf, 0x16u);
      }
    }
  }

  v45 = [v17 objectForKeyedSubscript:v31];
  v46 = [v45 integerValue];

  if (v180 == 2)
  {
    v51 = [v12 assetResourceWithType:6];
    if (!v51)
    {
      v51 = [v12 assetResourceWithType:107];
    }

    [v12 validatedURLForAssetResource:v51];
    v159 = v21 = v178;
    if (v159)
    {
      v52 = 0;
    }

    else
    {
      if ((v41 & 1) == 0)
      {
        v61 = MEMORY[0x1E696ABC0];
        v206 = *MEMORY[0x1E696A278];
        v207 = @"This resource set requires a full size video render resource to be provided";
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
        v58 = [v61 errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v62];

        v21 = v178;
        v52 = 0;
        if (v58)
        {
          goto LABEL_61;
        }

        goto LABEL_63;
      }

      v52 = [v11 kindSubtype] != 101;
    }

    v58 = v163;
    if (v163)
    {
LABEL_61:
      v59 = v58;

      v165 = 0;
      v166 = 0;
      v171 = 0;
      v53 = 0;
      v60 = 0;
      v168 = 0;
      v164 = 0;
      v39 = v159;
LABEL_124:

      v78 = v164;
      v29 = v59;
      goto LABEL_125;
    }

LABEL_63:
    v158 = v52;
    v63 = [v12 assetResourceWithType:5];
    v64 = [v12 validatedURLForAssetResource:v63];
    v65 = [v12 assetResourceWithType:12];
    v66 = [v12 validatedURLForAssetResource:v65];

    v21 = v178;
    v67 = v64;
    v165 = 0;
    v166 = 0;
    v171 = 0;
    v53 = 0;
    v168 = 0;
    v39 = v159;
LABEL_90:
    v152 = v66;
    v164 = v67;
    v79 = [objc_alloc(MEMORY[0x1E69C0660]) initWithFormatIdentifier:v183 formatVersion:v182 data:v21 baseVersion:v157 editorBundleID:v170 renderTypes:v162];
    if (!v79)
    {
      v94 = [(PHAssetCreationCameraIngestOptions *)v22->_cameraIngestOptions backupAdjustmentsFile];

      if (!v94 || ([(PHAssetCreationRequest *)v22 _createAssetAdjustmentsFromBackupWithAsset:v11], (v79 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v95 = MEMORY[0x1E696ABC0];
        v202 = *MEMORY[0x1E696A278];
        v203 = @"Unable to create adjustments from adjustment data";
        v179 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v203 forKeys:&v202 count:1];
        v59 = [v95 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:?];
LABEL_123:
        v60 = v152;
        goto LABEL_124;
      }
    }

    v80 = v79;
    v155 = v53;
    v81 = *MEMORY[0x1E695F060];
    v82 = *(MEMORY[0x1E695F060] + 8);
    v83 = [v11 dateCreated];
    [v80 setAdjustmentTimestamp:v83];

    v84 = [v177 creationOptions];
    v85 = 4;
    if ([v84 shouldMoveFile])
    {
      v86 = 4;
    }

    else
    {
      v86 = 1;
    }

    [v11 setCameraProcessingAdjustmentStateFromAdjustmentRenderTypes:v162];
    v87 = [v39 path];
    v88 = v39;
    v89 = [v87 containsString:@"fullsizerender.JPG"];

    v161 = v88;
    v179 = v80;
    if (v89)
    {
      v90 = 0;
      v91 = 1;
      v92 = 1;
    }

    else
    {
      v93 = [v88 pathExtension];
      if ([v93 isEqualToString:@"largeThumbnail"])
      {
      }

      else
      {

        v90 = 0;
        v92 = 1;
        if (!v88 || !v165)
        {
          v91 = !v153;
          v85 = v86;
          goto LABEL_110;
        }
      }

      [(PHAssetCreationCameraIngestOptions *)v186->_cameraIngestOptions finalAssetWidth];
      v81 = v96;
      [(PHAssetCreationCameraIngestOptions *)v186->_cameraIngestOptions finalAssetHeight];
      v82 = v97;
      v92 = 0;
      if (v81 > 0.0)
      {
        v158 = 1;
        v91 = !v153;
      }

      else
      {
        v91 = !v153;
        if (v97 <= 0.0)
        {
          v81 = [v11 width];
          v92 = 0;
          v82 = [v11 height];
        }

        v158 = 1;
      }

      v85 = v86;
      v90 = 1;
    }

LABEL_110:
    v98 = objc_alloc_init(MEMORY[0x1E69BE5D8]);
    [v98 setRenderedContentURL:v161];
    [v98 setPenultimateRenderedJPEGData:v171];
    [v98 setPenultimateRenderedVideoContentURL:v152];
    [v98 setSubstandardRender:v90];
    [v98 setDeferred:v158];
    [v98 setFullSizeRenderSize:{v81, v82}];
    [v98 setRenderedVideoComplementContentURL:v166];
    [v98 setPenultimateRenderedVideoComplementContentURL:v168];
    [v98 setRenderedVideoPosterContentURL:v164];
    [v98 setMainFileMetadata:v184];
    [v98 setShouldUpdateAttributes:v92];
    [v98 setFileIngestionType:v85];
    [v98 setShouldGenerateThumbnails:v91];
    [v98 setShouldCheckForLegacyCameraAutoAdjustment:v156];
    v99 = [v12 validatedURLForAssetResource:v176];
    [v98 setAdjustmentSecondaryDataURL:v99];

    [v11 setAdjustments:v80 options:v98];
    if (v158 && ![v11 deferredProcessingNeeded])
    {
      [v11 setDeferredProcessingNeeded:2];
    }

    v100 = [(PHChangeRequest *)v186 helper];
    v101 = [v100 clientAuthorization];
    v102 = [v101 isCameraClient];

    v53 = v155;
    if (!v102)
    {
      goto LABEL_116;
    }

    v103 = [v12 assetResourceWithType:16];
    if (!v103)
    {
      if ([v11 setCurrentAdjustmentAsOriginalAdjustment])
      {
        goto LABEL_116;
      }

      v103 = PLPhotoKitIngestGetLog();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v103, OS_LOG_TYPE_ERROR, "Failed to set original adjustment file (AAE) for asset", buf, 2u);
      }
    }

LABEL_116:
    if (v180 == 1)
    {
      v104 = [v12 assetResourceWithType:8];
      v105 = [v104 creationOptions];
      v106 = [v105 shouldMoveFile];

      if (v106)
      {
        v107 = [v12 validatedURLForAssetResource:v104];
        v108 = [MEMORY[0x1E69BF238] fileManager];
        v189 = 0;
        [v108 removeItemAtURL:v107 error:&v189];
        v59 = v189;
      }

      else
      {
        v59 = 0;
      }

      v21 = v178;
    }

    else
    {
      v59 = 0;
      v21 = v178;
    }

    v39 = v161;
    goto LABEL_123;
  }

  if (v180 != 1)
  {
    v29 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Unexpected media type"];
    v158 = 0;
    v166 = 0;
    v168 = 0;
    v39 = 0;
    v53 = 0;
    v171 = 0;
    v165 = 0;
    v21 = v178;
LABEL_53:
    v47 = v163;
    goto LABEL_89;
  }

  v47 = [v12 assetResourceWithType:5];
  v48 = [v12 assetResourceWithType:5];
  if (!v47)
  {
    v47 = [v12 assetResourceWithType:107];
  }

  v150 = v46;
  if (!v48)
  {
    v48 = [v12 assetResourceWithType:111];
  }

  v39 = [v12 validatedURLForAssetResource:v47];
  v154 = [v12 validatedDataForAssetResource:v48];
  v49 = [v154 length];
  v151 = v48;
  if (!v39)
  {
    if (v49)
    {
      if (![v154 length])
      {
        v50 = 0;
        v39 = 0;
        goto LABEL_46;
      }

      v172 = DCIM_newPLImageWithStoredJPEGData();
      v169 = [v11 photoLibrary];
      v167 = [v169 libraryServicesManager];
      v55 = [v167 imageWriter];
      v56 = [v11 filename];
      v57 = [v55 writeFilteredPreviewWithImageData:v154 orImage:v172 toPathWithBaseName:v56];

      if (v57)
      {
        v165 = v57;
        v39 = [MEMORY[0x1E695DFF8] fileURLWithPath:v57 isDirectory:0];
      }

      else
      {
        v39 = 0;
        v165 = 0;
      }

      v69 = v172;
    }

    else
    {
      if (v41)
      {
        v39 = 0;
        v165 = 0;
        v50 = 1;
        goto LABEL_71;
      }

      v68 = MEMORY[0x1E696ABC0];
      v210 = *MEMORY[0x1E696A278];
      v211 = @"This resource set requires a full size render resource to be provided";
      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v211 forKeys:&v210 count:1];
      v70 = [v68 errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v69];

      v163 = v70;
      v165 = 0;
      v39 = 0;
    }

    v50 = 0;
    goto LABEL_71;
  }

  v50 = 0;
LABEL_46:
  v165 = 0;
LABEL_71:
  v29 = v163;
  v158 = v50;
  if (v40 && !v163)
  {
    [v12 assetResourceWithType:10];
    v72 = v71 = v39;

    v166 = [v12 validatedURLForAssetResource:v72];
    v158 |= (v166 == 0) & v41;
    v47 = v72;
    v39 = v71;
    v53 = v154;
    goto LABEL_75;
  }

  v166 = 0;
  v168 = 0;
  v171 = 0;
  v53 = v154;
  if (!v163)
  {
LABEL_75:
    v73 = [v12 assetResourceWithType:8];
    if (v73)
    {
      v171 = [v12 validatedDataForAssetResource:v73];
      if (!v171)
      {
        [v12 validatedURLForAssetResource:v73];
        v75 = v74 = v39;
        v171 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v75];

        v39 = v74;
        v53 = v154;
      }

      if (v40)
      {
        v160 = v39;
        v76 = [v12 assetResourceWithType:11];

        v168 = [v12 validatedURLForAssetResource:v76];
        if (!v168)
        {
          if ((v150 & 0x20) != 0)
          {
            v147 = MEMORY[0x1E696ABC0];
            v208 = *MEMORY[0x1E696A278];
            v209 = @"This resource set requires a adjustment base video complement resource to be provided";
            v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
            v77 = [v147 errorWithDomain:@"PHPhotosErrorDomain" code:3303 userInfo:v148];

            v53 = v154;
            v168 = 0;
            goto LABEL_83;
          }

          v168 = 0;
        }

        v77 = 0;
LABEL_83:
        v73 = v76;
        v39 = v160;
LABEL_87:

        v29 = v77;
        goto LABEL_88;
      }

      v168 = 0;
    }

    else
    {
      v168 = 0;
      v171 = 0;
    }

    v77 = 0;
    goto LABEL_87;
  }

LABEL_88:

  v21 = v178;
LABEL_89:

  v66 = 0;
  v67 = 0;
  v60 = 0;
  v78 = 0;
  if (!v29)
  {
    goto LABEL_90;
  }

LABEL_125:

  a6 = v173;
LABEL_126:

  v13 = v184;
  if (v29)
  {
    goto LABEL_155;
  }

LABEL_127:
  if (![v12 hasOriginalAdjustment])
  {
    goto LABEL_144;
  }

  v185 = v13;
  v109 = [v12 assetResourceWithType:16];
  v110 = [v12 validatedURLForAssetResource:v109];
  v111 = [v109 creationOptions];
  [v111 ensureOptionsAreCompleteForURL:v110];

  v112 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v110];
  v113 = [v112 objectForKeyedSubscript:*MEMORY[0x1E69BF380]];
  if (!v113)
  {
    goto LABEL_135;
  }

  v114 = v113;
  v115 = [v112 objectForKeyedSubscript:*MEMORY[0x1E69BF388]];
  if (!v115)
  {

    goto LABEL_135;
  }

  v116 = v115;
  v117 = [v112 objectForKeyedSubscript:*MEMORY[0x1E69BF370]];

  if (!v117)
  {
LABEL_135:
    v121 = MEMORY[0x1E696ABC0];
    v196 = *MEMORY[0x1E696A278];
    v197 = @"Unable to determine original adjustment data format and version";
    v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v197 forKeys:&v196 count:1];
    v29 = [v121 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v122];
LABEL_142:

    goto LABEL_143;
  }

  v118 = [v112 objectForKeyedSubscript:*MEMORY[0x1E69BF390]];
  v119 = [v118 integerValue];

  if ((v119 & 0x10) == 0 || (v180 != 1 ? (v120 = 14) : (v120 = 13), ([v12 assetResourceWithType:v120], v123 = objc_claimAutoreleasedReturnValue(), v123, v123) || (v145 = MEMORY[0x1E696ABC0], v198 = *MEMORY[0x1E696A278], v199 = @"This resource set requires a adjustment base resource to be provided", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v199, &v198, 1), v146 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v145, "errorWithDomain:code:userInfo:", @"PHPhotosErrorDomain", 3303, v146), v29 = objc_claimAutoreleasedReturnValue(), v146, !v29)))
  {
    v174 = a6;
    v122 = [v12 validatedURLForAssetResource:v109];
    v124 = [v109 creationOptions];
    v125 = [v124 shouldIngestInPlace];

    v126 = MEMORY[0x1E695DFF8];
    v127 = [v11 pathForOriginalAdjustmentFile];
    v128 = [v126 fileURLWithPath:v127];
    if (v125)
    {
      v188 = 0;
      [(PHAssetCreationRequest *)v186 _ingestOriginalInPlaceSrcURL:v122 dstURL:v128 asset:v11 error:&v188];
      v29 = v188;
    }

    else
    {
      v129 = [v109 creationOptions];
      v187 = 0;
      v130 = -[PHAssetCreationRequest _ingestOriginalFromSrcURL:toDstURL:useSecureMove:resource:resourceType:asset:error:](v186, "_ingestOriginalFromSrcURL:toDstURL:useSecureMove:resource:resourceType:asset:error:", v122, v128, [v129 shouldMoveFile], v109, 5, v11, &v187);
      v29 = v187;
    }

    a6 = v174;
    goto LABEL_142;
  }

LABEL_143:

  v13 = v185;
  if (v29)
  {
    goto LABEL_155;
  }

LABEL_144:
  v131 = [v12 assetResourceWithType:18];
  if (v131)
  {
    v132 = objc_alloc(MEMORY[0x1E69C0910]);
    v133 = [v131 fileURL];
    v134 = [v132 initWithURL:v133];

    if (v134)
    {
      v135 = [v134 adjustmentFormatIdentifier];
      if (v135)
      {
        v136 = v135;
        v137 = [v134 adjustmentFormatVersion];

        if (v137)
        {
          v138 = [MEMORY[0x1E69BE258] assetAdjustmentOptionsForSLMAdjustmentsWithMainFileMetadata:v13];
          [v11 setAdjustments:v134 options:v138];
          v29 = 0;
LABEL_153:

          goto LABEL_154;
        }
      }

      v139 = MEMORY[0x1E696ABC0];
      v194 = *MEMORY[0x1E696A278];
      v195 = @"Unable to determine slomo adjustment data format and version";
      v140 = MEMORY[0x1E695DF20];
      v141 = &v195;
      v142 = &v194;
    }

    else
    {
      v139 = MEMORY[0x1E696ABC0];
      v192 = *MEMORY[0x1E696A278];
      v193 = @"Unable to create adjustments from slo-mo adjustment data";
      v140 = MEMORY[0x1E695DF20];
      v141 = &v193;
      v142 = &v192;
    }

    v138 = [v140 dictionaryWithObjects:v141 forKeys:v142 count:1];
    v29 = [v139 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v138];
    goto LABEL_153;
  }

  v29 = 0;
LABEL_154:

LABEL_155:
  if (a6)
  {
    v143 = v29;
    *a6 = v29;
  }

  return v29 == 0;
}

- (id)_secureMove:(BOOL)a3 assetResource:(id)a4 photoLibrary:(id)a5 error:(id *)a6
{
  v40 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 fileURL];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v35 = v34 = v9;
    [v35 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1362 description:@"expect file url"];

    v9 = v34;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E696AAA8] currentHandler];
  v37 = v36 = v9;
  [v37 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1363 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

  v9 = v36;
LABEL_3:
  [v10 pathManager];
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__15607;
  v58 = __Block_byref_object_dispose__15608;
  v41 = v59 = 0;
  if ([v41 shouldUseFileIdentifierForBundleScope:self->_bundleScope])
  {
    v12 = objc_alloc(MEMORY[0x1E69BF298]);
    v13 = [(PHChangeRequest *)self uuid];
    v14 = [(PHAssetCreationRequest *)self bundleScope];
    v15 = [v9 uniformTypeIdentifier];
    v16 = [v9 originalFilename];
    v17 = [v12 initWithAssetUuid:v13 bundleScope:v14 uti:v15 resourceVersion:0 resourceType:31 recipeID:0 originalFilename:v16 customSuffix:0];

    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__15607;
    v52 = __Block_byref_object_dispose__15608;
    v53 = 0;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __71__PHAssetCreationRequest__secureMove_assetResource_photoLibrary_error___block_invoke;
    v42[3] = &unk_1E75A5E48;
    v45 = &v54;
    v42[4] = self;
    v47 = v40;
    v43 = v11;
    v18 = v41;
    v44 = v41;
    v46 = &v48;
    [v44 obtainAccessAndWaitWithFileWithIdentifier:v17 mode:2 toURLWithHandler:v42];
    if (a6)
    {
      v19 = v49[5];
      if (v19)
      {
        *a6 = v19;
      }
    }

    _Block_object_dispose(&v48, 8);
    v20 = 0;
    goto LABEL_13;
  }

  if (self->_momentShareUUID)
  {
    v38 = v9;
    v21 = [v10 pathManager];
    v22 = [v21 privateDirectoryWithSubType:7];
    v23 = [v22 stringByAppendingPathComponent:self->_momentShareUUID];

    v24 = [v10 libraryServicesManager];
    v25 = [v24 imageWriter];
    v26 = [(PHChangeRequest *)self uuid];
    v27 = [v11 pathExtension];
    v28 = [v27 uppercaseString];
    v20 = [v25 pathForNewAssetWithDirectoryPath:v23 fileName:v26 extension:v28];

    v9 = v38;
  }

  else
  {
    v23 = [v10 libraryServicesManager];
    v24 = [v23 imageWriter];
    v25 = [v11 pathExtension];
    v26 = [v25 uppercaseString];
    v27 = [(PHChangeRequest *)self uuid];
    v20 = [v24 cameraAssetPathForNewAssetWithExtension:v26 assetUUID:v27];
  }

  if (v20)
  {
    v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v20 isDirectory:0];
    v29 = [v41 capabilities];
    v30 = [(PHAssetCreationRequest *)self _secureMove:v40 fileAtURL:v11 toURL:v17 capabilities:v29 error:a6];
    v31 = v55[5];
    v55[5] = v30;

    v18 = v41;
LABEL_13:

    goto LABEL_14;
  }

  v18 = v41;
LABEL_14:
  v32 = v55[5];
  _Block_object_dispose(&v54, 8);

  return v32;
}

void __71__PHAssetCreationRequest__secureMove_assetResource_photoLibrary_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) capabilities];
    v11 = *(*(a1 + 64) + 8);
    obj = *(v11 + 40);
    v12 = [v8 _secureMove:v7 fileAtURL:v9 toURL:v5 capabilities:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }
}

- (id)_secureMove:(BOOL)a3 fileAtURL:(id)a4 toURL:(id)a5 capabilities:(id)a6 error:(id *)a7
{
  v10 = a3;
  v38 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v13)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1330 description:@"expect file url"];
  }

  if (v10)
  {
    v16 = *MEMORY[0x1E69BFDE8];
    v33 = 0;
    v17 = [MEMORY[0x1E69BF238] stripExtendedAttributesFromFileAtURL:v13 inDomain:v16 error:&v33];
    v18 = v33;
    v19 = v18;
    if (v17)
    {
      v32 = v18;
      v20 = [MEMORY[0x1E69BF238] secureMoveItemAtURL:v13 toURL:v14 capabilities:v15 error:&v32];
      v21 = v32;

      if (v20)
      {
        [(PHAssetCreationRequest *)self _didMoveFileFromURL:v13 toURL:v14];
        goto LABEL_17;
      }
    }

    else
    {
      v21 = v18;
    }

    goto LABEL_14;
  }

  v31 = 0;
  v22 = [MEMORY[0x1E69BF238] copyItemAtURL:v13 toURL:v14 error:&v31];
  v21 = v31;
  if (!v22)
  {
LABEL_14:

    if (a7)
    {
      v27 = v21;
      v14 = 0;
      *a7 = v21;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_17;
  }

  v23 = *MEMORY[0x1E69BFDE8];
  v30 = 0;
  v24 = [MEMORY[0x1E69BF238] stripExtendedAttributesFromFileAtURL:v14 inDomain:v23 error:&v30];
  v25 = v30;
  if ((v24 & 1) == 0)
  {
    v26 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v35 = v14;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_ERROR, "Failed to strip extended attributes from %@, %@", buf, 0x16u);
    }
  }

LABEL_17:

  return v14;
}

- (void)_resetMovedFiles
{
  [(NSMutableDictionary *)self->_movedFiles removeAllObjects];
  movedFiles = self->_movedFiles;
  self->_movedFiles = 0;
}

- (BOOL)_restoreMovedFilesOnFailure
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = [MEMORY[0x1E69BF238] fileManager];
  v3 = [(NSMutableDictionary *)self->_movedFiles copy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v23;
    v18 = 1;
    *&v5 = 138412802;
    v17 = v5;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v9);
        v12 = [(NSMutableDictionary *)self->_movedFiles objectForKey:v11, v17];
        v21 = v10;
        v13 = [v20 moveItemAtURL:v11 toURL:v12 error:&v21];
        v7 = v21;

        if (v13)
        {
          [(NSMutableDictionary *)self->_movedFiles removeObjectForKey:v11];
        }

        else
        {
          v14 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v27 = v11;
            v28 = 2112;
            v29 = v12;
            v30 = 2112;
            v31 = v7;
            _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "Failed to restore moved file from %@ to %@ %@", buf, 0x20u);
          }

          v18 = 0;
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v6);

    v15 = v18;
  }

  else
  {
    v15 = 1;
  }

  return v15 & 1;
}

- (void)_didMoveFileFromURL:(id)a3 toURL:(id)a4
{
  v10 = a3;
  v6 = a4;
  movedFiles = self->_movedFiles;
  if (!movedFiles)
  {
    v8 = objc_opt_new();
    v9 = self->_movedFiles;
    self->_movedFiles = v8;

    movedFiles = self->_movedFiles;
  }

  [(NSMutableDictionary *)movedFiles setObject:v10 forKey:v6];
}

- (void)_copyMediaAnalysisProperties:(id)a3
{
  v4 = a3;
  [v4 fetchPropertySetsIfNeeded];
  v5 = [v4 mediaAnalysisProperties];
  [v5 bestPlaybackRect];
  [(PHAssetChangeRequest *)self setBestPlaybackRectWithNormalizedRect:?];

  v6 = [MEMORY[0x1E695DF00] date];
  [(PHAssetChangeRequest *)self setMediaAnalysisTimeStamp:v6];

  v7 = [v4 mediaAnalysisProperties];
  v8 = v7;
  if (v7)
  {
    [v7 bestKeyFrameTime];
  }

  else
  {
    v30 = 0uLL;
    *&v31 = 0;
  }

  [(PHAssetChangeRequest *)self setBestKeyFrame:0 time:&v30];

  v9 = [v4 mediaAnalysisProperties];
  v10 = v9;
  if (v9)
  {
    [v9 bestVideoTimeRange];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
  }

  [(PHAssetChangeRequest *)self setBestVideoTimeRange:&v30];

  v11 = [v4 mediaAnalysisProperties];
  v12 = v11;
  if (v11)
  {
    [v11 animatedStickerTimeRange];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
  }

  [(PHAssetChangeRequest *)self setAnimatedStickerTimeRange:&v30];

  v13 = [v4 mediaAnalysisProperties];
  [v13 blurrinessScore];
  [(PHAssetChangeRequest *)self setBlurrinessScore:?];

  v14 = [v4 mediaAnalysisProperties];
  [v14 exposureScore];
  [(PHAssetChangeRequest *)self setExposureScore:?];

  v15 = [v4 mediaAnalysisProperties];
  [v15 wallpaperScore];
  [(PHAssetChangeRequest *)self setWallpaperScore:?];

  v16 = [v4 mediaAnalysisProperties];
  [v16 autoplaySuggestionScore];
  [(PHAssetChangeRequest *)self setAutoplaySuggestionScore:?];

  v17 = [v4 mediaAnalysisProperties];
  [v17 videoStickerSuggestionScore];
  [(PHAssetChangeRequest *)self setVideoStickerSuggestionScore:?];

  v18 = [v4 mediaAnalysisProperties];
  [v18 videoScore];
  [(PHAssetChangeRequest *)self setVideoScore:?];

  v19 = [v4 mediaAnalysisProperties];
  [v19 activityScore];
  [(PHAssetChangeRequest *)self setActivityScore:?];

  v20 = [v4 mediaAnalysisProperties];
  [v20 audioScore];
  [(PHAssetChangeRequest *)self setAudioScore:?];

  v21 = [v4 mediaAnalysisProperties];
  [v21 settlingEffectScore];
  [(PHAssetChangeRequest *)self setSettlingEffectScore:?];

  v22 = [v4 mediaAnalysisProperties];
  -[PHAssetChangeRequest setFaceCount:](self, "setFaceCount:", [v22 faceCount]);

  v23 = [v4 mediaAnalysisProperties];
  -[PHAssetChangeRequest setAudioClassification:](self, "setAudioClassification:", [v23 audioClassification]);

  v24 = [v4 mediaAnalysisProperties];
  -[PHAssetChangeRequest setProbableRotationDirection:](self, "setProbableRotationDirection:", [v24 probableRotationDirection]);

  v25 = [v4 mediaAnalysisProperties];
  [v25 probableRotationDirectionConfidence];
  [(PHAssetChangeRequest *)self setProbableRotationDirectionConfidence:?];

  v26 = [v4 mediaAnalysisProperties];
  v27 = [v26 colorNormalizationData];
  [(PHAssetChangeRequest *)self setColorNormalizationData:v27];

  v28 = [v4 mediaAnalysisProperties];
  [v28 bestPlaybackRect];
  [(PHAssetChangeRequest *)self setBestPlaybackRectWithNormalizedRect:?];

  v29 = [v4 mediaAnalysisProperties];
  -[PHAssetChangeRequest setScreenTimeDeviceImageSensitivity:](self, "setScreenTimeDeviceImageSensitivity:", [v29 screenTimeDeviceImageSensitivity]);
}

- (void)_copyUserSpecificMetadataFromAsset:(id)a3
{
  v4 = a3;
  -[PHAssetChangeRequest setHidden:](self, "setHidden:", [v4 isHidden]);
  -[PHAssetChangeRequest setFavorite:](self, "setFavorite:", [v4 isFavorite]);
  v5 = [v4 title];

  [(PHAssetChangeRequest *)self setTitle:v5];
}

- (void)_copyMetadataFromAsset:(id)a3
{
  v7 = a3;
  [v7 fetchPropertySetsIfNeeded];
  v4 = [v7 creationDate];
  [(PHAssetChangeRequest *)self setCreationDate:v4];

  v5 = [v7 location];
  [(PHAssetChangeRequest *)self setLocation:v5];

  v6 = [v7 coarseLocationProperties];
  [v6 gpsHorizontalAccuracy];
  [(PHAssetChangeRequest *)self setGpsHorizontalAccuracy:?];

  if ([v7 videoCpVisibilityState])
  {
    -[PHAssetChangeRequest setPhotoIrisVisibilityState:](self, "setPhotoIrisVisibilityState:", [v7 videoCpVisibilityState]);
  }

  -[PHAssetChangeRequest setOriginalResourceChoice:](self, "setOriginalResourceChoice:", [v7 originalResourceChoice]);
}

- (void)setSyndicationIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:855 description:{@"Invalid parameter not satisfying: %@", @"syndicationIdentifier != nil"}];
  }

  if (self->_syndicationIdentifier)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:857 description:{@"Invalid parameter not satisfying: %@", @"_syndicationIdentifier == nil"}];

    syndicationIdentifier = self->_syndicationIdentifier;
  }

  else
  {
    syndicationIdentifier = 0;
  }

  self->_syndicationIdentifier = v5;
}

+ (int64_t)_originalResourceTypeFromAdjustedResourceType:(int64_t)a3 sourceAssetIsLoopingVideo:(BOOL)a4 sourceAssetIsVideo:(BOOL)a5
{
  v5 = 9;
  if (a4)
  {
    v5 = 2;
  }

  v6 = 2;
  v7 = !a4 && !a5;
  if (a3 != 5)
  {
    v7 = 0;
  }

  if (a3 != 6)
  {
    v6 = v7;
  }

  if (a3 == 10)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

+ (id)_uuidForAssetWithSyndicationIdentifier:(id)a3 inLibrary:(id)a4 isTrashed:(BOOL *)a5
{
  v49[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E696AB28];
  v10 = MEMORY[0x1E69BE540];
  v48 = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v12 = [v10 predicateForSyndicatedAssetIdentifiers:v11 includeRejected:1];
  v49[0] = v12;
  v13 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForUserLibrary"), 0}];
  v49[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v15 = [v9 andPredicateWithSubpredicates:v14];

  v16 = MEMORY[0x1E695D5E0];
  v17 = [MEMORY[0x1E69BE540] entityName];
  v18 = [v16 fetchRequestWithEntityName:v17];

  [v18 setPredicate:v15];
  [v18 setFetchLimit:1];
  v47[0] = @"uuid";
  v47[1] = @"trashedState";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  [v18 setPropertiesToFetch:v19];

  [v18 setResultType:2];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__15607;
  v39 = __Block_byref_object_dispose__15608;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __85__PHAssetCreationRequest__uuidForAssetWithSyndicationIdentifier_inLibrary_isTrashed___block_invoke;
  v26[3] = &unk_1E75A9D58;
  v20 = v8;
  v27 = v20;
  v21 = v18;
  v28 = v21;
  v29 = &v35;
  v30 = &v31;
  [v20 performBlockAndWait:v26];
  v22 = PLSyndicationGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = v36[5];
    *buf = 138543874;
    v42 = v7;
    v43 = 2112;
    v44 = v20;
    v45 = 2114;
    v46 = v23;
    _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_INFO, "_uuidForAssetWithSyndicationIdentifier:%{public}@ from photoLibrary %@ is %{public}@", buf, 0x20u);
  }

  if (a5)
  {
    *a5 = *(v32 + 24);
  }

  v24 = v36[5];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v24;
}

void __85__PHAssetCreationRequest__uuidForAssetWithSyndicationIdentifier_inLibrary_isTrashed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v11 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v11];
  v5 = v11;

  v6 = [v4 firstObject];
  v7 = [v6 objectForKeyedSubscript:@"uuid"];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v6 objectForKeyedSubscript:@"trashedState"];
  *(*(*(a1 + 56) + 8) + 24) = v10 != 0;
}

+ (id)_jpegDataFromRAWData:(id)a3 derivativeContext:(id)a4
{
  v67[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5 || ![v5 length])
  {
    v18 = 0;
    goto LABEL_61;
  }

  v7 = *MEMORY[0x1E696E0C0];
  v67[0] = MEMORY[0x1E695E118];
  v8 = *MEMORY[0x1E696E118];
  v66[0] = v7;
  v66[1] = v8;
  v9 = [v6 originalUTI];
  v67[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];

  v11 = CGImageSourceCreateWithData(v5, v10);
  if (v11)
  {
    v12 = v11;
    v13 = CGImageSourceCopyPropertiesAtIndex(v11, 0, v10);
    v14 = [(__CFDictionary *)v13 objectForKeyedSubscript:*MEMORY[0x1E696DF00]];
    v58 = [v14 objectForKeyedSubscript:@"jpegThumbnail"];
    v15 = NSRangeFromString(v58);
    if (v15.length)
    {
      v16 = v15.location == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = 0x1E695D000uLL;
    if (v16 || v15.location + v15.length > [v5 length])
    {
      v59 = [v6 assetOrientation];
    }

    else
    {
      v56 = v14;
      v23 = [v5 bytes];
      v24 = malloc_type_malloc(v15.length, 0x3FAC9F70uLL);
      memcpy(v24, (v23 + v15.location), v15.length);
      *v24 = -1;
      v20 = 1;
      v18 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytesNoCopy:v24 length:v15.length freeWhenDone:1];
      v59 = [v6 assetOrientation];
      if (v18)
      {
        v14 = v56;
        goto LABEL_16;
      }

      v14 = v56;
      v17 = 0x1E695D000;
    }

    v18 = objc_alloc_init(*(v17 + 3976));
    v19 = [*MEMORY[0x1E6982E58] identifier];
    v20 = 1;
    v21 = CGImageDestinationCreateWithData(v18, v19, 1uLL, 0);

    if (v21)
    {
      v22 = [PHAssetCreationRequest _imageIOThumbnailCreationOptionsFromDerivativeContext:v6];
      CGImageDestinationAddImageFromSource(v21, v12, 0, v22);
      CGImageDestinationFinalize(v21);
      CFRelease(v21);

      v20 = v59;
    }

LABEL_16:
    if (![(__CFData *)v18 length])
    {
LABEL_59:
      CFRelease(v12);

      goto LABEL_60;
    }

    v55 = v13;
    v57 = v14;
    if (v20 != 1)
    {
      v33 = 0;
LABEL_48:
      if (v20 != v59)
      {
        v46 = objc_alloc_init(MEMORY[0x1E695DF88]);
        v47 = [*MEMORY[0x1E6982E58] identifier];
        v48 = CGImageDestinationCreateWithData(v46, v47, 1uLL, 0);

        if (v48)
        {
          if (!v33)
          {
            v33 = CGImageSourceCreateWithData(v18, 0);
          }

          v60 = *MEMORY[0x1E696DF58];
          v49 = [MEMORY[0x1E696AD98] numberWithInteger:v59];
          v61 = v49;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];

          CGImageDestinationAddImageFromSource(v48, v33, 0, v50);
          CGImageDestinationFinalize(v48);
          CFRelease(v48);
          if ([(__CFData *)v46 length])
          {
            v51 = v46;

            v18 = v51;
          }
        }

        v14 = v57;
      }

      if (v33)
      {
        CFRelease(v33);
      }

      v13 = v55;
      goto LABEL_59;
    }

    [v6 assetOrientedImageSize];
    v26 = v25;
    [v6 assetOrientedImageSize];
    v28 = v27;
    v29 = [v6 originalUTI];
    v53 = v28;
    v54 = v29;
    if (v26 && v28 && v26 == v28)
    {
      v30 = v29;
      if (([v29 isEqualToString:@"com.hasselblad.fff-raw-image"] & 1) == 0)
      {
        v31 = [(__CFDictionary *)v13 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
        v32 = [v31 objectForKeyedSubscript:*MEMORY[0x1E696DF50]];
        if ([v32 isEqualToString:@"Hasselblad CFV - Hasselblad 500"])
        {
        }

        else
        {
          v34 = [v30 isEqualToString:@"com.hasselblad.3fr-raw-image"];

          if (!v34)
          {
            goto LABEL_29;
          }
        }
      }

      if (v59 != 1)
      {
        v33 = 0;
LABEL_46:
        v20 = v59;
        goto LABEL_47;
      }
    }

LABEL_29:
    v35 = *MEMORY[0x1E696E0E8];
    v64 = *MEMORY[0x1E696E0E8];
    v65 = MEMORY[0x1E695E118];
    v20 = 1;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v33 = CGImageSourceCreateWithData(v18, v36);

    if (v33)
    {
      v62 = v35;
      v63 = MEMORY[0x1E695E118];
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v33, 0, v37);

      if (ImageAtIndex)
      {
        Width = CGImageGetWidth(ImageAtIndex);
        Height = CGImageGetHeight(ImageAtIndex);
        CGImageRelease(ImageAtIndex);
      }

      else
      {
        Width = *MEMORY[0x1E695F060];
        Height = *(MEMORY[0x1E695F060] + 8);
      }

      v41 = v26 / v53;
      v42 = Width / Height;
      if (v41 > 1.0 && v42 > 1.0)
      {
        goto LABEL_46;
      }

      v44 = v42 < 1.0 && v41 < 1.0;
      if (v44 || v41 == v42)
      {
        goto LABEL_46;
      }

      v20 = 1;
    }

LABEL_47:
    v14 = v57;

    goto LABEL_48;
  }

  v13 = 0;
  v18 = 0;
LABEL_60:

LABEL_61:

  return v18;
}

+ (id)_imageIOThumbnailCreationOptionsFromDerivativeContext:(id)a3
{
  v3 = a3;
  if (![v3 maxPixelSize])
  {
    [v3 assetOrientedImageSize];
    v5 = v4;
    [v3 assetOrientedImageSize];
    v7 = v6;
    [v3 assetOrientation];
    v8 = PLExifOrientationSwapsWidthAndHeight();
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    if (!v8)
    {
      v5 = v7;
    }

    [v3 embeddedThumbnailSize];
    v11 = v10;
    [v3 embeddedThumbnailSize];
    if (v11 < v12)
    {
      v11 = v12;
    }

    v21 = 0.0;
    v22 = 0.0;
    v13 = MEMORY[0x1E69BE540];
    [v3 assetOrientedImageSize];
    [v13 computePreCropThumbnailSize:&v21 andPostCropSize:&v20 forOrientedOriginalSize:0 andCroppedSize:v9 isLargeThumbnail:{v5, v14, v15}];
    v16 = v21;
    if (v21 < v22)
    {
      v16 = v22;
    }

    if (v11 >= v16)
    {
      v16 = v11;
    }

    [v3 setMaxPixelSize:v16];
  }

  v17 = objc_opt_new();
  [v17 setMaximumLongSideLength:{objc_msgSend(v3, "maxPixelSize")}];
  [v17 setColorBehavior:3];
  [v17 setSkipMetadata:1];
  [v17 setIncludeHDRGainMaps:1];
  v18 = [v17 options];

  return v18;
}

+ (id)_photoIrisIndicatorFilePathForPhotoAtPath:(id)a3 UUID:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = a3;
    v8 = [v6 stringWithFormat:@"%@%@.%@", @"iris_pending_", a4, @"irs"];
    v4 = [v7 stringByAppendingPathComponent:v8];
  }

  return v4;
}

+ (id)_cameraMetadataURLForPrimaryAssetURL:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = [a4 pathManager];
  v7 = [v6 privateDirectoryWithSubType:9 createIfNeeded:1 error:0];

  v8 = [v5 path];

  v9 = [v8 lastPathComponent];
  v10 = [v9 stringByDeletingPathExtension];
  v11 = [v10 stringByAppendingPathExtension:*MEMORY[0x1E69C00C0]];

  v12 = MEMORY[0x1E695DFF8];
  v13 = [v7 stringByAppendingPathComponent:v11];
  v14 = [v12 fileURLWithPath:v13];

  return v14;
}

+ (BOOL)_shouldGenerateThumbnailsDuringCreationForImageSource:(CGImageSource *)a3 contentType:(id)a4 timeZoneLookup:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 conformsToType:*MEMORY[0x1E6982F88]])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = CGImageSourceCopyProperties(a3, 0);
    if (v10)
    {
      v11 = [MEMORY[0x1E69C0708] embeddedJPEGSuitableForDerivativesInRawImageSource:a3 enforcePixelCountLimits:1 timeZoneLookup:v8];
    }

    else
    {
      v11 = 0;
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (BOOL)setdbgFileWithAsset:(id)a3 dbgFilePath:(id)a4 photoFilename:(id)a5
{
  v7 = MEMORY[0x1E695DFF8];
  v8 = a5;
  v9 = a3;
  v10 = [v7 fileURLWithPath:a4 isDirectory:0];
  v11 = MEMORY[0x1E69BE540];
  v12 = [v9 photoLibrary];

  v13 = [v11 diagnosticFilePathForLibrary:v12 mainFilename:v8 createIfNeeded:1];

  if (!v13)
  {
    v17 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "Failed to get diagnostic destination path.", buf, 2u);
    }

    v14 = 0;
    v15 = 1;
    goto LABEL_11;
  }

  v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:0];
  v15 = 1;
  if (v14)
  {
    if (v10)
    {
      v20 = 0;
      if (([MEMORY[0x1E69BF238] copyItemAtURL:v10 toURL:v14 error:&v20] & 1) == 0)
      {
        v16 = PLPhotoKitIngestGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Failed to copy DBG source file to CaptureDebug destination.", v19, 2u);
        }

        v15 = 0;
        v17 = v10;
        v10 = 0;
LABEL_11:
      }
    }
  }

  return v15;
}

+ (BOOL)setDeferredIdentifierAndCreateDeferredDestinationURLFromCurrentDstURL:(id *)a3 withMainFileMetadata:(id)a4 managedAsset:(id)a5 photoLibrary:(id)a6 error:(id *)a7
{
  v42[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 mainFileURL];

  if (v14)
  {
    v15 = [v12 mainFileURL];
    *a3 = v15;
  }

  else
  {
    v15 = *a3;
  }

  v16 = MEMORY[0x1E695DFF8];
  v17 = [v15 path];
  v18 = [v16 fileURLWithPath:v17];

  v19 = [MEMORY[0x1E69BE670] deferredPhotoPreviewDestinationURLForPrimaryAssetURL:*a3];
  *a3 = v19;
  v20 = MEMORY[0x1E69BF238];
  v21 = [v13 pathManager];

  v22 = [v21 capabilities];
  v38 = 0;
  [v20 secureMoveItemAtURL:v18 toURL:v19 capabilities:v22 error:&v38];
  v23 = v38;

  v24 = [MEMORY[0x1E696AC08] defaultManager];
  v25 = [*a3 path];
  LOBYTE(v20) = [v24 fileExistsAtPath:v25];

  v26 = (v23 == 0) | MEMORY[0x19EAF1D90](v23) & v20;
  if (v26)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = [v11 imageCaptureRequestIdentifier];
    v29 = [v11 photoProcessingIdentifier];
    v30 = [v27 stringWithFormat:@"%@/%@", v28, v29];

    v31 = [v12 additionalAttributes];
    [v31 setDeferredPhotoIdentifier:v30];

    [v12 setDeferredProcessingNeeded:1];
    v32 = 0;
  }

  else
  {
    v33 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v42[0] = @"PhotoKit Deferred Processing: Failure to move destination URL file to file with deferred suffix.";
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v32 = [v33 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3123 userInfo:v34];

    v35 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v40 = v23;
      _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_ERROR, "PhotoKit Deferred Processing: Failed to move file to one with deferred suffix attached. %{public}@", buf, 0xCu);
    }

    if (a7 && v32)
    {
      v36 = v32;
      *a7 = v32;
    }
  }

  return v26 & 1;
}

+ (id)creationRequestForAssetCopyFromAsset:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PHAssetCreationRequest.m" lineNumber:1155 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if ([v8 shouldDownloadOrCloudReReferenceMissingResources])
  {
    v9 = [[PHAssetCreationRequestPlaceholderSupport alloc] initForNewObject];
    v10 = [v8 adjustmentBakeInOptions];
    [v9 _setAdjustmentBakeInOptions:v10];

    v11 = [v8 metadataCopyOptions];
    [v9 _setMetadataCopyOptions:v11];
LABEL_5:

    goto LABEL_9;
  }

  v9 = [a1 creationRequestForAssetWithOptions:v8];
  v12 = [v8 adjustmentBakeInOptions];

  if (v12)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PHAssetCreationRequest.m" lineNumber:1164 description:@"adjustmentBakeInOptions should only be set if shouldDownloadOrCloudReReferenceMissingResources is YES"];
  }

  v13 = [v8 metadataCopyOptions];

  if (v13)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PHAssetCreationRequest.m" lineNumber:1165 description:@"metadataCopyOptions should only be set if shouldDownloadOrCloudReReferenceMissingResources is YES"];
    goto LABEL_5;
  }

LABEL_9:
  if ([v8 copyStillPhotoFromLivePhoto])
  {
    [v9 _setDuplicateLivePhotoAsStill:1];
  }

  if ([v8 copyOriginal])
  {
    [v9 _setDuplicateAsOriginal:1];
  }

  if ([v8 copySinglePhotoFromBurst])
  {
    [v9 _setDuplicateSinglePhotoFromBurst:1];
  }

  if ([v8 copyAsAlternateAsset])
  {
    [v9 _setDuplicateAsAlternateAsset:1];
  }

  if ([v8 useRecoverableStagingDirectory])
  {
    [v9 _setUseRecoverableStagingDirectory:1];
  }

  if (([v8 resetUserSpecificMetadata] & 1) == 0)
  {
    [v9 _copyUserSpecificMetadataFromAsset:v7];
  }

  [v7 fetchPropertySetsIfNeeded];
  v14 = [v7 photosOneUpProperties];
  v15 = [v14 reverseLocationData];
  [v9 setReverseLocationData:v15];

  v16 = [v7 photosOneUpProperties];
  [v9 setReverseLocationDataIsValid:{objc_msgSend(v16, "reverseLocationDataIsValid")}];

  [v7 preferredCropRect];
  if (PLCGRectIsNormalized())
  {
    [v7 preferredCropRect];
    [v9 setPreferredCropRectWithNormalizedRect:?];
  }

  [v7 acceptableCropRect];
  if (PLCGRectIsNormalized())
  {
    [v7 acceptableCropRect];
    [v9 setAcceptableCropRectWithNormalizedRect:?];
  }

  [v7 curationScore];
  [v9 setCurationScore:?];
  [v9 _copyMetadataFromAsset:v7];
  [v9 _copyMediaAnalysisProperties:v7];
  v17 = [v7 localIdentifier];
  [v9 _setDuplicateAssetIdentifier:v17];

  v18 = [v7 photoLibrary];
  [v9 _setDuplicateAssetPhotoLibraryType:{objc_msgSend(v18, "type")}];

  if (v8)
  {
    [v8 stillSourceTime];
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  [v9 _setDuplicateStillSourceTime:v24];
  v19 = [v7 keywordProperties];
  v20 = [v19 keywordTitles];
  [v9 setKeywordTitles:v20];

  return v9;
}

+ (id)creationRequestForAssetFromGuestAsset:(id)a3 checkForMomentShareAsset:(BOOL)a4
{
  v4 = a4;
  v119[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
  v9 = [v8 wellKnownPhotoLibraryIdentifier];

  if (v9 == 3)
  {
    v90 = [MEMORY[0x1E696AAA8] currentHandler];
    [v90 handleFailureInMethod:a2 object:a1 file:@"PHAssetCreationRequest.m" lineNumber:998 description:@"Expect the library being used is not the syndication library"];
  }

  [v7 fetchPropertySetsIfNeeded];
  v10 = [v7 curationProperties];
  v11 = [v10 syndicationIdentifier];

  if ([v11 length])
  {
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = PLSyndicationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v7 uuid];
      *buf = 138543362;
      v111 = v13;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@ missing syndicationIdentifier", buf, 0xCu);
    }

    if (!v4)
    {
LABEL_14:
      v28 = [v7 mediaType];
      if ((v28 - 1) < 2)
      {
        v31 = [v7 mainFileURL];
        if (v31)
        {
          v27 = v31;
          v32 = 0;
          goto LABEL_25;
        }
      }

      else if (v28 == 3 || !v28)
      {
        v27 = PLSyndicationGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = [v7 uuid];
          v30 = +[PHAsset descriptionForMediaType:](PHAsset, "descriptionForMediaType:", [v7 mediaType]);
          *buf = 138543618;
          v111 = v29;
          v112 = 2114;
          v113 = v30;
          _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@ has media type %{public}@", buf, 0x16u);
        }

        v23 = 0;
        goto LABEL_87;
      }

      v33 = PLSyndicationGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = [v7 uuid];
        *buf = 138543362;
        v111 = v34;
        _os_log_impl(&dword_19C86F000, v33, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@ mainFileURL is nil", buf, 0xCu);
      }

      v27 = 0;
      v32 = 1;
LABEL_25:
      v35 = [MEMORY[0x1E696AC08] defaultManager];
      v36 = [v27 path];
      v37 = [v35 fileExistsAtPath:v36];

      if ((v37 & 1) == 0)
      {
        v38 = PLSyndicationGetLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = [v7 uuid];
          *buf = 138543618;
          v111 = v39;
          v112 = 2112;
          v113 = v27;
          _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@ file does not exist at mainFileURL %@", buf, 0x16u);
        }
      }

      if (v32)
      {
        goto LABEL_83;
      }

      v93 = v27;
      if ([v7 isPhotoIris])
      {
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v40 = [PHAssetResource assetResourcesForAsset:v7];
        v41 = [v40 countByEnumeratingWithState:&v106 objects:v118 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v107;
LABEL_33:
          v44 = 0;
          while (1)
          {
            if (*v107 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v106 + 1) + 8 * v44);
            if ([v45 type] == 9)
            {
              break;
            }

            if (v42 == ++v44)
            {
              v42 = [v40 countByEnumeratingWithState:&v106 objects:v118 count:16];
              if (v42)
              {
                goto LABEL_33;
              }

              goto LABEL_39;
            }
          }

          v48 = [v45 privateFileURL];

          if (v48)
          {
            goto LABEL_47;
          }
        }

        else
        {
LABEL_39:
        }

        v49 = PLSyndicationGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = [v7 uuid];
          *buf = 138543362;
          v111 = v50;
          _os_log_impl(&dword_19C86F000, v49, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@ live photo video complement URL is nil", buf, 0xCu);
        }

        v48 = 0;
LABEL_47:
        v51 = [MEMORY[0x1E696AC08] defaultManager];
        v52 = [v48 path];
        v53 = [v51 fileExistsAtPath:v52];

        if ((v53 & 1) == 0)
        {
          v54 = PLSyndicationGetLog();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v55 = [v7 uuid];
            v56 = [v48 path];
            *buf = 138543618;
            v111 = v55;
            v112 = 2112;
            v113 = v56;
            _os_log_impl(&dword_19C86F000, v54, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@ videoComplementURL does not exist at path %@", buf, 0x16u);
          }
        }

        v57 = objc_alloc(MEMORY[0x1E69C0918]);
        v58 = [v48 path];
        v59 = [v93 path];
        v60 = [v57 initWithPathToVideo:v58 pathToImage:v59];

        if (!v60)
        {
          v61 = PLSyndicationGetLog();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = [v7 uuid];
            *buf = 138543362;
            v111 = v62;
            _os_log_impl(&dword_19C86F000, v61, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@ videoComplementBundle is nil", buf, 0xCu);
          }
        }

        v63 = [a1 creationRequestForAssetFromVideoComplementBundle:v60];

        v27 = v93;
        if (v63)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v46 = [v7 mediaType];
        if (v46 == 1)
        {
          v47 = [a1 creationRequestForAssetFromImageAtFileURL:v27];
        }

        else
        {
          if (v46 != 2)
          {
            goto LABEL_83;
          }

          v47 = [a1 creationRequestForAssetFromVideoAtFileURL:v27];
        }

        v63 = v47;
        if (v47)
        {
LABEL_56:
          objc_storeStrong((v63 + 1216), v11);
          v64 = [MEMORY[0x1E696AAE8] mainBundle];
          v65 = [v64 bundleIdentifier];
          v66 = *(v63 + 1208);
          *(v63 + 1208) = v65;

          v67 = [v7 importProperties];
          v68 = [v67 importedBy];
          if ((v68 - 1) < 0xF)
          {
            v69 = v68;
          }

          else
          {
            v69 = 0;
          }

          v92 = v11;
          if (v69)
          {
            v70 = v69;
          }

          else
          {
            v71 = PLSyndicationGetLog();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19C86F000, v71, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: importSource was unknown, setting to GuestAssetSyndication", buf, 2u);
            }

            v70 = 12;
          }

          *(v63 + 1072) = v70;
          v72 = [v7 creationDate];
          [v63 setCreationDate:v72];

          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v91 = v63;
          obj = *(v63 + 1008);
          v96 = [obj countByEnumeratingWithState:&v102 objects:v117 count:16];
          if (v96)
          {
            v95 = *v103;
            do
            {
              for (i = 0; i != v96; ++i)
              {
                if (*v103 != v95)
                {
                  objc_enumerationMutation(obj);
                }

                v74 = *(*(&v102 + 1) + 8 * i);
                context = objc_autoreleasePoolPush();
                v98 = 0u;
                v99 = 0u;
                v100 = 0u;
                v101 = 0u;
                v75 = v7;
                v76 = [PHAssetResource assetResourcesForAsset:v7];
                v77 = [v76 countByEnumeratingWithState:&v98 objects:v116 count:16];
                if (v77)
                {
                  v78 = v77;
                  v79 = *v99;
                  do
                  {
                    for (j = 0; j != v78; ++j)
                    {
                      if (*v99 != v79)
                      {
                        objc_enumerationMutation(v76);
                      }

                      v81 = *(*(&v98 + 1) + 8 * j);
                      v82 = [v81 type];
                      if (v82 == [v74 type])
                      {
                        v83 = objc_alloc_init(PHAssetResourceCreationOptions);
                        v84 = [v81 originalFilename];
                        [(PHAssetResourceCreationOptions *)v83 setOriginalFilename:v84];

                        [v74 setCreationOptions:v83];
                      }
                    }

                    v78 = [v76 countByEnumeratingWithState:&v98 objects:v116 count:16];
                  }

                  while (v78);
                }

                objc_autoreleasePoolPop(context);
                v7 = v75;
              }

              v96 = [obj countByEnumeratingWithState:&v102 objects:v117 count:16];
            }

            while (v96);
          }

          v11 = v92;
          v27 = v93;
          v23 = v91;
          goto LABEL_84;
        }
      }

LABEL_83:
      v23 = 0;
LABEL_84:
      v85 = PLSyndicationGetLog();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v86 = [v7 uuid];
        v87 = [v23 placeholderForCreatedAsset];
        v88 = [v87 uuid];
        *buf = 138543874;
        v111 = v86;
        v112 = 2114;
        v113 = v88;
        v114 = 2114;
        v115 = v11;
        _os_log_impl(&dword_19C86F000, v85, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@, new asset uuid: %{public}@, syndicationIdentifier: %{public}@", buf, 0x20u);
      }

      goto LABEL_87;
    }
  }

  v119[0] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:1];
  v15 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
  v16 = [v15 librarySpecificFetchOptions];
  v17 = [PHAsset fetchAssetsWithSyndicationIdentifiers:v14 options:v16];

  v18 = [v17 firstObject];
  v19 = [v18 sourceType];

  if (v19 != 8)
  {

    goto LABEL_14;
  }

  v20 = objc_alloc_init(PHAssetCreationOptions);
  [(PHAssetCreationOptions *)v20 setShouldDownloadOrCloudReReferenceMissingResources:1];
  v21 = v17;
  v22 = [v17 firstObject];
  v23 = [PHAssetCreationRequest creationRequestForAssetCopyFromAsset:v22 options:v20];
  v24 = PLSyndicationGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v22 uuid];
    v26 = [v7 uuid];
    *buf = 138543618;
    v111 = v25;
    v112 = 2114;
    v113 = v26;
    _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_INFO, "creationRequestForAssetFromGuestAsset: Converting creation request into a native CMM save creationRequestForAssetCopyFromAsset since we found a MomentShare asset %{public}@ with the same syndicationIdentifier as %{public}@", buf, 0x16u);
  }

  v27 = v21;
LABEL_87:

  return v23;
}

+ (id)creationRequestForAssetFromAssetBundle:(id)a3
{
  v4 = a3;
  v5 = [a1 creationRequestForAsset];
  v6 = [v4 photoURL];

  if (v6)
  {
    v7 = [v4 photoURL];
    [v5 addResourceWithType:1 fileURL:v7 options:0];
  }

  v8 = [v4 videoURL];

  if (v8)
  {
    v9 = [v4 videoURL];
    [v5 addResourceWithType:2 fileURL:v9 options:0];
  }

  v10 = [v4 audioURL];

  if (v10)
  {
    v11 = [v4 audioURL];
    [v5 addResourceWithType:3 fileURL:v11 options:0];
  }

  v12 = [v4 alternatePhotoURL];

  if (v12)
  {
    v13 = [v4 alternatePhotoURL];
    [v5 addResourceWithType:4 fileURL:v13 options:0];
  }

  v14 = [v4 fullSizePhotoURL];

  if (v14)
  {
    v15 = [v4 fullSizePhotoURL];
    [v5 addResourceWithType:5 fileURL:v15 options:0];
  }

  v16 = [v4 fullSizeVideoURL];

  if (v16)
  {
    v17 = [v4 fullSizeVideoURL];
    [v5 addResourceWithType:6 fileURL:v17 options:0];
  }

  v18 = [v4 adjustmentDataURL];

  if (v18)
  {
    v19 = [v4 adjustmentDataURL];
    [v5 addResourceWithType:7 fileURL:v19 options:0];
  }

  v20 = [v4 originalAdjustmentDataURL];

  if (v20)
  {
    v21 = [v4 originalAdjustmentDataURL];
    [v5 addResourceWithType:16 fileURL:v21 options:0];
  }

  v22 = [v4 adjustmentSecondaryDataURL];

  if (v22)
  {
    v23 = [v4 adjustmentSecondaryDataURL];
    [v5 addResourceWithType:110 fileURL:v23 options:0];
  }

  v24 = [v4 adjustmentBasePhotoURL];

  if (v24)
  {
    v25 = [v4 adjustmentBasePhotoURL];
    [v5 addResourceWithType:8 fileURL:v25 options:0];
  }

  v26 = [v4 adjustmentBaseVideoURL];

  if (v26)
  {
    v27 = [v4 adjustmentBaseVideoURL];
    [v5 addResourceWithType:12 fileURL:v27 options:0];
  }

  v28 = [v4 pairedVideoURL];

  if (v28)
  {
    v29 = [v4 pairedVideoURL];
    [v5 addResourceWithType:9 fileURL:v29 options:0];
  }

  v30 = [v4 fullSizePairedVideoURL];

  if (v30)
  {
    v31 = [v4 fullSizePairedVideoURL];
    [v5 addResourceWithType:10 fileURL:v31 options:0];
  }

  v32 = [v4 adjustmentBasePairedVideoURL];

  if (v32)
  {
    v33 = [v4 adjustmentBasePairedVideoURL];
    [v5 addResourceWithType:11 fileURL:v33 options:0];
  }

  v34 = [v4 spatialOvercapturePhotoURL];

  if (v34)
  {
    v35 = [v4 spatialOvercapturePhotoURL];
    [v5 addResourceWithType:13 fileURL:v35 options:0];
  }

  v36 = [v4 spatialOvercapturePairedVideoURL];

  if (v36)
  {
    v37 = [v4 spatialOvercapturePairedVideoURL];
    [v5 addResourceWithType:15 fileURL:v37 options:0];
  }

  v38 = [v4 spatialOvercaptureVideoURL];

  if (v38)
  {
    v39 = [v4 spatialOvercaptureVideoURL];
    [v5 addResourceWithType:14 fileURL:v39 options:0];
  }

  v40 = [v4 videoComplementVisibilityState];
  if (v40)
  {
    [v5 setPhotoIrisVisibilityState:v40];
  }

  v41 = [v4 keywordTitles];
  if ([v41 count])
  {
    [v5 setKeywordTitles:v41];
  }

  v42 = [v4 assetDescription];
  if ([v42 length])
  {
    [v5 setAssetDescription:v42];
  }

  v43 = [v4 accessibilityDescription];
  if ([v43 length])
  {
    [v5 setAccessibilityDescription:v43];
  }

  v44 = [v4 assetTitle];
  if (v44)
  {
    [v5 setTitle:v44];
  }

  v45 = [v4 libraryCreationDate];
  v46 = [v4 libraryCreationDateTimeZone];
  if (v45)
  {
    [v5 setCreationDate:v45];
    if (v46)
    {
      [v5 setTimeZone:v46 withDate:v45];
    }
  }

  v47 = [v4 libraryLocation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v48 = v47;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  [v5 setLocation:v48];
LABEL_52:
  if ([v4 spatialOvercaptureResourcesPurgeable])
  {
    [v5 trashAllSpatialOverCaptureResources];
  }

  return v5;
}

+ (id)creationRequestForAssetFromVideoComplementBundle:(id)a3
{
  v4 = a3;
  v5 = [a1 creationRequestForAsset];
  v6 = MEMORY[0x1E695DFF8];
  v7 = [v4 imagePath];
  v8 = [v6 fileURLWithPath:v7 isDirectory:0];

  v9 = MEMORY[0x1E695DFF8];
  v10 = [v4 videoPath];
  v11 = [v9 fileURLWithPath:v10 isDirectory:0];

  [v5 addResourceWithType:1 fileURL:v8 options:0];
  [v5 addResourceWithType:9 fileURL:v11 options:0];
  v12 = [v4 pairingIdentifier];
  [v5 setPairingIdentifier:v12];

  if (v4)
  {
    [v4 imageDisplayTime];
    [v5 setImageDisplayTime:&v14];
    [v4 originalVideoDuration];
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    [v5 setImageDisplayTime:&v14];
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  [v5 setVideoDuration:&v14];

  return v5;
}

+ (id)creationRequestForAssetWithSyndicationIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  if (!v4)
  {
LABEL_9:
    v10 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  v5 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
  v6 = [v5 photoLibrary];
  v7 = [PHAssetCreationRequest _uuidForAssetWithSyndicationIdentifier:v4 inLibrary:v6 isTrashed:&v15];

  v8 = PLSyndicationGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (!v7)
  {
    if (v9)
    {
      *buf = 138543362;
      v17 = v4;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_INFO, "Did not find exising asset with syndication identifier %{public}@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v9)
  {
    *buf = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_INFO, "Found exising asset %{public}@ with syndication identifier %{public}@", buf, 0x16u);
  }

  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
LABEL_10:
  v11 = [a1 _creationRequestForAssetUsingUUID:v10];
  [v11 setSyndicationIdentifier:v4];
  if (v10)
  {
    v12 = PLSyndicationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_INFO, "Setting assetExistsWithSyndicationIdentifier to YES", buf, 2u);
    }

    [v11 setAssetExistsWithSyndicationIdentifier:MEMORY[0x1E695E118]];
    [v11 setAssetExistingWithSyndicationIdentifierIsTrashed:v15];
  }

  v13 = PLSyndicationGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v17 = v4;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_INFO, "creationRequestForAssetWithSyndicationIdentifier: %{public}@ existing uuid: %{public}@", buf, 0x16u);
  }

  return v11;
}

+ (id)creationRequestForAssetFromVideoAtFileURL:(id)a3
{
  v4 = a3;
  v5 = [a1 _creationRequestForAssetUsingUUID:0];
  [v5 _addResourceWithType:2 data:0 orFileURL:v4 options:0];

  return v5;
}

+ (id)creationRequestForAssetFromImageAtFileURL:(id)a3
{
  v4 = a3;
  v5 = [a1 _creationRequestForAssetUsingUUID:0];
  [v5 _addResourceWithType:1 data:0 orFileURL:v4 options:0];

  return v5;
}

+ (id)creationRequestForAssetFromImage:(id)a3
{
  v4 = PHImageDataFromImageAsScreenshot(a3, 0);
  v5 = [a1 _creationRequestForAssetUsingUUID:0];
  [v5 _addResourceWithType:1 data:v4 orFileURL:0 options:0];

  return v5;
}

+ (id)creationRequestForAssetFromScreenshotImage:(id)a3
{
  v4 = PHImageDataFromImageAsScreenshot(a3, 1);
  v5 = [a1 _creationRequestForAssetUsingUUID:0];
  [v5 _addResourceWithType:1 data:v4 orFileURL:0 options:0];
  [v5 _setShouldCreateScreenshot:1];

  return v5;
}

+ (id)creationRequestForAssetFromImageJobDictionary:(id)a3 holdingDirectoryPath:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(PHAssetResourceCreationOptions);
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0358]];
  v7 = v6;
  if (v6)
  {
    -[PHAssetResourceCreationOptions setBurstPickType:](v5, "setBurstPickType:", [v6 intValue]);
  }

  v8 = *MEMORY[0x1E69C0390];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
  v10 = [PHAssetCreationRequest creationRequestForAssetWithUUID:v9 options:0];

  v11 = [[PHAssetCreationCameraIngestOptions alloc] initFromJobDictionary:v4 withPreviewImgSurfaceRef:0];
  [v10 setCameraIngestOptions:v11];

  v12 = objc_alloc(MEMORY[0x1E695DFF8]);
  v13 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0518]];
  v14 = [v12 initFileURLWithPath:v13 isDirectory:0];

  v15 = [v4 objectForKey:*MEMORY[0x1E69C03B0]];

  if (v15)
  {
    v16 = 19;
  }

  else
  {
    v16 = 1;
  }

  [v10 addResourceWithType:v16 fileURL:v14 options:v5];
  v17 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0350]];

  if (!v17)
  {
    v28 = *MEMORY[0x1E69C0540];
    v29 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0540]];

    if (v29)
    {
      v30 = [v4 objectForKeyedSubscript:v28];
      [v10 addResourceWithType:111 data:v30 options:0];
    }

    goto LABEL_17;
  }

  v39 = v5;
  v18 = [v10 cameraIngestOptions];
  v19 = [v10 _createAdjustmentsFileFromJobDictionary:v4 cameraIngestOptions:v18];

  v20 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C04B8]];
  if (v20)
  {
    v21 = [v10 cameraIngestOptions];
    [v21 setBackupAdjustmentsFile:v20];
  }

  v37 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C0540]];
  v22 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C04C0]];
  v23 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C04D8]];
  v38 = v14;
  v36 = v23;
  if (v22)
  {
    v24 = [MEMORY[0x1E695DFF8] fileURLWithPath:v22];
    v25 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v24];
    v26 = 0;
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_20:
    v35 = v19;
    goto LABEL_21;
  }

  if (v23)
  {
    v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:v23];
    v25 = 0;
    v24 = 0;
    if (v19)
    {
LABEL_11:
      [v10 addResourceWithType:7 fileURL:v19 options:0];
      if (v24)
      {
        [v10 addResourceWithType:107 fileURL:v24 options:0];
        v27 = v37;
        if (!v25)
        {
LABEL_14:

          v14 = v38;
          v5 = v39;
LABEL_17:
          v31 = v10;
          goto LABEL_24;
        }

LABEL_13:
        [v10 addResourceWithType:111 data:v25 options:0];
        goto LABEL_14;
      }

      v27 = v37;
      if (v26)
      {
        [v10 addResourceWithType:107 fileURL:v26 options:0];
        goto LABEL_34;
      }

LABEL_31:
      if (v27)
      {
        [v10 addResourceWithType:111 data:v27 options:0];
      }

      v26 = 0;
LABEL_34:
      v24 = 0;
      if (!v25)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (v19)
  {
    [v10 addResourceWithType:7 fileURL:v19 options:0];
    v25 = 0;
    v27 = v37;
    goto LABEL_31;
  }

  v35 = 0;
  v24 = 0;
  v26 = 0;
  v25 = 0;
LABEL_21:
  v32 = PLPhotoKitIngestGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = [v4 objectForKeyedSubscript:v8];
    *buf = 138412290;
    v41 = v33;
    _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_ERROR, "Failed to get adjustments data URL for asset with UUID: %@", buf, 0xCu);
  }

  v31 = 0;
  v14 = v38;
  v5 = v39;
LABEL_24:

  return v31;
}

+ (id)creationRequestForAssetFromVideoJobDictionary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DFF8]);
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C05A0]];
  v6 = [v4 initFileURLWithPath:v5 isDirectory:0];

  v7 = *MEMORY[0x1E69C0390];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
  v9 = [PHAssetCreationRequest creationRequestForAssetWithUUID:v8];

  [v9 addResourceWithType:2 fileURL:v6 options:0];
  v10 = [[PHAssetCreationCameraIngestOptions alloc] initFromJobDictionary:v3 withPreviewImgSurfaceRef:0];
  [v9 setCameraIngestOptions:v10];

  v11 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C0350]];

  if (v11)
  {
    v12 = [v9 _createAdjustmentsFileFromJobDictionary:v3 cameraIngestOptions:0];
    if (!v12)
    {
      v16 = 0;
      goto LABEL_13;
    }

    v13 = v12;
    [v9 addResourceWithType:7 fileURL:v12 options:0];
    v14 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C04D8]];
    if (v14)
    {
      v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0];
      if (v15)
      {
        [v9 addResourceWithType:107 fileURL:v15 options:0];
      }
    }

    else
    {
      v17 = PLPhotoKitIngestGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v3 objectForKeyedSubscript:v7];
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "No largeThumbnail file associated to asset with uuid %@", &v20, 0xCu);
      }
    }
  }

  v16 = v9;
LABEL_13:

  return v16;
}

+ (id)creationRequestForAssetFromVideoPreviewJobDict:(id)a3 withPreviewImageSurface:(__IOSurface *)a4
{
  v5 = *MEMORY[0x1E69C0390];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [PHAssetCreationRequest creationRequestForAssetWithUUID:v7];

  v9 = [[PHAssetCreationCameraIngestOptions alloc] initFromJobDictionary:v6 withPreviewImgSurfaceRef:a4];
  [v8 setCameraIngestOptions:v9];

  return v8;
}

+ (id)creationRequestForAssetFromImageData:(id)a3 usingUUID:(id)a4
{
  v6 = a3;
  v7 = [a1 _creationRequestForAssetUsingUUID:a4];
  [v7 _addResourceWithType:1 data:v6 orFileURL:0 options:0];

  return v7;
}

+ (id)creationRequestForAssetFromImageData:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = [a1 creationRequestForAssetWithOptions:a4];
  [v7 _addResourceWithType:1 data:v6 orFileURL:0 options:0];

  return v7;
}

+ (id)creationRequestForAssetWithUUID:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 _creationRequestForAssetUsingUUID:v8];
  if ([v7 copyStillPhotoFromLivePhoto])
  {
    [v9 _setDuplicateLivePhotoAsStill:1];
  }

  if ([v7 copyOriginal])
  {
    [v9 _setDuplicateAsOriginal:1];
  }

  if ([v7 copySinglePhotoFromBurst])
  {
    [v9 _setDuplicateSinglePhotoFromBurst:1];
  }

  if ([v7 copyAsAlternateAsset])
  {
    [v9 _setDuplicateAsAlternateAsset:1];
  }

  if ([v7 useRecoverableStagingDirectory])
  {
    [v9 _setUseRecoverableStagingDirectory:1];
    [v9 _setCreatingAssetIsBusy:1];
  }

  if ([v7 creationCrashType])
  {
    [v9 setCreationCrashType:{objc_msgSend(v7, "creationCrashType")}];
  }

  if ([v7 shouldCreateScreenshot])
  {
    [v9 _setShouldCreateScreenshot:1];
  }

  if ([v7 shouldUseAutomaticallyGeneratedOriginalFilename])
  {
    [v9 _setShouldUseAutomaticallyGeneratedOriginalFilename:1];
  }

  return v9;
}

+ (id)_creationRequestForAssetUsingUUID:(id)a3
{
  v3 = a3;
  v4 = [[PHAssetCreationRequest alloc] initForNewObjectWithUUID:v3];

  return v4;
}

@end