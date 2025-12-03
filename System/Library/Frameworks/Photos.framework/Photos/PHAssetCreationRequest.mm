@interface PHAssetCreationRequest
+ (BOOL)_shouldGenerateThumbnailsDuringCreationForImageSource:(CGImageSource *)source contentType:(id)type timeZoneLookup:(id)lookup;
+ (BOOL)setDeferredIdentifierAndCreateDeferredDestinationURLFromCurrentDstURL:(id *)l withMainFileMetadata:(id)metadata managedAsset:(id)asset photoLibrary:(id)library error:(id *)error;
+ (BOOL)setdbgFileWithAsset:(id)asset dbgFilePath:(id)path photoFilename:(id)filename;
+ (id)_cameraMetadataURLForPrimaryAssetURL:(id)l photoLibrary:(id)library;
+ (id)_creationRequestForAssetUsingUUID:(id)d;
+ (id)_imageIOThumbnailCreationOptionsFromDerivativeContext:(id)context;
+ (id)_jpegDataFromRAWData:(id)data derivativeContext:(id)context;
+ (id)_photoIrisIndicatorFilePathForPhotoAtPath:(id)path UUID:(id)d;
+ (id)_uuidForAssetWithSyndicationIdentifier:(id)identifier inLibrary:(id)library isTrashed:(BOOL *)trashed;
+ (id)creationRequestForAssetCopyFromAsset:(id)asset options:(id)options;
+ (id)creationRequestForAssetFromAssetBundle:(id)bundle;
+ (id)creationRequestForAssetFromGuestAsset:(id)asset checkForMomentShareAsset:(BOOL)shareAsset;
+ (id)creationRequestForAssetFromImage:(id)image;
+ (id)creationRequestForAssetFromImageAtFileURL:(id)l;
+ (id)creationRequestForAssetFromImageData:(id)data options:(id)options;
+ (id)creationRequestForAssetFromImageData:(id)data usingUUID:(id)d;
+ (id)creationRequestForAssetFromImageJobDictionary:(id)dictionary holdingDirectoryPath:(id)path;
+ (id)creationRequestForAssetFromScreenshotImage:(id)image;
+ (id)creationRequestForAssetFromVideoAtFileURL:(id)l;
+ (id)creationRequestForAssetFromVideoComplementBundle:(id)bundle;
+ (id)creationRequestForAssetFromVideoJobDictionary:(id)dictionary;
+ (id)creationRequestForAssetFromVideoPreviewJobDict:(id)dict withPreviewImageSurface:(__IOSurface *)surface;
+ (id)creationRequestForAssetWithSyndicationIdentifier:(id)identifier;
+ (id)creationRequestForAssetWithUUID:(id)d options:(id)options;
+ (int64_t)_originalResourceTypeFromAdjustedResourceType:(int64_t)type sourceAssetIsLoopingVideo:(BOOL)video sourceAssetIsVideo:(BOOL)isVideo;
- (BOOL)_accessWritableURLForUUID:(id)d imageUTI:(id)i originalFilename:(id)filename photoLibrary:(id)library withHandler:(id)handler;
- (BOOL)_assetAlreadyExistsAsPlaceholder:(BOOL)placeholder mediaType:(int64_t)type uuid:(id)uuid photoLibrary:(id)library fetchAsset:(id *)asset;
- (BOOL)_createAssetAsAdjusted:(id)adjusted fromValidatedResources:(id)resources mainFileMetadata:(id)metadata error:(id *)error;
- (BOOL)_createAssetAsPhotoIris:(id)iris fromValidatedResources:(id)resources mainFileMetadata:(id)metadata error:(id *)error;
- (BOOL)_createAudioResourceForAsset:(id)asset fromValidatedResources:(id)resources photoLibrary:(id)library error:(id *)error;
- (BOOL)_createOriginalResourceForAsset:(id)asset fromValidatedResource:(id)resource resourceType:(unsigned int)type photoLibrary:(id)library destinationURL:(id)l error:(id *)error;
- (BOOL)_createRAWSidecarForAsset:(id)asset fromValidatedResources:(id)resources mainFileMetadata:(id)metadata photoLibrary:(id)library error:(id *)error;
- (BOOL)_createSocResourceForAsset:(id)asset fromValidatedResources:(id)resources photoLibrary:(id)library error:(id *)error;
- (BOOL)_createXmpResourceForAsset:(id)asset fromValidatedResources:(id)resources photoLibrary:(id)library error:(id *)error;
- (BOOL)_filePathIsInIncomingDirectory:(id)directory;
- (BOOL)_ingestOriginalInPlaceSrcURL:(id)l dstURL:(id)rL asset:(id)asset error:(id *)error;
- (BOOL)_populateDuplicatingAssetCreationRequest:(id)request photoLibrary:(id)library error:(id *)error;
- (BOOL)_restoreMovedFilesOnFailure;
- (BOOL)_setupSemanticEnhanceMetadataIfNeededWithDestinationURL:(id)l photoLibrary:(id)library semanticEnhanceResult:(id *)result ingestJobCameraMetadata:(id)metadata;
- (BOOL)_unTrashAndResetAsset:(id)asset;
- (BOOL)_validateNewObjectUUID:(id)d inPhotoLibrary:(id)library error:(id *)error;
- (BOOL)_writeDataToDisk:(id)disk imageUTIType:(id)type primaryImageProperties:(id)properties mainFileURL:(id)l thumbnailData:(id)data;
- (BOOL)_writeOutCameraMetadata:(id)metadata destinationURL:(id)l error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)isDuplicateAssetCreationRequest;
- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (CGImageSource)_imageSourceForDerivatives;
- (PHAssetCreationRequest)initWithCoder:(id)coder;
- (PHAssetCreationRequest)initWithHelper:(id)helper;
- (PHAssetCreationRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHShare)share;
- (id)_captureSessionIdentifier;
- (id)_createAdjustmentsFileFromJobDictionary:(id)dictionary cameraIngestOptions:(id)options;
- (id)_createAssetAdjustmentsFromBackupWithAsset:(id)asset;
- (id)_createAssetFromValidatedResources:(id)resources withUUID:(id)d assetAlreadyExistsAsPlaceholder:(BOOL)placeholder inPhotoLibrary:(id)library error:(id *)error;
- (id)_createTimelapsePlaceholderAssetWithUUID:(id)d InPhotoLibrary:(id)library;
- (id)_externalLivePhotoResourceForAsset:(id)asset;
- (id)_filteredImagePropertiesByConditionallyRemovingLivePhotoIdentifiersFromSourceImageProperties:(id)properties;
- (id)_ingestOriginalFromSrcURL:(id)l toDstURL:(id)rL useSecureMove:(BOOL)move resource:(id)resource resourceType:(unsigned int)type asset:(id)asset error:(id *)error;
- (id)_managedAssetFromPrimaryResourceData:(id)data validatedResources:(id)resources withUUID:(id)d photoLibrary:(id)library mainFileMetadata:(id *)metadata getImageSource:(CGImageSource *)source imageData:(id *)imageData;
- (id)_mutableMomentShareObjectIDsAndUUIDs;
- (id)_resolveResourceHoldingDirectoryPath;
- (id)_secureMove:(BOOL)move assetResource:(id)resource photoLibrary:(id)library error:(id *)error;
- (id)_secureMove:(BOOL)move fileAtURL:(id)l toURL:(id)rL capabilities:(id)capabilities error:(id *)error;
- (id)createAssetFromValidatedResources:(id)resources withUUID:(id)d assetAlreadyExistsAsPlaceholder:(BOOL)placeholder inPhotoLibrary:(id)library error:(id *)error;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)duplicatedAssetResourcesFromAsset:(id)asset stillSourceTime:(id *)time flattenLivePhotoIntoStillPhoto:(BOOL)photo duplicateAsOriginal:(BOOL)original duplicateWithAdjustmentsBakedIn:(BOOL)in duplicatePhotoAsData:(BOOL)data error:(id *)error;
- (id)initForNewObjectWithUUID:(id)d;
- (id)placeholderForCreatedAsset;
- (id)urlsForResources:(id)resources;
- (int64_t)_mediaTypeForCreatedAsset;
- (int64_t)accessScopeOptionsRequirement;
- (signed)_savedAssetTypeForAsset;
- (void)_addResourceWithType:(int64_t)type data:(id)data orFileURL:(id)l options:(id)options;
- (void)_checkAndGenerateThumbnailsForAsset:(id)asset imageSource:(CGImageSource *)source imageData:(id)data previewImage:(id)image thumbnailImage:(id)thumbnailImage timeZoneLookup:(id)lookup resourceBag:(id)bag;
- (void)_checkAndSetForSemanticEnhancementForAsset:(id)asset resourceBag:(id)bag;
- (void)_copyMediaAnalysisProperties:(id)properties;
- (void)_copyMetadataFromAsset:(id)asset;
- (void)_copyUserSpecificMetadataFromAsset:(id)asset;
- (void)_deleteJobFileAtPath:(id)path withAsset:(id)asset;
- (void)_didMoveFileFromURL:(id)l toURL:(id)rL;
- (void)_prepareMomentShareHelperIfNeeded;
- (void)_removePhotoKitCameraIngestFiles:(id)files originalFileURL:(id)l resourceBag:(id)bag;
- (void)_resetMovedFiles;
- (void)_setCaptureSessionIdentifierOnAsset:(id)asset;
- (void)_setCreatingAssetIsBusy:(BOOL)busy;
- (void)_setDuplicateStillSourceTime:(id *)time;
- (void)_setModificationDateOnAsset:(id)asset;
- (void)_setupDerivativeCreationContextForAsset:(id)asset imageSource:(CGImageSource *)source imageData:(id)data;
- (void)_setupIrisPairingTimeoutForAsset:(id)asset imageFile:(id)file library:(id)library;
- (void)_updateMutationsForDuplicatingPrivateMetadataFromAsset:(id)asset;
- (void)didSendChangeToServiceHandlerWithResult:(BOOL)result;
- (void)encodeToXPCDict:(id)dict;
- (void)encodeWithCoder:(id)coder;
- (void)finalizeRequestWithBatchSuccess:(BOOL)success;
- (void)overrideAssetUUIDForCrashRecovery:(id)recovery;
- (void)performConcurrentWork;
- (void)performTransactionCompletionHandlingInPhotoLibrary:(id)library;
- (void)setCollectionShare:(id)share;
- (void)setConversationID:(id)d;
- (void)setCustomAssetProperties:(id)properties;
- (void)setImportSessionID:(id)d;
- (void)setImportedBy:(int64_t)by;
- (void)setImportedByBundleIdentifier:(id)identifier;
- (void)setMomentShare:(id)share;
- (void)setShare:(id)share;
- (void)setSyndicationIdentifier:(id)identifier;
@end

@implementation PHAssetCreationRequest

- (void)_setDuplicateStillSourceTime:(id *)time
{
  var3 = time->var3;
  *&self->_duplicateStillSourceTime.value = *&time->var0;
  self->_duplicateStillSourceTime.epoch = var3;
}

- (PHAssetCreationRequest)initWithCoder:(id)coder
{
  v117 = *MEMORY[0x1E69E9840];
  v115.receiver = self;
  v115.super_class = PHAssetCreationRequest;
  coderCopy = coder;
  v4 = [(PHAssetChangeRequest *)&v115 initWithCoder:coderCopy];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetResources"];
    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:v11];

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sandboxExtensionTokens"];
    v109 = [coderCopy decodeObjectOfClasses:v15 forKey:v16];

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
            fileURL = [(PHExternalAssetResource *)v23 fileURL];
            path = [fileURL path];
            v26 = [v109 objectForKeyedSubscript:path];

            if (v26)
            {
              v27 = objc_alloc(MEMORY[0x1E69BF2E8]);
              fileURL2 = [(PHExternalAssetResource *)v23 fileURL];
              v29 = [v27 initWithURL:fileURL2 sandboxExtensionToken:v26 consume:1];

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
    v33 = [coderCopy decodeObjectOfClass:v31 forKey:v32];

    if (v33)
    {
      objc_storeStrong(&v4->_duplicateAssetIdentifier, v33);
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateLivePhotoAsStill"];
      v4->_duplicateLivePhotoAsStill = [coderCopy decodeBoolForKey:v34];
    }

    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateAssetPhotoLibraryType"];
    v4->_duplicateAssetPhotoLibraryType = [coderCopy decodeIntegerForKey:v35];

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = [v36 setWithObjects:{v37, v38, objc_opt_class(), 0}];
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateLivePhotoStillTimeKey"];
    v41 = [coderCopy decodeObjectOfClasses:v39 forKey:v40];

    v42 = v4;
    p_duplicateStillSourceTime = &v4->_duplicateStillSourceTime;
    CMTimeMakeFromDictionary(&v110, v41);
    v44 = *&v110.value;
    p_duplicateStillSourceTime->epoch = v110.epoch;
    *&p_duplicateStillSourceTime->value = v44;
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateAsOriginal"];
    v42->_duplicateAsOriginal = [coderCopy decodeBoolForKey:v45];

    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateAsAlternateAsset"];
    v42->_duplicateAsAlternateAsset = [coderCopy decodeBoolForKey:v46];

    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"createScreenshot"];
    v42->_shouldCreateScreenshot = [coderCopy decodeBoolForKey:v47];

    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"useAutomaticallyGeneratedOriginalFilename"];
    v42->_shouldUseAutomaticallyGeneratedOriginalFilename = [coderCopy decodeBoolForKey:v48];

    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"reduceProcessingForIngest"];
    v42->_reduceProcessingForIngest = [coderCopy decodeBoolForKey:v49];

    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"createAsCompanionSyncedAsset"];
    v42->_createAsCompanionSyncedAsset = [coderCopy decodeBoolForKey:v50];

    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bundleScope"];
    v42->_bundleScope = [coderCopy decodeIntegerForKey:v51];

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"momentShare"];
    momentShareHelper = v42->_momentShareHelper;
    v42->_momentShareHelper = v52;

    v54 = objc_opt_class();
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"momentShareUUID"];
    v56 = [coderCopy decodeObjectOfClass:v54 forKey:v55];
    momentShareUUID = v42->_momentShareUUID;
    v42->_momentShareUUID = v56;

    v58 = objc_opt_class();
    v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"collectionShareUUID"];
    v60 = [coderCopy decodeObjectOfClass:v58 forKey:v59];
    collectionShareUUID = v42->_collectionShareUUID;
    v42->_collectionShareUUID = v60;

    v62 = objc_opt_class();
    v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"importSessionID"];
    v64 = [coderCopy decodeObjectOfClass:v62 forKey:v63];
    importSessionID = v42->_importSessionID;
    v42->_importSessionID = v64;

    v66 = objc_opt_class();
    v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"conversationID"];
    v68 = [coderCopy decodeObjectOfClass:v66 forKey:v67];
    conversationID = v42->_conversationID;
    v42->_conversationID = v68;

    v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"importedBy"];
    v42->_importedBy = [coderCopy decodeIntegerForKey:v70];

    [(PHChangeRequest *)v42 setShouldPerformConcurrentWork:v42->_importedBy == 5];
    v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"duplicateSinglePhotoFromBurst"];
    v42->_duplicateSinglePhotoFromBurst = [coderCopy decodeBoolForKey:v71];

    v72 = objc_opt_class();
    v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"adjustmentBakeInOptions"];
    v74 = [coderCopy decodeObjectOfClass:v72 forKey:v73];
    adjustmentBakeInOptions = v42->_adjustmentBakeInOptions;
    v42->_adjustmentBakeInOptions = v74;

    v76 = objc_opt_class();
    v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"metadataCopyOptions"];
    v78 = [coderCopy decodeObjectOfClass:v76 forKey:v77];
    metadataCopyOptions = v42->_metadataCopyOptions;
    v42->_metadataCopyOptions = v78;

    v80 = objc_opt_class();
    v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"importedByBundleIdentifier"];
    v82 = [coderCopy decodeObjectOfClass:v80 forKey:v81];
    importedByBundleIdentifier = v42->_importedByBundleIdentifier;
    v42->_importedByBundleIdentifier = v82;

    v84 = objc_opt_class();
    v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"syndicationIdentifier"];
    v86 = [coderCopy decodeObjectOfClass:v84 forKey:v85];
    syndicationIdentifier = v42->_syndicationIdentifier;
    v42->_syndicationIdentifier = v86;

    v88 = MEMORY[0x1E695DFD8];
    v89 = objc_opt_class();
    v90 = objc_opt_class();
    v91 = objc_opt_class();
    v92 = objc_opt_class();
    v93 = [v88 setWithObjects:{v89, v90, v91, v92, objc_opt_class(), 0}];
    v94 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"customAssetProperties"];
    v95 = [coderCopy decodeObjectOfClasses:v93 forKey:v94];
    customAssetProperties = v42->_customAssetProperties;
    v42->_customAssetProperties = v95;

    v97 = objc_opt_class();
    v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetExistsWithSyndicationIdentifier"];
    v99 = [coderCopy decodeObjectOfClass:v97 forKey:v98];
    assetExistsWithSyndicationIdentifier = v42->_assetExistsWithSyndicationIdentifier;
    v42->_assetExistsWithSyndicationIdentifier = v99;

    v4 = v42;
    if ([(NSNumber *)v42->_assetExistsWithSyndicationIdentifier BOOLValue])
    {
      v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetExistingWithSyndicationIdentifierIsTrashed"];
      v42->_assetExistingWithSyndicationIdentifierIsTrashed = [coderCopy decodeBoolForKey:v101];
    }

    v102 = objc_opt_class();
    v103 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"resourceHoldingDirectoryPath"];
    v104 = [coderCopy decodeObjectOfClass:v102 forKey:v103];
    resourceHoldingDirectoryPath = v42->_resourceHoldingDirectoryPath;
    v42->_resourceHoldingDirectoryPath = v104;

    v42->_retryCount = [coderCopy decodeIntForKey:@"PHAssetCreationRequestRetryCountKey"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v81 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v79.receiver = self;
  v79.super_class = PHAssetCreationRequest;
  [(PHAssetChangeRequest *)&v79 encodeWithCoder:coderCopy];
  v5 = 0x1E696A000;
  if (self->_assetResources)
  {
    array = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    selfCopy = self;
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
          propertyListRepresentation = [v12 propertyListRepresentation];
          [array addObject:propertyListRepresentation];

          fileURL = [v12 fileURL];

          if (fileURL)
          {
            fileURL2 = [v12 fileURL];
            path = [fileURL2 path];

            creationOptions = [v12 creationOptions];
            [creationOptions shouldMoveFile];

            v18 = PLGetSandboxExtensionToken();
            [dictionary setObject:v18 forKeyedSubscript:path];
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v9);
    }

    v5 = 0x1E696A000uLL;
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"assetResources"];
    [coderCopy encodeObject:array forKey:v19];

    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sandboxExtensionTokens"];
    [coderCopy encodeObject:dictionary forKey:v20];

    self = selfCopy;
  }

  duplicateAssetIdentifier = self->_duplicateAssetIdentifier;
  v22 = [*(v5 + 3776) stringWithUTF8String:"duplicateAssetIdentifier"];
  [coderCopy encodeObject:duplicateAssetIdentifier forKey:v22];

  duplicateLivePhotoAsStill = self->_duplicateLivePhotoAsStill;
  v24 = [*(v5 + 3776) stringWithUTF8String:"duplicateLivePhotoAsStill"];
  [coderCopy encodeBool:duplicateLivePhotoAsStill forKey:v24];

  duplicateAssetPhotoLibraryType = self->_duplicateAssetPhotoLibraryType;
  v26 = [*(v5 + 3776) stringWithUTF8String:"duplicateAssetPhotoLibraryType"];
  [coderCopy encodeInteger:duplicateAssetPhotoLibraryType forKey:v26];

  duplicateAsOriginal = self->_duplicateAsOriginal;
  v28 = [*(v5 + 3776) stringWithUTF8String:"duplicateAsOriginal"];
  [coderCopy encodeBool:duplicateAsOriginal forKey:v28];

  duplicateAsAlternateAsset = self->_duplicateAsAlternateAsset;
  v30 = [*(v5 + 3776) stringWithUTF8String:"duplicateAsAlternateAsset"];
  [coderCopy encodeBool:duplicateAsAlternateAsset forKey:v30];

  createAsCompanionSyncedAsset = self->_createAsCompanionSyncedAsset;
  v32 = [*(v5 + 3776) stringWithUTF8String:"createAsCompanionSyncedAsset"];
  [coderCopy encodeBool:createAsCompanionSyncedAsset forKey:v32];

  shouldCreateScreenshot = self->_shouldCreateScreenshot;
  v34 = [*(v5 + 3776) stringWithUTF8String:"createScreenshot"];
  [coderCopy encodeBool:shouldCreateScreenshot forKey:v34];

  shouldUseAutomaticallyGeneratedOriginalFilename = self->_shouldUseAutomaticallyGeneratedOriginalFilename;
  v36 = [*(v5 + 3776) stringWithUTF8String:"useAutomaticallyGeneratedOriginalFilename"];
  [coderCopy encodeBool:shouldUseAutomaticallyGeneratedOriginalFilename forKey:v36];

  reduceProcessingForIngest = self->_reduceProcessingForIngest;
  v38 = [*(v5 + 3776) stringWithUTF8String:"reduceProcessingForIngest"];
  [coderCopy encodeBool:reduceProcessingForIngest forKey:v38];

  if (self->_duplicateStillSourceTime.flags)
  {
    time = self->_duplicateStillSourceTime;
    v39 = CMTimeCopyAsDictionary(&time, 0);
    v40 = [*(v5 + 3776) stringWithUTF8String:"duplicateLivePhotoStillTimeKey"];
    [coderCopy encodeObject:v39 forKey:v40];
  }

  if (self->_momentShare)
  {
    momentShareHelper = [(PHAssetCreationRequest *)self momentShareHelper];
    momentShareHelper2 = [(PHAssetCreationRequest *)self momentShareHelper];
    relationshipName = [momentShareHelper2 relationshipName];
    [coderCopy encodeObject:momentShareHelper forKey:relationshipName];

    momentShareUUID = self->_momentShareUUID;
    v45 = [*(v5 + 3776) stringWithUTF8String:"momentShareUUID"];
    [coderCopy encodeObject:momentShareUUID forKey:v45];
  }

  if (self->_collectionShare)
  {
    collectionShareUUID = self->_collectionShareUUID;
    v47 = [*(v5 + 3776) stringWithUTF8String:"collectionShareUUID"];
    [coderCopy encodeObject:collectionShareUUID forKey:v47];
  }

  importSessionID = self->_importSessionID;
  v49 = [*(v5 + 3776) stringWithUTF8String:"importSessionID"];
  [coderCopy encodeObject:importSessionID forKey:v49];

  conversationID = self->_conversationID;
  v51 = [*(v5 + 3776) stringWithUTF8String:"conversationID"];
  [coderCopy encodeObject:conversationID forKey:v51];

  importedBy = self->_importedBy;
  if (importedBy)
  {
    v53 = [*(v5 + 3776) stringWithUTF8String:"importedBy"];
    [coderCopy encodeInteger:importedBy forKey:v53];
  }

  duplicateSinglePhotoFromBurst = self->_duplicateSinglePhotoFromBurst;
  v55 = [*(v5 + 3776) stringWithUTF8String:"duplicateSinglePhotoFromBurst"];
  [coderCopy encodeBool:duplicateSinglePhotoFromBurst forKey:v55];

  adjustmentBakeInOptions = self->_adjustmentBakeInOptions;
  v57 = [*(v5 + 3776) stringWithUTF8String:"adjustmentBakeInOptions"];
  [coderCopy encodeObject:adjustmentBakeInOptions forKey:v57];

  metadataCopyOptions = self->_metadataCopyOptions;
  v59 = [*(v5 + 3776) stringWithUTF8String:"metadataCopyOptions"];
  [coderCopy encodeObject:metadataCopyOptions forKey:v59];

  importedByBundleIdentifier = self->_importedByBundleIdentifier;
  v61 = [*(v5 + 3776) stringWithUTF8String:"importedByBundleIdentifier"];
  [coderCopy encodeObject:importedByBundleIdentifier forKey:v61];

  syndicationIdentifier = self->_syndicationIdentifier;
  v63 = [*(v5 + 3776) stringWithUTF8String:"syndicationIdentifier"];
  [coderCopy encodeObject:syndicationIdentifier forKey:v63];

  customAssetProperties = self->_customAssetProperties;
  v65 = [*(v5 + 3776) stringWithUTF8String:"customAssetProperties"];
  [coderCopy encodeObject:customAssetProperties forKey:v65];

  assetExistsWithSyndicationIdentifier = self->_assetExistsWithSyndicationIdentifier;
  v67 = [*(v5 + 3776) stringWithUTF8String:"assetExistsWithSyndicationIdentifier"];
  [coderCopy encodeObject:assetExistsWithSyndicationIdentifier forKey:v67];

  if ([(NSNumber *)self->_assetExistsWithSyndicationIdentifier BOOLValue])
  {
    assetExistingWithSyndicationIdentifierIsTrashed = self->_assetExistingWithSyndicationIdentifierIsTrashed;
    v69 = [*(v5 + 3776) stringWithUTF8String:"assetExistingWithSyndicationIdentifierIsTrashed"];
    [coderCopy encodeBool:assetExistingWithSyndicationIdentifierIsTrashed forKey:v69];
  }

  resourceHoldingDirectoryPath = self->_resourceHoldingDirectoryPath;
  v71 = [*(v5 + 3776) stringWithUTF8String:"resourceHoldingDirectoryPath"];
  [coderCopy encodeObject:resourceHoldingDirectoryPath forKey:v71];

  if (self->_retryCount >= 1)
  {
    [coderCopy encodeInt:? forKey:?];
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
  duplicateAssetIdentifier = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
  v3 = duplicateAssetIdentifier != 0;

  return v3;
}

- (void)setShare:(id)share
{
  shareCopy = share;
  localIdentifier = [shareCopy localIdentifier];
  v6 = [PHObject identifierCodeFromLocalIdentifier:localIdentifier];

  if ([v6 isEqualToString:@"140"])
  {
    [(PHAssetCreationRequest *)self setMomentShare:shareCopy];
  }

  else if ([v6 isEqualToString:@"260"])
  {
    [(PHAssetCreationRequest *)self setCollectionShare:shareCopy];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4636 description:{@"%s must be called with a MomentShare or CollectionShare object", "-[PHAssetCreationRequest setShare:]"}];
  }
}

- (PHShare)share
{
  momentShare = [(PHAssetCreationRequest *)self momentShare];

  if (momentShare)
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

- (void)setCollectionShare:(id)share
{
  objc_storeStrong(&self->_collectionShare, share);
  shareCopy = share;
  uuid = [shareCopy uuid];
  collectionShareUUID = self->_collectionShareUUID;
  self->_collectionShareUUID = uuid;
}

- (void)setMomentShare:(id)share
{
  objc_storeStrong(&self->_momentShare, share);
  shareCopy = share;
  uuid = [shareCopy uuid];
  momentShareUUID = self->_momentShareUUID;
  self->_momentShareUUID = uuid;
}

- (id)_mutableMomentShareObjectIDsAndUUIDs
{
  [(PHAssetCreationRequest *)self _prepareMomentShareHelperIfNeeded];
  momentShareHelper = self->_momentShareHelper;

  return [(PHRelationshipChangeRequestHelper *)momentShareHelper mutableObjectIDsAndUUIDs];
}

- (void)_prepareMomentShareHelperIfNeeded
{
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_momentShareHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    [(PHRelationshipChangeRequestHelper *)self->_momentShareHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_momentShareHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    momentShareHelper = self->_momentShareHelper;
    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)momentShareHelper originalObjectIDs];
    v6 = [originalObjectIDs2 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)momentShareHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (void)performTransactionCompletionHandlingInPhotoLibrary:(id)library
{
  v12[1] = *MEMORY[0x1E69E9840];
  _limitedLibraryFetchFilterObjectID = [(PHAssetCreationRequest *)self _limitedLibraryFetchFilterObjectID];

  if (_limitedLibraryFetchFilterObjectID)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69BE9C0];
    _limitedLibraryFetchFilterObjectID2 = [(PHAssetCreationRequest *)self _limitedLibraryFetchFilterObjectID];
    v11 = *MEMORY[0x1E69BE9C8];
    helper = [(PHChangeRequest *)self helper];
    clientBundleIdentifier = [helper clientBundleIdentifier];
    v12[0] = clientBundleIdentifier;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [defaultCenter postNotificationName:v6 object:_limitedLibraryFetchFilterObjectID2 userInfo:v10];
  }
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  objectCopy = object;
  v25.receiver = self;
  v25.super_class = PHAssetCreationRequest;
  v26 = 0;
  v9 = [(PHAssetChangeRequest *)&v25 applyMutationsToManagedObject:objectCopy photoLibrary:library error:&v26];
  v10 = v26;
  momentShareHelper = [(PHAssetCreationRequest *)self momentShareHelper];
  v12 = momentShareHelper;
  if ((v9 & 1) == 0)
  {

    if (error)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  mutableObjectIDsAndUUIDs = [momentShareHelper mutableObjectIDsAndUUIDs];
  v14 = [mutableObjectIDsAndUUIDs count];

  if (v14)
  {
    [v12 setAllowsInsert:1];
    v15 = +[PHMomentShare managedEntityName];
    [v12 setDestinationEntityName:v15];

    v24 = v10;
    LODWORD(v15) = [v12 applyMutationsToManagedObjectToOneRelationship:objectCopy error:&v24];
    v16 = v24;

    v10 = v16;
    if (!v15)
    {
      if (error)
      {
LABEL_5:
        v17 = v10;
        v18 = 0;
        *error = v10;
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
    managedObjectContext = [objectCopy managedObjectContext];
    v18 = 1;
    v22 = [v20 shareWithUUID:collectionShareUUID includeTrashed:1 inManagedObjectContext:managedObjectContext];

    [objectCopy setCollectionShareWithCurrentUserAsContributor:v22];
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
  helper = [(PHChangeRequest *)self helper];
  clientAuthorization = [helper clientAuthorization];
  captureSessionState = [clientAuthorization captureSessionState];

  objc_opt_class();
  v5 = captureSessionState;
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
    sessionIdentifier = [v7 sessionIdentifier];
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
      sessionIdentifier = [v11 sessionIdentifier];
    }

    else
    {
      sessionIdentifier = 0;
    }
  }

  return sessionIdentifier;
}

- (void)_setCaptureSessionIdentifierOnAsset:(id)asset
{
  v14 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  _captureSessionIdentifier = [(PHAssetCreationRequest *)self _captureSessionIdentifier];
  v6 = _captureSessionIdentifier;
  if (_captureSessionIdentifier)
  {
    v7 = [_captureSessionIdentifier isEqualToString:&stru_1F0FC60C8];

    if ((v7 & 1) == 0)
    {
      v8 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        uuidDescription = [assetCopy uuidDescription];
        v10 = 138412546;
        v11 = uuidDescription;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "Capture Session: Setting session identifier of new asset %@: %@", &v10, 0x16u);
      }

      [assetCopy setCaptureSessionIdentifier:v6];
    }
  }
}

- (void)_setModificationDateOnAsset:(id)asset
{
  assetCopy = asset;
  modificationDate = [(PHAssetChangeRequest *)self modificationDate];
  if (modificationDate)
  {
    [assetCopy setModificationDate:modificationDate];
  }
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (![(PHAssetResourceBag *)self->_assetResourceBag didValidateForInsertion])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4461 description:@"expect prior validation"];
  }

  if (![(PHAssetResourceBag *)self->_assetResourceBag isValid])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4462 description:@"expect validated asset resources upon asset creation"];
  }

  if ([(PHAssetResourceBag *)self->_assetResourceBag isValid])
  {
    uuid = [(PHChangeRequest *)self uuid];
    v27 = 0;
    v9 = [(PHAssetCreationRequest *)self _validateNewObjectUUID:uuid inPhotoLibrary:libraryCopy error:&v27];
    v10 = v27;
    if (v9)
    {
      v23 = uuid;
      helper = [(PHChangeRequest *)self helper];
      v26 = 0;
      entityName = [MEMORY[0x1E69BE540] entityName];
      v25 = v10;
      v13 = [helper getCloudGUIDIfReserved:&v26 entityName:entityName photoLibrary:libraryCopy error:&v25];
      v14 = v26;
      v15 = v25;

      if (v13)
      {
        assetResourceBag = self->_assetResourceBag;
        v24 = v15;
        uuid = v23;
        v17 = [(PHAssetCreationRequest *)self createAssetFromValidatedResources:assetResourceBag withUUID:v23 assetAlreadyExistsAsPlaceholder:0 inPhotoLibrary:libraryCopy error:&v24];
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

        if (!error)
        {
          goto LABEL_22;
        }

LABEL_18:
        v18 = v10;
        v17 = 0;
        *error = v10;
LABEL_23:

        goto LABEL_24;
      }

      v10 = v15;
      uuid = v23;
      if (error)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v14 = 0;
      if (error)
      {
        goto LABEL_18;
      }
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] ph_errorWithCode:3302 localizedDescription:@"Unable to create asset from invalid resources"];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_24:

  return v17;
}

- (void)overrideAssetUUIDForCrashRecovery:(id)recovery
{
  recoveryCopy = recovery;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4454 description:{@"%@ can only be called from assetsd", v7}];
  }

  helper = [(PHChangeRequest *)self helper];
  [helper overrideNewObjectUUIDForCrashRecovery:recoveryCopy];
}

- (BOOL)_validateNewObjectUUID:(id)d inPhotoLibrary:(id)library error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryCopy = library;
  if (![(PHChangeRequest *)self isClientEntitled])
  {
    assetExistsWithSyndicationIdentifier = [(PHAssetCreationRequest *)self assetExistsWithSyndicationIdentifier];
    v10 = [assetExistsWithSyndicationIdentifier isEqualToNumber:MEMORY[0x1E695E118]];

    if ((v10 & 1) == 0)
    {
      if (![dCopy length] || (*uu = 0, *&uu[8] = 0, (v12 = objc_msgSend(dCopy, "cStringUsingEncoding:", 4)) == 0) || uuid_parse(v12, uu))
      {
        v13 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *uu = 138543362;
          *&uu[4] = dCopy;
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
      v38[0] = dCopy;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
      managedObjectContext = [libraryCopy managedObjectContext];
      v33 = 0;
      v21 = [v18 countForAssetsWithUUIDs:v19 includePendingChanges:1 inManagedObjectContext:managedObjectContext error:&v33];
      v16 = v33;

      if (v21)
      {
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *uu = 138543618;
            *&uu[4] = dCopy;
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

        jobType = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];
        v27 = [jobType isEqualToString:*MEMORY[0x1E69C0470]];
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
            *&uu[4] = dCopy;
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

- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  if (self->_assetResourceBag)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4357 description:@"expect single call to validate"];
  }

  duplicateAssetIdentifier = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
  if (duplicateAssetIdentifier)
  {
    v35 = 0;
    v9 = [(PHAssetCreationRequest *)self _populateDuplicatingAssetCreationRequest:self photoLibrary:libraryCopy error:&v35];
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
  v9 = [(PHAssetResourceBag *)v14 validateForInsertIntoPhotoLibrary:libraryCopy error:&v34];
  v10 = v34;

  if (v9)
  {
    if (![(PHAssetChangeRequest *)self didChangeAdjustments]|| ([(PHAssetChangeRequest *)self contentEditingOutput], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      LOBYTE(v9) = 1;
      goto LABEL_24;
    }

    contentEditingOutput = [(PHAssetChangeRequest *)self contentEditingOutput];
    v33 = v10;
    LOBYTE(v9) = [(PHAssetChangeRequest *)self validateContentEditingOutput:contentEditingOutput error:&v33];
    v17 = v33;

    v10 = v17;
  }

LABEL_11:
  if (error && !v9)
  {
    userInfo = [v10 userInfo];
    v19 = [userInfo objectForKeyedSubscript:@"_PHResourceUrlsErrorKey"];

    if (!v19)
    {
      v20 = self->_assetResources;
      userInfo2 = [v10 userInfo];
      v22 = [userInfo2 mutableCopy];
      v23 = v22;
      if (v22)
      {
        dictionary = v22;
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      v25 = dictionary;

      if ([(NSMutableArray *)v20 count])
      {
        v26 = [(NSMutableArray *)v20 _pl_map:&__block_literal_global_15592];
        if ([v26 count])
        {
          [v25 setObject:v26 forKeyedSubscript:@"_PHResourceUrlsErrorKey"];
        }
      }

      v27 = MEMORY[0x1E696ABC0];
      domain = [v10 domain];
      v29 = [v27 ph_errorWithDomain:domain code:objc_msgSend(v10 userInfo:{"code"), v25}];

      v10 = v29;
    }

    v30 = v10;
    LOBYTE(v9) = 0;
    *error = v10;
  }

LABEL_24:

  return v9;
}

- (BOOL)_populateDuplicatingAssetCreationRequest:(id)request photoLibrary:(id)library error:(id *)error
{
  v60[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  libraryCopy = library;
  v10 = self->_assetResources;
  duplicateAssetIdentifier = [requestCopy duplicateAssetIdentifier];
  v57 = 0uLL;
  v58 = 0;
  if (requestCopy)
  {
    [requestCopy duplicateStillSourceTime];
  }

  v12 = [[PHPhotoLibrary alloc] initWithPLPhotoLibrary:libraryCopy type:self->_duplicateAssetPhotoLibraryType];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)v12 librarySpecificFetchOptions];

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

  [librarySpecificFetchOptions setIncludeAssetSourceTypes:v14];
LABEL_8:
  [librarySpecificFetchOptions setIncludeHiddenAssets:1];
  [librarySpecificFetchOptions setIncludeAllBurstAssets:1];
  v60[0] = duplicateAssetIdentifier;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
  v16 = [PHAsset fetchAssetsWithLocalIdentifiers:v15 options:librarySpecificFetchOptions];
  firstObject = [v16 firstObject];

  if (self->_duplicateAsAlternateAsset)
  {
    v18 = [(NSMutableArray *)v10 mutableCopy];
    [(NSMutableArray *)v10 removeAllObjects];
    if (firstObject)
    {
      goto LABEL_10;
    }

LABEL_13:
    v19 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Cannot create a copy of missing asset"];
    goto LABEL_14;
  }

  v18 = 0;
  if (!firstObject)
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

  selfCopy = self;
  v48 = v18;
  duplicateSinglePhotoFromBurst = [requestCopy duplicateSinglePhotoFromBurst];
  duplicateLivePhotoAsStill = [requestCopy duplicateLivePhotoAsStill];
  if (duplicateLivePhotoAsStill)
  {
    if (([firstObject isPhotoIris] & 1) == 0)
    {
      v38 = MEMORY[0x1E696ABC0];
      mediaType = [firstObject mediaType];
      v46 = librarySpecificFetchOptions;
      if ((mediaType - 1) > 2)
      {
        v40 = @"unknown";
      }

      else
      {
        v40 = off_1E75A7238[mediaType - 1];
      }

      v41 = v40;
      v42 = +[PHAsset descriptionForMediaSubtypes:](PHAsset, "descriptionForMediaSubtypes:", [firstObject mediaSubtypes]);
      v20 = [v38 ph_errorWithCode:3300 localizedDescription:{@"Cannot create still photo from asset type %@/%@, requires live photo", v41, v42}];

      v21 = 0;
      librarySpecificFetchOptions = v46;
      goto LABEL_41;
    }

    duplicateSinglePhotoFromBurst = 1;
  }

  duplicateAsOriginal = [requestCopy duplicateAsOriginal];
  v54 = v57;
  v55 = v58;
  v56 = 0;
  v27 = [(PHAssetCreationRequest *)selfCopy duplicatedAssetResourcesFromAsset:firstObject stillSourceTime:&v54 flattenLivePhotoIntoStillPhoto:duplicateLivePhotoAsStill duplicateAsOriginal:duplicateAsOriginal duplicateWithAdjustmentsBakedIn:0 duplicatePhotoAsData:duplicateSinglePhotoFromBurst error:&v56];
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
    v43 = duplicateAssetIdentifier;
    v44 = requestCopy;
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

    requestCopy = v44;
    duplicateAssetIdentifier = v43;
  }

  objc_storeStrong(&selfCopy->_assetResources, v27);
  [(PHAssetCreationRequest *)selfCopy _updateMutationsForDuplicatingPrivateMetadataFromAsset:firstObject];
  v21 = 1;
  v10 = v27;
  v18 = v48;
  v20 = v45;
LABEL_15:
  if (error && v20)
  {
    v22 = v20;
    *error = v20;
  }

  return v21;
}

- (void)_updateMutationsForDuplicatingPrivateMetadataFromAsset:(id)asset
{
  descriptionProperties = [asset descriptionProperties];
  assetDescription = [descriptionProperties assetDescription];
  if (assetDescription)
  {
    [(PHAssetCreationRequest *)self _setDuplicateAllowsPrivateMetadata:1];
    [(PHAssetChangeRequest *)self setAssetDescription:assetDescription];
  }
}

- (id)duplicatedAssetResourcesFromAsset:(id)asset stillSourceTime:(id *)time flattenLivePhotoIntoStillPhoto:(BOOL)photo duplicateAsOriginal:(BOOL)original duplicateWithAdjustmentsBakedIn:(BOOL)in duplicatePhotoAsData:(BOOL)data error:(id *)error
{
  v94[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v56 = [PHAssetResource assetResourcesForAsset:assetCopy includeDerivatives:0 includeMetadata:0 includeAdjustmentOverflowDataBlob:1];
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__15607;
  v89 = __Block_byref_object_dispose__15608;
  array = [MEMORY[0x1E695DF70] array];
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
  v16 = *&time->var0;
  var3 = time->var3;
  v69 = v16;
  inCopy = in;
  photoCopy = photo;
  originalCopy = original;
  dataCopy = data;
  v66 = &v81;
  v64[4] = self;
  v17 = assetCopy;
  v65 = v17;
  v67 = &v85;
  v68 = &v75;
  [v56 enumerateObjectsUsingBlock:v64];
  if (error)
  {
    v18 = v76[5];
    if (v18)
    {
      *error = v18;
    }
  }

  if (time->var2)
  {
    if (([v17 isPhotoIris] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4190 description:@"Can't extract a still image from the video complement when duplicating a non-iris asset"];
    }

    if (v82[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:4191 description:@"Can't extract a still image without a video complement"];
    }

    v19 = [v56 objectAtIndexedSubscript:?];
    privateFileURL = [v19 privateFileURL];
    v50 = v19;
    v51 = [MEMORY[0x1E6987E28] assetWithURL:privateFileURL];
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
    v58 = *&time->var0;
    v59 = time->var3;
    v23 = [MEMORY[0x1E69C0708] copyCGImageFromImageGenerator:v21 atTime:&v58 actualTime:0 error:&v63];
    v53 = v63;
    if (v23)
    {
      path = [privateFileURL path];
      v25 = PFVideoComplementMetadataForVideoAtPath();

      v93 = *MEMORY[0x1E696DE30];
      v91 = *MEMORY[0x1E69867A8];
      pairingIdentifier = [v25 pairingIdentifier];
      v92 = pairingIdentifier;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      v94[0] = v27;
      properties = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:&v93 count:1];

      data = [MEMORY[0x1E695DF88] data];
      identifier = [*MEMORY[0x1E6982E58] identifier];
      v30 = CGImageDestinationCreateWithData(data, identifier, 1uLL, 0);

      CGImageDestinationAddImage(v30, v23, properties);
      CGImageDestinationFinalize(v30);
      v31 = [[PHExternalAssetResource alloc] initWithResourceType:1];
      [(PHExternalAssetResource *)v31 setPixelWidth:CGImageGetWidth(v23)];
      [(PHExternalAssetResource *)v31 setPixelHeight:CGImageGetHeight(v23)];
      [(PHExternalAssetResource *)v31 setData:data];
      [v86[5] addObject:v31];
      CGImageRelease(v23);
      CFRelease(v30);
      if (!photo)
      {
        v32 = dispatch_group_create();
        v33 = objc_alloc(MEMORY[0x1E69C0638]);
        v58 = *&time->var0;
        v59 = time->var3;
        v48 = [v33 initWithAsset:v51 stillImageTime:&v58];
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        v55 = [uUIDString stringByAppendingPathExtension:@"mov"];

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

      if (error)
      {
        v41 = v53;
        *error = v53;
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

- (void)encodeToXPCDict:(id)dict
{
  v47 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v44.receiver = self;
  v44.super_class = PHAssetCreationRequest;
  [(PHAssetChangeRequest *)&v44 encodeToXPCDict:dictCopy];
  if (self->_assetResources)
  {
    array = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    selfCopy = self;
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
          propertyListRepresentation = [v11 propertyListRepresentation];
          [array addObject:propertyListRepresentation];

          fileURL = [v11 fileURL];

          if (fileURL)
          {
            fileURL2 = [v11 fileURL];
            path = [fileURL2 path];

            creationOptions = [v11 creationOptions];
            [creationOptions shouldMoveFile];

            v17 = PLGetSandboxExtensionToken();
            [dictionary setObject:v17 forKeyedSubscript:path];
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v8);
    }

    PLXPCDictionarySetArray();
    PLXPCDictionarySetDictionary();

    self = selfCopy;
  }

  if (self->_duplicateAssetIdentifier)
  {
    PLXPCDictionarySetString();
    xpc_dictionary_set_BOOL(dictCopy, "duplicateLivePhotoAsStill", self->_duplicateLivePhotoAsStill);
  }

  xpc_dictionary_set_int64(dictCopy, "duplicateAssetPhotoLibraryType", self->_duplicateAssetPhotoLibraryType);
  xpc_dictionary_set_BOOL(dictCopy, "duplicateAsOriginal", self->_duplicateAsOriginal);
  xpc_dictionary_set_BOOL(dictCopy, "duplicateAsAlternateAsset", self->_duplicateAsAlternateAsset);
  xpc_dictionary_set_BOOL(dictCopy, "createAsCompanionSyncedAsset", self->_createAsCompanionSyncedAsset);
  xpc_dictionary_set_int64(dictCopy, "bundleScope", self->_bundleScope);
  if ([(PHAssetCreationRequest *)self _shouldCreateScreenshot])
  {
    xpc_dictionary_set_BOOL(dictCopy, "createScreenshot", 1);
  }

  if ([(PHAssetCreationRequest *)self _shouldUseAutomaticallyGeneratedOriginalFilename])
  {
    xpc_dictionary_set_BOOL(dictCopy, "useAutomaticallyGeneratedOriginalFilename", 1);
  }

  if (self->_duplicateStillSourceTime.flags)
  {
    time = self->_duplicateStillSourceTime;
    v18 = CMTimeCopyAsDictionary(&time, 0);
    PLXPCDictionarySetDictionary();
  }

  if (self->_momentShare)
  {
    _mutableMomentShareObjectIDsAndUUIDs = [(PHAssetCreationRequest *)self _mutableMomentShareObjectIDsAndUUIDs];
    [_mutableMomentShareObjectIDsAndUUIDs removeAllObjects];

    _mutableMomentShareObjectIDsAndUUIDs2 = [(PHAssetCreationRequest *)self _mutableMomentShareObjectIDsAndUUIDs];
    v21 = PLObjectIDOrUUIDFromPHObject(self->_momentShare);
    [_mutableMomentShareObjectIDsAndUUIDs2 addObject:v21];

    momentShareHelper = [(PHAssetCreationRequest *)self momentShareHelper];
    [momentShareHelper encodeToXPCDict:dictCopy];

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
    xpc_dictionary_set_int64(dictCopy, "importedBy", importedBy);
  }

  if (self->_duplicateSinglePhotoFromBurst)
  {
    xpc_dictionary_set_BOOL(dictCopy, "duplicateSinglePhotoFromBurst", 1);
  }

  if (self->_adjustmentBakeInOptions)
  {
    adjustmentBakeInOptions = [(PHAssetCreationRequest *)self adjustmentBakeInOptions];
    [adjustmentBakeInOptions encodeToXPCDict:dictCopy];
  }

  if (self->_metadataCopyOptions)
  {
    metadataCopyOptions = [(PHAssetCreationRequest *)self metadataCopyOptions];
    [metadataCopyOptions encodeToXPCDict:dictCopy];
  }

  if (self->_cameraIngestOptions)
  {
    cameraIngestOptions = [(PHAssetCreationRequest *)self cameraIngestOptions];
    [cameraIngestOptions encodeToXPCDict:dictCopy];
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
    xpc_dictionary_set_BOOL(dictCopy, "assetExistsWithSyndicationIdentifier", [(NSNumber *)assetExistsWithSyndicationIdentifier BOOLValue]);
    if ([(NSNumber *)self->_assetExistsWithSyndicationIdentifier BOOLValue])
    {
      xpc_dictionary_set_BOOL(dictCopy, "assetExistingWithSyndicationIdentifierIsTrashed", self->_assetExistingWithSyndicationIdentifierIsTrashed);
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
    xpc_dictionary_set_BOOL(dictCopy, "reduceProcessingForIngest", 1);
  }
}

- (PHAssetCreationRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  v72 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  requestCopy = request;
  v70.receiver = self;
  v70.super_class = PHAssetCreationRequest;
  v10 = [(PHAssetChangeRequest *)&v70 initWithXPCDict:dictCopy request:requestCopy clientAuthorization:authorization];
  if (v10)
  {
    v62 = requestCopy;
    v11 = PLArrayFromXPCDictionary();
    PLDictionaryFromXPCDictionary();
    v64 = v63 = v11;
    if (v11)
    {
      v60 = v10;
      v61 = dictCopy;
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
            fileURL = [(PHExternalAssetResource *)v18 fileURL];
            path = [fileURL path];
            v21 = [v64 objectForKeyedSubscript:path];

            if (v21)
            {
              v22 = objc_alloc(MEMORY[0x1E69BF2E8]);
              fileURL2 = [(PHExternalAssetResource *)v18 fileURL];
              v24 = [v22 initWithURL:fileURL2 sandboxExtensionToken:v21 consume:1];

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

      dictCopy = v61;
    }

    v26 = PLStringFromXPCDictionary();
    if (v26)
    {
      objc_storeStrong(&v10->_duplicateAssetIdentifier, v26);
      v10->_duplicateLivePhotoAsStill = xpc_dictionary_get_BOOL(dictCopy, "duplicateLivePhotoAsStill");
    }

    v10->_duplicateAssetPhotoLibraryType = xpc_dictionary_get_int64(dictCopy, "duplicateAssetPhotoLibraryType");
    v27 = PLDictionaryFromXPCDictionary();
    CMTimeMakeFromDictionary(&v65, v27);
    v28 = *&v65.value;
    v10->_duplicateStillSourceTime.epoch = v65.epoch;
    *&v10->_duplicateStillSourceTime.value = v28;
    v10->_duplicateAsOriginal = xpc_dictionary_get_BOOL(dictCopy, "duplicateAsOriginal");
    v10->_duplicateAsAlternateAsset = xpc_dictionary_get_BOOL(dictCopy, "duplicateAsAlternateAsset");
    v10->_createAsCompanionSyncedAsset = xpc_dictionary_get_BOOL(dictCopy, "createAsCompanionSyncedAsset");
    v10->_bundleScope = xpc_dictionary_get_int64(dictCopy, "bundleScope");
    if (xpc_dictionary_get_BOOL(dictCopy, "createScreenshot"))
    {
      [(PHAssetCreationRequest *)v10 _setShouldCreateScreenshot:1];
    }

    requestCopy = v62;
    if (xpc_dictionary_get_BOOL(dictCopy, "useAutomaticallyGeneratedOriginalFilename"))
    {
      [(PHAssetCreationRequest *)v10 _setShouldUseAutomaticallyGeneratedOriginalFilename:1];
    }

    [v62 recordInsertRequest:{v10, v60}];
    v29 = [PHRelationshipChangeRequestHelper alloc];
    helper = [(PHChangeRequest *)v10 helper];
    v31 = [(PHRelationshipChangeRequestHelper *)v29 initWithRelationshipName:@"momentShare" xpcDict:dictCopy changeRequestHelper:helper];
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

    int64 = xpc_dictionary_get_int64(dictCopy, "importedBy");
    v10->_importedBy = int64;
    [(PHChangeRequest *)v10 setShouldPerformConcurrentWork:int64 == 5];
    v10->_duplicateSinglePhotoFromBurst = xpc_dictionary_get_BOOL(dictCopy, "duplicateSinglePhotoFromBurst");
    v40 = [[PHAssetCreationAdjustmentBakeInOptions alloc] initWithXPCDict:dictCopy];
    adjustmentBakeInOptions = v10->_adjustmentBakeInOptions;
    v10->_adjustmentBakeInOptions = v40;

    v42 = [[PHAssetCreationMetadataCopyOptions alloc] initWithXPCDict:dictCopy];
    metadataCopyOptions = v10->_metadataCopyOptions;
    v10->_metadataCopyOptions = v42;

    v44 = [PHAssetCreationCameraIngestOptions optionsFromXPCDict:dictCopy];
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

    v52 = xpc_dictionary_get_value(dictCopy, "assetExistsWithSyndicationIdentifier");
    v53 = v52;
    if (v52)
    {
      value = xpc_BOOL_get_value(v52);
      v55 = [MEMORY[0x1E696AD98] numberWithBool:value];
      assetExistsWithSyndicationIdentifier = v10->_assetExistsWithSyndicationIdentifier;
      v10->_assetExistsWithSyndicationIdentifier = v55;

      if (value)
      {
        v10->_assetExistingWithSyndicationIdentifierIsTrashed = xpc_dictionary_get_BOOL(dictCopy, "assetExistingWithSyndicationIdentifierIsTrashed");
      }
    }

    v57 = PLStringFromXPCDictionary();
    resourceHoldingDirectoryPath = v10->_resourceHoldingDirectoryPath;
    v10->_resourceHoldingDirectoryPath = v57;

    v10->_reduceProcessingForIngest = xpc_dictionary_get_BOOL(dictCopy, "reduceProcessingForIngest");
  }

  return v10;
}

- (void)setCustomAssetProperties:(id)properties
{
  propertiesCopy = properties;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  customAssetProperties = self->_customAssetProperties;
  self->_customAssetProperties = propertiesCopy;
}

- (void)setImportedByBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v6 = [identifierCopy copy];
  importedByBundleIdentifier = self->_importedByBundleIdentifier;
  self->_importedByBundleIdentifier = v6;
}

- (void)setConversationID:(id)d
{
  dCopy = d;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  conversationID = self->_conversationID;
  self->_conversationID = dCopy;
}

- (void)setImportSessionID:(id)d
{
  dCopy = d;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  importSessionID = self->_importSessionID;
  self->_importSessionID = dCopy;
}

- (void)setImportedBy:(int64_t)by
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  self->_importedBy = by;
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
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  [v4 setAssetMediaType:{-[PHAssetCreationRequest _mediaTypeForCreatedAsset](self, "_mediaTypeForCreatedAsset")}];

  return v4;
}

- (void)_addResourceWithType:(int64_t)type data:(id)data orFileURL:(id)l options:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  lCopy = l;
  optionsCopy = options;
  dataCopy = data;
  v13 = [[PHExternalAssetResource alloc] initWithResourceType:type];
  [(PHExternalAssetResource *)v13 setData:dataCopy];

  if (!self->_useRecoverableStagingDirectory || ([(PHAssetCreationRequest *)self _resolveResourceHoldingDirectoryPath], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    [(PHExternalAssetResource *)v13 setFileURL:lCopy];
    goto LABEL_21;
  }

  resourceHoldingDirectoryPath = self->_resourceHoldingDirectoryPath;
  lastPathComponent = [lCopy lastPathComponent];
  v17 = [(NSString *)resourceHoldingDirectoryPath stringByAppendingPathComponent:lastPathComponent];

  v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v17];
  path = [lCopy path];

  if (path)
  {
    if ([(PHAssetResourceCreationOptions *)optionsCopy shouldMoveFile])
    {
      photoLibrary = [(PHChangeRequest *)self photoLibrary];
      pathManager = [photoLibrary pathManager];
      capabilities = [pathManager capabilities];
      v32 = 0;
      v30 = v18;
      v23 = [(PHAssetCreationRequest *)self _secureMove:1 fileAtURL:lCopy toURL:v18 capabilities:capabilities error:&v32];
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
      path2 = [lCopy path];
      v31 = 0;
      LOBYTE(v27) = [v27 cloneFileAtPath:path2 toPath:v17 error:&v31];
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
  if (!optionsCopy)
  {
    optionsCopy = objc_alloc_init(PHAssetResourceCreationOptions);
  }

  [(PHAssetResourceCreationOptions *)optionsCopy setShouldMoveFile:1];

LABEL_21:
  [(PHExternalAssetResource *)v13 setCreationOptions:optionsCopy];
  [(NSMutableArray *)self->_assetResources addObject:v13];
}

- (id)_resolveResourceHoldingDirectoryPath
{
  v30 = *MEMORY[0x1E69E9840];
  if ((PLIsAssetsd() & 1) == 0 && !self->_resourceHoldingDirectoryPath)
  {
    photoLibrary = [(PHChangeRequest *)self photoLibrary];
    v23 = 0;
    v4 = [photoLibrary requestSandboxExtensionsIfNeededWithError:&v23];
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

    photoLibrary2 = [(PHChangeRequest *)self photoLibrary];
    pathManager = [photoLibrary2 pathManager];
    uuid = [(PHChangeRequest *)self uuid];
    v9 = [pathManager assetCreationHoldingDirectoryForAssetUUID:uuid];

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
        uuid2 = [(PHChangeRequest *)self uuid];
        resourceHoldingDirectoryPath = self->_resourceHoldingDirectoryPath;
        *buf = 138543874;
        v25 = uuid2;
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
      uuid2 = [(PHChangeRequest *)self uuid];
      v14 = self->_resourceHoldingDirectoryPath;
      *buf = 138543618;
      v25 = uuid2;
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

- (PHAssetCreationRequest)initWithHelper:(id)helper
{
  helperCopy = helper;
  v11.receiver = self;
  v11.super_class = PHAssetCreationRequest;
  v5 = [(PHAssetChangeRequest *)&v11 initWithHelper:helperCopy];
  if (v5)
  {
    [helperCopy setNewRequest:1];
    v6 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"momentShare" changeRequestHelper:helperCopy];
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

- (id)initForNewObjectWithUUID:(id)d
{
  dCopy = d;
  v5 = [[PHChangeRequestHelper alloc] initForNewObjectWithUUID:dCopy changeRequest:self];

  v6 = [(PHAssetCreationRequest *)self initWithHelper:v5];
  return v6;
}

- (id)urlsForResources:(id)resources
{
  v17 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = resourcesCopy;
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

        fileURL = [*(*(&v12 + 1) + 8 * i) fileURL];
        if (fileURL)
        {
          [array addObject:fileURL];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)_createAssetFromValidatedResources:(id)resources withUUID:(id)d assetAlreadyExistsAsPlaceholder:(BOOL)placeholder inPhotoLibrary:(id)library error:(id *)error
{
  placeholderCopy = placeholder;
  v469[2] = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  dCopy = d;
  libraryCopy = library;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v371 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:3027 description:{@"%@ can only be called from assetsd", v371}];
  }

  syndicationIdentifier = [(PHAssetCreationRequest *)self syndicationIdentifier];

  if (!syndicationIdentifier)
  {
    goto LABEL_18;
  }

  LOBYTE(v434[0]) = 0;
  assetExistsWithSyndicationIdentifier = [(PHAssetCreationRequest *)self assetExistsWithSyndicationIdentifier];
  bOOLValue = [assetExistsWithSyndicationIdentifier BOOLValue];

  if (bOOLValue)
  {
    helper = [(PHChangeRequest *)self helper];
    uuid = [helper uuid];

    LOBYTE(v434[0]) = [(PHAssetCreationRequest *)self assetExistingWithSyndicationIdentifierIsTrashed];
    v20 = PLSyndicationGetLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    syndicationIdentifier2 = [(PHAssetCreationRequest *)self syndicationIdentifier];
    *buf = 138543618;
    *&buf[4] = syndicationIdentifier2;
    *&buf[12] = 2114;
    *&buf[14] = uuid;
    v22 = "assetExistsWithSyndicationIdentifier=YES (%{public}@), helper provided uuid %{public}@";
  }

  else
  {
    assetExistsWithSyndicationIdentifier2 = [(PHAssetCreationRequest *)self assetExistsWithSyndicationIdentifier];

    if (assetExistsWithSyndicationIdentifier2)
    {
      goto LABEL_18;
    }

    syndicationIdentifier3 = [(PHAssetCreationRequest *)self syndicationIdentifier];
    uuid = [PHAssetCreationRequest _uuidForAssetWithSyndicationIdentifier:syndicationIdentifier3 inLibrary:libraryCopy isTrashed:v434];

    v20 = PLSyndicationGetLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    syndicationIdentifier2 = [(PHAssetCreationRequest *)self syndicationIdentifier];
    *buf = 138543618;
    *&buf[4] = syndicationIdentifier2;
    *&buf[12] = 2114;
    *&buf[14] = uuid;
    v22 = "Check for existing asset with syndication identifier %{public}@ returned uuid %{public}@";
  }

  _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_INFO, v22, buf, 0x16u);

LABEL_11:
  if (uuid)
  {
    v25 = [MEMORY[0x1E69BE540] assetWithUUID:uuid inLibrary:libraryCopy];
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
  v410 = placeholderCopy;
  v386 = a2;
  v26 = MEMORY[0x1E69BF2D0];
  null = [MEMORY[0x1E695DFB0] null];
  uuid = [v26 successWithResult:null];

  v404 = resourcesCopy;
  v28 = resourcesCopy;
  mediaType = [v28 mediaType];
  mediaSubtype = [v28 mediaSubtype];
  primaryResource = [v28 primaryResource];
  helper2 = [(PHChangeRequest *)self helper];
  clientAuthorization = [helper2 clientAuthorization];
  isCameraClient = [clientAuthorization isCameraClient];

  helper3 = [(PHChangeRequest *)self helper];
  clientAuthorization2 = [helper3 clientAuthorization];
  trustedCallerBundleID = [clientAuthorization2 trustedCallerBundleID];
  v388 = [trustedCallerBundleID isEqualToString:@"com.apple.nebulad"];

  v406 = [v28 validatedDataForAssetResource:primaryResource];
  v35 = [v28 validatedURLForAssetResource:primaryResource];
  creationOptions = [primaryResource creationOptions];
  [creationOptions ensureOptionsAreCompleteForURL:v35];

  v416 = primaryResource;
  creationOptions2 = [primaryResource creationOptions];
  forcePairingIdentifier = [creationOptions2 forcePairingIdentifier];
  forcePairingIdentifier = self->_forcePairingIdentifier;
  self->_forcePairingIdentifier = forcePairingIdentifier;

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

  v409 = dCopy;
  v42 = MEMORY[0x1E69C08F0];
  pathExtension = [v35 pathExtension];
  v44 = [v42 typeWithFilenameExtension:pathExtension];

  v447 = xmmword_19CB295E0;
  cameraMetadataPath = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions cameraMetadataPath];

  if (cameraMetadataPath)
  {
    v46 = objc_alloc(MEMORY[0x1E69BE4B0]);
    cameraMetadataPath2 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions cameraMetadataPath];
    v48 = [v46 initWithCameraMetadataPath:cameraMetadataPath2];

    [v48 deserializeCameraMetadata];
    v407 = v48;
    if ([v44 conformsToType:*MEMORY[0x1E6982F88]])
    {
      v398 = 0;
    }

    else
    {
      v49 = MEMORY[0x1E69C0868];
      cameraMetadata = [v48 cameraMetadata];
      *&v447 = [v49 semanticEnhanceSceneForCameraMetadata:cameraMetadata];
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
    errorCopy = error;
    spid = v53;
    if (!v416)
    {
      jobType = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];
      v67 = [jobType isEqualToString:*MEMORY[0x1E69C0480]];

      if (v67)
      {
        error = [(PHAssetCreationRequest *)self _createTimelapsePlaceholderAssetWithUUID:dCopy InPhotoLibrary:libraryCopy];
        v68 = v52;
        if (!error)
        {
          v83 = MEMORY[0x1E69BF2D0];
          v84 = MEMORY[0x1E696ABC0];
          v453 = *MEMORY[0x1E696A278];
          dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create a timelapse video from video preview image for uuid (%@)", dCopy];
          v454 = dCopy;
          v69 = 1;
          v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v454 forKeys:&v453 count:1];
          v86 = v84;
          v87 = v85;
          uniformTypeIdentifier = [v86 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v85];
          v88 = [v83 failureWithError:?];

          v413 = 0;
          v414 = 0;
          v402 = 0;
          v411 = 0;
          uuid = v88;
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
        error = 0;
        v69 = 1;
        v68 = v52;
      }

LABEL_182:
      if ([uuid isSuccess] && mediaType == 1 && mediaSubtype == 8)
      {
        v433 = 0;
        v202 = [(PHAssetCreationRequest *)self _createAssetAsPhotoIris:error fromValidatedResources:v28 mainFileMetadata:v413 error:&v433];
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
          uuid = v208;
        }
      }

      if ([uuid isSuccess] && -[PHAssetCreationRequest _shouldCreateScreenshot](self, "_shouldCreateScreenshot") && objc_msgSend(error, "kindSubtype") != 10)
      {
        v209 = MEMORY[0x1E69BF2D0];
        v210 = MEMORY[0x1E696ABC0];
        v449 = *MEMORY[0x1E696A278];
        v450 = @"Unable to create screenshot asset from available resources";
        v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v450 forKeys:&v449 count:1];
        v212 = [v210 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v211];
        v213 = [v209 failureWithError:v212];

        v68 = v415;
        uuid = v213;
      }

      if ([uuid isSuccess] && objc_msgSend(v28, "hasSpatialOverCapture"))
      {
        v432 = 0;
        v214 = [(PHAssetCreationRequest *)self _createSocResourceForAsset:error fromValidatedResources:v28 photoLibrary:libraryCopy error:&v432];
        v215 = v432;
        if (!v214)
        {
          v216 = [MEMORY[0x1E69BF2D0] failureWithError:v215];

          uuid = v216;
        }
      }

      if ([uuid isSuccess])
      {
        v431 = 0;
        v217 = [(PHAssetCreationRequest *)self _createXmpResourceForAsset:error fromValidatedResources:v28 photoLibrary:libraryCopy error:&v431];
        v218 = v431;
        if (!v217)
        {
          v219 = [MEMORY[0x1E69BF2D0] failureWithError:v218];

          uuid = v219;
        }
      }

      if ([uuid isSuccess])
      {
        v430 = 0;
        v220 = [(PHAssetCreationRequest *)self _createAudioResourceForAsset:error fromValidatedResources:v28 photoLibrary:libraryCopy error:&v430];
        v221 = v430;
        if (!v220)
        {
          v222 = [MEMORY[0x1E69BF2D0] failureWithError:v221];

          uuid = v222;
        }
      }

      if (![uuid isSuccess])
      {
        goto LABEL_260;
      }

      if ([(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions candidateOptions])
      {
        additionalAttributes = [error additionalAttributes];
        [additionalAttributes setDeferredProcessingCandidateOptions:{-[PHAssetCreationCameraIngestOptions candidateOptions](self->_cameraIngestOptions, "candidateOptions")}];
      }

      if ([v28 hasAdjustments])
      {
        if (v411 && mediaType == 1 && mediaSubtype == 8)
        {
          [error setPlaybackStyle:{objc_msgSend(v411, "playbackStyle")}];
          [error setPlaybackVariation:{objc_msgSend(v411, "playbackVariation")}];
        }

        v429 = 0;
        v224 = [(PHAssetCreationRequest *)self _createAssetAsAdjusted:error fromValidatedResources:v28 mainFileMetadata:v413 error:&v429];
        v225 = v429;
        if (!v224)
        {
          v226 = [MEMORY[0x1E69BF2D0] failureWithError:v225];

          uuid = v226;
        }

LABEL_239:
        portraitEffectFilterName = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions portraitEffectFilterName];

        if (!portraitEffectFilterName)
        {
          goto LABEL_245;
        }

        portraitEffectFilterName2 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions portraitEffectFilterName];
        if (([portraitEffectFilterName2 isEqualToString:@"CIPortraitEffectStageWhite"] & 1) == 0)
        {
          portraitEffectFilterName3 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions portraitEffectFilterName];
          if (![portraitEffectFilterName3 isEqualToString:@"CIPortraitEffectStageMonoV2"])
          {
            portraitEffectFilterName4 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions portraitEffectFilterName];
            v255 = [portraitEffectFilterName4 isEqualToString:@"CIPortraitEffectStageV2"];

            v68 = v415;
            if ((v255 & 1) == 0)
            {
LABEL_245:
              if ([uuid isSuccess])
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
                  v251 = [PHAssetCreationRequest setDeferredIdentifierAndCreateDeferredDestinationURLFromCurrentDstURL:&v427 withMainFileMetadata:v413 managedAsset:error photoLibrary:libraryCopy error:&v426];
                  v252 = v427;

                  v253 = v426;
                  if (v251)
                  {
                    if ([v413 isDeferredPhotoProxyExpectingDepth])
                    {
                      [error setDepthType:1];
                      [error setEditableDepthBadgeAttribute:1];
                    }
                  }

                  else
                  {
                    v256 = PLPhotoKitGetLog();
                    if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
                    {
                      uuid2 = [error uuid];
                      *buf = 138412290;
                      *&buf[4] = uuid2;
                      _os_log_impl(&dword_19C86F000, v256, OS_LOG_TYPE_ERROR, "Deferred identifier could not be created for asset with UUID: %@", buf, 0xCu);

                      v28 = v405;
                    }

                    v258 = [MEMORY[0x1E69BF2D0] failureWithError:v253];

                    uuid = v258;
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
              if ([uuid isSuccess])
              {
                jobType2 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];

                if (jobType2)
                {
                  v260 = PLPhotoKitIngestGetLog();
                  if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
                  {
                    captureID = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions captureID];
                    v262 = captureID;
                    if (captureID)
                    {
                      v263 = captureID;
                    }

                    else
                    {
                      v263 = @"(unknown capture ID)";
                    }

                    lastPathComponent = [v414 lastPathComponent];
                    if (lastPathComponent)
                    {
                      lastPathComponent2 = [v414 lastPathComponent];
                    }

                    else
                    {
                      lastPathComponent2 = &stru_1F0FC60C8;
                    }

                    uuid3 = [error uuid];
                    *buf = 138543874;
                    *&buf[4] = v263;
                    *&buf[12] = 2114;
                    *&buf[14] = lastPathComponent2;
                    *&buf[22] = 2114;
                    *&buf[24] = uuid3;
                    _os_log_impl(&dword_19C86F000, v260, OS_LOG_TYPE_DEFAULT, "PhotoKit Camera Ingest: %{public}@ Created asset %{public}@ with UUID %{public}@", buf, 0x20u);

                    if (lastPathComponent)
                    {
                    }

                    v28 = v405;
                    v68 = v415;
                  }
                }

                if ((([v28 hasCurrentAdjustment] ^ 1) & v398 & isCameraClient) == 1)
                {
                  previewImageData = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions previewImageData];
                  v268 = DCIM_newPLImageWithStoredJPEGData();

                  v269 = v446;
                  libraryBundle = [libraryCopy libraryBundle];
                  timeZoneLookup = [libraryBundle timeZoneLookup];
                  [(PHAssetCreationRequest *)self _checkAndGenerateThumbnailsForAsset:error imageSource:v269 imageData:v402 previewImage:v268 thumbnailImage:0 timeZoneLookup:timeZoneLookup resourceBag:v28];

                  v68 = v415;
                }

                if (mediaType == 1 && [v28 hasRAW])
                {
                  v425 = 0;
                  v272 = [(PHAssetCreationRequest *)self _createRAWSidecarForAsset:error fromValidatedResources:v28 mainFileMetadata:v413 photoLibrary:libraryCopy error:&v425];
                  v273 = v425;
                  if (!v272)
                  {
                    v274 = [MEMORY[0x1E69BF2D0] failureWithError:v273];

                    uuid = v274;
                  }
                }
              }

              if ([uuid isSuccess])
              {
                if (v407)
                {
                  [v407 applyCameraMetadataToAsset:error];
                  if (HasInternalDiagnostics)
                  {
                    v275 = MEMORY[0x1E69BE540];
                    filename = [error filename];
                    v277 = [v275 diagnosticFilePathForLibrary:libraryCopy mainFilename:filename createIfNeeded:1];

                    stringByDeletingPathExtension = [v277 stringByDeletingPathExtension];
                    v279 = [stringByDeletingPathExtension stringByAppendingPathExtension:*MEMORY[0x1E69C00C0]];

                    fileManager = [MEMORY[0x1E69BF238] fileManager];
                    cameraIngestOptions = [(PHAssetCreationRequest *)self cameraIngestOptions];
                    cameraMetadataPath3 = [cameraIngestOptions cameraMetadataPath];
                    v424 = 0;
                    v283 = [fileManager copyItemAtPath:cameraMetadataPath3 toPath:v279 error:&v424];
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

                if (error)
                {
                  v286 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  v423 = 0;
                  v287 = [MEMORY[0x1E69BE740] installInternalResourcesForExistingAsset:error assumeNoExistingResources:0 referencedResourceURLs:v286 error:&v423];
                  v288 = v423;
                  if ((v287 & 1) == 0)
                  {
                    v289 = [MEMORY[0x1E69BF2D0] failureWithError:v288];

                    uuid = v289;
                  }

                  v68 = v415;
                }

                else
                {
                  v68 = v415;
                }
              }

              if ([uuid isSuccess])
              {
                if (v411)
                {
                  v421 = 0u;
                  v422 = 0u;
                  v419 = 0u;
                  v420 = 0u;
                  modernResources = [v411 modernResources];
                  v291 = [modernResources countByEnumeratingWithState:&v419 objects:v448 count:16];
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
                          objc_enumerationMutation(modernResources);
                        }

                        v295 = *(*(&v419 + 1) + 8 * i);
                        if ([v295 supportsTrashedState])
                        {
                          [error setTrashedState:objc_msgSend(v295 forResourceType:{"trashedState"), objc_msgSend(v295, "cplType")}];
                        }
                      }

                      v292 = [modernResources countByEnumeratingWithState:&v419 objects:v448 count:16];
                    }

                    while (v292);
                  }

                  if ([v411 cameraProcessingAdjustmentState])
                  {
                    [error setCameraProcessingAdjustmentState:{objc_msgSend(error, "cameraProcessingAdjustmentState") | 1}];
                  }

                  v28 = v405;
                  if (([v411 cameraProcessingAdjustmentState] & 4) != 0)
                  {
                    [error setCameraProcessingAdjustmentState:{objc_msgSend(error, "cameraProcessingAdjustmentState") | 4}];
                  }

                  if (([v411 cameraProcessingAdjustmentState] & 8) != 0)
                  {
                    [error setCameraProcessingAdjustmentState:{objc_msgSend(error, "cameraProcessingAdjustmentState") | 8}];
                  }
                }

                [error setDeferredProcessingNeeded:{objc_msgSend(error, "expectedDeferredProcessingNeededOnAssetCreation")}];
                if ([error deferredProcessingNeeded])
                {
                  libraryServicesManager = [libraryCopy libraryServicesManager];
                  backgroundJobService = [libraryServicesManager backgroundJobService];
                  v298 = [MEMORY[0x1E69BE2B8] typesMaskForDeferredProcessingNeeded:{objc_msgSend(error, "deferredProcessingNeeded")}];
                  [backgroundJobService signalBackgroundProcessingNeededOnLibrary:libraryCopy workerTypes:v298];
                }

                if (isCameraClient)
                {
                  jobType3 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];
                  if (jobType3)
                  {
                    v300 = jobType3;
                    smartStyleExpectingReversibility = [v413 smartStyleExpectingReversibility];
                    bOOLValue2 = [smartStyleExpectingReversibility BOOLValue];

                    if (bOOLValue2)
                    {
                      [error setIsSmartStyleableWithMetadata:v413];
                    }
                  }
                }

                [(PHAssetCreationRequest *)self _resetMovedFiles];
                customAssetProperties = [(PHAssetCreationRequest *)self customAssetProperties];

                if (customAssetProperties)
                {
                  customAssetProperties2 = [(PHAssetCreationRequest *)self customAssetProperties];
                  [error updateWithCustomAssetProperties:customAssetProperties2];
                }

                [error persistMetadataToFilesystem];
                v68 = v415;
                if ([(PHChangeRequest *)self shouldPerformConcurrentWork])
                {
                  [(PHAssetCreationRequest *)self _setupDerivativeCreationContextForAsset:error imageSource:v446 imageData:v402];
                }
              }

              v305 = v68;
              v306 = v305;
              if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v305))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_19C86F000, v306, OS_SIGNPOST_INTERVAL_END, spid, "Ingest-CreateAsset", "END: asset creation", buf, 2u);
              }

              libraryBundle2 = [libraryCopy libraryBundle];
              [libraryBundle2 touch];

              if ([uuid isSuccess])
              {
                if ([(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions isEligibleForQuickFaceAnalysis])
                {
                  deferredPhotoIdentifier = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions deferredPhotoIdentifier];

                  libraryBundle3 = [libraryCopy libraryBundle];
                  constraintsDirector = [libraryBundle3 constraintsDirector];
                  v311 = constraintsDirector;
                  if (deferredPhotoIdentifier)
                  {
                    [constraintsDirector informPhotoCapturedThatNeedsDeferredProcessing];
                  }

                  else
                  {
                    [constraintsDirector informPhotoCapturedThatNeedsQuickFace];
                  }
                }

                additionalAttributes2 = [error additionalAttributes];
                syndicationIdentifier4 = [additionalAttributes2 syndicationIdentifier];

                if (syndicationIdentifier4)
                {
                  [error syndicatedAssetDidSaveToUserLibrary];
                }

                if (self->_resourceHoldingDirectoryPath)
                {
                  fileManager2 = [MEMORY[0x1E69BF238] fileManager];
                  resourceHoldingDirectoryPath = self->_resourceHoldingDirectoryPath;
                  v418 = 0;
                  v330 = [fileManager2 removeItemAtPath:resourceHoldingDirectoryPath error:&v418];
                  v331 = v418;

                  if ((v330 & 1) == 0)
                  {
                    v332 = PLPhotoKitGetLog();
                    if (os_log_type_enabled(v332, OS_LOG_TYPE_ERROR))
                    {
                      uuid4 = [error uuid];
                      *buf = 138412546;
                      *&buf[4] = uuid4;
                      *&buf[12] = 2112;
                      *&buf[14] = v331;
                      _os_log_impl(&dword_19C86F000, v332, OS_LOG_TYPE_ERROR, "Unable to remove asset creation recovery directory for %@: %@", buf, 0x16u);
                    }
                  }
                }

                jobType4 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];
                v335 = (jobType4 != 0) & isCameraClient;

                if (v335 == 1)
                {
                  v35 = v395;
                  [(PHAssetCreationRequest *)self _removePhotoKitCameraIngestFiles:error originalFileURL:v395 resourceBag:v28];
                  resourcesCopy = v404;
                }

                else
                {
                  resourcesCopy = v404;
                  v35 = v395;
                }

                v75 = v407;
                dCopy = v409;
              }

              else
              {
                dCopy = v409;
                if (error)
                {
                  _restoreMovedFilesOnFailure = [(PHAssetCreationRequest *)self _restoreMovedFilesOnFailure];
                  if (v416 && _restoreMovedFilesOnFailure)
                  {
                    v313 = [MEMORY[0x1E69BE288] transactionReason:@"Unable to create asset from resources"];
                    [error deleteWithReason:v313];
                  }

                  else
                  {
                    v313 = PLPhotoKitGetLog();
                    if (os_log_type_enabled(v313, OS_LOG_TYPE_ERROR))
                    {
                      _movedFiles = [(PHAssetCreationRequest *)self _movedFiles];
                      *buf = 138412546;
                      *&buf[4] = error;
                      *&buf[12] = 2112;
                      *&buf[14] = _movedFiles;
                      _os_log_impl(&dword_19C86F000, v313, OS_LOG_TYPE_ERROR, "Complete asset ingestion failed, but moved files could not be restored to their original location.  Leaving partially ingested asset %@ with orphaned supporting files %@.", buf, 0x16u);
                    }
                  }
                }

                assetResources = [v28 assetResources];
                dictionary = [MEMORY[0x1E695DF90] dictionary];
                v317 = [assetResources count];
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

                [dictionary setObject:v319 forKeyedSubscript:*MEMORY[0x1E696A278]];
                error = [uuid error];
                [dictionary setObject:error forKeyedSubscript:*MEMORY[0x1E696AA08]];

                v321 = [(PHAssetCreationRequest *)self urlsForResources:assetResources];
                if ([v321 count])
                {
                  [dictionary setObject:v321 forKeyedSubscript:@"_PHResourceUrlsErrorKey"];
                }

                v322 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:dictionary];
                v323 = v322;
                if (errorCopy)
                {
                  v324 = v322;
                  *errorCopy = v323;
                }

                v325 = [MEMORY[0x1E69BF2D0] failureWithError:v323];

                error = 0;
                uuid = v325;
                resourcesCopy = v404;
                v35 = v395;
                v75 = v407;
              }

              if ([uuid isSuccess])
              {
                errorCopy2 = error;
              }

              else
              {
                errorCopy2 = 0;
              }

              v25 = errorCopy2;

              goto LABEL_362;
            }

LABEL_244:
            [error setPlaybackStyle:1];
            [error setVideoCpVisibilityState:1];
            goto LABEL_245;
          }
        }

        goto LABEL_244;
      }

      if ([v413 customRendered] != 9)
      {
        [error setDefaultAdjustmentsIfNecessaryWithMainFileMetadata:v413];
        goto LABEL_239;
      }

      v428 = 0;
      v227 = [error generatePortraitAdjustment:&v428];
      v228 = v428;
      v229 = v228;
      if (v227)
      {
        v397 = v69;
        v391 = v228;
        v230 = [v227 objectForKeyedSubscript:*MEMORY[0x1E69BF380]];
        v389 = [v227 objectForKeyedSubscript:*MEMORY[0x1E69BF388]];
        v231 = [v227 objectForKeyedSubscript:*MEMORY[0x1E69BF370]];
        editorBundleID = [(PHAssetChangeRequest *)self editorBundleID];
        v233 = [v227 objectForKeyedSubscript:*MEMORY[0x1E69BF368]];
        integerValue = [v233 integerValue];

        v235 = [objc_alloc(MEMORY[0x1E69C0660]) initWithFormatIdentifier:v230 formatVersion:v389 data:v231 baseVersion:integerValue editorBundleID:editorBundleID renderTypes:0];
        if (v235)
        {
          dateCreated = [error dateCreated];
          [v235 setAdjustmentTimestamp:dateCreated];

          v237 = [MEMORY[0x1E69BE258] assetAdjustmentOptionsForPortraitImportWithMainFileMetadata:v413];
          [error setAdjustments:v235 options:v237];

          [error setDeferredProcessingNeeded:2];
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
          mainFileURL = [error mainFileURL];
          v240 = [v238 descriptionWithFileURL:mainFileURL];
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
    creationOptions3 = [v416 creationOptions];
    shouldMoveFile = [creationOptions3 shouldMoveFile];

    creationOptions4 = [v416 creationOptions];
    shouldIngestInPlace = [creationOptions4 shouldIngestInPlace];

    _savedAssetTypeForAsset = [(PHAssetCreationRequest *)self _savedAssetTypeForAsset];
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
        if (mediaType == 1)
        {
          v64 = 0;
          dCopy = 0;
          v414 = 0;
          goto LABEL_75;
        }

        v77 = MEMORY[0x1E69BF2D0];
        v81 = MEMORY[0x1E696ABC0];
        v464 = *MEMORY[0x1E696A578];
        v465 = @"Cannot create an asset with data for non-image types";
        pathManager = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v465 forKeys:&v464 count:1];
        v79 = v81;
        v80 = 3302;
      }

      else
      {
        v77 = MEMORY[0x1E69BF2D0];
        v78 = MEMORY[0x1E696ABC0];
        v462 = *MEMORY[0x1E696A578];
        v463 = @"Missing both resources and data. Cannot create asset.";
        pathManager = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v463 forKeys:&v462 count:1];
        v79 = v78;
        v80 = 3303;
      }

      v65 = [v79 errorWithDomain:@"PHPhotosErrorDomain" code:v80 userInfo:pathManager];
      v82 = [v77 failureWithError:v65];

      v64 = 0;
      dCopy = 0;
      v414 = 0;
LABEL_56:
      uuid = v82;
      goto LABEL_73;
    }

    if (shouldIngestInPlace)
    {
      pathManager = [libraryCopy pathManager];
      v61 = MEMORY[0x1E69BF238];
      [pathManager capabilities];
      v63 = v62 = v35;
      v445 = 0;
      v64 = [v61 ingestItemAtURL:v62 toURL:v62 type:0 options:3 capabilities:v63 error:&v445];
      v65 = v445;

      if (v64)
      {
        v414 = v62;
        v64 = 0;
        dCopy = 0;
      }

      else
      {
        v76 = [MEMORY[0x1E69BF2D0] failureWithError:v65];

        dCopy = 0;
        v414 = 0;
        uuid = v76;
      }

      goto LABEL_73;
    }

    if (mediaType != 1)
    {
      goto LABEL_65;
    }

    if ([v28 hasCurrentAdjustment])
    {
      deferredPhotoIdentifier2 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions deferredPhotoIdentifier];
      if (deferredPhotoIdentifier2)
      {

        goto LABEL_59;
      }

      if ((v398 & 1) == 0)
      {
LABEL_65:
        v443 = 0;
        v100 = [(PHAssetCreationRequest *)self _secureMove:shouldMoveFile assetResource:v416 photoLibrary:libraryCopy error:&v443];
        pathManager = v443;
        v414 = v100;
        if (v100)
        {
          v64 = 0;
          dCopy = 0;
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

          creationOptions5 = [v416 creationOptions];
          uniformTypeIdentifier = [creationOptions5 uniformTypeIdentifier];

          if ([uuid isSuccess])
          {
            v68 = v52;
            if (v414)
            {
              if ([v416 type] == 1 || objc_msgSend(v416, "type") == 19)
              {
                v109 = objc_alloc(MEMORY[0x1E69C0718]);
                libraryBundle4 = [libraryCopy libraryBundle];
                timeZoneLookup2 = [libraryBundle4 timeZoneLookup];
                v112 = [v109 initWithImageURL:v414 contentType:0 options:14 timeZoneLookup:timeZoneLookup2 cacheImageSource:1 cacheImageData:1];
              }

              else
              {
                v113 = objc_alloc(MEMORY[0x1E69C0718]);
                libraryBundle4 = [libraryCopy libraryBundle];
                timeZoneLookup2 = [libraryBundle4 timeZoneLookup];
                v112 = [v113 initWithAVURL:v414 options:14 timeZoneLookup:timeZoneLookup2];
              }

              v413 = v112;

              v68 = v52;
            }

            else
            {
              v413 = 0;
            }

            v442 = 0;
            v114 = [(PHAssetCreationRequest *)self _assetAlreadyExistsAsPlaceholder:v410 mediaType:mediaType uuid:v409 photoLibrary:libraryCopy fetchAsset:&v442];
            v115 = v442;
            v87 = v115;
            if (v114)
            {
              if (v115)
              {
                bundleScope = [v115 bundleScope];
                v441 = 0;
                [v87 setAttributesFromMainFileURL:v414 mainFileMetadata:v413 savedAssetType:_savedAssetTypeForAsset bundleScope:bundleScope isPlaceholder:0 placeholderFileURL:0 imageSource:&v446 imageData:&v441];
                v402 = v441;
                v87 = v87;
                error = v87;
                goto LABEL_106;
              }

              v121 = MEMORY[0x1E69BF2D0];
              v122 = MEMORY[0x1E696ABC0];
              v460 = *MEMORY[0x1E696A278];
              v409 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected to find an existing placeholder asset in the library for uuid '%@'", v409];
              v461 = v409;
              v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v461 forKeys:&v460 count:1];
              v125 = [v122 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v124];
              v126 = [v121 failureWithError:v125];

              v87 = 0;
              v68 = v52;
              v402 = 0;
              uuid = v126;
            }

            else
            {
              if (v64)
              {
                v117 = MEMORY[0x1E69BE540];
                bundleScope2 = [(PHAssetCreationRequest *)self bundleScope];
                v440 = 0;
                LOWORD(v373) = 257;
                error = [v117 insertAssetIntoPhotoLibrary:libraryCopy mainFileURL:dCopy mainFileMetadata:v413 savedAssetType:_savedAssetTypeForAsset bundleScope:bundleScope2 uuid:v409 replacementUUID:0 imageSource:&v446 imageData:&v440 isPlaceholder:v373 deleteFileOnFailure:?];
                v402 = v440;
                [error setAttributesFromMainFileURL:dCopy mainFileMetadata:v413 savedAssetType:_savedAssetTypeForAsset bundleScope:0 isPlaceholder:1 placeholderFileURL:v414 imageSource:0 imageData:0];
              }

              else if (v414)
              {
                v119 = MEMORY[0x1E69BE540];
                bundleScope3 = [(PHAssetCreationRequest *)self bundleScope];
                v439 = 0;
                BYTE1(v373) = ((shouldMoveFile | shouldIngestInPlace) & 1) == 0;
                LOBYTE(v373) = 0;
                error = [v119 insertAssetIntoPhotoLibrary:libraryCopy mainFileURL:v414 mainFileMetadata:v413 savedAssetType:_savedAssetTypeForAsset bundleScope:bundleScope3 uuid:v409 replacementUUID:0 imageSource:&v446 imageData:&v439 isPlaceholder:v373 deleteFileOnFailure:?];
                v402 = v439;
              }

              else
              {
                v130 = v115;
                v438 = v413;
                v437 = 0;
                error = [(PHAssetCreationRequest *)self _managedAssetFromPrimaryResourceData:v416 validatedResources:v28 withUUID:v409 photoLibrary:libraryCopy mainFileMetadata:&v438 getImageSource:&v446 imageData:&v437];
                v131 = v438;

                v87 = v130;
                v402 = v437;
                v413 = v131;
              }

              if (error)
              {
                goto LABEL_106;
              }
            }

            if ([uuid isSuccess])
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
              error = 0;
              uuid = v137;
            }

            else
            {
              error = 0;
            }

            goto LABEL_106;
          }

          v87 = 0;
          v413 = 0;
          v402 = 0;
          error = 0;
          v68 = v52;
LABEL_106:
          if ([uuid isSuccess])
          {
            v383 = v87;
            if (v409)
            {
              uuid5 = [error uuid];
              v139 = [v409 isEqualToString:uuid5];

              if ((v139 & 1) == 0)
              {
                currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler2 handleFailureInMethod:v386 object:self file:@"PHAssetCreationRequest.m" lineNumber:3228 description:{@"Invalid parameter not satisfying: %@", @"[uuid isEqualToString:asset.uuid]"}];
              }
            }

            additionalAttributes3 = [error additionalAttributes];
            creationOptions6 = [v416 creationOptions];
            alternateImportImageDate = [creationOptions6 alternateImportImageDate];
            [additionalAttributes3 setAlternateImportImageDate:alternateImportImageDate];

            if (!v413)
            {
              v399 = 0;
              goto LABEL_118;
            }

            photoProcessingFlags = [v413 photoProcessingFlags];
            if ((photoProcessingFlags & 0x1000) != 0)
            {
              photoCaptureFlags = [v413 photoCaptureFlags];
              LODWORD(v144) = 1;
              if ((photoCaptureFlags & 0x4000000000) != 0)
              {
                v399 = 1;
                [error setSpatialType:1];
LABEL_118:
                importSessionID = [(PHAssetCreationRequest *)self importSessionID];

                if (importSessionID)
                {
                  importSessionID2 = [(PHAssetCreationRequest *)self importSessionID];
                  [error setImportSessionAlbumWithImportSessionID:importSessionID2];
                }

                conversationID = [(PHAssetCreationRequest *)self conversationID];

                if (conversationID)
                {
                  conversationID2 = [(PHAssetCreationRequest *)self conversationID];
                  [error setConversationAlbumWithConversationID:conversationID2];
                }

                syndicationIdentifier5 = [(PHAssetCreationRequest *)self syndicationIdentifier];

                if (syndicationIdentifier5)
                {
                  syndicationIdentifier6 = [(PHAssetCreationRequest *)self syndicationIdentifier];
                  additionalAttributes4 = [error additionalAttributes];
                  [additionalAttributes4 setSyndicationIdentifier:syndicationIdentifier6];
                }

                creationDate = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions creationDate];

                if (creationDate)
                {
                  creationDate2 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions creationDate];
                  [error setDateCreated:creationDate2];
                }

                [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions finalAssetHeight];
                if (v155 != 0.0)
                {
                  [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions finalAssetWidth];
                  if (v156 != 0.0)
                  {
                    [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions finalAssetHeight];
                    [error setHeight:v157];
                    [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions finalAssetWidth];
                    [error setWidth:v158];
                  }
                }

                cameraMetadataPath4 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions cameraMetadataPath];
                if (cameraMetadataPath4)
                {
                  v160 = cameraMetadataPath4;
                  v161 = [MEMORY[0x1E69BE498] semanticEnhanceSceneIsValid:v447];

                  if (v161)
                  {
                    [(PHAssetCreationRequest *)self _checkAndSetForSemanticEnhancementForAsset:error resourceBag:v28];
                  }
                }

                if (![error kind] && -[PHAssetCreationCameraIngestOptions isExpectingPairedVideo](self->_cameraIngestOptions, "isExpectingPairedVideo"))
                {
                  [(PHAssetCreationRequest *)self _setupIrisPairingTimeoutForAsset:error imageFile:v395 library:libraryCopy];
                }

                cameraIngestOptions2 = [(PHAssetCreationRequest *)self cameraIngestOptions];
                dbgFilePath = [cameraIngestOptions2 dbgFilePath];

                if (dbgFilePath)
                {
                  v164 = HasInternalDiagnostics;
                }

                else
                {
                  v164 = 0;
                }

                if (v164 == 1)
                {
                  filename2 = [error filename];
                  [PHAssetCreationRequest setdbgFileWithAsset:error dbgFilePath:dbgFilePath photoFilename:filename2];
                }

                v381 = dbgFilePath;
                creationOptions7 = [v416 creationOptions];
                [error setAvalanchePickType:{objc_msgSend(creationOptions7, "burstPickType")}];

                creationOptions8 = [v416 creationOptions];
                originalFilename = [creationOptions8 originalFilename];
                if (originalFilename)
                {
                  lastPathComponent3 = originalFilename;
                }

                else
                {
                  lastPathComponent3 = [v395 lastPathComponent];

                  if (!lastPathComponent3)
                  {
                    goto LABEL_144;
                  }
                }

                if (!self->_shouldUseAutomaticallyGeneratedOriginalFilename)
                {
LABEL_145:
                  if ((isCameraClient & 1) == 0)
                  {
                    jobType5 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];
                    v173 = [jobType5 isEqualToString:*MEMORY[0x1E69C0470]];

                    if ((v173 & 1) == 0)
                    {
                      [error setOriginalFilename:lastPathComponent3];
                    }
                  }

                  if (uniformTypeIdentifier)
                  {
                    [error setUniformTypeIdentifier:?];
                  }

                  v174 = PLPhotoKitGetLog();
                  if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
                  {
                    uuid6 = [error uuid];
                    *buf = 138412290;
                    *&buf[4] = uuid6;
                    _os_log_impl(&dword_19C86F000, v174, OS_LOG_TYPE_DEBUG, "Generating new thumbnails for asset with UUID %@", buf, 0xCu);
                  }

                  v380 = lastPathComponent3;
                  if (mediaType == 2)
                  {
                    if ([(PHChangeRequest *)self shouldPerformConcurrentWork])
                    {
                      v385 = 0;
                      v387 = 0;
                    }

                    else
                    {
                      path = [v414 path];
                      v436 = 0;
                      v435 = 0;
                      PLPreviewImageAndDurationForVideoAtPath();
                      v387 = v436;
                      v385 = v435;
                    }

                    duplicateAssetIdentifier = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
                    if (duplicateAssetIdentifier)
                    {
                      v179 = [PHObject uuidFromLocalIdentifier:duplicateAssetIdentifier];
                      v176 = [MEMORY[0x1E69BE540] assetWithUUID:v179 inLibrary:libraryCopy];
                      if (v176)
                      {
                        [error additionalAttributes];
                        v181 = v180 = v176;
                        additionalAttributes5 = [v180 additionalAttributes];
                        [v181 setCameraCaptureDevice:{objc_msgSend(additionalAttributes5, "cameraCaptureDevice")}];

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

                  duplicateAssetIdentifier2 = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
                  v184 = duplicateAssetIdentifier2;
                  if (!v176 && duplicateAssetIdentifier2)
                  {
                    v185 = [PHObject uuidFromLocalIdentifier:duplicateAssetIdentifier2];
                    v176 = [MEMORY[0x1E69BE540] assetWithUUID:v185 inLibrary:libraryCopy];
                  }

                  if (v176)
                  {
                    additionalAttributes6 = [v176 additionalAttributes];
                    [additionalAttributes6 setDestinationAssetCopyState:2];
                  }

                  momentShare = [v176 momentShare];

                  v411 = v176;
                  v379 = v184;
                  if (momentShare)
                  {
                    additionalAttributes7 = [error additionalAttributes];
                    [additionalAttributes7 setImportedBy:7];
                    v189 = additionalAttributes7;
                    v190 = 1;
LABEL_172:
                    [v189 setShareType:v190];
                    additionalAttributes8 = [v176 additionalAttributes];
                    shareOriginator = [additionalAttributes8 shareOriginator];
                    [additionalAttributes7 setShareOriginator:shareOriginator];
                    goto LABEL_173;
                  }

                  collectionShare = [v176 collectionShare];

                  if (collectionShare)
                  {
                    additionalAttributes7 = [error additionalAttributes];
                    [additionalAttributes7 setImportedBy:15];
                    v189 = additionalAttributes7;
                    v190 = 3;
                    goto LABEL_172;
                  }

                  importedBy = [(PHAssetCreationRequest *)self importedBy];
                  helper4 = [(PHChangeRequest *)self helper];
                  additionalAttributes7 = [helper4 clientBundleIdentifier];

                  helper5 = [(PHChangeRequest *)self helper];
                  clientDisplayName = [helper5 clientDisplayName];

                  if (importedBy)
                  {
                    v244 = importedBy;
                  }

                  else
                  {
                    v244 = 3;
                  }

                  if ([additionalAttributes7 hasPrefix:@"com.apple."])
                  {
                    if ((isCameraClient | v388))
                    {
                      cameraIngestOptions3 = [(PHAssetCreationRequest *)self cameraIngestOptions];
                      if ([cameraIngestOptions3 isRearFacingCamera])
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

                  if ([additionalAttributes7 length])
                  {
                    helper6 = [(PHChangeRequest *)self helper];
                    isClientInLimitedLibraryMode = [helper6 isClientInLimitedLibraryMode];

                    if (isClientInLimitedLibraryMode)
                    {
                      helper7 = [(PHChangeRequest *)self helper];
                      fetchFilterIdentifier = [helper7 fetchFilterIdentifier];

                      memset(buf, 0, sizeof(buf));
                      helper8 = [(PHChangeRequest *)self helper];
                      clientAuthorization3 = [helper8 clientAuthorization];
                      v345 = clientAuthorization3;
                      if (clientAuthorization3)
                      {
                        [clientAuthorization3 clientAuditToken];
                      }

                      else
                      {
                        memset(buf, 0, sizeof(buf));
                      }

                      v346 = MEMORY[0x1E69BE510];
                      managedObjectContext = [libraryCopy managedObjectContext];
                      v434[0] = *buf;
                      v434[1] = *&buf[16];
                      v348 = [v346 fetchOrCreateLimitedLibraryFetchFilterWithApplicationIdentifier:fetchFilterIdentifier auditToken:v434 inManagedObjectContext:managedObjectContext];

                      uuid7 = [(PHChangeRequest *)self uuid];
                      v457 = uuid7;
                      v350 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v457 count:1];
                      [v348 addAssetsWithUUIDs:v350];

                      objectID = [v348 objectID];
                      [(PHAssetCreationRequest *)self _setLimitedLibraryFetchFilterObjectID:objectID];
                    }
                  }

                  additionalAttributes9 = [error additionalAttributes];
                  [additionalAttributes9 setImportedBy:v244];

                  if ([(NSString *)self->_importedByBundleIdentifier length])
                  {
                    importedByBundleIdentifier = self->_importedByBundleIdentifier;
                    additionalAttributes10 = [error additionalAttributes];
                    [additionalAttributes10 setImportedByBundleIdentifier:importedByBundleIdentifier];

                    v355 = self->_importedByBundleIdentifier;
                  }

                  else
                  {
                    if ([additionalAttributes7 length])
                    {
                      additionalAttributes11 = [error additionalAttributes];
                      [additionalAttributes11 setImportedByBundleIdentifier:additionalAttributes7];

                      v368 = [MEMORY[0x1E69BE250] shouldPersistImportedByDisplayName:clientDisplayName];
                      v355 = additionalAttributes7;
                      v356 = uniformTypeIdentifier;
                      if (v368)
                      {
                        additionalAttributes12 = [error additionalAttributes];
                        [additionalAttributes12 setImportedByDisplayName:clientDisplayName];

                        v355 = additionalAttributes7;
                      }

                      goto LABEL_381;
                    }

                    v355 = *MEMORY[0x1E69BF500];
                  }

                  v356 = uniformTypeIdentifier;
LABEL_381:
                  shareOriginator = v355;
                  v357 = *MEMORY[0x1E69BF4D0];
                  v456[0] = shareOriginator;
                  v358 = *MEMORY[0x1E69BF4F0];
                  v455[0] = v357;
                  v455[1] = v358;
                  null2 = v356;
                  if (!v356)
                  {
                    null2 = [MEMORY[0x1E695DFB0] null];
                  }

                  v376 = null2;
                  v456[1] = null2;
                  v455[2] = *MEMORY[0x1E69BF4E8];
                  null3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(error, "originalFilesize")}];
                  v361 = null3;
                  if (!null3)
                  {
                    null3 = [MEMORY[0x1E695DFB0] null];
                  }

                  v375 = null3;
                  v456[2] = null3;
                  v455[3] = *MEMORY[0x1E69BF4E0];
                  null4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(error, "width")}];
                  v377 = null4;
                  if (!null4)
                  {
                    null4 = [MEMORY[0x1E695DFB0] null];
                  }

                  v374 = null4;
                  v456[3] = null4;
                  v455[4] = *MEMORY[0x1E69BF4D8];
                  null5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(error, "height")}];
                  v364 = null5;
                  if (!null5)
                  {
                    null5 = [MEMORY[0x1E695DFB0] null];
                  }

                  v365 = null5;
                  v456[4] = null5;
                  v366 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v456 forKeys:v455 count:5];
                  PLSendCoreAnalyticEvent();

                  additionalAttributes8 = clientDisplayName;
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

                  if (!uniformTypeIdentifier)
                  {
                  }

LABEL_173:

                  v194 = [MEMORY[0x1E69BE498] semanticEnhanceSceneIsValid:v447];
                  hasCurrentAdjustment = [v28 hasCurrentAdjustment];
                  if (isCameraClient)
                  {
                    if (((hasCurrentAdjustment | v399 | v194) & 1) == 0)
                    {
LABEL_175:
                      v196 = v446;
                      libraryBundle5 = [libraryCopy libraryBundle];
                      timeZoneLookup3 = [libraryBundle5 timeZoneLookup];
                      [(PHAssetCreationRequest *)self _checkAndGenerateThumbnailsForAsset:error imageSource:v196 imageData:v402 previewImage:v387 thumbnailImage:v385 timeZoneLookup:timeZoneLookup3 resourceBag:v405];

                      v28 = v405;
                      v199 = 0;
LABEL_178:
                      v68 = v415;
                      v200 = PLPhotoKitGetLog();
                      if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
                      {
                        uuid8 = [error uuid];
                        *buf = 138412546;
                        *&buf[4] = error;
                        *&buf[12] = 2114;
                        *&buf[14] = uuid8;
                        _os_log_impl(&dword_19C86F000, v200, OS_LOG_TYPE_DEFAULT, "Created asset %@ uuid %{public}@ from valid resources ", buf, 0x16u);

                        v68 = v415;
                      }

                      v69 = v399 ^ 1;
                      v398 = v199 | v194;
                      v87 = v383;
                      goto LABEL_181;
                    }
                  }

                  else if ((hasCurrentAdjustment & 1) == 0)
                  {
                    goto LABEL_175;
                  }

                  v199 = isCameraClient & v399;
                  goto LABEL_178;
                }

LABEL_144:
                mainFileURL2 = [error mainFileURL];
                lastPathComponent4 = [mainFileURL2 lastPathComponent];

                lastPathComponent3 = lastPathComponent4;
                goto LABEL_145;
              }
            }

            else
            {
              v144 = (photoProcessingFlags >> 12) & 1;
            }

            v399 = v144;
            goto LABEL_118;
          }

          v411 = 0;
          v69 = 1;
LABEL_181:

          goto LABEL_182;
        }

        [MEMORY[0x1E69BF2D0] failureWithError:pathManager];
        v64 = 0;
        dCopy = 0;
        v414 = 0;
        uuid = v65 = uuid;
LABEL_73:

        goto LABEL_74;
      }
    }

    else if (!v398)
    {
      goto LABEL_65;
    }

LABEL_59:
    libraryServicesManager2 = [libraryCopy libraryServicesManager];
    imageWriter = [libraryServicesManager2 imageWriter];
    v91 = v35;
    v92 = imageWriter;
    pathExtension2 = [v91 pathExtension];
    uppercaseString = [pathExtension2 uppercaseString];
    pathManager = [v92 cameraAssetPathForNewAssetWithExtension:uppercaseString assetUUID:v409];

    v95 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathManager];
    v414 = [MEMORY[0x1E69BE670] deferredPhotoPreviewDestinationURLForPrimaryAssetURL:v95];
    if (v398)
    {
      v96 = [(PHAssetCreationRequest *)self _setupSemanticEnhanceMetadataIfNeededWithDestinationURL:v95 photoLibrary:libraryCopy semanticEnhanceResult:&v447 ingestJobCameraMetadata:v407];
      deferredPhotoIdentifier3 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions deferredPhotoIdentifier];

      if (!deferredPhotoIdentifier3 && v96)
      {
        v98 = [MEMORY[0x1E69BE498] semanticEnhancePreviewDestinationURLForPrimaryAssetURL:v95];
        v99 = v395;
LABEL_70:

        v414 = v98;
        goto LABEL_71;
      }

      deferredPhotoIdentifier4 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions deferredPhotoIdentifier];
      v102 = deferredPhotoIdentifier4 != 0 || v96;

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
    dCopy = v95;
    if (v103)
    {
      v64 = v95 != 0;
      goto LABEL_73;
    }

    v127 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      path2 = [v395 path];
      path3 = [v414 path];
      *buf = 138412802;
      *&buf[4] = path2;
      *&buf[12] = 2112;
      *&buf[14] = path3;
      *&buf[22] = 2112;
      *&buf[24] = v65;
      _os_log_impl(&dword_19C86F000, v127, OS_LOG_TYPE_ERROR, "Failed to copy file from %@ to %@ with error: %@", buf, 0x20u);
    }

    v82 = [MEMORY[0x1E69BF2D0] failureWithError:v65];

    v64 = 0;
    goto LABEL_56;
  }

  if (error)
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
    *error = [v70 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v73];

    v414 = 0;
    v411 = 0;
    error = 0;
  }

  else
  {
    v414 = 0;
    v411 = 0;
  }

  v25 = 0;
  resourcesCopy = v404;
  v75 = v407;
LABEL_362:

LABEL_363:

  return v25;
}

- (BOOL)_unTrashAndResetAsset:(id)asset
{
  v23 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  metadataFromMediaPropertiesOrOriginalResource = [assetCopy metadataFromMediaPropertiesOrOriginalResource];
  if (metadataFromMediaPropertiesOrOriginalResource)
  {
    [assetCopy unTrash];
    [assetCopy revertToOriginal];
    importSessionID = [(PHAssetCreationRequest *)self importSessionID];
    [assetCopy setImportSessionAlbumWithImportSessionID:importSessionID];

    [assetCopy setDateCreated:0];
    additionalAttributes = [assetCopy additionalAttributes];
    [additionalAttributes setTimeZoneName:0];

    additionalAttributes2 = [assetCopy additionalAttributes];
    [additionalAttributes2 setTimeZoneOffset:0];

    [assetCopy setTitle:0];
    [assetCopy setLongDescription:0];
    [assetCopy setLocation:0];
    additionalAttributes3 = [assetCopy additionalAttributes];
    [additionalAttributes3 setKeywords:0];

    filename = [assetCopy filename];
    directory = [assetCopy directory];
    additionalAttributes4 = [assetCopy additionalAttributes];
    originalFilename = [additionalAttributes4 originalFilename];

    [assetCopy setAttributesFromMainFileURL:0 mainFileMetadata:metadataFromMediaPropertiesOrOriginalResource savedAssetType:objc_msgSend(assetCopy bundleScope:"savedAssetType") isPlaceholder:objc_msgSend(assetCopy placeholderFileURL:"bundleScope") imageSource:0 imageData:{0, 0, 0}];
    [assetCopy setFilename:filename];
    [assetCopy setDirectory:directory];
    additionalAttributes5 = [assetCopy additionalAttributes];
    [additionalAttributes5 setOriginalFilename:originalFilename];
  }

  else
  {
    v15 = PLSyndicationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      uuid = [assetCopy uuid];
      syndicationIdentifier = [(PHAssetCreationRequest *)self syndicationIdentifier];
      *buf = 138412546;
      v20 = uuid;
      v21 = 2112;
      v22 = syndicationIdentifier;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Found existing trashed asset (%@) with same syndication id (%@), but it is missing both media metadata and original", buf, 0x16u);
    }

    [assetCopy expunge];
  }

  return metadataFromMediaPropertiesOrOriginalResource != 0;
}

- (void)didSendChangeToServiceHandlerWithResult:(BOOL)result
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
    uuid = [(PHChangeRequest *)self uuid];
    [(PLIndicatorFileCoordinator *)fileCoordinator setCreatingAssetIsBusy:0 uuid:uuid];
  }
}

- (void)_setCreatingAssetIsBusy:(BOOL)busy
{
  busyCopy = busy;
  _resolveResourceHoldingDirectoryPath = [(PHAssetCreationRequest *)self _resolveResourceHoldingDirectoryPath];

  if (_resolveResourceHoldingDirectoryPath)
  {
    fileCoordinator = self->_fileCoordinator;
    if (!fileCoordinator)
    {
      v7 = [objc_alloc(MEMORY[0x1E69BE4A8]) initWithResourceHoldingDirectoryPath:self->_resourceHoldingDirectoryPath];
      v8 = self->_fileCoordinator;
      self->_fileCoordinator = v7;

      fileCoordinator = self->_fileCoordinator;
    }

    uuid = [(PHChangeRequest *)self uuid];
    [(PLIndicatorFileCoordinator *)fileCoordinator setCreatingAssetIsBusy:busyCopy uuid:uuid];
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

- (id)createAssetFromValidatedResources:(id)resources withUUID:(id)d assetAlreadyExistsAsPlaceholder:(BOOL)placeholder inPhotoLibrary:(id)library error:(id *)error
{
  resourcesCopy = resources;
  dCopy = d;
  libraryCopy = library;
  libraryServicesManager = [libraryCopy libraryServicesManager];
  if (!libraryServicesManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:2936 description:{@"Invalid parameter not satisfying: %@", @"libraryServicesManager"}];
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
  v17 = resourcesCopy;
  v25 = v17;
  v18 = dCopy;
  v26 = v18;
  placeholderCopy = placeholder;
  v19 = libraryCopy;
  v27 = v19;
  v29 = &v31;
  [libraryServicesManager performBlockWithImportMutex:v24];
  if (error)
  {
    v20 = v32[5];
    if (v20)
    {
      *error = v20;
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

- (void)finalizeRequestWithBatchSuccess:(BOOL)success
{
  successCopy = success;
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

  if (!successCopy)
  {
    originalHash = PLPhotoKitGetLog();
    if (os_log_type_enabled(originalHash, OS_LOG_TYPE_ERROR))
    {
      v31 = 136315138;
      v32 = "[PHAssetCreationRequest finalizeRequestWithBatchSuccess:]";
      _os_log_impl(&dword_19C86F000, originalHash, OS_LOG_TYPE_ERROR, "%s: Creation request failed. Clean up installed files", &v31, 0xCu);
    }

    goto LABEL_17;
  }

  derivativeContext = self->_derivativeContext;
  if (derivativeContext)
  {
    if (![(PHAssetCreationDerivativeContext *)derivativeContext thumbnailWriteSucceeded])
    {
      v10 = objc_alloc(MEMORY[0x1E696AC90]);
      asset = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      v12 = [v10 initWithIndex:{objc_msgSend(asset, "effectiveThumbnailIndex")}];

      v13 = MEMORY[0x1E69BE840];
      asset2 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      photoLibrary = [asset2 photoLibrary];
      [v13 recycleThumbnailIndexes:v12 inLibrary:photoLibrary];

      asset3 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      [asset3 setEffectiveThumbnailIndex:0x7FFFFFFFFFFFFFFFLL];
    }

    if ([(PHAssetCreationDerivativeContext *)self->_derivativeContext assetKind]== 1)
    {
      v17 = MEMORY[0x1E69BE740];
      v18 = [MEMORY[0x1E69BE750] recipeFromID:65741];
      asset4 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      if ([asset4 hasAdjustments])
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      asset5 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      v22 = [v17 onDemand_installPrimaryImageResourceWithRecipe:v18 version:v20 forAsset:asset5];
    }

    originalHash = [(PHAssetCreationDerivativeContext *)self->_derivativeContext originalHash];
    if (originalHash)
    {
      asset6 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      additionalAttributes = [asset6 additionalAttributes];
      [additionalAttributes setOriginalHash:originalHash];

      asset7 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext asset];
      additionalAttributes2 = [asset7 additionalAttributes];
      v28 = [originalHash base64EncodedStringWithOptions:0];
      [additionalAttributes2 setOriginalStableHash:v28];
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

  assetKind = [(PHAssetCreationDerivativeContext *)self->_derivativeContext assetKind];
  if (assetKind == 1)
  {
    v41 = v4 - 1;
    v42 = v4;
    pathForOriginalFile = [(PHAssetCreationDerivativeContext *)self->_derivativeContext pathForOriginalFile];
    fullsizeRenderVideoPath = [(PHAssetCreationDerivativeContext *)self->_derivativeContext fullsizeRenderVideoPath];

    if (fullsizeRenderVideoPath)
    {
      fullsizeRenderVideoPath2 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext fullsizeRenderVideoPath];

      pathForOriginalFile = fullsizeRenderVideoPath2;
    }

    PLPreviewImageAndDurationForVideoAtPath();
    _imageSourceForDerivatives = 0;
    v22 = 0;
    identifier2 = 0;
    v18 = 0;
    goto LABEL_18;
  }

  if (assetKind)
  {
    _imageSourceForDerivatives = 0;
    goto LABEL_13;
  }

  _imageSourceForDerivatives = [(PHAssetCreationRequest *)self _imageSourceForDerivatives];
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(_imageSourceForDerivatives);
  if (!_imageSourceForDerivatives)
  {
LABEL_13:
    v22 = 0;
    v18 = 0;
    identifier2 = 0;
    goto LABEL_23;
  }

  v11 = PrimaryImageIndex;
  v41 = v4 - 1;
  v42 = v4;
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setImageData:0];
  pathForOriginalFile = [PHAssetCreationRequest _imageIOThumbnailCreationOptionsFromDerivativeContext:self->_derivativeContext];
  v13 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v14 = *MEMORY[0x1E6982E58];
  identifier = [*MEMORY[0x1E6982E58] identifier];
  v16 = CGImageDestinationCreateWithData(v13, identifier, 1uLL, 0);

  CGImageDestinationAddImageFromSource(v16, _imageSourceForDerivatives, v11, pathForOriginalFile);
  v17 = CGImageDestinationFinalize(v16);
  CFRelease(v16);
  if (v17)
  {
    v18 = v13;
    identifier2 = [v14 identifier];
    _imageSourceForDerivatives = DCIM_newPLImageWithData();
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

    identifier2 = 0;
    v18 = 0;
    _imageSourceForDerivatives = 0;
  }

  v22 = 0;
LABEL_18:

  if (_imageSourceForDerivatives)
  {
    v40 = v6;
    nextAvailableThumbnailIndex = [(PHAssetCreationDerivativeContext *)self->_derivativeContext nextAvailableThumbnailIndex];
    v24 = objc_alloc(MEMORY[0x1E69BE488]);
    auxiliaryImageRecords = [(PHAssetCreationDerivativeContext *)self->_derivativeContext auxiliaryImageRecords];
    v38 = v18;
    v39 = identifier2;
    v26 = [v24 initWithPLImage:_imageSourceForDerivatives backingData:v18 uniformTypeIdentifier:identifier2 auxiliaryImageRecords:auxiliaryImageRecords];

    thumbnailManager = [(PHAssetCreationDerivativeContext *)self->_derivativeContext thumbnailManager];
    thumbnailIdentifier = [(PHAssetCreationDerivativeContext *)self->_derivativeContext thumbnailIdentifier];
    assetUUID = [(PHAssetCreationDerivativeContext *)self->_derivativeContext assetUUID];
    v30 = v22;
    assetKind2 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext assetKind];
    assetExtension = [(PHAssetCreationDerivativeContext *)self->_derivativeContext assetExtension];
    v33 = assetKind2;
    v22 = v30;
    -[PHAssetCreationDerivativeContext setThumbnailWriteSucceeded:](self->_derivativeContext, "setThumbnailWriteSucceeded:", [thumbnailManager setThumbnailsForThumbIdentifier:thumbnailIdentifier thumbnailIndex:nextAvailableThumbnailIndex assetUUID:assetUUID kind:v33 extension:assetExtension withImage:v26]);

    if ([(PHAssetCreationDerivativeContext *)self->_derivativeContext assetKind]== 1)
    {
      pathForVideoPreviewFile = [(PHAssetCreationDerivativeContext *)self->_derivativeContext pathForVideoPreviewFile];
      PLWriteImageWithEmbeddedThumbnailToPath();
    }

    v7 = v41;
    v4 = v42;
    identifier2 = v39;
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
  imageData = [(PHAssetCreationDerivativeContext *)self->_derivativeContext imageData];
  v4 = MEMORY[0x1E69C08F0];
  originalUTI = [(PHAssetCreationDerivativeContext *)self->_derivativeContext originalUTI];
  v6 = [v4 typeWithIdentifier:originalUTI];

  fullsizeRenderImagePath = [(PHAssetCreationDerivativeContext *)self->_derivativeContext fullsizeRenderImagePath];

  if (fullsizeRenderImagePath)
  {
    v8 = MEMORY[0x1E695DEF0];
    fullsizeRenderImagePath2 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext fullsizeRenderImagePath];
    v19 = 0;
    v10 = [v8 dataWithContentsOfFile:fullsizeRenderImagePath2 options:1 error:&v19];
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
        fullsizeRenderImagePath3 = [(PHAssetCreationDerivativeContext *)self->_derivativeContext fullsizeRenderImagePath];
        *buf = 138412546;
        v21 = fullsizeRenderImagePath3;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "Failed to read data from %@ (%@)", buf, 0x16u);
      }
    }

    imageData = v10;
  }

  else if ([v6 conformsToType:*MEMORY[0x1E6982F88]])
  {
    v15 = [PHAssetCreationRequest _jpegDataFromRAWData:imageData derivativeContext:self->_derivativeContext];

    imageData = v15;
  }

  if (imageData && [imageData length])
  {
    v16 = CGImageSourceCreateWithData(imageData, 0);
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

- (void)_setupDerivativeCreationContextForAsset:(id)asset imageSource:(CGImageSource *)source imageData:(id)data
{
  assetCopy = asset;
  dataCopy = data;
  if ([assetCopy hasAllThumbs])
  {
    photoLibrary = [assetCopy photoLibrary];
    thumbnailManager = [photoLibrary thumbnailManager];
    thumbnailIdentifier = [assetCopy thumbnailIdentifier];
    effectiveThumbnailIndex = [assetCopy effectiveThumbnailIndex];
    uuid = [assetCopy uuid];
    [thumbnailManager deleteThumbnailsWithIdentifier:thumbnailIdentifier orIndex:effectiveThumbnailIndex uuid:uuid];
  }

  v14 = objc_alloc_init(PHAssetCreationDerivativeContext);
  derivativeContext = self->_derivativeContext;
  self->_derivativeContext = v14;

  v16 = MEMORY[0x1E69BE840];
  photoLibrary2 = [assetCopy photoLibrary];
  -[PHAssetCreationDerivativeContext setNextAvailableThumbnailIndex:](self->_derivativeContext, "setNextAvailableThumbnailIndex:", [v16 nextAvailableThumbnailIndexInLibrary:photoLibrary2]);

  [assetCopy setEffectiveThumbnailIndex:{-[PHAssetCreationDerivativeContext nextAvailableThumbnailIndex](self->_derivativeContext, "nextAvailableThumbnailIndex")}];
  photoLibrary3 = [assetCopy photoLibrary];
  thumbnailManager2 = [photoLibrary3 thumbnailManager];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setThumbnailManager:thumbnailManager2];

  thumbnailIdentifier2 = [assetCopy thumbnailIdentifier];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setThumbnailIdentifier:thumbnailIdentifier2];

  fileURLForThumbnailFile = [assetCopy fileURLForThumbnailFile];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setFileURLForThumbnailFile:fileURLForThumbnailFile];

  v22 = [(PHAssetResourceBag *)self->_assetResourceBag assetResourceWithType:5];

  if (v22)
  {
    pathForFullsizeRenderImageFile = [assetCopy pathForFullsizeRenderImageFile];
    [(PHAssetCreationDerivativeContext *)self->_derivativeContext setFullsizeRenderImagePath:pathForFullsizeRenderImageFile];
  }

  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setAsset:assetCopy];
  uuid2 = [assetCopy uuid];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setAssetUUID:uuid2];

  -[PHAssetCreationDerivativeContext setAssetKind:](self->_derivativeContext, "setAssetKind:", [assetCopy kind]);
  pathForOriginalFile = [assetCopy pathForOriginalFile];
  pathExtension = [pathForOriginalFile pathExtension];
  uppercaseString = [pathExtension uppercaseString];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setAssetExtension:uppercaseString];

  originalUniformTypeIdentifier = [assetCopy originalUniformTypeIdentifier];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setOriginalUTI:originalUniformTypeIdentifier];

  -[PHAssetCreationDerivativeContext setAssetOrientation:](self->_derivativeContext, "setAssetOrientation:", [assetCopy orientation]);
  [assetCopy imageSize];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setAssetOrientedImageSize:?];
  -[PHAssetCreationDerivativeContext setEmbeddedThumbnailSize:](self->_derivativeContext, "setEmbeddedThumbnailSize:", [assetCopy embeddedThumbnailWidth], objc_msgSend(assetCopy, "embeddedThumbnailHeight"));
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setImageData:dataCopy];

  pathForOriginalFile2 = [assetCopy pathForOriginalFile];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setPathForOriginalFile:pathForOriginalFile2];

  pathForVideoPreviewFile = [assetCopy pathForVideoPreviewFile];
  [(PHAssetCreationDerivativeContext *)self->_derivativeContext setPathForVideoPreviewFile:pathForVideoPreviewFile];

  v31 = [(PHAssetResourceBag *)self->_assetResourceBag assetResourceWithType:6];

  if (v31)
  {
    pathForFullsizeRenderVideoFile = [assetCopy pathForFullsizeRenderVideoFile];
    [(PHAssetCreationDerivativeContext *)self->_derivativeContext setFullsizeRenderVideoPath:pathForFullsizeRenderVideoFile];
  }

  if (!dataCopy)
  {
    v33 = [MEMORY[0x1E69C0708] auxiliaryImageRecordsToPreserveForDerivativesFromPrimaryImageInImageSource:source];
    [(PHAssetCreationDerivativeContext *)self->_derivativeContext setAuxiliaryImageRecords:v33];
  }
}

- (id)_createAssetAdjustmentsFromBackupWithAsset:(id)asset
{
  assetCopy = asset;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions finalAssetWidth];
  originalWidth = v7;
  [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions finalAssetHeight];
  v10 = originalWidth != 0.0;
  v11 = v9 != 0.0;
  if (v10 && v11)
  {
    originalHeight = v9;
  }

  else
  {
    originalHeight = v6;
  }

  if (!v10 || !v11)
  {
    originalWidth = v5;
  }

  if (v5 == originalWidth && v6 == originalHeight)
  {
    originalHeight = 0.0;
    originalWidth = 0.0;
    if ([assetCopy originalWidth] >= 1)
    {
      originalWidth = [assetCopy originalWidth];
    }

    if ([assetCopy originalHeight] >= 1)
    {
      originalHeight = [assetCopy originalHeight];
    }
  }

  orientation = [assetCopy orientation];
  if (assetCopy)
  {
    [assetCopy photoIrisVideoDuration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v15 = [MEMORY[0x1E69BE640] exportPropertiesWithImageWidth:originalWidth imageHeight:originalHeight exifOrientation:orientation duration:CMTimeGetSeconds(&time)];
  cameraMetadataPath = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions cameraMetadataPath];

  if (cameraMetadataPath)
  {
    v17 = objc_alloc(MEMORY[0x1E69BE4B0]);
    cameraMetadataPath2 = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions cameraMetadataPath];
    cameraMetadataPath = [v17 initWithCameraMetadataPath:cameraMetadataPath2];

    [cameraMetadataPath deserializeCameraMetadata];
  }

  v19 = MEMORY[0x1E69BE498];
  backupAdjustmentsFile = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions backupAdjustmentsFile];
  cameraMetadata = [cameraMetadataPath cameraMetadata];
  v22 = [v19 assetAdjustmentsFromCameraAdjustmentsFileAtPath:backupAdjustmentsFile exportProperties:v15 cameraMetadata:cameraMetadata];

  return v22;
}

- (void)_deleteJobFileAtPath:(id)path withAsset:(id)asset
{
  v26 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  assetCopy = asset;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (pathCopy)
  {
    v9 = [(PHAssetCreationRequest *)self _filePathIsInIncomingDirectory:pathCopy];
    v10 = PLPhotoKitIngestGetLog();
    v11 = v10;
    if (!v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v17 = [MEMORY[0x1E69BF220] descriptionWithPath:pathCopy];
        uuid = [assetCopy uuid];
        *buf = 138412546;
        v21 = v17;
        v22 = 2114;
        v23 = uuid;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "File not in Incoming, skipping deletion: %@, for UUID:%{public}@", buf, 0x16u);
      }

      v14 = 0;
      goto LABEL_13;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [assetCopy uuid];
      *buf = 138412546;
      v21 = pathCopy;
      v22 = 2112;
      v23 = uuid2;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "Will remove file at path: %@, for UUID:%@", buf, 0x16u);
    }

    v19 = 0;
    v13 = [defaultManager removeItemAtPath:pathCopy error:&v19];
    v14 = v19;
    if ((v13 & 1) == 0 && (PLIsErrorFileNotFound() & 1) == 0)
    {
      v11 = PLPhotoKitIngestGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = [MEMORY[0x1E69BF220] descriptionWithPath:pathCopy];
        uuid3 = [assetCopy uuid];
        *buf = 138412802;
        v21 = v15;
        v22 = 2114;
        v23 = uuid3;
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

- (void)_removePhotoKitCameraIngestFiles:(id)files originalFileURL:(id)l resourceBag:(id)bag
{
  filesCopy = files;
  lCopy = l;
  bagCopy = bag;
  path = [lCopy path];
  v11 = [(PHAssetCreationRequest *)self _filePathIsInIncomingDirectory:path];

  if (v11)
  {
    path2 = [lCopy path];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:path2 withAsset:filesCopy];

    cameraMetadataPath = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions cameraMetadataPath];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:cameraMetadataPath withAsset:filesCopy];

    backupAdjustmentsFile = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions backupAdjustmentsFile];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:backupAdjustmentsFile withAsset:filesCopy];

    v15 = [bagCopy assetResourceWithType:5];
    v16 = [bagCopy validatedURLForAssetResource:v15];

    path3 = [v16 path];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:path3 withAsset:filesCopy];

    v18 = [bagCopy assetResourceWithType:107];
    v19 = [bagCopy validatedURLForAssetResource:v18];

    path4 = [v19 path];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:path4 withAsset:filesCopy];

    v21 = [bagCopy assetResourceWithType:7];
    v22 = [bagCopy validatedURLForAssetResource:v21];

    path5 = [v22 path];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:path5 withAsset:filesCopy];

    dbgFilePath = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions dbgFilePath];
    [(PHAssetCreationRequest *)self _deleteJobFileAtPath:dbgFilePath withAsset:filesCopy];
  }
}

- (BOOL)_filePathIsInIncomingDirectory:(id)directory
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AC08];
  directoryCopy = directory;
  defaultManager = [v3 defaultManager];
  v21 = -1;
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:directoryCopy isDirectory:0];

  v7 = MEMORY[0x1E695DFF8];
  incomingDirectoryPath = [MEMORY[0x1E69BF178] incomingDirectoryPath];
  v9 = [v7 fileURLWithPath:incomingDirectoryPath isDirectory:1];
  v20 = 0;
  v10 = [defaultManager getRelationship:&v21 ofDirectoryAtURL:v9 toItemAtURL:v6 error:&v20];
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

- (void)_setupIrisPairingTimeoutForAsset:(id)asset imageFile:(id)file library:(id)library
{
  libraryCopy = library;
  fileCopy = file;
  assetCopy = asset;
  [assetCopy setKindSubtype:2];
  path = [fileCopy path];

  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  uuid = [assetCopy uuid];

  v13 = [PHAssetCreationRequest _photoIrisIndicatorFilePathForPhotoAtPath:stringByDeletingLastPathComponent UUID:uuid];

  if (v13)
  {
    PLMakeIndicatorFileExistAtPath();
    v14 = [MEMORY[0x1E69BF360] transaction:"-[PHAssetCreationRequest _setupIrisPairingTimeoutForAsset:imageFile:library:]"];
    v15 = dispatch_time(0, 8000000000);
    mEMORY[0x1E69BE378] = [MEMORY[0x1E69BE378] sharedLimiter];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__PHAssetCreationRequest__setupIrisPairingTimeoutForAsset_imageFile_library___block_invoke;
    v18[3] = &unk_1E75AB248;
    v19 = libraryCopy;
    v20 = v13;
    v21 = v14;
    v17 = v14;
    [mEMORY[0x1E69BE378] dispatchAfterTime:v15 library:v19 block:v18];
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

- (BOOL)_writeOutCameraMetadata:(id)metadata destinationURL:(id)l error:(id *)error
{
  lCopy = l;
  v8 = MEMORY[0x1E696ACC8];
  cameraMetadata = [metadata cameraMetadata];
  v16 = 0;
  v10 = [v8 archivedDataWithRootObject:cameraMetadata requiringSecureCoding:1 error:&v16];
  v11 = v16;

  v15 = v11;
  LOBYTE(cameraMetadata) = [v10 writeToURL:lCopy options:1 error:&v15];
  v12 = v15;

  if ((cameraMetadata & 1) == 0)
  {

    lCopy = 0;
  }

  if (error && v12)
  {
    v13 = v12;
    *error = v12;
  }

  return v12 == 0;
}

- (BOOL)_setupSemanticEnhanceMetadataIfNeededWithDestinationURL:(id)l photoLibrary:(id)library semanticEnhanceResult:(id *)result ingestJobCameraMetadata:(id)metadata
{
  v28 = *MEMORY[0x1E69E9840];
  var0 = result->var0;
  metadataCopy = metadata;
  libraryCopy = library;
  lCopy = l;
  cameraMetadata = [metadataCopy cameraMetadata];
  [cameraMetadata setSemanticEnhanceScene:var0];

  var1 = result->var1;
  cameraMetadata2 = [metadataCopy cameraMetadata];
  [cameraMetadata2 setSemanticEnhanceSceneConfidence:var1];

  v17 = [PHAssetCreationRequest _cameraMetadataURLForPrimaryAssetURL:lCopy photoLibrary:libraryCopy];

  v23 = 0;
  v18 = [(PHAssetCreationRequest *)self _writeOutCameraMetadata:metadataCopy destinationURL:v17 error:&v23];

  v19 = v23;
  if (!v18)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      path = [v17 path];
      *buf = 138412546;
      v25 = path;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "[SemDev] Error writing out MDATA file to destination %@, skipping SemDev: %@", buf, 0x16u);
    }

    result->var0 = -1;
  }

  return v18;
}

- (void)_checkAndSetForSemanticEnhancementForAsset:(id)asset resourceBag:(id)bag
{
  v25 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  deferredPhotoIdentifier = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions deferredPhotoIdentifier];

  v7 = MEMORY[0x1E69C08F0];
  uniformTypeIdentifier = [assetCopy uniformTypeIdentifier];
  v9 = [v7 typeWithIdentifier:uniformTypeIdentifier];
  v10 = [v9 conformsToType:*MEMORY[0x1E6982F88]];

  if ((v10 & 1) == 0)
  {
    additionalAttributes = [assetCopy additionalAttributes];
    [additionalAttributes setDeferredProcessingCandidateOptions:{objc_msgSend(additionalAttributes, "deferredProcessingCandidateOptions") | 8}];

    if (deferredPhotoIdentifier)
    {
      v12 = 1;
    }

    else
    {
      v12 = 10;
    }

    [assetCopy setDeferredProcessingNeeded:v12];
    v13 = PLAssetImportGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uuidDescription = [assetCopy uuidDescription];
      v23 = 138543362;
      v24 = uuidDescription;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "Signaling background processing needed for %{public}@, due to needs capture scheduling", &v23, 0xCu);
    }

    photoLibrary = [assetCopy photoLibrary];
    libraryServicesManager = [photoLibrary libraryServicesManager];
    backgroundJobService = [libraryServicesManager backgroundJobService];
    [backgroundJobService startWatchdogTimerIfNeededWithSourceDescription:@"CameraIngest"];

    photoLibrary2 = [assetCopy photoLibrary];
    libraryServicesManager2 = [photoLibrary2 libraryServicesManager];
    backgroundJobService2 = [libraryServicesManager2 backgroundJobService];
    photoLibrary3 = [assetCopy photoLibrary];
    v22 = [MEMORY[0x1E69BE2B8] typesMaskForDeferredProcessingNeeded:{objc_msgSend(assetCopy, "deferredProcessingNeeded")}];
    [backgroundJobService2 signalBackgroundProcessingNeededOnLibrary:photoLibrary3 workerTypes:v22];
  }
}

- (void)_checkAndGenerateThumbnailsForAsset:(id)asset imageSource:(CGImageSource *)source imageData:(id)data previewImage:(id)image thumbnailImage:(id)thumbnailImage timeZoneLookup:(id)lookup resourceBag:(id)bag
{
  v47 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  dataCopy = data;
  imageCopy = image;
  thumbnailImageCopy = thumbnailImage;
  lookupCopy = lookup;
  bagCopy = bag;
  if ([assetCopy isPhoto])
  {
    v42 = imageCopy;
    v43 = dataCopy;
    v21 = thumbnailImageCopy;
    v22 = bagCopy;
    selfCopy = self;
    v24 = MEMORY[0x1E69C08F0];
    uniformTypeIdentifier = [assetCopy uniformTypeIdentifier];
    v26 = v24;
    self = selfCopy;
    v27 = [v26 typeWithIdentifier:uniformTypeIdentifier];

    v28 = [objc_opt_class() _shouldGenerateThumbnailsDuringCreationForImageSource:source contentType:v27 timeZoneLookup:lookupCopy];
    if ((v28 & 1) == 0)
    {
      v29 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        uuid = [(PHChangeRequest *)selfCopy uuid];
        *buf = 138543362;
        v46 = uuid;
        _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_INFO, "Delaying thumbnail generation for %{public}@", buf, 0xCu);
      }

      self = selfCopy;
    }

    v31 = v28 ^ 1;
    bagCopy = v22;
    thumbnailImageCopy = v21;
    imageCopy = v42;
    dataCopy = v43;
  }

  else
  {
    v31 = 0;
  }

  shouldPerformConcurrentWork = [(PHChangeRequest *)self shouldPerformConcurrentWork];
  if ((v31 & 1) == 0 && !shouldPerformConcurrentWork)
  {
    selfCopy2 = self;
    helper = [(PHChangeRequest *)self helper];
    clientAuthorization = [helper clientAuthorization];
    isCameraClient = [clientAuthorization isCameraClient];

    if (isCameraClient)
    {
      avalancheUUID = [assetCopy avalancheUUID];

      if (!avalancheUUID)
      {
        source = 0;
        v38 = dataCopy;
        dataCopy = 0;
LABEL_18:
        v41 = selfCopy2;

LABEL_19:
        [assetCopy generateAndUpdateThumbnailsWithPreviewImage:imageCopy thumbnailImage:thumbnailImageCopy fromImageSource:source imageData:dataCopy forceSRGBConversion:0 reduceProcessingForIngest:{-[PHAssetCreationRequest reduceProcessingForIngest](v41, "reduceProcessingForIngest")}];
        if ([(PHAssetCreationRequest *)v41 reduceProcessingForIngest])
        {
          [assetCopy setDeferredProcessingNeeded:4];
        }

        goto LABEL_21;
      }

      avalancheUUID2 = [assetCopy avalancheUUID];

      if (avalancheUUID2)
      {
        v38 = [bagCopy assetResourceWithType:111];
        v39 = [bagCopy validatedDataForAssetResource:v38];
        if ([v39 length])
        {
          v40 = DCIM_newPLImageWithStoredJPEGData();

          imageCopy = v40;
        }

        goto LABEL_18;
      }
    }

    v41 = selfCopy2;
    goto LABEL_19;
  }

LABEL_21:
}

- (BOOL)_assetAlreadyExistsAsPlaceholder:(BOOL)placeholder mediaType:(int64_t)type uuid:(id)uuid photoLibrary:(id)library fetchAsset:(id *)asset
{
  uuidCopy = uuid;
  libraryCopy = library;
  if (type == 2)
  {
    jobType = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions jobType];
    v15 = [jobType isEqualToString:*MEMORY[0x1E69C0470]];

    if (placeholder)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
    if (placeholder)
    {
LABEL_7:
      *asset = [MEMORY[0x1E69BE540] assetWithUUID:uuidCopy inLibrary:libraryCopy];
      v16 = v15 | placeholder;
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

- (id)_createTimelapsePlaceholderAssetWithUUID:(id)d InPhotoLibrary:(id)library
{
  v48 = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryCopy = library;
  pathManager = [libraryCopy pathManager];
  simpleDCIMDirectory = [pathManager simpleDCIMDirectory];

  v10 = [PHContentEditingOutput defaultExtensionForUniformTypeIdentifierType:*MEMORY[0x1E6982F80]];
  v11 = [simpleDCIMDirectory nextAvailableFileURLWithExtension:v10];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v11 path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  v43 = 0;
  v15 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v43];
  v42 = v43;

  if (v15)
  {
    savedAssetTypeForCameraAsset = [MEMORY[0x1E69BF328] savedAssetTypeForCameraAsset];
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
    v24 = [MEMORY[0x1E69BE540] insertAssetIntoPhotoLibrary:libraryCopy mainFileURL:v11 mainFileMetadata:0 savedAssetType:savedAssetTypeForCameraAsset bundleScope:-[PHAssetCreationRequest bundleScope](self uuid:"bundleScope") replacementUUID:dCopy imageSource:0 imageData:0 isPlaceholder:0 deleteFileOnFailure:v40];
    v23 = v24;
    if (v24)
    {
      [v24 setAttributesFromMainFileURL:v11 mainFileMetadata:0 savedAssetType:savedAssetTypeForCameraAsset bundleScope:0 isPlaceholder:1 placeholderFileURL:0 imageSource:0 imageData:0];
      [v23 generateAndUpdateThumbnailsWithPreviewImage:v19 thumbnailImage:v20 fromImageSource:0 imageData:0 forceSRGBConversion:0];
      isRearFacingCamera = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions isRearFacingCamera];
      [v23 additionalAttributes];
      v41 = v11;
      v26 = libraryCopy;
      v27 = v10;
      v28 = simpleDCIMDirectory;
      v30 = v29 = v20;
      [v30 setCameraCaptureDevice:!isRearFacingCamera];

      additionalAttributes = [v23 additionalAttributes];
      v32 = additionalAttributes;
      if (isRearFacingCamera)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      [additionalAttributes setImportedBy:v33];

      v20 = v29;
      simpleDCIMDirectory = v28;
      v10 = v27;
      libraryCopy = v26;
      v11 = v41;
      creationDate = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions creationDate];
      [v23 setDateCreated:creationDate];

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
        v45 = dCopy;
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
      path2 = [v11 path];
      *buf = 138412546;
      v45 = path2;
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

- (id)_createAdjustmentsFileFromJobDictionary:(id)dictionary cameraIngestOptions:(id)options
{
  v72 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  optionsCopy = options;
  v7 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0378]];
  v8 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0350]];
  v9 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C04A8]];
  v10 = *MEMORY[0x1E69C0410];
  v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
  v12 = *MEMORY[0x1E69C0478];
  v13 = [v11 isEqual:*MEMORY[0x1E69C0478]];

  v14 = objc_alloc(MEMORY[0x1E695DFF8]);
  v15 = MEMORY[0x1E69C05A0];
  if (!v13)
  {
    v15 = MEMORY[0x1E69C0518];
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:*v15];
  v63 = [v14 initFileURLWithPath:v16 isDirectory:0];

  v17 = *MEMORY[0x1E695F060];
  v18 = *(MEMORY[0x1E695F060] + 8);
  v19 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C03F0]];
  v20 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C03E0]];
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
  v30 = [dictionaryCopy objectForKeyedSubscript:v10];
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
    if (optionsCopy && v33)
    {
      v55 = v7;
      v35 = optionsCopy;
      v36 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C04F0]];
      v37 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C03B0]];
      v38 = [v34 canBeRenderedByCapturePipelineWithVideoComplement:v36 != 0 deferredIdentifier:v37];

      if (v38)
      {
        [v35 setCandidateOptions:16];
      }

      portraitEffectFilterName = [v34 portraitEffectFilterName];
      optionsCopy = v35;
      [v35 setPortraitEffectFilterName:portraitEffectFilterName];

      v7 = v55;
    }
  }

  propertyListDictionary = [v32 propertyListDictionary];
  if (propertyListDictionary)
  {
    v56 = v7;
    v41 = optionsCopy;
    absoluteString = [v63 absoluteString];
    v43 = [PHAssetCreationRequestBridge buildAdjustmentsPlistPathForPhotoKitIngestJob:dictionaryCopy withSourcePath:absoluteString];

    v44 = [MEMORY[0x1E695DFF8] fileURLWithPath:v43];
    v64 = 0;
    v45 = [propertyListDictionary writeToURL:v44 error:&v64];
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

    optionsCopy = v41;
    v7 = v56;
  }

  else
  {
    v43 = PLPhotoKitIngestGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v49 = [dictionaryCopy objectForKeyedSubscript:v10];
      v50 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
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

- (id)_externalLivePhotoResourceForAsset:(id)asset
{
  assetCopy = asset;
  kind = [assetCopy kind];
  if (kind >= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:2269 description:@"This method is intended to create external assets for images and videos only"];
  }

  v7 = [PHExternalAssetResource alloc];
  if (kind)
  {
    v8 = 9;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(PHExternalAssetResource *)v7 initWithResourceType:v8];
  pathManager = [assetCopy pathManager];
  v11 = [pathManager shouldUseFileIdentifierForBundleScope:{objc_msgSend(assetCopy, "bundleScope")}];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E69BF298]);
    uuid = [assetCopy uuid];
    bundleScope = [assetCopy bundleScope];
    uniformTypeIdentifier = [assetCopy uniformTypeIdentifier];
    originalFilename = [assetCopy originalFilename];
    v17 = [v12 initWithAssetUuid:uuid bundleScope:bundleScope uti:uniformTypeIdentifier resourceVersion:0 resourceType:kind != 0 recipeID:0 originalFilename:originalFilename customSuffix:0];

    photoLibrary = [assetCopy photoLibrary];

    if (!photoLibrary)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:2276 description:{@"Invalid parameter not satisfying: %@", @"asset.photoLibrary"}];
    }

    pathManager2 = [assetCopy pathManager];
    mainFileURL = [pathManager2 readOnlyUrlWithIdentifier:v17];
  }

  else
  {
    mainFileURL = [assetCopy mainFileURL];
  }

  v21 = objc_alloc_init(PHAssetResourceCreationOptions);
  [(PHAssetResourceCreationOptions *)v21 setShouldMoveFile:0];
  uniformTypeIdentifier2 = [assetCopy uniformTypeIdentifier];
  [(PHAssetResourceCreationOptions *)v21 setUniformTypeIdentifier:uniformTypeIdentifier2];

  additionalAttributes = [assetCopy additionalAttributes];
  alternateImportImageDate = [additionalAttributes alternateImportImageDate];
  [(PHAssetResourceCreationOptions *)v21 setAlternateImportImageDate:alternateImportImageDate];

  originalFilename2 = [assetCopy originalFilename];
  [(PHAssetResourceCreationOptions *)v21 setOriginalFilename:originalFilename2];

  [(PHExternalAssetResource *)v9 setFileURL:mainFileURL];
  [(PHExternalAssetResource *)v9 setCreationOptions:v21];

  return v9;
}

- (BOOL)_writeDataToDisk:(id)disk imageUTIType:(id)type primaryImageProperties:(id)properties mainFileURL:(id)l thumbnailData:(id)data
{
  v54[1] = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  typeCopy = type;
  propertiesCopy = properties;
  lCopy = l;
  dataCopy = data;
  if ([MEMORY[0x1E69BE540] isPrimaryImageFormatForUTI:typeCopy])
  {
    v17 = [(PHAssetCreationRequest *)self _filteredImagePropertiesByConditionallyRemovingLivePhotoIdentifiersFromSourceImageProperties:propertiesCopy];
    IsEqual = PLObjectIsEqual();
    v19 = [MEMORY[0x1E6982C40] typeWithIdentifier:typeCopy];
    v20 = [v19 isEqual:*MEMORY[0x1E6982E58]];

    if (!v20)
    {
      if ((IsEqual & 1) == 0)
      {
        v31 = CGImageSourceCreateWithData(diskCopy, 0);
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
          selfCopy = self;
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
              v46 = diskCopy;
              v47 = 2048;
              v48 = [(__CFData *)diskCopy length];
              v49 = 2112;
              v50 = lCopy;
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
      v29 = [(__CFData *)diskCopy writeToURL:lCopy options:1073741825 error:v41];
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
        v37 = [(__CFData *)diskCopy length];
        *buf = 134218754;
        v46 = diskCopy;
        v47 = 2048;
        v48 = v37;
        v49 = 2112;
        v50 = lCopy;
        v51 = 2112;
        v52 = v23;
        _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_ERROR, "Failed to copy primary image data (%p %ld) to URL %@: %@", buf, 0x2Au);
      }

      goto LABEL_25;
    }

    mEMORY[0x1E69BF178] = [MEMORY[0x1E69BF178] sharedDCIMWriter];
    v22 = [mEMORY[0x1E69BF178] writeJPEGToURL:lCopy withData:diskCopy thumbnail:dataCopy properties:v17];

    if ((v22 & 1) == 0)
    {
      v23 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v46 = diskCopy;
        v47 = 2048;
        v48 = [(__CFData *)diskCopy length];
        v49 = 2112;
        v50 = lCopy;
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
    v27 = [(__CFData *)diskCopy writeToURL:lCopy options:1073741825 error:&v40];
    v17 = v40;
    if ((v27 & 1) == 0)
    {
      v23 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v30 = [(__CFData *)diskCopy length];
        *buf = 134218754;
        v46 = diskCopy;
        v47 = 2048;
        v48 = v30;
        v49 = 2112;
        v50 = lCopy;
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

- (BOOL)_accessWritableURLForUUID:(id)d imageUTI:(id)i originalFilename:(id)filename photoLibrary:(id)library withHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iCopy = i;
  filenameCopy = filename;
  libraryCopy = library;
  handlerCopy = handler;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  pathManager = [libraryCopy pathManager];
  v18 = [pathManager shouldUseFileIdentifierForBundleScope:self->_bundleScope];

  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x1E69BF298]) initWithAssetUuid:dCopy bundleScope:-[PHAssetCreationRequest bundleScope](self uti:"bundleScope") resourceVersion:iCopy resourceType:0 recipeID:31 originalFilename:0 customSuffix:{filenameCopy, 0}];
    pathManager2 = [libraryCopy pathManager];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __103__PHAssetCreationRequest__accessWritableURLForUUID_imageUTI_originalFilename_photoLibrary_withHandler___block_invoke;
    v30[3] = &unk_1E75A5EC0;
    v35 = &v36;
    v34 = handlerCopy;
    v31 = dCopy;
    v32 = iCopy;
    v33 = filenameCopy;
    [pathManager2 obtainAccessAndWaitWithFileWithIdentifier:v19 mode:2 toURLWithHandler:v30];

    v21 = v34;
  }

  else
  {
    v19 = [MEMORY[0x1E69BF178] defaultFileExtensionForAssetType:0];
    if (iCopy)
    {
      v22 = [MEMORY[0x1E69BF178] preferredFileExtensionForType:iCopy];
      if ([v22 length])
      {
        v23 = v22;

        v19 = v23;
      }
    }

    libraryServicesManager = [libraryCopy libraryServicesManager];
    imageWriter = [libraryServicesManager imageWriter];
    v21 = [imageWriter cameraAssetPathForNewAssetWithExtension:v19 assetUUID:dCopy];

    *(v37 + 24) = v21 != 0;
    if (v21)
    {
      v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21 isDirectory:0];
      v27 = (*(handlerCopy + 2))(handlerCopy, v26);
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
        v43 = dCopy;
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

- (id)_managedAssetFromPrimaryResourceData:(id)data validatedResources:(id)resources withUUID:(id)d photoLibrary:(id)library mainFileMetadata:(id *)metadata getImageSource:(CGImageSource *)source imageData:(id *)imageData
{
  v75[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  resourcesCopy = resources;
  dCopy = d;
  libraryCopy = library;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__15607;
  v71 = __Block_byref_object_dispose__15608;
  v72 = 0;
  data = [dataCopy data];
  creationOptions = [dataCopy creationOptions];
  uniformTypeIdentifier = [creationOptions uniformTypeIdentifier];

  context = objc_autoreleasePoolPush();
  if (uniformTypeIdentifier)
  {
    v74 = *MEMORY[0x1E696E118];
    v75[0] = uniformTypeIdentifier;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
  }

  else
  {
    v16 = 0;
  }

  v17 = CGImageSourceCreateWithData(data, v16);
  v18 = v17;
  if (uniformTypeIdentifier)
  {

    v19 = v18 != 0;
  }

  else if (v17)
  {
    uniformTypeIdentifier = CGImageSourceGetType(v17);
    v19 = 1;
  }

  else
  {
    v19 = 0;
    uniformTypeIdentifier = 0;
  }

  if ((([resourcesCopy hasCurrentAdjustment] ^ 1) & v19 & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = [MEMORY[0x1E69C08F0] typeWithIdentifier:uniformTypeIdentifier];
  v21 = objc_opt_class();
  libraryBundle = [libraryCopy libraryBundle];
  timeZoneLookup = [libraryBundle timeZoneLookup];
  LOBYTE(v21) = [v21 _shouldGenerateThumbnailsDuringCreationForImageSource:v18 contentType:v20 timeZoneLookup:timeZoneLookup];

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
    uuid = [(PHChangeRequest *)self uuid];
    *buf = 138543362;
    *&buf[4] = uuid;
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
  [v25 writeableDataForImageData:data imageUTIType:uniformTypeIdentifier imageSource:v18 thumbnailDataOut:p_obj imageUTITypeOut:&v65 primaryImagePropertiesOut:&v64 imageDataOut:&v63];
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

  creationOptions2 = [dataCopy creationOptions];
  originalFilename = [creationOptions2 originalFilename];

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
  v39 = [(PHAssetCreationRequest *)self _accessWritableURLForUUID:dCopy imageUTI:v36 originalFilename:originalFilename photoLibrary:libraryCopy withHandler:v57];

  objc_autoreleasePoolPop(context);
  if (v39)
  {
    v40 = [MEMORY[0x1E69C08F0] typeWithIdentifier:uniformTypeIdentifier];
    v41 = objc_alloc(MEMORY[0x1E69C0718]);
    libraryBundle2 = [libraryCopy libraryBundle];
    timeZoneLookup2 = [libraryBundle2 timeZoneLookup];
    v44 = [v41 initWithImageData:data contentType:v40 options:14 timeZoneLookup:timeZoneLookup2 cacheImageSource:1 cacheImageData:1];

    if (v44)
    {
      if (metadata)
      {
        v45 = v44;
        *metadata = v44;
      }

      LOWORD(v49) = 256;
      v46 = [MEMORY[0x1E69BE540] insertAssetIntoPhotoLibrary:libraryCopy mainFileURL:v68[5] mainFileMetadata:v44 savedAssetType:-[PHAssetCreationRequest _savedAssetTypeForAsset](self bundleScope:"_savedAssetTypeForAsset") uuid:-[PHAssetCreationRequest bundleScope](self replacementUUID:"bundleScope") imageSource:dCopy imageData:0 isPlaceholder:source deleteFileOnFailure:{imageData, v49}];
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

- (id)_filteredImagePropertiesByConditionallyRemovingLivePhotoIdentifiersFromSourceImageProperties:(id)properties
{
  v27 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy)
  {
    v6 = propertiesCopy;
    duplicateAssetIdentifier = [(PHAssetCreationRequest *)self duplicateAssetIdentifier];
    forcePairingIdentifier = [(PHAssetCreationRequest *)self forcePairingIdentifier];
    duplicateLivePhotoAsStill = [(PHAssetCreationRequest *)self duplicateLivePhotoAsStill];
    duplicateSinglePhotoFromBurst = [(PHAssetCreationRequest *)self duplicateSinglePhotoFromBurst];
    v11 = duplicateSinglePhotoFromBurst;
    if (duplicateAssetIdentifier != 0 && (duplicateLivePhotoAsStill || duplicateSinglePhotoFromBurst) || forcePairingIdentifier)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v19 = 138413058;
        selfCopy = duplicateAssetIdentifier;
        v21 = 2112;
        v22 = forcePairingIdentifier;
        v23 = 1024;
        v24 = duplicateLivePhotoAsStill;
        v25 = 1024;
        v26 = v11;
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_INFO, "Asset creation request rewrites metadata: duplicateAssetIdentifier=%@, forcePairingIdentifier=%@, duplicateLivePhotoAsStill=%d, duplicateSinglePhotoFromBurst=%d", &v19, 0x22u);
      }

      v13 = *MEMORY[0x1E696DE30];
      v14 = [v6 objectForKey:*MEMORY[0x1E696DE30]];
      v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v14];
      v16 = v15;
      if (forcePairingIdentifier)
      {
        [v15 setObject:forcePairingIdentifier forKey:*MEMORY[0x1E69867A8]];
      }

      else
      {
        if (duplicateLivePhotoAsStill)
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
    duplicateAssetIdentifier = PLBackendGetLog();
    if (os_log_type_enabled(duplicateAssetIdentifier, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_19C86F000, duplicateAssetIdentifier, OS_LOG_TYPE_ERROR, "Unexpected nil image properties while processing creation request %@", &v19, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_createOriginalResourceForAsset:(id)asset fromValidatedResource:(id)resource resourceType:(unsigned int)type photoLibrary:(id)library destinationURL:(id)l error:(id *)error
{
  v11 = *&type;
  assetCopy = asset;
  resourceCopy = resource;
  libraryCopy = library;
  lCopy = l;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__15607;
  v65 = __Block_byref_object_dispose__15608;
  v66 = 0;
  if (resourceCopy)
  {
    fileURL = [resourceCopy fileURL];
    v44 = lCopy;
    errorCopy = error;
    v46 = assetCopy;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__15607;
    v59 = __Block_byref_object_dispose__15608;
    v60 = 0;
    creationOptions = [resourceCopy creationOptions];
    shouldIngestInPlace = [creationOptions shouldIngestInPlace];

    pathManager = [libraryCopy pathManager];
    v22 = pathManager;
    if (shouldIngestInPlace)
    {
      v23 = MEMORY[0x1E69BF238];
      capabilities = [pathManager capabilities];
      v25 = v62;
      obj = v62[5];
      LODWORD(v23) = [v23 ingestItemAtURL:fileURL toURL:fileURL type:0 options:3 capabilities:capabilities error:&obj];
      objc_storeStrong(v25 + 5, obj);

      if (v23)
      {
        objc_storeStrong(v56 + 5, fileURL);
        v26 = 1;
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    creationOptions2 = [resourceCopy creationOptions];
    shouldMoveFile = [creationOptions2 shouldMoveFile];

    if ([v22 shouldUseFileIdentifierForBundleScope:self->_bundleScope])
    {
      v42 = shouldMoveFile;
      v43 = objc_alloc(MEMORY[0x1E69BF298]);
      uuid = [(PHChangeRequest *)self uuid];
      bundleScope = [v46 bundleScope];
      uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];
      originalFilename = [resourceCopy originalFilename];
      capabilities2 = [v43 initWithAssetUuid:uuid bundleScope:bundleScope uti:uniformTypeIdentifier resourceVersion:0 resourceType:v11 recipeID:0 originalFilename:originalFilename customSuffix:0];

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __127__PHAssetCreationRequest__createOriginalResourceForAsset_fromValidatedResource_resourceType_photoLibrary_destinationURL_error___block_invoke;
      v48[3] = &unk_1E75A5E48;
      v51 = &v55;
      v48[4] = self;
      v53 = v42;
      v49 = fileURL;
      v50 = v22;
      v52 = &v61;
      [v50 obtainAccessAndWaitWithFileWithIdentifier:capabilities2 mode:2 toURLWithHandler:v48];
    }

    else
    {
      objc_storeStrong(v56 + 5, l);
      v34 = v56[5];
      if (!v34)
      {
LABEL_12:
        v26 = 0;
LABEL_13:

        _Block_object_dispose(&v55, 8);
        error = errorCopy;
        assetCopy = v46;
        lCopy = v44;
        if (!errorCopy)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      capabilities2 = [v22 capabilities];
      v35 = shouldMoveFile;
      v36 = v62;
      v47 = v62[5];
      v37 = [(PHAssetCreationRequest *)self _secureMove:v35 fileAtURL:fileURL toURL:v34 capabilities:capabilities2 error:&v47];
      objc_storeStrong(v36 + 5, v47);
      v38 = v56[5];
      v56[5] = v37;
    }

    v26 = v56[5] != 0;
    goto LABEL_13;
  }

  v26 = 0;
  if (!error)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (!v26)
  {
    v39 = v62[5];
    if (v39)
    {
      *error = v39;
    }

    else
    {
      v40 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Failed to create spatial over capture from resources"];
      *error = v40;
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

- (BOOL)_createAudioResourceForAsset:(id)asset fromValidatedResources:(id)resources photoLibrary:(id)library error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resourcesCopy = resources;
  libraryCopy = library;
  if ([resourcesCopy isValid])
  {
    v13 = [resourcesCopy assetResourceWithType:3];
    if (v13)
    {
      v14 = MEMORY[0x1E695DFF8];
      pathForOriginalFile = [assetCopy pathForOriginalFile];
      stringByDeletingPathExtension = [pathForOriginalFile stringByDeletingPathExtension];
      fileURL = [v13 fileURL];
      [fileURL pathExtension];
      v17 = assetCopy;
      v18 = v13;
      v19 = libraryCopy;
      v21 = v20 = error;
      [stringByDeletingPathExtension stringByAppendingPathExtension:v21];
      v22 = v29 = self;
      v23 = [v14 fileURLWithPath:v22];

      v24 = v20;
      libraryCopy = v19;
      v13 = v18;
      assetCopy = v17;

      v25 = [(PHAssetCreationRequest *)v29 _createOriginalResourceForAsset:v17 fromValidatedResource:v13 resourceType:2 photoLibrary:libraryCopy destinationURL:v23 error:v24];
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

- (BOOL)_createXmpResourceForAsset:(id)asset fromValidatedResources:(id)resources photoLibrary:(id)library error:(id *)error
{
  assetCopy = asset;
  resourcesCopy = resources;
  libraryCopy = library;
  if ([resourcesCopy isValid])
  {
    v13 = [resourcesCopy assetResourceWithType:17];
    if (v13)
    {
      v14 = MEMORY[0x1E695DFF8];
      pathForXMPFile = [assetCopy pathForXMPFile];
      v16 = [v14 fileURLWithPath:pathForXMPFile];
      v17 = [(PHAssetCreationRequest *)self _createOriginalResourceForAsset:assetCopy fromValidatedResource:v13 resourceType:5 photoLibrary:libraryCopy destinationURL:v16 error:error];
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

- (BOOL)_createSocResourceForAsset:(id)asset fromValidatedResources:(id)resources photoLibrary:(id)library error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resourcesCopy = resources;
  libraryCopy = library;
  if ([resourcesCopy isValid])
  {
    v13 = [resourcesCopy assetResourceWithType:13];
    if (!v13)
    {
      v13 = [resourcesCopy assetResourceWithType:14];
    }

    pathForSpatialOverCaptureContentFile = [assetCopy pathForSpatialOverCaptureContentFile];
    if (pathForSpatialOverCaptureContentFile)
    {
      v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForSpatialOverCaptureContentFile];
      creationOptions = [v13 creationOptions];
      [creationOptions ensureOptionsAreCompleteForURL:v15];

      LODWORD(error) = [(PHAssetCreationRequest *)self _createOriginalResourceForAsset:assetCopy fromValidatedResource:v13 resourceType:10 photoLibrary:libraryCopy destinationURL:v15 error:error];
      if (error)
      {
        [assetCopy setCameraProcessingAdjustmentState:{objc_msgSend(assetCopy, "cameraProcessingAdjustmentState") | 1}];
      }
    }

    else if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E69BFF48];
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"invalid parameters required for fileIdentifier";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *error = [v17 errorWithDomain:v18 code:46801 userInfo:v19];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    LOBYTE(error) = 0;
  }

  return error;
}

- (BOOL)_createRAWSidecarForAsset:(id)asset fromValidatedResources:(id)resources mainFileMetadata:(id)metadata photoLibrary:(id)library error:(id *)error
{
  assetCopy = asset;
  resourcesCopy = resources;
  metadataCopy = metadata;
  libraryCopy = library;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__15607;
  v84 = __Block_byref_object_dispose__15608;
  v85 = 0;
  v12 = [resourcesCopy assetResourceWithType:4];
  v13 = [resourcesCopy validatedURLForAssetResource:v12];
  creationOptions = [v12 creationOptions];
  [creationOptions ensureOptionsAreCompleteForURL:v13];

  v15 = [[_PHAssetCreationRequestValidator alloc] initWithAssetCreationRequest:self];
  v16 = v81;
  v79 = v81[5];
  LODWORD(metadata) = [(PHValidator *)v15 validateURL:v13 withOptions:1 error:&v79];
  objc_storeStrong(v16 + 5, v79);
  if (metadata)
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
    v54 = assetCopy;
    v70 = v54;
    v17 = v13;
    v71 = v17;
    v72 = &v73;
    v55 = _Block_copy(aBlock);
    creationOptions2 = [v12 creationOptions];
    shouldIngestInPlace = [creationOptions2 shouldIngestInPlace];

    pathManager = [libraryCopy pathManager];
    if (shouldIngestInPlace)
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
      capabilities = [pathManager capabilities];
      v24 = v81;
      obj = v81[5];
      LOBYTE(v21) = [v21 ingestItemAtURL:v22 toURL:v22 type:0 options:3 capabilities:capabilities error:&obj];
      objc_storeStrong(v24 + 5, obj);

      if ((v21 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    creationOptions3 = [v12 creationOptions];
    shouldMoveFile = [creationOptions3 shouldMoveFile];

    if ([pathManager shouldUseFileIdentifierForBundleScope:self->_bundleScope])
    {
      v52 = shouldMoveFile;
      v53 = objc_alloc(MEMORY[0x1E69BF298]);
      uuid = [(PHChangeRequest *)self uuid];
      bundleScope = [v54 bundleScope];
      uniformTypeIdentifier = [v12 uniformTypeIdentifier];
      originalFilename = [v12 originalFilename];
      capabilities2 = [v53 initWithAssetUuid:uuid bundleScope:bundleScope uti:uniformTypeIdentifier resourceVersion:0 resourceType:4 recipeID:0 originalFilename:originalFilename customSuffix:0];

      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __111__PHAssetCreationRequest__createRAWSidecarForAsset_fromValidatedResources_mainFileMetadata_photoLibrary_error___block_invoke_2;
      v62[3] = &unk_1E75A5E48;
      v65 = &v73;
      v62[4] = self;
      v67 = v52;
      v63 = v17;
      v64 = pathManager;
      v66 = &v80;
      [v64 obtainAccessAndWaitWithFileWithIdentifier:capabilities2 mode:2 toURLWithHandler:v62];
    }

    else
    {
      if (!(v55[2])())
      {
        goto LABEL_13;
      }

      v33 = v74[5];
      capabilities2 = [pathManager capabilities];
      v34 = v81;
      v61 = v81[5];
      v35 = [(PHAssetCreationRequest *)self _secureMove:shouldMoveFile fileAtURL:v17 toURL:v33 capabilities:capabilities2 error:&v61];
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
    if ([pathManager isDCIM])
    {
      v37 = objc_alloc_init(MEMORY[0x1E69BE870]);
      [v37 setResourceType:4];
      [v37 setFileURL:v74[5]];
      [v37 persistResourceTypeToFileURL];
    }

    v38 = v74[5];
    dateCreated = [v54 dateCreated];
    creationOptions4 = [v12 creationOptions];
    uniformTypeIdentifier2 = [creationOptions4 uniformTypeIdentifier];
    orientation = [metadataCopy orientation];
    pathManager2 = [libraryCopy pathManager];
    LODWORD(v51) = orientation;
    [v54 addSidecarFileAtIndex:0 sidecarURL:v38 withFilename:0 compressedSize:0 captureDate:dateCreated modificationDate:0 uniformTypeIdentifier:uniformTypeIdentifier2 imageOrientation:v51 pathManager:pathManager2];

    v25 = 1;
    goto LABEL_17;
  }

  v25 = 0;
LABEL_18:
  errorCopy2 = error;
  if (error && !v25)
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
      errorCopy2 = error;
    }

    *errorCopy2 = v81[5];
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

- (BOOL)_createAssetAsPhotoIris:(id)iris fromValidatedResources:(id)resources mainFileMetadata:(id)metadata error:(id *)error
{
  irisCopy = iris;
  resourcesCopy = resources;
  metadataCopy = metadata;
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  pathForOriginalFile = [irisCopy pathForOriginalFile];
  if (pathForOriginalFile)
  {
    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForOriginalFile];
    [v13 addObject:v15];
  }

  v61 = pathForOriginalFile;
  v16 = [resourcesCopy assetResourceWithType:9];
  v17 = [resourcesCopy validatedURLForAssetResource:v16];
  if (v17)
  {
    [v13 addObject:v17];
  }

  creationOptions = [v16 creationOptions];
  [creationOptions ensureOptionsAreCompleteForURL:v17];

  selfCopy = self;
  v19 = [[_PHAssetCreationRequestValidator alloc] initWithAssetCreationRequest:self];
  v78[0] = 0;
  LODWORD(creationOptions) = [(PHValidator *)v19 validateURLs:v13 withOptions:64 videoComplementMetadata:0 error:v78];
  v20 = v78[0];
  v64 = v19;
  if (creationOptions)
  {
    errorCopy = error;
    validatedPairingIdentifier = [(_PHAssetCreationRequestValidator *)v19 validatedPairingIdentifier];
    [v13 removeAllObjects];
    v22 = [resourcesCopy assetResourceWithType:13];
    v23 = [resourcesCopy validatedURLForAssetResource:v22];
    v59 = irisCopy;
    v57 = validatedPairingIdentifier;
    if (!v23)
    {
      v55 = metadataCopy;

      v62 = 0;
      v63 = 0;
LABEL_13:
      creationOptions2 = [v16 creationOptions];
      shouldIngestInPlace = [creationOptions2 shouldIngestInPlace];

      v34 = MEMORY[0x1E695DFF8];
      pathForVideoComplementFile = [v59 pathForVideoComplementFile];
      v36 = [v34 fileURLWithPath:pathForVideoComplementFile isDirectory:0];
      if (shouldIngestInPlace)
      {
        v76 = v20;
        v37 = [(PHAssetCreationRequest *)selfCopy _ingestOriginalInPlaceSrcURL:v17 dstURL:v36 asset:v59 error:&v76];
        v56 = v76;

        irisCopy = v59;
        if (!v37)
        {
          v38 = 0;
          LOBYTE(v31) = 0;
          metadataCopy = v55;
LABEL_35:
          v30 = v57;
          error = errorCopy;
          goto LABEL_36;
        }

        v38 = v17;
        if (!v63)
        {
          v31 = 0;
          metadataCopy = v55;
LABEL_28:
          error = errorCopy;
          v47 = v64;
          goto LABEL_29;
        }
      }

      else
      {
        creationOptions3 = [v16 creationOptions];
        v75 = v20;
        v40 = -[PHAssetCreationRequest _ingestOriginalFromSrcURL:toDstURL:useSecureMove:resource:resourceType:asset:error:](selfCopy, "_ingestOriginalFromSrcURL:toDstURL:useSecureMove:resource:resourceType:asset:error:", v17, v36, [creationOptions3 shouldMoveFile], v16, 3, v59, &v75);
        v56 = v75;

        v38 = v40;
        irisCopy = v59;
        if (!v38 || !v63)
        {
          v31 = 0;
          metadataCopy = v55;
          error = errorCopy;
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
            v50 = [irisCopy becomePhotoIrisWithMediaGroupUUID:v57 mainFileMetadata:metadataCopy videoURL:v38 spatialOverCaptureURL:v31 videoDuration:&v67 stillDisplayTime:&v65 options:0];
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
      creationOptions4 = [v62 creationOptions];
      shouldIngestInPlace2 = [creationOptions4 shouldIngestInPlace];

      v44 = MEMORY[0x1E695DFF8];
      pathForVideoComplementSpatialOverCaptureContentFile = [v59 pathForVideoComplementSpatialOverCaptureContentFile];
      v45 = [v44 fileURLWithPath:? isDirectory:?];
      if (shouldIngestInPlace2)
      {
        v74 = v56;
        v46 = [(PHAssetCreationRequest *)selfCopy _ingestOriginalInPlaceSrcURL:v63 dstURL:v45 asset:v59 error:&v74];
        v56 = v74;

        irisCopy = v59;
        if (v46)
        {
          v31 = v63;
LABEL_27:
          metadataCopy = v55;
          goto LABEL_28;
        }

        LOBYTE(v31) = 0;
      }

      else
      {
        creationOptions5 = [v62 creationOptions];
        v73 = v56;
        v49 = -[PHAssetCreationRequest _ingestOriginalFromSrcURL:toDstURL:useSecureMove:resource:resourceType:asset:error:](selfCopy, "_ingestOriginalFromSrcURL:toDstURL:useSecureMove:resource:resourceType:asset:error:", v63, v45, [creationOptions5 shouldMoveFile], v62, 11, v59, &v73);
        v56 = v73;

        v31 = v49;
        irisCopy = v59;
        if (v31)
        {
          goto LABEL_27;
        }
      }

      metadataCopy = v55;
      goto LABEL_35;
    }

    v24 = v23;
    [v13 addObject:v23];
    v25 = [resourcesCopy assetResourceWithType:15];
    v26 = [resourcesCopy validatedURLForAssetResource:v25];
    if (v26)
    {
      [v13 addObject:v26];
    }

    v62 = v25;
    creationOptions6 = [v25 creationOptions];
    v63 = v26;
    [creationOptions6 ensureOptionsAreCompleteForURL:v26];

    v77 = v20;
    v28 = [(PHValidator *)v64 validateURLs:v13 withOptions:64 videoComplementMetadata:0 error:&v77];
    v29 = v77;

    if (v28)
    {
      v55 = metadataCopy;
      v20 = v29;
      goto LABEL_13;
    }

    LOBYTE(v31) = 0;
    v20 = v29;
    error = errorCopy;
    irisCopy = v59;
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
  if (error && (v31 & 1) == 0)
  {
    if (!v20)
    {
      v20 = [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Failed to create videoComplement from resources"];
    }

    v52 = v20;
    *error = v20;
  }

  return v31;
}

- (id)_ingestOriginalFromSrcURL:(id)l toDstURL:(id)rL useSecureMove:(BOOL)move resource:(id)resource resourceType:(unsigned int)type asset:(id)asset error:(id *)error
{
  v10 = *&type;
  moveCopy = move;
  v67 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  resourceCopy = resource;
  assetCopy = asset;
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
  photoLibrary = [assetCopy photoLibrary];
  pathManager = [photoLibrary pathManager];

  if (![pathManager shouldUseFileIdentifierForBundleScope:self->_bundleScope])
  {
    if (!rLCopy)
    {
LABEL_12:
      if (error)
      {
        *error = v56[5];
      }

      v33 = v50[5];
      goto LABEL_15;
    }

    photoLibrary2 = [assetCopy photoLibrary];
    pathManager2 = [photoLibrary2 pathManager];

    capabilities = [pathManager2 capabilities];
    v23 = (v56 + 5);
    obj = v56[5];
    v24 = [(PHAssetCreationRequest *)self _secureMove:moveCopy fileAtURL:lCopy toURL:rLCopy capabilities:capabilities error:&obj];
    objc_storeStrong(v23, obj);
    v25 = v50[5];
    v50[5] = v24;

LABEL_11:
    goto LABEL_12;
  }

  if (resourceCopy)
  {
    uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];
    if (uniformTypeIdentifier)
    {

LABEL_8:
      v28 = objc_alloc(MEMORY[0x1E69BF298]);
      uuid = [assetCopy uuid];
      uniformTypeIdentifier2 = [resourceCopy uniformTypeIdentifier];
      originalFilename = [resourceCopy originalFilename];
      pathManager2 = [v28 initWithAssetUuid:uuid bundleScope:0 uti:uniformTypeIdentifier2 resourceVersion:0 resourceType:v10 recipeID:0 originalFilename:originalFilename customSuffix:0];

      photoLibrary3 = [assetCopy photoLibrary];
      LODWORD(v28) = photoLibrary3 == 0;

      if (v28)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1719 description:{@"Invalid parameter not satisfying: %@", @"asset.photoLibrary"}];
      }

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __109__PHAssetCreationRequest__ingestOriginalFromSrcURL_toDstURL_useSecureMove_resource_resourceType_asset_error___block_invoke;
      v43[3] = &unk_1E75A5E48;
      v46 = &v49;
      v43[4] = self;
      v48 = moveCopy;
      v44 = lCopy;
      v45 = pathManager;
      v47 = &v55;
      [v45 obtainAccessAndWaitWithFileWithIdentifier:pathManager2 mode:2 toURLWithHandler:v43];

      goto LABEL_11;
    }

    originalFilename2 = [resourceCopy originalFilename];
    v27 = originalFilename2 == 0;

    if (!v27)
    {
      goto LABEL_8;
    }
  }

  v35 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    uniformTypeIdentifier3 = [resourceCopy uniformTypeIdentifier];
    originalFilename3 = [resourceCopy originalFilename];
    *buf = 134218498;
    v62 = resourceCopy;
    v63 = 2112;
    v64 = uniformTypeIdentifier3;
    v65 = 2112;
    v66 = originalFilename3;
    _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_ERROR, "Resource (%p) must be non-nil and either resource.uniformTypeIdentifier (%@) or resource.originalFilename (%@) must be non-nil", buf, 0x20u);
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] ph_genericErrorWithLocalizedDescription:@"Failed to ingest resource file from source to destination"];
    *error = v33 = 0;
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

- (BOOL)_ingestOriginalInPlaceSrcURL:(id)l dstURL:(id)rL asset:(id)asset error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  assetCopy = asset;
  path = [rLCopy path];
  stringByDeletingPathExtension = [path stringByDeletingPathExtension];

  path2 = [lCopy path];
  stringByDeletingPathExtension2 = [path2 stringByDeletingPathExtension];

  v16 = 0;
  v17 = 0;
  if (stringByDeletingPathExtension2 && stringByDeletingPathExtension)
  {
    if (![stringByDeletingPathExtension isEqualToString:stringByDeletingPathExtension2])
    {
      v17 = 0;
      v16 = 0;
      if (!error)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    photoLibrary = [assetCopy photoLibrary];
    pathManager = [photoLibrary pathManager];
    capabilities = [pathManager capabilities];

    v23 = 0;
    v16 = [MEMORY[0x1E69BF238] ingestItemAtURL:lCopy toURL:rLCopy type:0 options:3 capabilities:capabilities error:&v23];
    v17 = v23;
  }

  if (error)
  {
LABEL_6:
    v21 = v17;
    *error = v17;
  }

LABEL_7:

  return v16;
}

- (BOOL)_createAssetAsAdjusted:(id)adjusted fromValidatedResources:(id)resources mainFileMetadata:(id)metadata error:(id *)error
{
  v216 = *MEMORY[0x1E69E9840];
  adjustedCopy = adjusted;
  resourcesCopy = resources;
  metadataCopy = metadata;
  if (([resourcesCopy hasAdjustments] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1395 description:@"expect adjustment resources"];
  }

  mediaType = [resourcesCopy mediaType];
  selfCopy = self;
  if (![resourcesCopy hasCurrentAdjustment])
  {
    goto LABEL_127;
  }

  v184 = metadataCopy;
  v14 = [resourcesCopy assetResourceWithType:7];
  v181 = [resourcesCopy assetResourceWithType:108];
  v176 = [resourcesCopy assetResourceWithType:110];
  v15 = [resourcesCopy validatedURLForAssetResource:v14];
  v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v15];
  v177 = v14;
  v175 = v15;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    backupAdjustmentsFile = [(PHAssetCreationCameraIngestOptions *)self->_cameraIngestOptions backupAdjustmentsFile];

    if (!backupAdjustmentsFile || (v26 = objc_alloc(MEMORY[0x1E695DF20]), -[PHAssetCreationCameraIngestOptions backupAdjustmentsFile](self->_cameraIngestOptions, "backupAdjustmentsFile"), v27 = objc_claimAutoreleasedReturnValue(), v17 = [v26 initWithContentsOfFile:v27], v27, !v17))
    {
      v28 = MEMORY[0x1E696ABC0];
      v200 = *MEMORY[0x1E696A278];
      v201 = @"Unable to determine adjustment data";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v201 forKeys:&v200 count:1];
      v29 = [v28 errorWithDomain:@"PHPhotosErrorDomain" code:3302 userInfo:v17];
      goto LABEL_126;
    }
  }

  creationOptions = [v14 creationOptions];
  shouldMoveFile = [creationOptions shouldMoveFile];

  if (shouldMoveFile)
  {
    fileManager = [MEMORY[0x1E69BF238] fileManager];
    v191 = 0;
    [fileManager removeItemAtURL:v15 error:&v191];
    v163 = v191;
  }

  else
  {
    v163 = 0;
  }

  v183 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BF380]];
  v182 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BF388]];
  v21 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BF370]];
  v22 = selfCopy;
  editorBundleID = [(PHAssetChangeRequest *)selfCopy editorBundleID];
  v24 = editorBundleID;
  if (editorBundleID)
  {
    v170 = editorBundleID;
  }

  else
  {
    v170 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BF378]];
  }

  v30 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BF368]];
  integerValue = [v30 integerValue];

  v31 = *MEMORY[0x1E69BF390];
  v32 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BF390]];
  intValue = [v32 intValue];

  shouldPerformConcurrentWork = [(PHChangeRequest *)selfCopy shouldPerformConcurrentWork];
  if ([adjustedCopy importedBy] == 1)
  {
    v156 = 0;
    if (v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v156 = [adjustedCopy importedBy] != 2;
    if (v21)
    {
      goto LABEL_24;
    }
  }

  if (v181)
  {
    v33 = adjustedCopy;
    errorCopy = error;
    v35 = [resourcesCopy validatedURLForAssetResource:v181];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v35 path];
    v38 = [defaultManager fileExistsAtPath:path];

    if (v38)
    {
      v21 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v35];
    }

    else
    {
      v21 = 0;
    }

    error = errorCopy;
    adjustedCopy = v33;
    v22 = selfCopy;
  }

LABEL_24:
  errorCopy2 = error;
  v178 = v21;
  if (!v183 || !v182 || !v21)
  {
    backupAdjustmentsFile2 = [(PHAssetCreationCameraIngestOptions *)v22->_cameraIngestOptions backupAdjustmentsFile];

    if (!backupAdjustmentsFile2)
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

  v40 = [adjustedCopy playbackStyle] == 3 || objc_msgSend(adjustedCopy, "playbackStyle") == 5;
  if (!v22->_duplicateAssetIdentifier)
  {
    v40 = ([resourcesCopy mediaSubtype] >> 3) & 1;
  }

  v190 = 0;
  v41 = [MEMORY[0x1E69BE650] validateAdjustmentData:v178 formatIdentifier:v183 formatVersion:v182 error:&v190];
  v179 = v190;
  if ((v41 & 1) == 0)
  {
    backupAdjustmentsFile3 = [(PHAssetCreationCameraIngestOptions *)v22->_cameraIngestOptions backupAdjustmentsFile];

    if (!backupAdjustmentsFile3)
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
  integerValue2 = [v45 integerValue];

  if (mediaType == 2)
  {
    v51 = [resourcesCopy assetResourceWithType:6];
    if (!v51)
    {
      v51 = [resourcesCopy assetResourceWithType:107];
    }

    [resourcesCopy validatedURLForAssetResource:v51];
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

      v52 = [adjustedCopy kindSubtype] != 101;
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
      backupAdjustmentsFile2 = v159;
LABEL_124:

      v78 = v164;
      v29 = v59;
      goto LABEL_125;
    }

LABEL_63:
    v158 = v52;
    v63 = [resourcesCopy assetResourceWithType:5];
    v64 = [resourcesCopy validatedURLForAssetResource:v63];
    v65 = [resourcesCopy assetResourceWithType:12];
    v66 = [resourcesCopy validatedURLForAssetResource:v65];

    v21 = v178;
    v67 = v64;
    v165 = 0;
    v166 = 0;
    v171 = 0;
    v53 = 0;
    v168 = 0;
    backupAdjustmentsFile2 = v159;
LABEL_90:
    v152 = v66;
    v164 = v67;
    v79 = [objc_alloc(MEMORY[0x1E69C0660]) initWithFormatIdentifier:v183 formatVersion:v182 data:v21 baseVersion:integerValue editorBundleID:v170 renderTypes:intValue];
    if (!v79)
    {
      backupAdjustmentsFile4 = [(PHAssetCreationCameraIngestOptions *)v22->_cameraIngestOptions backupAdjustmentsFile];

      if (!backupAdjustmentsFile4 || ([(PHAssetCreationRequest *)v22 _createAssetAdjustmentsFromBackupWithAsset:adjustedCopy], (v79 = objc_claimAutoreleasedReturnValue()) == 0))
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
    width = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
    dateCreated = [adjustedCopy dateCreated];
    [v80 setAdjustmentTimestamp:dateCreated];

    creationOptions2 = [v177 creationOptions];
    v85 = 4;
    if ([creationOptions2 shouldMoveFile])
    {
      v86 = 4;
    }

    else
    {
      v86 = 1;
    }

    [adjustedCopy setCameraProcessingAdjustmentStateFromAdjustmentRenderTypes:intValue];
    path2 = [backupAdjustmentsFile2 path];
    v88 = backupAdjustmentsFile2;
    v89 = [path2 containsString:@"fullsizerender.JPG"];

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
      pathExtension = [v88 pathExtension];
      if ([pathExtension isEqualToString:@"largeThumbnail"])
      {
      }

      else
      {

        v90 = 0;
        v92 = 1;
        if (!v88 || !v165)
        {
          v91 = !shouldPerformConcurrentWork;
          v85 = v86;
          goto LABEL_110;
        }
      }

      [(PHAssetCreationCameraIngestOptions *)selfCopy->_cameraIngestOptions finalAssetWidth];
      width = v96;
      [(PHAssetCreationCameraIngestOptions *)selfCopy->_cameraIngestOptions finalAssetHeight];
      height = v97;
      v92 = 0;
      if (width > 0.0)
      {
        v158 = 1;
        v91 = !shouldPerformConcurrentWork;
      }

      else
      {
        v91 = !shouldPerformConcurrentWork;
        if (v97 <= 0.0)
        {
          width = [adjustedCopy width];
          v92 = 0;
          height = [adjustedCopy height];
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
    [v98 setFullSizeRenderSize:{width, height}];
    [v98 setRenderedVideoComplementContentURL:v166];
    [v98 setPenultimateRenderedVideoComplementContentURL:v168];
    [v98 setRenderedVideoPosterContentURL:v164];
    [v98 setMainFileMetadata:v184];
    [v98 setShouldUpdateAttributes:v92];
    [v98 setFileIngestionType:v85];
    [v98 setShouldGenerateThumbnails:v91];
    [v98 setShouldCheckForLegacyCameraAutoAdjustment:v156];
    v99 = [resourcesCopy validatedURLForAssetResource:v176];
    [v98 setAdjustmentSecondaryDataURL:v99];

    [adjustedCopy setAdjustments:v80 options:v98];
    if (v158 && ![adjustedCopy deferredProcessingNeeded])
    {
      [adjustedCopy setDeferredProcessingNeeded:2];
    }

    helper = [(PHChangeRequest *)selfCopy helper];
    clientAuthorization = [helper clientAuthorization];
    isCameraClient = [clientAuthorization isCameraClient];

    v53 = v155;
    if (!isCameraClient)
    {
      goto LABEL_116;
    }

    v103 = [resourcesCopy assetResourceWithType:16];
    if (!v103)
    {
      if ([adjustedCopy setCurrentAdjustmentAsOriginalAdjustment])
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
    if (mediaType == 1)
    {
      v104 = [resourcesCopy assetResourceWithType:8];
      creationOptions3 = [v104 creationOptions];
      shouldMoveFile2 = [creationOptions3 shouldMoveFile];

      if (shouldMoveFile2)
      {
        v107 = [resourcesCopy validatedURLForAssetResource:v104];
        fileManager2 = [MEMORY[0x1E69BF238] fileManager];
        v189 = 0;
        [fileManager2 removeItemAtURL:v107 error:&v189];
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

    backupAdjustmentsFile2 = v161;
    goto LABEL_123;
  }

  if (mediaType != 1)
  {
    v29 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Unexpected media type"];
    v158 = 0;
    v166 = 0;
    v168 = 0;
    backupAdjustmentsFile2 = 0;
    v53 = 0;
    v171 = 0;
    v165 = 0;
    v21 = v178;
LABEL_53:
    v47 = v163;
    goto LABEL_89;
  }

  v47 = [resourcesCopy assetResourceWithType:5];
  v48 = [resourcesCopy assetResourceWithType:5];
  if (!v47)
  {
    v47 = [resourcesCopy assetResourceWithType:107];
  }

  v150 = integerValue2;
  if (!v48)
  {
    v48 = [resourcesCopy assetResourceWithType:111];
  }

  backupAdjustmentsFile2 = [resourcesCopy validatedURLForAssetResource:v47];
  v154 = [resourcesCopy validatedDataForAssetResource:v48];
  v49 = [v154 length];
  v151 = v48;
  if (!backupAdjustmentsFile2)
  {
    if (v49)
    {
      if (![v154 length])
      {
        v50 = 0;
        backupAdjustmentsFile2 = 0;
        goto LABEL_46;
      }

      v172 = DCIM_newPLImageWithStoredJPEGData();
      photoLibrary = [adjustedCopy photoLibrary];
      libraryServicesManager = [photoLibrary libraryServicesManager];
      imageWriter = [libraryServicesManager imageWriter];
      filename = [adjustedCopy filename];
      v57 = [imageWriter writeFilteredPreviewWithImageData:v154 orImage:v172 toPathWithBaseName:filename];

      if (v57)
      {
        v165 = v57;
        backupAdjustmentsFile2 = [MEMORY[0x1E695DFF8] fileURLWithPath:v57 isDirectory:0];
      }

      else
      {
        backupAdjustmentsFile2 = 0;
        v165 = 0;
      }

      v69 = v172;
    }

    else
    {
      if (v41)
      {
        backupAdjustmentsFile2 = 0;
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
      backupAdjustmentsFile2 = 0;
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
    [resourcesCopy assetResourceWithType:10];
    v72 = v71 = backupAdjustmentsFile2;

    v166 = [resourcesCopy validatedURLForAssetResource:v72];
    v158 |= (v166 == 0) & v41;
    v47 = v72;
    backupAdjustmentsFile2 = v71;
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
    v73 = [resourcesCopy assetResourceWithType:8];
    if (v73)
    {
      v171 = [resourcesCopy validatedDataForAssetResource:v73];
      if (!v171)
      {
        [resourcesCopy validatedURLForAssetResource:v73];
        v75 = v74 = backupAdjustmentsFile2;
        v171 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v75];

        backupAdjustmentsFile2 = v74;
        v53 = v154;
      }

      if (v40)
      {
        v160 = backupAdjustmentsFile2;
        v76 = [resourcesCopy assetResourceWithType:11];

        v168 = [resourcesCopy validatedURLForAssetResource:v76];
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
        backupAdjustmentsFile2 = v160;
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

  error = errorCopy2;
LABEL_126:

  metadataCopy = v184;
  if (v29)
  {
    goto LABEL_155;
  }

LABEL_127:
  if (![resourcesCopy hasOriginalAdjustment])
  {
    goto LABEL_144;
  }

  v185 = metadataCopy;
  v109 = [resourcesCopy assetResourceWithType:16];
  v110 = [resourcesCopy validatedURLForAssetResource:v109];
  creationOptions4 = [v109 creationOptions];
  [creationOptions4 ensureOptionsAreCompleteForURL:v110];

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
  integerValue3 = [v118 integerValue];

  if ((integerValue3 & 0x10) == 0 || (mediaType != 1 ? (v120 = 14) : (v120 = 13), ([resourcesCopy assetResourceWithType:v120], v123 = objc_claimAutoreleasedReturnValue(), v123, v123) || (v145 = MEMORY[0x1E696ABC0], v198 = *MEMORY[0x1E696A278], v199 = @"This resource set requires a adjustment base resource to be provided", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v199, &v198, 1), v146 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v145, "errorWithDomain:code:userInfo:", @"PHPhotosErrorDomain", 3303, v146), v29 = objc_claimAutoreleasedReturnValue(), v146, !v29)))
  {
    errorCopy3 = error;
    v122 = [resourcesCopy validatedURLForAssetResource:v109];
    creationOptions5 = [v109 creationOptions];
    shouldIngestInPlace = [creationOptions5 shouldIngestInPlace];

    v126 = MEMORY[0x1E695DFF8];
    pathForOriginalAdjustmentFile = [adjustedCopy pathForOriginalAdjustmentFile];
    v128 = [v126 fileURLWithPath:pathForOriginalAdjustmentFile];
    if (shouldIngestInPlace)
    {
      v188 = 0;
      [(PHAssetCreationRequest *)selfCopy _ingestOriginalInPlaceSrcURL:v122 dstURL:v128 asset:adjustedCopy error:&v188];
      v29 = v188;
    }

    else
    {
      creationOptions6 = [v109 creationOptions];
      v187 = 0;
      v130 = -[PHAssetCreationRequest _ingestOriginalFromSrcURL:toDstURL:useSecureMove:resource:resourceType:asset:error:](selfCopy, "_ingestOriginalFromSrcURL:toDstURL:useSecureMove:resource:resourceType:asset:error:", v122, v128, [creationOptions6 shouldMoveFile], v109, 5, adjustedCopy, &v187);
      v29 = v187;
    }

    error = errorCopy3;
    goto LABEL_142;
  }

LABEL_143:

  metadataCopy = v185;
  if (v29)
  {
    goto LABEL_155;
  }

LABEL_144:
  v131 = [resourcesCopy assetResourceWithType:18];
  if (v131)
  {
    v132 = objc_alloc(MEMORY[0x1E69C0910]);
    fileURL = [v131 fileURL];
    v134 = [v132 initWithURL:fileURL];

    if (v134)
    {
      adjustmentFormatIdentifier = [v134 adjustmentFormatIdentifier];
      if (adjustmentFormatIdentifier)
      {
        v136 = adjustmentFormatIdentifier;
        adjustmentFormatVersion = [v134 adjustmentFormatVersion];

        if (adjustmentFormatVersion)
        {
          v138 = [MEMORY[0x1E69BE258] assetAdjustmentOptionsForSLMAdjustmentsWithMainFileMetadata:metadataCopy];
          [adjustedCopy setAdjustments:v134 options:v138];
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
  if (error)
  {
    v143 = v29;
    *error = v29;
  }

  return v29 == 0;
}

- (id)_secureMove:(BOOL)move assetResource:(id)resource photoLibrary:(id)library error:(id *)error
{
  moveCopy = move;
  resourceCopy = resource;
  libraryCopy = library;
  fileURL = [resourceCopy fileURL];
  if (fileURL)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v35 = v34 = resourceCopy;
    [v35 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1362 description:@"expect file url"];

    resourceCopy = v34;
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E696AAA8] currentHandler];
  v37 = v36 = resourceCopy;
  [v37 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1363 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

  resourceCopy = v36;
LABEL_3:
  [libraryCopy pathManager];
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__15607;
  v58 = __Block_byref_object_dispose__15608;
  v41 = v59 = 0;
  if ([v41 shouldUseFileIdentifierForBundleScope:self->_bundleScope])
  {
    v12 = objc_alloc(MEMORY[0x1E69BF298]);
    uuid = [(PHChangeRequest *)self uuid];
    bundleScope = [(PHAssetCreationRequest *)self bundleScope];
    uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];
    originalFilename = [resourceCopy originalFilename];
    v17 = [v12 initWithAssetUuid:uuid bundleScope:bundleScope uti:uniformTypeIdentifier resourceVersion:0 resourceType:31 recipeID:0 originalFilename:originalFilename customSuffix:0];

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
    v47 = moveCopy;
    v43 = fileURL;
    v18 = v41;
    v44 = v41;
    v46 = &v48;
    [v44 obtainAccessAndWaitWithFileWithIdentifier:v17 mode:2 toURLWithHandler:v42];
    if (error)
    {
      v19 = v49[5];
      if (v19)
      {
        *error = v19;
      }
    }

    _Block_object_dispose(&v48, 8);
    v20 = 0;
    goto LABEL_13;
  }

  if (self->_momentShareUUID)
  {
    v38 = resourceCopy;
    pathManager = [libraryCopy pathManager];
    v22 = [pathManager privateDirectoryWithSubType:7];
    libraryServicesManager2 = [v22 stringByAppendingPathComponent:self->_momentShareUUID];

    libraryServicesManager = [libraryCopy libraryServicesManager];
    imageWriter = [libraryServicesManager imageWriter];
    uuid2 = [(PHChangeRequest *)self uuid];
    pathExtension = [fileURL pathExtension];
    uppercaseString = [pathExtension uppercaseString];
    v20 = [imageWriter pathForNewAssetWithDirectoryPath:libraryServicesManager2 fileName:uuid2 extension:uppercaseString];

    resourceCopy = v38;
  }

  else
  {
    libraryServicesManager2 = [libraryCopy libraryServicesManager];
    libraryServicesManager = [libraryServicesManager2 imageWriter];
    imageWriter = [fileURL pathExtension];
    uuid2 = [imageWriter uppercaseString];
    pathExtension = [(PHChangeRequest *)self uuid];
    v20 = [libraryServicesManager cameraAssetPathForNewAssetWithExtension:uuid2 assetUUID:pathExtension];
  }

  if (v20)
  {
    v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v20 isDirectory:0];
    capabilities = [v41 capabilities];
    v30 = [(PHAssetCreationRequest *)self _secureMove:moveCopy fileAtURL:fileURL toURL:v17 capabilities:capabilities error:error];
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

- (id)_secureMove:(BOOL)move fileAtURL:(id)l toURL:(id)rL capabilities:(id)capabilities error:(id *)error
{
  moveCopy = move;
  v38 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  capabilitiesCopy = capabilities;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1330 description:@"expect file url"];
  }

  if (moveCopy)
  {
    v16 = *MEMORY[0x1E69BFDE8];
    v33 = 0;
    v17 = [MEMORY[0x1E69BF238] stripExtendedAttributesFromFileAtURL:lCopy inDomain:v16 error:&v33];
    v18 = v33;
    v19 = v18;
    if (v17)
    {
      v32 = v18;
      v20 = [MEMORY[0x1E69BF238] secureMoveItemAtURL:lCopy toURL:rLCopy capabilities:capabilitiesCopy error:&v32];
      v21 = v32;

      if (v20)
      {
        [(PHAssetCreationRequest *)self _didMoveFileFromURL:lCopy toURL:rLCopy];
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
  v22 = [MEMORY[0x1E69BF238] copyItemAtURL:lCopy toURL:rLCopy error:&v31];
  v21 = v31;
  if (!v22)
  {
LABEL_14:

    if (error)
    {
      v27 = v21;
      rLCopy = 0;
      *error = v21;
    }

    else
    {
      rLCopy = 0;
    }

    goto LABEL_17;
  }

  v23 = *MEMORY[0x1E69BFDE8];
  v30 = 0;
  v24 = [MEMORY[0x1E69BF238] stripExtendedAttributesFromFileAtURL:rLCopy inDomain:v23 error:&v30];
  v25 = v30;
  if ((v24 & 1) == 0)
  {
    v26 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v35 = rLCopy;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_ERROR, "Failed to strip extended attributes from %@, %@", buf, 0x16u);
    }
  }

LABEL_17:

  return rLCopy;
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
  fileManager = [MEMORY[0x1E69BF238] fileManager];
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
        v13 = [fileManager moveItemAtURL:v11 toURL:v12 error:&v21];
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

- (void)_didMoveFileFromURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  movedFiles = self->_movedFiles;
  if (!movedFiles)
  {
    v8 = objc_opt_new();
    v9 = self->_movedFiles;
    self->_movedFiles = v8;

    movedFiles = self->_movedFiles;
  }

  [(NSMutableDictionary *)movedFiles setObject:lCopy forKey:rLCopy];
}

- (void)_copyMediaAnalysisProperties:(id)properties
{
  propertiesCopy = properties;
  [propertiesCopy fetchPropertySetsIfNeeded];
  mediaAnalysisProperties = [propertiesCopy mediaAnalysisProperties];
  [mediaAnalysisProperties bestPlaybackRect];
  [(PHAssetChangeRequest *)self setBestPlaybackRectWithNormalizedRect:?];

  date = [MEMORY[0x1E695DF00] date];
  [(PHAssetChangeRequest *)self setMediaAnalysisTimeStamp:date];

  mediaAnalysisProperties2 = [propertiesCopy mediaAnalysisProperties];
  v8 = mediaAnalysisProperties2;
  if (mediaAnalysisProperties2)
  {
    [mediaAnalysisProperties2 bestKeyFrameTime];
  }

  else
  {
    v30 = 0uLL;
    *&v31 = 0;
  }

  [(PHAssetChangeRequest *)self setBestKeyFrame:0 time:&v30];

  mediaAnalysisProperties3 = [propertiesCopy mediaAnalysisProperties];
  v10 = mediaAnalysisProperties3;
  if (mediaAnalysisProperties3)
  {
    [mediaAnalysisProperties3 bestVideoTimeRange];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
  }

  [(PHAssetChangeRequest *)self setBestVideoTimeRange:&v30];

  mediaAnalysisProperties4 = [propertiesCopy mediaAnalysisProperties];
  v12 = mediaAnalysisProperties4;
  if (mediaAnalysisProperties4)
  {
    [mediaAnalysisProperties4 animatedStickerTimeRange];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
  }

  [(PHAssetChangeRequest *)self setAnimatedStickerTimeRange:&v30];

  mediaAnalysisProperties5 = [propertiesCopy mediaAnalysisProperties];
  [mediaAnalysisProperties5 blurrinessScore];
  [(PHAssetChangeRequest *)self setBlurrinessScore:?];

  mediaAnalysisProperties6 = [propertiesCopy mediaAnalysisProperties];
  [mediaAnalysisProperties6 exposureScore];
  [(PHAssetChangeRequest *)self setExposureScore:?];

  mediaAnalysisProperties7 = [propertiesCopy mediaAnalysisProperties];
  [mediaAnalysisProperties7 wallpaperScore];
  [(PHAssetChangeRequest *)self setWallpaperScore:?];

  mediaAnalysisProperties8 = [propertiesCopy mediaAnalysisProperties];
  [mediaAnalysisProperties8 autoplaySuggestionScore];
  [(PHAssetChangeRequest *)self setAutoplaySuggestionScore:?];

  mediaAnalysisProperties9 = [propertiesCopy mediaAnalysisProperties];
  [mediaAnalysisProperties9 videoStickerSuggestionScore];
  [(PHAssetChangeRequest *)self setVideoStickerSuggestionScore:?];

  mediaAnalysisProperties10 = [propertiesCopy mediaAnalysisProperties];
  [mediaAnalysisProperties10 videoScore];
  [(PHAssetChangeRequest *)self setVideoScore:?];

  mediaAnalysisProperties11 = [propertiesCopy mediaAnalysisProperties];
  [mediaAnalysisProperties11 activityScore];
  [(PHAssetChangeRequest *)self setActivityScore:?];

  mediaAnalysisProperties12 = [propertiesCopy mediaAnalysisProperties];
  [mediaAnalysisProperties12 audioScore];
  [(PHAssetChangeRequest *)self setAudioScore:?];

  mediaAnalysisProperties13 = [propertiesCopy mediaAnalysisProperties];
  [mediaAnalysisProperties13 settlingEffectScore];
  [(PHAssetChangeRequest *)self setSettlingEffectScore:?];

  mediaAnalysisProperties14 = [propertiesCopy mediaAnalysisProperties];
  -[PHAssetChangeRequest setFaceCount:](self, "setFaceCount:", [mediaAnalysisProperties14 faceCount]);

  mediaAnalysisProperties15 = [propertiesCopy mediaAnalysisProperties];
  -[PHAssetChangeRequest setAudioClassification:](self, "setAudioClassification:", [mediaAnalysisProperties15 audioClassification]);

  mediaAnalysisProperties16 = [propertiesCopy mediaAnalysisProperties];
  -[PHAssetChangeRequest setProbableRotationDirection:](self, "setProbableRotationDirection:", [mediaAnalysisProperties16 probableRotationDirection]);

  mediaAnalysisProperties17 = [propertiesCopy mediaAnalysisProperties];
  [mediaAnalysisProperties17 probableRotationDirectionConfidence];
  [(PHAssetChangeRequest *)self setProbableRotationDirectionConfidence:?];

  mediaAnalysisProperties18 = [propertiesCopy mediaAnalysisProperties];
  colorNormalizationData = [mediaAnalysisProperties18 colorNormalizationData];
  [(PHAssetChangeRequest *)self setColorNormalizationData:colorNormalizationData];

  mediaAnalysisProperties19 = [propertiesCopy mediaAnalysisProperties];
  [mediaAnalysisProperties19 bestPlaybackRect];
  [(PHAssetChangeRequest *)self setBestPlaybackRectWithNormalizedRect:?];

  mediaAnalysisProperties20 = [propertiesCopy mediaAnalysisProperties];
  -[PHAssetChangeRequest setScreenTimeDeviceImageSensitivity:](self, "setScreenTimeDeviceImageSensitivity:", [mediaAnalysisProperties20 screenTimeDeviceImageSensitivity]);
}

- (void)_copyUserSpecificMetadataFromAsset:(id)asset
{
  assetCopy = asset;
  -[PHAssetChangeRequest setHidden:](self, "setHidden:", [assetCopy isHidden]);
  -[PHAssetChangeRequest setFavorite:](self, "setFavorite:", [assetCopy isFavorite]);
  title = [assetCopy title];

  [(PHAssetChangeRequest *)self setTitle:title];
}

- (void)_copyMetadataFromAsset:(id)asset
{
  assetCopy = asset;
  [assetCopy fetchPropertySetsIfNeeded];
  creationDate = [assetCopy creationDate];
  [(PHAssetChangeRequest *)self setCreationDate:creationDate];

  location = [assetCopy location];
  [(PHAssetChangeRequest *)self setLocation:location];

  coarseLocationProperties = [assetCopy coarseLocationProperties];
  [coarseLocationProperties gpsHorizontalAccuracy];
  [(PHAssetChangeRequest *)self setGpsHorizontalAccuracy:?];

  if ([assetCopy videoCpVisibilityState])
  {
    -[PHAssetChangeRequest setPhotoIrisVisibilityState:](self, "setPhotoIrisVisibilityState:", [assetCopy videoCpVisibilityState]);
  }

  -[PHAssetChangeRequest setOriginalResourceChoice:](self, "setOriginalResourceChoice:", [assetCopy originalResourceChoice]);
}

- (void)setSyndicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:855 description:{@"Invalid parameter not satisfying: %@", @"syndicationIdentifier != nil"}];
  }

  if (self->_syndicationIdentifier)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:857 description:{@"Invalid parameter not satisfying: %@", @"_syndicationIdentifier == nil"}];

    syndicationIdentifier = self->_syndicationIdentifier;
  }

  else
  {
    syndicationIdentifier = 0;
  }

  self->_syndicationIdentifier = identifierCopy;
}

+ (int64_t)_originalResourceTypeFromAdjustedResourceType:(int64_t)type sourceAssetIsLoopingVideo:(BOOL)video sourceAssetIsVideo:(BOOL)isVideo
{
  v5 = 9;
  if (video)
  {
    v5 = 2;
  }

  v6 = 2;
  v7 = !video && !isVideo;
  if (type != 5)
  {
    v7 = 0;
  }

  if (type != 6)
  {
    v6 = v7;
  }

  if (type == 10)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

+ (id)_uuidForAssetWithSyndicationIdentifier:(id)identifier inLibrary:(id)library isTrashed:(BOOL *)trashed
{
  v49[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  libraryCopy = library;
  v9 = MEMORY[0x1E696AB28];
  v10 = MEMORY[0x1E69BE540];
  v48 = identifierCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v12 = [v10 predicateForSyndicatedAssetIdentifiers:v11 includeRejected:1];
  v49[0] = v12;
  v13 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForUserLibrary"), 0}];
  v49[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v15 = [v9 andPredicateWithSubpredicates:v14];

  v16 = MEMORY[0x1E695D5E0];
  entityName = [MEMORY[0x1E69BE540] entityName];
  v18 = [v16 fetchRequestWithEntityName:entityName];

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
  v20 = libraryCopy;
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
    v42 = identifierCopy;
    v43 = 2112;
    v44 = v20;
    v45 = 2114;
    v46 = v23;
    _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_INFO, "_uuidForAssetWithSyndicationIdentifier:%{public}@ from photoLibrary %@ is %{public}@", buf, 0x20u);
  }

  if (trashed)
  {
    *trashed = *(v32 + 24);
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

+ (id)_jpegDataFromRAWData:(id)data derivativeContext:(id)context
{
  v67[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  contextCopy = context;
  if (!dataCopy || ![dataCopy length])
  {
    v18 = 0;
    goto LABEL_61;
  }

  v7 = *MEMORY[0x1E696E0C0];
  v67[0] = MEMORY[0x1E695E118];
  v8 = *MEMORY[0x1E696E118];
  v66[0] = v7;
  v66[1] = v8;
  originalUTI = [contextCopy originalUTI];
  v67[1] = originalUTI;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];

  v11 = CGImageSourceCreateWithData(dataCopy, v10);
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
    if (v16 || v15.location + v15.length > [dataCopy length])
    {
      assetOrientation = [contextCopy assetOrientation];
    }

    else
    {
      v56 = v14;
      bytes = [dataCopy bytes];
      v24 = malloc_type_malloc(v15.length, 0x3FAC9F70uLL);
      memcpy(v24, (bytes + v15.location), v15.length);
      *v24 = -1;
      v20 = 1;
      v18 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytesNoCopy:v24 length:v15.length freeWhenDone:1];
      assetOrientation = [contextCopy assetOrientation];
      if (v18)
      {
        v14 = v56;
        goto LABEL_16;
      }

      v14 = v56;
      v17 = 0x1E695D000;
    }

    v18 = objc_alloc_init(*(v17 + 3976));
    identifier = [*MEMORY[0x1E6982E58] identifier];
    v20 = 1;
    v21 = CGImageDestinationCreateWithData(v18, identifier, 1uLL, 0);

    if (v21)
    {
      v22 = [PHAssetCreationRequest _imageIOThumbnailCreationOptionsFromDerivativeContext:contextCopy];
      CGImageDestinationAddImageFromSource(v21, v12, 0, v22);
      CGImageDestinationFinalize(v21);
      CFRelease(v21);

      v20 = assetOrientation;
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
      if (v20 != assetOrientation)
      {
        v46 = objc_alloc_init(MEMORY[0x1E695DF88]);
        identifier2 = [*MEMORY[0x1E6982E58] identifier];
        v48 = CGImageDestinationCreateWithData(v46, identifier2, 1uLL, 0);

        if (v48)
        {
          if (!v33)
          {
            v33 = CGImageSourceCreateWithData(v18, 0);
          }

          v60 = *MEMORY[0x1E696DF58];
          v49 = [MEMORY[0x1E696AD98] numberWithInteger:assetOrientation];
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

    [contextCopy assetOrientedImageSize];
    v26 = v25;
    [contextCopy assetOrientedImageSize];
    v28 = v27;
    originalUTI2 = [contextCopy originalUTI];
    v53 = v28;
    v54 = originalUTI2;
    if (v26 && v28 && v26 == v28)
    {
      v30 = originalUTI2;
      if (([originalUTI2 isEqualToString:@"com.hasselblad.fff-raw-image"] & 1) == 0)
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

      if (assetOrientation != 1)
      {
        v33 = 0;
LABEL_46:
        v20 = assetOrientation;
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

+ (id)_imageIOThumbnailCreationOptionsFromDerivativeContext:(id)context
{
  contextCopy = context;
  if (![contextCopy maxPixelSize])
  {
    [contextCopy assetOrientedImageSize];
    v5 = v4;
    [contextCopy assetOrientedImageSize];
    v7 = v6;
    [contextCopy assetOrientation];
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

    [contextCopy embeddedThumbnailSize];
    v11 = v10;
    [contextCopy embeddedThumbnailSize];
    if (v11 < v12)
    {
      v11 = v12;
    }

    v21 = 0.0;
    v22 = 0.0;
    v13 = MEMORY[0x1E69BE540];
    [contextCopy assetOrientedImageSize];
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

    [contextCopy setMaxPixelSize:v16];
  }

  v17 = objc_opt_new();
  [v17 setMaximumLongSideLength:{objc_msgSend(contextCopy, "maxPixelSize")}];
  [v17 setColorBehavior:3];
  [v17 setSkipMetadata:1];
  [v17 setIncludeHDRGainMaps:1];
  options = [v17 options];

  return options;
}

+ (id)_photoIrisIndicatorFilePathForPhotoAtPath:(id)path UUID:(id)d
{
  v4 = 0;
  if (path && d)
  {
    v6 = MEMORY[0x1E696AEC0];
    pathCopy = path;
    v8 = [v6 stringWithFormat:@"%@%@.%@", @"iris_pending_", d, @"irs"];
    v4 = [pathCopy stringByAppendingPathComponent:v8];
  }

  return v4;
}

+ (id)_cameraMetadataURLForPrimaryAssetURL:(id)l photoLibrary:(id)library
{
  lCopy = l;
  pathManager = [library pathManager];
  v7 = [pathManager privateDirectoryWithSubType:9 createIfNeeded:1 error:0];

  path = [lCopy path];

  lastPathComponent = [path lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v11 = [stringByDeletingPathExtension stringByAppendingPathExtension:*MEMORY[0x1E69C00C0]];

  v12 = MEMORY[0x1E695DFF8];
  v13 = [v7 stringByAppendingPathComponent:v11];
  v14 = [v12 fileURLWithPath:v13];

  return v14;
}

+ (BOOL)_shouldGenerateThumbnailsDuringCreationForImageSource:(CGImageSource *)source contentType:(id)type timeZoneLookup:(id)lookup
{
  typeCopy = type;
  lookupCopy = lookup;
  if ([typeCopy conformsToType:*MEMORY[0x1E6982F88]])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = CGImageSourceCopyProperties(source, 0);
    if (v10)
    {
      v11 = [MEMORY[0x1E69C0708] embeddedJPEGSuitableForDerivativesInRawImageSource:source enforcePixelCountLimits:1 timeZoneLookup:lookupCopy];
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

+ (BOOL)setdbgFileWithAsset:(id)asset dbgFilePath:(id)path photoFilename:(id)filename
{
  v7 = MEMORY[0x1E695DFF8];
  filenameCopy = filename;
  assetCopy = asset;
  v10 = [v7 fileURLWithPath:path isDirectory:0];
  v11 = MEMORY[0x1E69BE540];
  photoLibrary = [assetCopy photoLibrary];

  v13 = [v11 diagnosticFilePathForLibrary:photoLibrary mainFilename:filenameCopy createIfNeeded:1];

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

+ (BOOL)setDeferredIdentifierAndCreateDeferredDestinationURLFromCurrentDstURL:(id *)l withMainFileMetadata:(id)metadata managedAsset:(id)asset photoLibrary:(id)library error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  assetCopy = asset;
  libraryCopy = library;
  mainFileURL = [assetCopy mainFileURL];

  if (mainFileURL)
  {
    mainFileURL2 = [assetCopy mainFileURL];
    *l = mainFileURL2;
  }

  else
  {
    mainFileURL2 = *l;
  }

  v16 = MEMORY[0x1E695DFF8];
  path = [mainFileURL2 path];
  v18 = [v16 fileURLWithPath:path];

  v19 = [MEMORY[0x1E69BE670] deferredPhotoPreviewDestinationURLForPrimaryAssetURL:*l];
  *l = v19;
  v20 = MEMORY[0x1E69BF238];
  pathManager = [libraryCopy pathManager];

  capabilities = [pathManager capabilities];
  v38 = 0;
  [v20 secureMoveItemAtURL:v18 toURL:v19 capabilities:capabilities error:&v38];
  v23 = v38;

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path2 = [*l path];
  LOBYTE(v20) = [defaultManager fileExistsAtPath:path2];

  v26 = (v23 == 0) | MEMORY[0x19EAF1D90](v23) & v20;
  if (v26)
  {
    v27 = MEMORY[0x1E696AEC0];
    imageCaptureRequestIdentifier = [metadataCopy imageCaptureRequestIdentifier];
    photoProcessingIdentifier = [metadataCopy photoProcessingIdentifier];
    v30 = [v27 stringWithFormat:@"%@/%@", imageCaptureRequestIdentifier, photoProcessingIdentifier];

    additionalAttributes = [assetCopy additionalAttributes];
    [additionalAttributes setDeferredPhotoIdentifier:v30];

    [assetCopy setDeferredProcessingNeeded:1];
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

    if (error && v32)
    {
      v36 = v32;
      *error = v32;
    }
  }

  return v26 & 1;
}

+ (id)creationRequestForAssetCopyFromAsset:(id)asset options:(id)options
{
  assetCopy = asset;
  optionsCopy = options;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1155 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if ([optionsCopy shouldDownloadOrCloudReReferenceMissingResources])
  {
    initForNewObject = [[PHAssetCreationRequestPlaceholderSupport alloc] initForNewObject];
    adjustmentBakeInOptions = [optionsCopy adjustmentBakeInOptions];
    [initForNewObject _setAdjustmentBakeInOptions:adjustmentBakeInOptions];

    metadataCopyOptions = [optionsCopy metadataCopyOptions];
    [initForNewObject _setMetadataCopyOptions:metadataCopyOptions];
LABEL_5:

    goto LABEL_9;
  }

  initForNewObject = [self creationRequestForAssetWithOptions:optionsCopy];
  adjustmentBakeInOptions2 = [optionsCopy adjustmentBakeInOptions];

  if (adjustmentBakeInOptions2)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1164 description:@"adjustmentBakeInOptions should only be set if shouldDownloadOrCloudReReferenceMissingResources is YES"];
  }

  metadataCopyOptions2 = [optionsCopy metadataCopyOptions];

  if (metadataCopyOptions2)
  {
    metadataCopyOptions = [MEMORY[0x1E696AAA8] currentHandler];
    [metadataCopyOptions handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:1165 description:@"metadataCopyOptions should only be set if shouldDownloadOrCloudReReferenceMissingResources is YES"];
    goto LABEL_5;
  }

LABEL_9:
  if ([optionsCopy copyStillPhotoFromLivePhoto])
  {
    [initForNewObject _setDuplicateLivePhotoAsStill:1];
  }

  if ([optionsCopy copyOriginal])
  {
    [initForNewObject _setDuplicateAsOriginal:1];
  }

  if ([optionsCopy copySinglePhotoFromBurst])
  {
    [initForNewObject _setDuplicateSinglePhotoFromBurst:1];
  }

  if ([optionsCopy copyAsAlternateAsset])
  {
    [initForNewObject _setDuplicateAsAlternateAsset:1];
  }

  if ([optionsCopy useRecoverableStagingDirectory])
  {
    [initForNewObject _setUseRecoverableStagingDirectory:1];
  }

  if (([optionsCopy resetUserSpecificMetadata] & 1) == 0)
  {
    [initForNewObject _copyUserSpecificMetadataFromAsset:assetCopy];
  }

  [assetCopy fetchPropertySetsIfNeeded];
  photosOneUpProperties = [assetCopy photosOneUpProperties];
  reverseLocationData = [photosOneUpProperties reverseLocationData];
  [initForNewObject setReverseLocationData:reverseLocationData];

  photosOneUpProperties2 = [assetCopy photosOneUpProperties];
  [initForNewObject setReverseLocationDataIsValid:{objc_msgSend(photosOneUpProperties2, "reverseLocationDataIsValid")}];

  [assetCopy preferredCropRect];
  if (PLCGRectIsNormalized())
  {
    [assetCopy preferredCropRect];
    [initForNewObject setPreferredCropRectWithNormalizedRect:?];
  }

  [assetCopy acceptableCropRect];
  if (PLCGRectIsNormalized())
  {
    [assetCopy acceptableCropRect];
    [initForNewObject setAcceptableCropRectWithNormalizedRect:?];
  }

  [assetCopy curationScore];
  [initForNewObject setCurationScore:?];
  [initForNewObject _copyMetadataFromAsset:assetCopy];
  [initForNewObject _copyMediaAnalysisProperties:assetCopy];
  localIdentifier = [assetCopy localIdentifier];
  [initForNewObject _setDuplicateAssetIdentifier:localIdentifier];

  photoLibrary = [assetCopy photoLibrary];
  [initForNewObject _setDuplicateAssetPhotoLibraryType:{objc_msgSend(photoLibrary, "type")}];

  if (optionsCopy)
  {
    [optionsCopy stillSourceTime];
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  [initForNewObject _setDuplicateStillSourceTime:v24];
  keywordProperties = [assetCopy keywordProperties];
  keywordTitles = [keywordProperties keywordTitles];
  [initForNewObject setKeywordTitles:keywordTitles];

  return initForNewObject;
}

+ (id)creationRequestForAssetFromGuestAsset:(id)asset checkForMomentShareAsset:(BOOL)shareAsset
{
  shareAssetCopy = shareAsset;
  v119[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v8 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
  wellKnownPhotoLibraryIdentifier = [v8 wellKnownPhotoLibraryIdentifier];

  if (wellKnownPhotoLibraryIdentifier == 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssetCreationRequest.m" lineNumber:998 description:@"Expect the library being used is not the syndication library"];
  }

  [assetCopy fetchPropertySetsIfNeeded];
  curationProperties = [assetCopy curationProperties];
  syndicationIdentifier = [curationProperties syndicationIdentifier];

  if ([syndicationIdentifier length])
  {
    if (!shareAssetCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = PLSyndicationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      uuid = [assetCopy uuid];
      *buf = 138543362;
      v111 = uuid;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@ missing syndicationIdentifier", buf, 0xCu);
    }

    if (!shareAssetCopy)
    {
LABEL_14:
      mediaType = [assetCopy mediaType];
      if ((mediaType - 1) < 2)
      {
        mainFileURL = [assetCopy mainFileURL];
        if (mainFileURL)
        {
          v27 = mainFileURL;
          v32 = 0;
          goto LABEL_25;
        }
      }

      else if (mediaType == 3 || !mediaType)
      {
        v27 = PLSyndicationGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          uuid2 = [assetCopy uuid];
          v30 = +[PHAsset descriptionForMediaType:](PHAsset, "descriptionForMediaType:", [assetCopy mediaType]);
          *buf = 138543618;
          v111 = uuid2;
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
        uuid3 = [assetCopy uuid];
        *buf = 138543362;
        v111 = uuid3;
        _os_log_impl(&dword_19C86F000, v33, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@ mainFileURL is nil", buf, 0xCu);
      }

      v27 = 0;
      v32 = 1;
LABEL_25:
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [v27 path];
      v37 = [defaultManager fileExistsAtPath:path];

      if ((v37 & 1) == 0)
      {
        v38 = PLSyndicationGetLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          uuid4 = [assetCopy uuid];
          *buf = 138543618;
          v111 = uuid4;
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
      if ([assetCopy isPhotoIris])
      {
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v40 = [PHAssetResource assetResourcesForAsset:assetCopy];
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

          privateFileURL = [v45 privateFileURL];

          if (privateFileURL)
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
          uuid5 = [assetCopy uuid];
          *buf = 138543362;
          v111 = uuid5;
          _os_log_impl(&dword_19C86F000, v49, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@ live photo video complement URL is nil", buf, 0xCu);
        }

        privateFileURL = 0;
LABEL_47:
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        path2 = [privateFileURL path];
        v53 = [defaultManager2 fileExistsAtPath:path2];

        if ((v53 & 1) == 0)
        {
          v54 = PLSyndicationGetLog();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            uuid6 = [assetCopy uuid];
            path3 = [privateFileURL path];
            *buf = 138543618;
            v111 = uuid6;
            v112 = 2112;
            v113 = path3;
            _os_log_impl(&dword_19C86F000, v54, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@ videoComplementURL does not exist at path %@", buf, 0x16u);
          }
        }

        v57 = objc_alloc(MEMORY[0x1E69C0918]);
        path4 = [privateFileURL path];
        path5 = [v93 path];
        v60 = [v57 initWithPathToVideo:path4 pathToImage:path5];

        if (!v60)
        {
          v61 = PLSyndicationGetLog();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            uuid7 = [assetCopy uuid];
            *buf = 138543362;
            v111 = uuid7;
            _os_log_impl(&dword_19C86F000, v61, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@ videoComplementBundle is nil", buf, 0xCu);
          }
        }

        v63 = [self creationRequestForAssetFromVideoComplementBundle:v60];

        v27 = v93;
        if (v63)
        {
          goto LABEL_56;
        }
      }

      else
      {
        mediaType2 = [assetCopy mediaType];
        if (mediaType2 == 1)
        {
          v47 = [self creationRequestForAssetFromImageAtFileURL:v27];
        }

        else
        {
          if (mediaType2 != 2)
          {
            goto LABEL_83;
          }

          v47 = [self creationRequestForAssetFromVideoAtFileURL:v27];
        }

        v63 = v47;
        if (v47)
        {
LABEL_56:
          objc_storeStrong((v63 + 1216), syndicationIdentifier);
          mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          v66 = *(v63 + 1208);
          *(v63 + 1208) = bundleIdentifier;

          importProperties = [assetCopy importProperties];
          importedBy = [importProperties importedBy];
          if ((importedBy - 1) < 0xF)
          {
            v69 = importedBy;
          }

          else
          {
            v69 = 0;
          }

          v92 = syndicationIdentifier;
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
          creationDate = [assetCopy creationDate];
          [v63 setCreationDate:creationDate];

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
                v75 = assetCopy;
                v76 = [PHAssetResource assetResourcesForAsset:assetCopy];
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
                      type = [v81 type];
                      if (type == [v74 type])
                      {
                        v83 = objc_alloc_init(PHAssetResourceCreationOptions);
                        originalFilename = [v81 originalFilename];
                        [(PHAssetResourceCreationOptions *)v83 setOriginalFilename:originalFilename];

                        [v74 setCreationOptions:v83];
                      }
                    }

                    v78 = [v76 countByEnumeratingWithState:&v98 objects:v116 count:16];
                  }

                  while (v78);
                }

                objc_autoreleasePoolPop(context);
                assetCopy = v75;
              }

              v96 = [obj countByEnumeratingWithState:&v102 objects:v117 count:16];
            }

            while (v96);
          }

          syndicationIdentifier = v92;
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
        uuid8 = [assetCopy uuid];
        placeholderForCreatedAsset = [v23 placeholderForCreatedAsset];
        uuid9 = [placeholderForCreatedAsset uuid];
        *buf = 138543874;
        v111 = uuid8;
        v112 = 2114;
        v113 = uuid9;
        v114 = 2114;
        v115 = syndicationIdentifier;
        _os_log_impl(&dword_19C86F000, v85, OS_LOG_TYPE_ERROR, "creationRequestForAssetFromGuestAsset: %{public}@, new asset uuid: %{public}@, syndicationIdentifier: %{public}@", buf, 0x20u);
      }

      goto LABEL_87;
    }
  }

  v119[0] = syndicationIdentifier;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:1];
  v15 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
  librarySpecificFetchOptions = [v15 librarySpecificFetchOptions];
  v17 = [PHAsset fetchAssetsWithSyndicationIdentifiers:v14 options:librarySpecificFetchOptions];

  firstObject = [v17 firstObject];
  sourceType = [firstObject sourceType];

  if (sourceType != 8)
  {

    goto LABEL_14;
  }

  v20 = objc_alloc_init(PHAssetCreationOptions);
  [(PHAssetCreationOptions *)v20 setShouldDownloadOrCloudReReferenceMissingResources:1];
  v21 = v17;
  firstObject2 = [v17 firstObject];
  v23 = [PHAssetCreationRequest creationRequestForAssetCopyFromAsset:firstObject2 options:v20];
  v24 = PLSyndicationGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    uuid10 = [firstObject2 uuid];
    uuid11 = [assetCopy uuid];
    *buf = 138543618;
    v111 = uuid10;
    v112 = 2114;
    v113 = uuid11;
    _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_INFO, "creationRequestForAssetFromGuestAsset: Converting creation request into a native CMM save creationRequestForAssetCopyFromAsset since we found a MomentShare asset %{public}@ with the same syndicationIdentifier as %{public}@", buf, 0x16u);
  }

  v27 = v21;
LABEL_87:

  return v23;
}

+ (id)creationRequestForAssetFromAssetBundle:(id)bundle
{
  bundleCopy = bundle;
  creationRequestForAsset = [self creationRequestForAsset];
  photoURL = [bundleCopy photoURL];

  if (photoURL)
  {
    photoURL2 = [bundleCopy photoURL];
    [creationRequestForAsset addResourceWithType:1 fileURL:photoURL2 options:0];
  }

  videoURL = [bundleCopy videoURL];

  if (videoURL)
  {
    videoURL2 = [bundleCopy videoURL];
    [creationRequestForAsset addResourceWithType:2 fileURL:videoURL2 options:0];
  }

  audioURL = [bundleCopy audioURL];

  if (audioURL)
  {
    audioURL2 = [bundleCopy audioURL];
    [creationRequestForAsset addResourceWithType:3 fileURL:audioURL2 options:0];
  }

  alternatePhotoURL = [bundleCopy alternatePhotoURL];

  if (alternatePhotoURL)
  {
    alternatePhotoURL2 = [bundleCopy alternatePhotoURL];
    [creationRequestForAsset addResourceWithType:4 fileURL:alternatePhotoURL2 options:0];
  }

  fullSizePhotoURL = [bundleCopy fullSizePhotoURL];

  if (fullSizePhotoURL)
  {
    fullSizePhotoURL2 = [bundleCopy fullSizePhotoURL];
    [creationRequestForAsset addResourceWithType:5 fileURL:fullSizePhotoURL2 options:0];
  }

  fullSizeVideoURL = [bundleCopy fullSizeVideoURL];

  if (fullSizeVideoURL)
  {
    fullSizeVideoURL2 = [bundleCopy fullSizeVideoURL];
    [creationRequestForAsset addResourceWithType:6 fileURL:fullSizeVideoURL2 options:0];
  }

  adjustmentDataURL = [bundleCopy adjustmentDataURL];

  if (adjustmentDataURL)
  {
    adjustmentDataURL2 = [bundleCopy adjustmentDataURL];
    [creationRequestForAsset addResourceWithType:7 fileURL:adjustmentDataURL2 options:0];
  }

  originalAdjustmentDataURL = [bundleCopy originalAdjustmentDataURL];

  if (originalAdjustmentDataURL)
  {
    originalAdjustmentDataURL2 = [bundleCopy originalAdjustmentDataURL];
    [creationRequestForAsset addResourceWithType:16 fileURL:originalAdjustmentDataURL2 options:0];
  }

  adjustmentSecondaryDataURL = [bundleCopy adjustmentSecondaryDataURL];

  if (adjustmentSecondaryDataURL)
  {
    adjustmentSecondaryDataURL2 = [bundleCopy adjustmentSecondaryDataURL];
    [creationRequestForAsset addResourceWithType:110 fileURL:adjustmentSecondaryDataURL2 options:0];
  }

  adjustmentBasePhotoURL = [bundleCopy adjustmentBasePhotoURL];

  if (adjustmentBasePhotoURL)
  {
    adjustmentBasePhotoURL2 = [bundleCopy adjustmentBasePhotoURL];
    [creationRequestForAsset addResourceWithType:8 fileURL:adjustmentBasePhotoURL2 options:0];
  }

  adjustmentBaseVideoURL = [bundleCopy adjustmentBaseVideoURL];

  if (adjustmentBaseVideoURL)
  {
    adjustmentBaseVideoURL2 = [bundleCopy adjustmentBaseVideoURL];
    [creationRequestForAsset addResourceWithType:12 fileURL:adjustmentBaseVideoURL2 options:0];
  }

  pairedVideoURL = [bundleCopy pairedVideoURL];

  if (pairedVideoURL)
  {
    pairedVideoURL2 = [bundleCopy pairedVideoURL];
    [creationRequestForAsset addResourceWithType:9 fileURL:pairedVideoURL2 options:0];
  }

  fullSizePairedVideoURL = [bundleCopy fullSizePairedVideoURL];

  if (fullSizePairedVideoURL)
  {
    fullSizePairedVideoURL2 = [bundleCopy fullSizePairedVideoURL];
    [creationRequestForAsset addResourceWithType:10 fileURL:fullSizePairedVideoURL2 options:0];
  }

  adjustmentBasePairedVideoURL = [bundleCopy adjustmentBasePairedVideoURL];

  if (adjustmentBasePairedVideoURL)
  {
    adjustmentBasePairedVideoURL2 = [bundleCopy adjustmentBasePairedVideoURL];
    [creationRequestForAsset addResourceWithType:11 fileURL:adjustmentBasePairedVideoURL2 options:0];
  }

  spatialOvercapturePhotoURL = [bundleCopy spatialOvercapturePhotoURL];

  if (spatialOvercapturePhotoURL)
  {
    spatialOvercapturePhotoURL2 = [bundleCopy spatialOvercapturePhotoURL];
    [creationRequestForAsset addResourceWithType:13 fileURL:spatialOvercapturePhotoURL2 options:0];
  }

  spatialOvercapturePairedVideoURL = [bundleCopy spatialOvercapturePairedVideoURL];

  if (spatialOvercapturePairedVideoURL)
  {
    spatialOvercapturePairedVideoURL2 = [bundleCopy spatialOvercapturePairedVideoURL];
    [creationRequestForAsset addResourceWithType:15 fileURL:spatialOvercapturePairedVideoURL2 options:0];
  }

  spatialOvercaptureVideoURL = [bundleCopy spatialOvercaptureVideoURL];

  if (spatialOvercaptureVideoURL)
  {
    spatialOvercaptureVideoURL2 = [bundleCopy spatialOvercaptureVideoURL];
    [creationRequestForAsset addResourceWithType:14 fileURL:spatialOvercaptureVideoURL2 options:0];
  }

  videoComplementVisibilityState = [bundleCopy videoComplementVisibilityState];
  if (videoComplementVisibilityState)
  {
    [creationRequestForAsset setPhotoIrisVisibilityState:videoComplementVisibilityState];
  }

  keywordTitles = [bundleCopy keywordTitles];
  if ([keywordTitles count])
  {
    [creationRequestForAsset setKeywordTitles:keywordTitles];
  }

  assetDescription = [bundleCopy assetDescription];
  if ([assetDescription length])
  {
    [creationRequestForAsset setAssetDescription:assetDescription];
  }

  accessibilityDescription = [bundleCopy accessibilityDescription];
  if ([accessibilityDescription length])
  {
    [creationRequestForAsset setAccessibilityDescription:accessibilityDescription];
  }

  assetTitle = [bundleCopy assetTitle];
  if (assetTitle)
  {
    [creationRequestForAsset setTitle:assetTitle];
  }

  libraryCreationDate = [bundleCopy libraryCreationDate];
  libraryCreationDateTimeZone = [bundleCopy libraryCreationDateTimeZone];
  if (libraryCreationDate)
  {
    [creationRequestForAsset setCreationDate:libraryCreationDate];
    if (libraryCreationDateTimeZone)
    {
      [creationRequestForAsset setTimeZone:libraryCreationDateTimeZone withDate:libraryCreationDate];
    }
  }

  libraryLocation = [bundleCopy libraryLocation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v48 = libraryLocation;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  [creationRequestForAsset setLocation:v48];
LABEL_52:
  if ([bundleCopy spatialOvercaptureResourcesPurgeable])
  {
    [creationRequestForAsset trashAllSpatialOverCaptureResources];
  }

  return creationRequestForAsset;
}

+ (id)creationRequestForAssetFromVideoComplementBundle:(id)bundle
{
  bundleCopy = bundle;
  creationRequestForAsset = [self creationRequestForAsset];
  v6 = MEMORY[0x1E695DFF8];
  imagePath = [bundleCopy imagePath];
  v8 = [v6 fileURLWithPath:imagePath isDirectory:0];

  v9 = MEMORY[0x1E695DFF8];
  videoPath = [bundleCopy videoPath];
  v11 = [v9 fileURLWithPath:videoPath isDirectory:0];

  [creationRequestForAsset addResourceWithType:1 fileURL:v8 options:0];
  [creationRequestForAsset addResourceWithType:9 fileURL:v11 options:0];
  pairingIdentifier = [bundleCopy pairingIdentifier];
  [creationRequestForAsset setPairingIdentifier:pairingIdentifier];

  if (bundleCopy)
  {
    [bundleCopy imageDisplayTime];
    [creationRequestForAsset setImageDisplayTime:&v14];
    [bundleCopy originalVideoDuration];
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    [creationRequestForAsset setImageDisplayTime:&v14];
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  [creationRequestForAsset setVideoDuration:&v14];

  return creationRequestForAsset;
}

+ (id)creationRequestForAssetWithSyndicationIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0;
  if (!identifierCopy)
  {
LABEL_9:
    v10 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  v5 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
  photoLibrary = [v5 photoLibrary];
  v7 = [PHAssetCreationRequest _uuidForAssetWithSyndicationIdentifier:identifierCopy inLibrary:photoLibrary isTrashed:&v15];

  v8 = PLSyndicationGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (!v7)
  {
    if (v9)
    {
      *buf = 138543362;
      v17 = identifierCopy;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_INFO, "Did not find exising asset with syndication identifier %{public}@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v9)
  {
    *buf = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = identifierCopy;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_INFO, "Found exising asset %{public}@ with syndication identifier %{public}@", buf, 0x16u);
  }

  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
LABEL_10:
  v11 = [self _creationRequestForAssetUsingUUID:v10];
  [v11 setSyndicationIdentifier:identifierCopy];
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
    v17 = identifierCopy;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_INFO, "creationRequestForAssetWithSyndicationIdentifier: %{public}@ existing uuid: %{public}@", buf, 0x16u);
  }

  return v11;
}

+ (id)creationRequestForAssetFromVideoAtFileURL:(id)l
{
  lCopy = l;
  v5 = [self _creationRequestForAssetUsingUUID:0];
  [v5 _addResourceWithType:2 data:0 orFileURL:lCopy options:0];

  return v5;
}

+ (id)creationRequestForAssetFromImageAtFileURL:(id)l
{
  lCopy = l;
  v5 = [self _creationRequestForAssetUsingUUID:0];
  [v5 _addResourceWithType:1 data:0 orFileURL:lCopy options:0];

  return v5;
}

+ (id)creationRequestForAssetFromImage:(id)image
{
  v4 = PHImageDataFromImageAsScreenshot(image, 0);
  v5 = [self _creationRequestForAssetUsingUUID:0];
  [v5 _addResourceWithType:1 data:v4 orFileURL:0 options:0];

  return v5;
}

+ (id)creationRequestForAssetFromScreenshotImage:(id)image
{
  v4 = PHImageDataFromImageAsScreenshot(image, 1);
  v5 = [self _creationRequestForAssetUsingUUID:0];
  [v5 _addResourceWithType:1 data:v4 orFileURL:0 options:0];
  [v5 _setShouldCreateScreenshot:1];

  return v5;
}

+ (id)creationRequestForAssetFromImageJobDictionary:(id)dictionary holdingDirectoryPath:(id)path
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(PHAssetResourceCreationOptions);
  v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C0358]];
  v7 = v6;
  if (v6)
  {
    -[PHAssetResourceCreationOptions setBurstPickType:](v5, "setBurstPickType:", [v6 intValue]);
  }

  v8 = *MEMORY[0x1E69C0390];
  v9 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
  v10 = [PHAssetCreationRequest creationRequestForAssetWithUUID:v9 options:0];

  v11 = [[PHAssetCreationCameraIngestOptions alloc] initFromJobDictionary:dictionaryCopy withPreviewImgSurfaceRef:0];
  [v10 setCameraIngestOptions:v11];

  v12 = objc_alloc(MEMORY[0x1E695DFF8]);
  v13 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C0518]];
  v14 = [v12 initFileURLWithPath:v13 isDirectory:0];

  v15 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C03B0]];

  if (v15)
  {
    v16 = 19;
  }

  else
  {
    v16 = 1;
  }

  [v10 addResourceWithType:v16 fileURL:v14 options:v5];
  v17 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C0350]];

  if (!v17)
  {
    v28 = *MEMORY[0x1E69C0540];
    v29 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C0540]];

    if (v29)
    {
      v30 = [dictionaryCopy objectForKeyedSubscript:v28];
      [v10 addResourceWithType:111 data:v30 options:0];
    }

    goto LABEL_17;
  }

  v39 = v5;
  cameraIngestOptions = [v10 cameraIngestOptions];
  v19 = [v10 _createAdjustmentsFileFromJobDictionary:dictionaryCopy cameraIngestOptions:cameraIngestOptions];

  v20 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C04B8]];
  if (v20)
  {
    cameraIngestOptions2 = [v10 cameraIngestOptions];
    [cameraIngestOptions2 setBackupAdjustmentsFile:v20];
  }

  v37 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C0540]];
  v22 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C04C0]];
  v23 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C04D8]];
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
    v33 = [dictionaryCopy objectForKeyedSubscript:v8];
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

+ (id)creationRequestForAssetFromVideoJobDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = objc_alloc(MEMORY[0x1E695DFF8]);
  v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C05A0]];
  v6 = [v4 initFileURLWithPath:v5 isDirectory:0];

  v7 = *MEMORY[0x1E69C0390];
  v8 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
  v9 = [PHAssetCreationRequest creationRequestForAssetWithUUID:v8];

  [v9 addResourceWithType:2 fileURL:v6 options:0];
  v10 = [[PHAssetCreationCameraIngestOptions alloc] initFromJobDictionary:dictionaryCopy withPreviewImgSurfaceRef:0];
  [v9 setCameraIngestOptions:v10];

  v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C0350]];

  if (v11)
  {
    v12 = [v9 _createAdjustmentsFileFromJobDictionary:dictionaryCopy cameraIngestOptions:0];
    if (!v12)
    {
      v16 = 0;
      goto LABEL_13;
    }

    v13 = v12;
    [v9 addResourceWithType:7 fileURL:v12 options:0];
    v14 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69C04D8]];
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
        v18 = [dictionaryCopy objectForKeyedSubscript:v7];
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

+ (id)creationRequestForAssetFromVideoPreviewJobDict:(id)dict withPreviewImageSurface:(__IOSurface *)surface
{
  v5 = *MEMORY[0x1E69C0390];
  dictCopy = dict;
  v7 = [dictCopy objectForKeyedSubscript:v5];
  v8 = [PHAssetCreationRequest creationRequestForAssetWithUUID:v7];

  v9 = [[PHAssetCreationCameraIngestOptions alloc] initFromJobDictionary:dictCopy withPreviewImgSurfaceRef:surface];
  [v8 setCameraIngestOptions:v9];

  return v8;
}

+ (id)creationRequestForAssetFromImageData:(id)data usingUUID:(id)d
{
  dataCopy = data;
  v7 = [self _creationRequestForAssetUsingUUID:d];
  [v7 _addResourceWithType:1 data:dataCopy orFileURL:0 options:0];

  return v7;
}

+ (id)creationRequestForAssetFromImageData:(id)data options:(id)options
{
  dataCopy = data;
  v7 = [self creationRequestForAssetWithOptions:options];
  [v7 _addResourceWithType:1 data:dataCopy orFileURL:0 options:0];

  return v7;
}

+ (id)creationRequestForAssetWithUUID:(id)d options:(id)options
{
  dCopy = d;
  optionsCopy = options;
  if (dCopy)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:dCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [self _creationRequestForAssetUsingUUID:v8];
  if ([optionsCopy copyStillPhotoFromLivePhoto])
  {
    [v9 _setDuplicateLivePhotoAsStill:1];
  }

  if ([optionsCopy copyOriginal])
  {
    [v9 _setDuplicateAsOriginal:1];
  }

  if ([optionsCopy copySinglePhotoFromBurst])
  {
    [v9 _setDuplicateSinglePhotoFromBurst:1];
  }

  if ([optionsCopy copyAsAlternateAsset])
  {
    [v9 _setDuplicateAsAlternateAsset:1];
  }

  if ([optionsCopy useRecoverableStagingDirectory])
  {
    [v9 _setUseRecoverableStagingDirectory:1];
    [v9 _setCreatingAssetIsBusy:1];
  }

  if ([optionsCopy creationCrashType])
  {
    [v9 setCreationCrashType:{objc_msgSend(optionsCopy, "creationCrashType")}];
  }

  if ([optionsCopy shouldCreateScreenshot])
  {
    [v9 _setShouldCreateScreenshot:1];
  }

  if ([optionsCopy shouldUseAutomaticallyGeneratedOriginalFilename])
  {
    [v9 _setShouldUseAutomaticallyGeneratedOriginalFilename:1];
  }

  return v9;
}

+ (id)_creationRequestForAssetUsingUUID:(id)d
{
  dCopy = d;
  v4 = [[PHAssetCreationRequest alloc] initForNewObjectWithUUID:dCopy];

  return v4;
}

@end