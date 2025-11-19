@interface MPStoreDownloadManager
+ (id)sharedManager;
- (BOOL)_isActiveDownload:(id)a3;
- (BOOL)_onQueue_hasExistingDownloadForStoreDownload:(id)a3;
- (BOOL)_shouldHideDownload:(id)a3;
- (BOOL)hasFetchedInitialDownloads;
- (MPStoreDownloadManager)init;
- (NSArray)activeDownloads;
- (NSArray)downloads;
- (NSArray)userDownloads;
- (id)_existingDownloadForSSDownload:(id)a3;
- (id)_init;
- (id)_observersForAllDownloads;
- (id)_observersForDownload:(id)a3;
- (id)_onQueue_findStoreDownloadWithSSDownload:(id)a3 SSPurchase:(id)a4;
- (id)activeDownloadForMediaItemPersistentID:(unint64_t)a3;
- (id)activeDownloadForStoreID:(int64_t)a3;
- (id)addDownloads:(id)a3;
- (id)downloadForDownloadPersistentIdentifier:(int64_t)a3;
- (id)downloadForMediaItem:(id)a3;
- (id)downloadForMediaItemPersistentID:(unint64_t)a3;
- (id)downloadForStoreID:(int64_t)a3;
- (void)_addNonCancelledDownloadsToActiveList:(id)a3;
- (void)_addPurchaseFinishedHandler:(id)a3 forDownloads:(id)a4;
- (void)_onQueue_addDownloadToMapTables:(id)a3;
- (void)_onQueue_removeDownloadFromMapTables:(id)a3;
- (void)_registerBlockObserver:(id)a3;
- (void)_sendActiveDownloadsDidChangeToObserversWithAddedDownloads:(id)a3 removedDownloads:(id)a4;
- (void)_sendDownloadsDidChangeToObserversWithAddedDownloads:(id)a3 removedDownloads:(id)a4;
- (void)_sendDownloadsDidFinishPurchasesToObserversForDownloads:(id)a3;
- (void)_sendDownloadsDidFinishToObserversForDownloads:(id)a3 notifyDownloadManager:(BOOL)a4 completionHandler:(id)a5;
- (void)_sendDownloadsDidProgressToObserversForDownloads:(id)a3;
- (void)_unregisterBlockObserver:(id)a3;
- (void)_updateActiveDownloadsWithCancelledDownloads:(id)a3;
- (void)_updateActiveDownloadsWithChangedActiveDownloads:(id)a3 inactiveDownloads:(id)a4;
- (void)_updateDownloadsWithAdditions:(id)a3 removals:(id)a4;
- (void)_updateMediaItemPropertiesForFinishedStoreDownload:(id)a3 SSDownload:(id)a4;
- (void)addFinishHandler:(id)a3 forDownloads:(id)a4;
- (void)addObserver:(id)a3 forDownloads:(id)a4;
- (void)cancelDownloads:(id)a3;
- (void)dealloc;
- (void)downloadManager:(id)a3 downloadStatesDidChange:(id)a4;
- (void)downloadManagerNetworkUsageDidChange:(id)a3;
- (void)pauseDownloads:(id)a3;
- (void)prioritizeDownloads:(id)a3;
- (void)purchaseManager:(id)a3 didFinishPurchasesWithResponses:(id)a4;
- (void)removeObserver:(id)a3 forDownloads:(id)a4;
- (void)requestPermissionToDownloadWithType:(int64_t)a3 completionHandler:(id)a4;
- (void)restartDownloads:(id)a3;
- (void)resumeDownloads:(id)a3;
@end

@implementation MPStoreDownloadManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MPStoreDownloadManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken_297 != -1)
  {
    dispatch_once(&sharedManager_onceToken_297, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

void __39__MPStoreDownloadManager_sharedManager__block_invoke()
{
  v0 = [objc_alloc(objc_opt_class()) _init];
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;
}

- (id)_init
{
  v170 = *MEMORY[0x1E69E9840];
  v150.receiver = self;
  v150.super_class = MPStoreDownloadManager;
  v2 = [(MPStoreDownloadManager *)&v150 init];
  if (!v2)
  {
    return v2;
  }

  v3 = dispatch_queue_create("com.apple.MediaPlayer.MPStoreDownloadManager.accessQueue", MEMORY[0x1E69E96A8]);
  accessQueue = v2->_accessQueue;
  v2->_accessQueue = v3;

  v5 = dispatch_queue_create("com.apple.MediaPlayer.MPStoreDownloadManager.calloutQueue", 0);
  calloutSerialQueue = v2->_calloutSerialQueue;
  v2->_calloutSerialQueue = v5;

  v145 = objc_alloc_init(MEMORY[0x1E696AE10]);
  [v145 setAcquireFunction:_MPStoreDownloadManagerInt64KeyPointerFunctionAcquire];
  [v145 setRelinquishFunction:_MPStoreDownloadManagerInt64KeyPointerFunctionRelinquish];
  [v145 setHashFunction:_MPStoreDownloadManagerInt64KeyPointerFunctionHash];
  [v145 setIsEqualFunction:_MPStoreDownloadManagerInt64KeyPointerFunctionIsEqual];
  [v145 setSizeFunction:_MPStoreDownloadManagerInt64KeyPointerFunctionSize];
  [v145 setDescriptionFunction:_MPStoreDownloadManagerInt64KeyPointerFunctionDescription];
  v143 = [objc_alloc(MEMORY[0x1E696AE10]) initWithOptions:5];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  downloads = v2->_downloads;
  v2->_downloads = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  userDownloads = v2->_userDownloads;
  v2->_userDownloads = v9;

  v11 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v145 valuePointerFunctions:v143 capacity:0];
  storeIdentifiersToDownloads = v2->_storeIdentifiersToDownloads;
  v2->_storeIdentifiersToDownloads = v11;

  v13 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v145 valuePointerFunctions:v143 capacity:0];
  libraryIdentifiersToDownloads = v2->_libraryIdentifiersToDownloads;
  v2->_libraryIdentifiersToDownloads = v13;

  v15 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v145 valuePointerFunctions:v143 capacity:0];
  downloadIdentifiersToDownloads = v2->_downloadIdentifiersToDownloads;
  v2->_downloadIdentifiersToDownloads = v15;

  v156 = 0;
  v157 = &v156;
  v158 = 0x2050000000;
  v17 = getSSDownloadManagerOptionsClass_softClass;
  v159 = getSSDownloadManagerOptionsClass_softClass;
  if (!getSSDownloadManagerOptionsClass_softClass)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadManagerOptionsClass_block_invoke;
    v154 = &unk_1E7680410;
    v155 = &v156;
    __getSSDownloadManagerOptionsClass_block_invoke(&v151);
    v17 = v157[3];
  }

  v18 = v17;
  _Block_object_dispose(&v156, 8);
  v144 = objc_alloc_init(v17);
  v19 = [MEMORY[0x1E696AAE8] mainBundle];
  v142 = [v19 bundleIdentifier];

  if ([v142 isEqualToString:@"com.apple.Music"])
  {
    v156 = 0;
    v157 = &v156;
    v158 = 0x2020000000;
    v20 = getSSDownloadKindMusicSymbolLoc_ptr_266;
    v159 = getSSDownloadKindMusicSymbolLoc_ptr_266;
    if (!getSSDownloadKindMusicSymbolLoc_ptr_266)
    {
      v151 = MEMORY[0x1E69E9820];
      v152 = 3221225472;
      v153 = __getSSDownloadKindMusicSymbolLoc_block_invoke_267;
      v154 = &unk_1E7680410;
      v155 = &v156;
      v21 = StoreServicesLibrary_184();
      v22 = dlsym(v21, "SSDownloadKindMusic");
      *(v155[1] + 24) = v22;
      getSSDownloadKindMusicSymbolLoc_ptr_266 = *(v155[1] + 24);
      v20 = v157[3];
    }

    _Block_object_dispose(&v156, 8);
    if (v20)
    {
      v23 = *v20;
      v166 = v23;
      v156 = 0;
      v157 = &v156;
      v158 = 0x2020000000;
      v24 = getSSDownloadKindMusicVideoSymbolLoc_ptr;
      v159 = getSSDownloadKindMusicVideoSymbolLoc_ptr;
      if (!getSSDownloadKindMusicVideoSymbolLoc_ptr)
      {
        v151 = MEMORY[0x1E69E9820];
        v152 = 3221225472;
        v153 = __getSSDownloadKindMusicVideoSymbolLoc_block_invoke;
        v154 = &unk_1E7680410;
        v155 = &v156;
        v25 = StoreServicesLibrary_184();
        v26 = dlsym(v25, "SSDownloadKindMusicVideo");
        *(v155[1] + 24) = v26;
        getSSDownloadKindMusicVideoSymbolLoc_ptr = *(v155[1] + 24);
        v24 = v157[3];
      }

      _Block_object_dispose(&v156, 8);
      if (v24)
      {
        v167 = *v24;
        v27 = v167;
        v28 = getSSDownloadKindTelevisionEpisode();
        v168 = v28;
        v29 = getSSDownloadKindMovie();
        v169 = v29;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v166 count:4];
        [v144 setDownloadKinds:v30];

        v31 = getSSDownloadKindMovie();
        v164[0] = v31;
        v165[0] = v142;
        v32 = getSSDownloadKindTelevisionEpisode();
        v164[1] = v32;
        v165[1] = v142;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v165 forKeys:v164 count:2];
        downloadKindToRequiredClientBundleIdentifiers = v2->_downloadKindToRequiredClientBundleIdentifiers;
        v2->_downloadKindToRequiredClientBundleIdentifiers = v33;

        goto LABEL_13;
      }

      v135 = [MEMORY[0x1E696AAA8] currentHandler];
      v136 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadKindMusicVideo(void)"];
      [v135 handleFailureInFunction:v136 file:@"MPStoreDownloadManager.m" lineNumber:46 description:{@"%s", dlerror()}];
    }

    else
    {
      v133 = [MEMORY[0x1E696AAA8] currentHandler];
      v134 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadKindMusic(void)"];
      [v133 handleFailureInFunction:v134 file:@"MPStoreDownloadManager.m" lineNumber:45 description:{@"%s", dlerror()}];
    }

LABEL_71:
    __break(1u);
  }

  v31 = [getSSDownloadManagerClass() IPodDownloadKinds];
  [v144 setDownloadKinds:v31];
LABEL_13:

  [v144 setPersistenceIdentifier:@"com.apple.MediaPlayer.MPStoreDownloadManager"];
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v35 = getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr;
  v159 = getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr;
  if (!getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_block_invoke;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v36 = StoreServicesLibrary_184();
    v37 = dlsym(v36, "SSDownloadExternalPropertyBytesDownloaded");
    *(v155[1] + 24) = v37;
    getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr = *(v155[1] + 24);
    v35 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v35)
  {
    v107 = [MEMORY[0x1E696AAA8] currentHandler];
    v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadExternalPropertyBytesDownloaded(void)"];
    [v107 handleFailureInFunction:v108 file:@"MPStoreDownloadManager.m" lineNumber:62 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v38 = *v35;
  v162[0] = v38;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v39 = getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr;
  v159 = getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr;
  if (!getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadExternalPropertyPercentCompleteSymbolLoc_block_invoke;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v40 = StoreServicesLibrary_184();
    v41 = dlsym(v40, "SSDownloadExternalPropertyPercentComplete");
    *(v155[1] + 24) = v41;
    getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr = *(v155[1] + 24);
    v39 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v39)
  {
    v109 = [MEMORY[0x1E696AAA8] currentHandler];
    v110 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadExternalPropertyPercentComplete(void)"];
    [v109 handleFailureInFunction:v110 file:@"MPStoreDownloadManager.m" lineNumber:63 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v42 = *v39;
  v162[1] = v42;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v43 = getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr;
  v159 = getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr;
  if (!getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_block_invoke;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v44 = StoreServicesLibrary_184();
    v45 = dlsym(v44, "SSDownloadExternalPropertyPolicySizeLimit");
    *(v155[1] + 24) = v45;
    getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr = *(v155[1] + 24);
    v43 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v43)
  {
    v111 = [MEMORY[0x1E696AAA8] currentHandler];
    v112 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadExternalPropertyPolicySizeLimit(void)"];
    [v111 handleFailureInFunction:v112 file:@"MPStoreDownloadManager.m" lineNumber:64 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v46 = *v43;
  v162[2] = v46;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v47 = getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr_271;
  v159 = getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr_271;
  if (!getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr_271)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadExternalPropertyRentalInformationSymbolLoc_block_invoke_272;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v48 = StoreServicesLibrary_184();
    v49 = dlsym(v48, "SSDownloadExternalPropertyRentalInformation");
    *(v155[1] + 24) = v49;
    getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr_271 = *(v155[1] + 24);
    v47 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v47)
  {
    v113 = [MEMORY[0x1E696AAA8] currentHandler];
    v114 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadExternalPropertyRentalInformation(void)"];
    [v113 handleFailureInFunction:v114 file:@"MPStoreDownloadManager.m" lineNumber:65 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v163 = *v47;
  v50 = MEMORY[0x1E695DEC8];
  v51 = v163;
  v52 = [v50 arrayWithObjects:v162 count:4];

  [v144 setPrefetchedDownloadExternalProperties:v52];
  v53 = getSSDownloadPropertyClientBundleIdentifier();
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v54 = getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr;
  v159 = getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr;
  v160[0] = v53;
  if (!getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadPropertyDownloadPhaseSymbolLoc_block_invoke;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v55 = StoreServicesLibrary_184();
    v56 = dlsym(v55, "SSDownloadPropertyDownloadPhase");
    *(v155[1] + 24) = v56;
    getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr = *(v155[1] + 24);
    v54 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v54)
  {
    v115 = [MEMORY[0x1E696AAA8] currentHandler];
    v116 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyDownloadPhase(void)"];
    [v115 handleFailureInFunction:v116 file:@"MPStoreDownloadManager.m" lineNumber:50 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v139 = *v54;
  v160[1] = v139;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v57 = getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr;
  v159 = getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr;
  if (!getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadPropertyEncodedErrorDataSymbolLoc_block_invoke;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v58 = StoreServicesLibrary_184();
    v59 = dlsym(v58, "SSDownloadPropertyEncodedErrorData");
    *(v155[1] + 24) = v59;
    getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr = *(v155[1] + 24);
    v57 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v57)
  {
    v117 = [MEMORY[0x1E696AAA8] currentHandler];
    v118 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyEncodedErrorData(void)"];
    [v117 handleFailureInFunction:v118 file:@"MPStoreDownloadManager.m" lineNumber:51 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v138 = *v57;
  v160[2] = v138;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v60 = getSSDownloadPropertyIsRestoreSymbolLoc_ptr_274;
  v159 = getSSDownloadPropertyIsRestoreSymbolLoc_ptr_274;
  if (!getSSDownloadPropertyIsRestoreSymbolLoc_ptr_274)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadPropertyIsRestoreSymbolLoc_block_invoke_275;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v61 = StoreServicesLibrary_184();
    v62 = dlsym(v61, "SSDownloadPropertyIsRestore");
    *(v155[1] + 24) = v62;
    getSSDownloadPropertyIsRestoreSymbolLoc_ptr_274 = *(v155[1] + 24);
    v60 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v60)
  {
    v119 = [MEMORY[0x1E696AAA8] currentHandler];
    v120 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyIsRestore(void)"];
    [v119 handleFailureInFunction:v120 file:@"MPStoreDownloadManager.m" lineNumber:52 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v137 = *v60;
  v160[3] = v137;
  v141 = getSSDownloadPropertyKind();
  v160[4] = v141;
  v140 = getSSDownloadPropertyLibraryItemIdentifier_186();
  v160[5] = v140;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v63 = getSSDownloadPropertyPreferredAssetFlavorSymbolLoc_ptr;
  v159 = getSSDownloadPropertyPreferredAssetFlavorSymbolLoc_ptr;
  if (!getSSDownloadPropertyPreferredAssetFlavorSymbolLoc_ptr)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadPropertyPreferredAssetFlavorSymbolLoc_block_invoke;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v64 = StoreServicesLibrary_184();
    v65 = dlsym(v64, "SSDownloadPropertyPreferredAssetFlavor");
    *(v155[1] + 24) = v65;
    getSSDownloadPropertyPreferredAssetFlavorSymbolLoc_ptr = *(v155[1] + 24);
    v63 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v63)
  {
    v121 = [MEMORY[0x1E696AAA8] currentHandler];
    v122 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyPreferredAssetFlavor(void)"];
    [v121 handleFailureInFunction:v122 file:@"MPStoreDownloadManager.m" lineNumber:55 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v66 = *v63;
  v160[6] = v66;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v67 = getSSDownloadPropertyReasonSymbolLoc_ptr_277;
  v159 = getSSDownloadPropertyReasonSymbolLoc_ptr_277;
  if (!getSSDownloadPropertyReasonSymbolLoc_ptr_277)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadPropertyReasonSymbolLoc_block_invoke_278;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v68 = StoreServicesLibrary_184();
    v69 = dlsym(v68, "SSDownloadPropertyReason");
    *(v155[1] + 24) = v69;
    getSSDownloadPropertyReasonSymbolLoc_ptr_277 = *(v155[1] + 24);
    v67 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v67)
  {
    v123 = [MEMORY[0x1E696AAA8] currentHandler];
    v124 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyReason(void)"];
    [v123 handleFailureInFunction:v124 file:@"MPStoreDownloadManager.m" lineNumber:56 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v70 = *v67;
  v160[7] = v70;
  v71 = getSSDownloadPropertyStoreItemIdentifier_215();
  v160[8] = v71;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v72 = getSSDownloadPropertyThumbnailImageURLSymbolLoc_ptr;
  v159 = getSSDownloadPropertyThumbnailImageURLSymbolLoc_ptr;
  if (!getSSDownloadPropertyThumbnailImageURLSymbolLoc_ptr)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadPropertyThumbnailImageURLSymbolLoc_block_invoke;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v73 = StoreServicesLibrary_184();
    v74 = dlsym(v73, "SSDownloadPropertyThumbnailImageURL");
    *(v155[1] + 24) = v74;
    getSSDownloadPropertyThumbnailImageURLSymbolLoc_ptr = *(v155[1] + 24);
    v72 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v72)
  {
    v125 = [MEMORY[0x1E696AAA8] currentHandler];
    v126 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyThumbnailImageURL(void)"];
    [v125 handleFailureInFunction:v126 file:@"MPStoreDownloadManager.m" lineNumber:58 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v75 = *v72;
  v160[9] = v75;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v76 = getSSDownloadPropertyTitleSymbolLoc_ptr_280;
  v159 = getSSDownloadPropertyTitleSymbolLoc_ptr_280;
  if (!getSSDownloadPropertyTitleSymbolLoc_ptr_280)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadPropertyTitleSymbolLoc_block_invoke_281;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v77 = StoreServicesLibrary_184();
    v78 = dlsym(v77, "SSDownloadPropertyTitle");
    *(v155[1] + 24) = v78;
    getSSDownloadPropertyTitleSymbolLoc_ptr_280 = *(v155[1] + 24);
    v76 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v76)
  {
    v127 = [MEMORY[0x1E696AAA8] currentHandler];
    v128 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyTitle(void)"];
    [v127 handleFailureInFunction:v128 file:@"MPStoreDownloadManager.m" lineNumber:59 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v79 = *v76;
  v160[10] = v79;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v80 = getSSDownloadPropertyHandlerIDSymbolLoc_ptr_283;
  v159 = getSSDownloadPropertyHandlerIDSymbolLoc_ptr_283;
  if (!getSSDownloadPropertyHandlerIDSymbolLoc_ptr_283)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadPropertyHandlerIDSymbolLoc_block_invoke_284;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v81 = StoreServicesLibrary_184();
    v82 = dlsym(v81, "SSDownloadPropertyHandlerID");
    *(v155[1] + 24) = v82;
    getSSDownloadPropertyHandlerIDSymbolLoc_ptr_283 = *(v155[1] + 24);
    v80 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v80)
  {
    v129 = [MEMORY[0x1E696AAA8] currentHandler];
    v130 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyHandlerID(void)"];
    [v129 handleFailureInFunction:v130 file:@"MPStoreDownloadManager.m" lineNumber:60 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v83 = *v80;
  v160[11] = v83;
  v156 = 0;
  v157 = &v156;
  v158 = 0x2020000000;
  v84 = getSSDownloadPropertyCollectionNameSymbolLoc_ptr;
  v159 = getSSDownloadPropertyCollectionNameSymbolLoc_ptr;
  if (!getSSDownloadPropertyCollectionNameSymbolLoc_ptr)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSDownloadPropertyCollectionNameSymbolLoc_block_invoke;
    v154 = &unk_1E7680410;
    v155 = &v156;
    v85 = StoreServicesLibrary_184();
    v86 = dlsym(v85, "SSDownloadPropertyCollectionName");
    *(v155[1] + 24) = v86;
    getSSDownloadPropertyCollectionNameSymbolLoc_ptr = *(v155[1] + 24);
    v84 = v157[3];
  }

  _Block_object_dispose(&v156, 8);
  if (!v84)
  {
    v131 = [MEMORY[0x1E696AAA8] currentHandler];
    v132 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyCollectionName(void)"];
    [v131 handleFailureInFunction:v132 file:@"MPStoreDownloadManager.m" lineNumber:61 description:{@"%s", dlerror()}];

    goto LABEL_71;
  }

  v161 = *v84;
  v87 = MEMORY[0x1E695DEC8];
  v88 = v161;
  v89 = [v87 arrayWithObjects:v160 count:13];

  [v144 setPrefetchedDownloadProperties:v89];
  [v144 setShouldFilterExternalOriginatedDownloads:0];
  v90 = [objc_alloc(getSSDownloadManagerClass()) initWithManagerOptions:v144];
  downloadManager = v2->_downloadManager;
  v2->_downloadManager = v90;

  [(SSDownloadManager *)v2->_downloadManager addObserver:v2];
  v92 = v2->_downloadManager;
  v148[0] = MEMORY[0x1E69E9820];
  v148[1] = 3221225472;
  v148[2] = __31__MPStoreDownloadManager__init__block_invoke;
  v148[3] = &unk_1E7676BF0;
  v93 = v2;
  v149 = v93;
  [(SSDownloadManager *)v92 getDownloadsUsingBlock:v148];
  v156 = 0;
  v157 = &v156;
  v158 = 0x2050000000;
  v94 = getSSPurchaseManagerClass_softClass;
  v159 = getSSPurchaseManagerClass_softClass;
  if (!getSSPurchaseManagerClass_softClass)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3221225472;
    v153 = __getSSPurchaseManagerClass_block_invoke;
    v154 = &unk_1E7680410;
    v155 = &v156;
    __getSSPurchaseManagerClass_block_invoke(&v151);
    v94 = v157[3];
  }

  v95 = v94;
  _Block_object_dispose(&v156, 8);
  v96 = [v94 alloc];
  v97 = MEMORY[0x1E696AEC0];
  v98 = [MEMORY[0x1E696AAE8] mainBundle];
  v99 = [v98 bundleIdentifier];
  v100 = objc_opt_class();
  v101 = NSStringFromClass(v100);
  v102 = [v97 stringWithFormat:@"%@.%@", v99, v101];
  v103 = [v96 initWithManagerIdentifier:v102];
  v104 = v93[15];
  v93[15] = v103;

  [v93[15] setDelegate:v93];
  v105 = v93[15];
  v146[0] = MEMORY[0x1E69E9820];
  v146[1] = 3221225472;
  v146[2] = __31__MPStoreDownloadManager__init__block_invoke_4;
  v146[3] = &unk_1E767B740;
  v147 = v93;
  [v105 getPurchasesUsingBlock:v146];

  return v2;
}

void __31__MPStoreDownloadManager__init__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if (([*(a1 + 32) _shouldHideDownload:{v10, v18}] & 1) == 0)
        {
          v11 = [v10 downloadPhaseIdentifier];
          soft_SSDownloadPhaseIsFinishedPhase(v11);
          if ((v12 & 1) != 0 || (getSSDownloadPhaseFailed(), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v11 isEqual:v13], v13, v14))
          {
            [v4 addObject:v10];
            [*(a1 + 32) _updateMediaItemPropertiesForFinishedStoreDownload:0 SSDownload:v10];
          }

          else
          {
            [v18 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = v18;
  if ([v18 count])
  {
    [*(a1 + 32) _updateDownloadsWithAdditions:v18 removals:0];
  }

  if ([v4 count])
  {
    [*(*(a1 + 32) + 112) finishDownloads:v4];
  }

  v16 = *(a1 + 32);
  v17 = v16[1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__MPStoreDownloadManager__init__block_invoke_2;
  block[3] = &unk_1E7682518;
  v20 = v16;
  dispatch_barrier_async(v17, block);
}

- (BOOL)hasFetchedInitialDownloads
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__MPStoreDownloadManager_hasFetchedInitialDownloads__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __31__MPStoreDownloadManager__init__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 104) = 1;
  v1 = *(a1 + 32);
  v2 = v1[3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__MPStoreDownloadManager__init__block_invoke_3;
  block[3] = &unk_1E7682518;
  v4 = v1;
  dispatch_async(v2, block);
}

void __31__MPStoreDownloadManager__init__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPStoreDownloadManagerDidFetchInitialDownloadsNotification" object:*(a1 + 32)];
}

void __31__MPStoreDownloadManager__init__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v8 = v5;
    v7 = [v5 count];
    v6 = v8;
    if (v7)
    {
      [*(a1 + 32) _updateDownloadsWithAdditions:v8 removals:0];
      v6 = v8;
    }
  }
}

- (BOOL)_isActiveDownload:(id)a3
{
  v3 = [a3 phaseIdentifier];
  v4 = v3;
  v5 = v3 && (([v3 isEqualToString:@"MPStoreDownloadPhaseDownloading"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"MPStoreDownloadPhaseProcessing") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"MPStoreDownloadPhaseInstalling"));

  return v5;
}

- (void)_updateActiveDownloadsWithCancelledDownloads:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__MPStoreDownloadManager__updateActiveDownloadsWithCancelledDownloads___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(accessQueue, v7);
}

void __71__MPStoreDownloadManager__updateActiveDownloadsWithCancelledDownloads___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) mutableCopy];
  if ([*(a1 + 40) count])
  {
    [v2 removeObjectsInArray:*(a1 + 40)];
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

- (void)_addNonCancelledDownloadsToActiveList:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__MPStoreDownloadManager__addNonCancelledDownloadsToActiveList___block_invoke;
  v7[3] = &unk_1E76823C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

void __64__MPStoreDownloadManager__addNonCancelledDownloadsToActiveList___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) mutableCopy];
  v28 = [MEMORY[0x1E695DF70] array];
  v3 = [*(*(a1 + 40) + 16) mutableCopy];
  v4 = [MEMORY[0x1E695DFA8] set];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(&v37 + 1) + 8 * i), "downloadIdentifier")}];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = *(a1 + 32);
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v33 + 1) + 8 * j);
        if (([*(a1 + 40) _isActiveDownload:v16] & 1) == 0)
        {
          [v28 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v13);
  }

  v27 = a1;

  [v2 removeObjectsInArray:v28];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v2;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v29 + 1) + 8 * k);
        v23 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v22, "downloadIdentifier", v27)}];
        v24 = [v4 containsObject:v23];

        if ((v24 & 1) == 0)
        {
          [v5 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v19);
  }

  v25 = *(v27 + 40);
  v26 = *(v25 + 16);
  *(v25 + 16) = v5;
}

- (void)_updateMediaItemPropertiesForFinishedStoreDownload:(id)a3 SSDownload:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (![v5 isFinished])
    {
      goto LABEL_15;
    }

    v8 = [v5 failureError];

    if (v8)
    {
      goto LABEL_15;
    }

    v9 = [v5 libraryItemIdentifier];
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!v6)
  {
LABEL_15:

    return;
  }

  v10 = [v6 downloadPhaseIdentifier];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v11 = getSSDownloadPhaseFinishedSymbolLoc_ptr_182;
  v22 = getSSDownloadPhaseFinishedSymbolLoc_ptr_182;
  if (!getSSDownloadPhaseFinishedSymbolLoc_ptr_182)
  {
    v12 = StoreServicesLibrary_184();
    v20[3] = dlsym(v12, "SSDownloadPhaseFinished");
    getSSDownloadPhaseFinishedSymbolLoc_ptr_182 = v20[3];
    v11 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (v11)
  {
    if ([v10 isEqualToString:*v11] && (objc_msgSend(v7, "failureError"), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
    {
      v15 = getSSDownloadPropertyLibraryItemIdentifier_186();
      v16 = [v7 valueForProperty:v15];
      v9 = [v16 longLongValue];
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_14:
    v14 = [[MPMediaItem alloc] initWithPersistentID:v9];
    [(MPMediaEntity *)v14 invalidateCachedProperties];

    goto LABEL_15;
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPhaseFinished(void)"];
  [v17 handleFailureInFunction:v18 file:@"MPStoreDownloadManager.m" lineNumber:67 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_updateDownloadsWithAdditions:(id)a3 removals:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__MPStoreDownloadManager__updateDownloadsWithAdditions_removals___block_invoke;
    block[3] = &unk_1E76800A0;
    v10 = v6;
    v11 = v7;
    v12 = self;
    dispatch_barrier_async(accessQueue, block);
  }
}

void __65__MPStoreDownloadManager__updateDownloadsWithAdditions_removals___block_invoke(id *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1[4], "count")}];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1[5], "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v4)
  {
    v5 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v30 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          getSSPurchaseClass();
          if (objc_opt_isKindOfClass())
          {
            v8 = [[MPStoreDownload alloc] initWithType:0 attributes:0];
            [(MPStoreDownload *)v8 _setSSPurchase:v7 SSPurchaseResponse:0];
          }

          else
          {
            v35 = 0;
            v36 = &v35;
            v37 = 0x2050000000;
            v9 = getSSDownloadClass_softClass_196;
            v38 = getSSDownloadClass_softClass_196;
            if (!getSSDownloadClass_softClass_196)
            {
              v34[0] = MEMORY[0x1E69E9820];
              v34[1] = 3221225472;
              v34[2] = __getSSDownloadClass_block_invoke_197;
              v34[3] = &unk_1E7680410;
              v34[4] = &v35;
              __getSSDownloadClass_block_invoke_197(v34);
              v9 = v36[3];
            }

            v10 = v9;
            _Block_object_dispose(&v35, 8);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v8 = 0;
              goto LABEL_21;
            }

            v8 = [[MPStoreDownload alloc] initWithType:0 attributes:0];
            [(MPStoreDownload *)v8 _setSSDownload:v7];
          }
        }

        if (v8 && ([a1[6] _onQueue_hasExistingDownloadForStoreDownload:v8] & 1) == 0)
        {
          [*(a1[6] + 6) addObject:v8];
          if ([(MPStoreDownload *)v8 reason]!= 1 && [(MPStoreDownload *)v8 reason]!= 2)
          {
            [*(a1[6] + 7) addObject:v8];
          }

          [v22 addObject:v8];
          [a1[6] _onQueue_addDownloadToMapTables:v8];
        }

LABEL_21:

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v4);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = a1[5];
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v12)
  {
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          getSSPurchaseClass();
          if (objc_opt_isKindOfClass())
          {
            v17 = v15;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;
          getSSPurchaseClass();
          if (objc_opt_isKindOfClass())
          {
            v19 = v15;
          }

          else
          {
            v19 = 0;
          }

          v16 = [a1[6] _onQueue_findStoreDownloadWithSSDownload:v19 SSPurchase:v18];
        }

        if (v16)
        {
          [*(a1[6] + 6) removeObject:v16];
          if ([v16 reason] != 1 && objc_msgSend(v16, "reason") != 2)
          {
            [*(a1[6] + 7) removeObject:v16];
          }

          [v2 addObject:v16];
          [a1[6] _onQueue_removeDownloadFromMapTables:v16];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v39 count:16];
    }

    while (v12);
  }

  if ([v22 count] || objc_msgSend(v2, "count"))
  {
    v20 = a1[6];
    v21 = *(v20 + 3);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__MPStoreDownloadManager__updateDownloadsWithAdditions_removals___block_invoke_2;
    block[3] = &unk_1E76800A0;
    block[4] = v20;
    v24 = v22;
    v25 = v2;
    dispatch_async(v21, block);
  }
}

uint64_t __65__MPStoreDownloadManager__updateDownloadsWithAdditions_removals___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if ([a1[5] count])
  {
    v3 = a1[5];
  }

  else
  {
    v3 = 0;
  }

  if ([a1[6] count])
  {
    v4 = a1[6];
  }

  else
  {
    v4 = 0;
  }

  return [v2 _sendDownloadsDidChangeToObserversWithAddedDownloads:v3 removedDownloads:v4];
}

- (void)_updateActiveDownloadsWithChangedActiveDownloads:(id)a3 inactiveDownloads:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__MPStoreDownloadManager__updateActiveDownloadsWithChangedActiveDownloads_inactiveDownloads___block_invoke;
    block[3] = &unk_1E76800A0;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_barrier_async(accessQueue, block);
  }
}

void __93__MPStoreDownloadManager__updateActiveDownloadsWithChangedActiveDownloads_inactiveDownloads___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 addObjectsFromArray:*(a1 + 32)];
  [v2 addObjectsFromArray:*(*(a1 + 40) + 16)];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 48)];
  [v2 minusSet:v3];

  v4 = [*(*(a1 + 40) + 16) mutableCopy];
  v5 = [v2 allObjects];
  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  v8 = [*(a1 + 32) mutableCopy];
  [v8 removeObjectsInArray:v4];
  [v4 removeObjectsInArray:*(a1 + 32)];
  v9 = *(a1 + 40);
  v10 = *(v9 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__MPStoreDownloadManager__updateActiveDownloadsWithChangedActiveDownloads_inactiveDownloads___block_invoke_2;
  block[3] = &unk_1E76800A0;
  block[4] = v9;
  v14 = v8;
  v15 = v4;
  v11 = v4;
  v12 = v8;
  dispatch_async(v10, block);
}

- (void)_unregisterBlockObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__MPStoreDownloadManager__unregisterBlockObserver___block_invoke;
    v7[3] = &unk_1E76823C0;
    v7[4] = self;
    v8 = v4;
    dispatch_barrier_async(accessQueue, v7);
  }
}

void __51__MPStoreDownloadManager__unregisterBlockObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 32) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
  }
}

- (BOOL)_shouldHideDownload:(id)a3
{
  v4 = a3;
  if (self->_downloadKindToRequiredClientBundleIdentifiers)
  {
    v5 = getSSDownloadPropertyKind();
    v6 = [v4 valueForProperty:v5];

    v7 = [(NSDictionary *)self->_downloadKindToRequiredClientBundleIdentifiers objectForKey:v6];
    if (v7)
    {
      if (_NSIsNSString())
      {
        v8 = getSSDownloadPropertyClientBundleIdentifier();
        v9 = [v4 valueForProperty:v8];

        if (v9)
        {
          v10 = [v9 isEqualToString:v7];
LABEL_10:
          v11 = v10 ^ 1;
LABEL_13:

          goto LABEL_14;
        }

        goto LABEL_12;
      }

      if (_NSIsNSArray())
      {
        v12 = getSSDownloadPropertyClientBundleIdentifier();
        v9 = [v4 valueForProperty:v12];

        if (v9)
        {
          v10 = [v7 containsObject:v9];
          goto LABEL_10;
        }

LABEL_12:
        v11 = 0;
        goto LABEL_13;
      }
    }

    v11 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (void)_sendDownloadsDidProgressToObserversForDownloads:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MPStoreDownloadManager *)self _observersForAllDownloads];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v10 downloadManager:self downloadsDidProgress:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v19 = v5;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v22 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v22)
  {
    v21 = *v28;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * j);
        v13 = [(MPStoreDownloadManager *)self _observersForDownload:v12, v19];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v35 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v24;
          do
          {
            for (k = 0; k != v15; ++k)
            {
              if (*v24 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v23 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                [v18 downloadManager:self downloadDidProgress:v12];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v23 objects:v35 count:16];
          }

          while (v15);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v22);
  }
}

- (void)_sendDownloadsDidFinishToObserversForDownloads:(id)a3 notifyDownloadManager:(BOOL)a4 completionHandler:(id)a5
{
  v23 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v24 = a5;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v27 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v27)
  {
    v26 = *v37;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        v10 = [(MPStoreDownloadManager *)self _observersForDownload:v9];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v33;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v33 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v32 + 1) + 8 * j);
              if (objc_opt_respondsToSelector())
              {
                [v15 downloadManager:self downloadDidFinish:v9];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v12);
        }
      }

      v7 = obj;
      v27 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v27);
  }

  if (v23)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (k = 0; k != v19; ++k)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v28 + 1) + 8 * k) _SSDownload];
          if (v22)
          {
            [v16 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v19);
    }

    if ([v16 count])
    {
      [(SSDownloadManager *)self->_downloadManager finishDownloads:v16];
    }

    v7 = obj;
  }

  if (v24)
  {
    v24[2](v24, v7);
  }
}

- (void)_sendDownloadsDidFinishPurchasesToObserversForDownloads:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
  v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v14)
  {
    v13 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v19 + 1) + 8 * i);
        v6 = [(MPStoreDownloadManager *)self _observersForDownload:v5];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v16;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v16 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v15 + 1) + 8 * j);
              if (objc_opt_respondsToSelector())
              {
                [v11 downloadManager:self downloadPurchaseDidFinish:v5];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v8);
        }
      }

      v14 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }
}

- (void)_sendDownloadsDidChangeToObserversWithAddedDownloads:(id)a3 removedDownloads:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MPStoreDownloadManager *)self _observersForAllDownloads];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 downloadManager:self didAddDownloads:v6 removeDownloads:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_sendActiveDownloadsDidChangeToObserversWithAddedDownloads:(id)a3 removedDownloads:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MPStoreDownloadManager *)self _observersForAllDownloads];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 downloadManager:self didAddActiveDownloads:v6 removeActiveDownloads:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_registerBlockObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__MPStoreDownloadManager__registerBlockObserver___block_invoke;
    v7[3] = &unk_1E76823C0;
    v7[4] = self;
    v8 = v4;
    dispatch_barrier_async(accessQueue, v7);
  }
}

uint64_t __49__MPStoreDownloadManager__registerBlockObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)_onQueue_removeDownloadFromMapTables:(id)a3
{
  v4 = a3;
  key = [v4 storeItemIdentifier];
  if (key)
  {
    NSMapRemove(self->_storeIdentifiersToDownloads, &key);
  }

  v6 = [v4 libraryItemIdentifier];
  if (v6)
  {
    NSMapRemove(self->_libraryIdentifiersToDownloads, &v6);
  }

  v5 = [v4 downloadIdentifier];
  if (v5)
  {
    NSMapRemove(self->_downloadIdentifiersToDownloads, &v5);
  }
}

- (BOOL)_onQueue_hasExistingDownloadForStoreDownload:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [v4 _SSDownload];
  v6 = [v4 _SSPurchase];

  v7 = [(MPStoreDownloadManager *)self _onQueue_findStoreDownloadWithSSDownload:v5 SSPurchase:v6];
  v8 = v7 != 0;

  return v8;
}

- (id)_onQueue_findStoreDownloadWithSSDownload:(id)a3 SSPurchase:(id)a4
{
  v6 = a3;
  v7 = a4;
  key = [v6 persistentIdentifier];
  if (key)
  {
    v8 = NSMapGet(self->_downloadIdentifiersToDownloads, &key);
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v9 = getSSDownloadPropertyStoreItemIdentifier_215();
  v10 = [v6 valueForProperty:v9];
  v21 = [v10 longLongValue];

  if (v21 || (getSSDownloadPropertyStoreItemIdentifier_215(), v11 = objc_claimAutoreleasedReturnValue(), [v7 valueForDownloadProperty:{v11, 0, key}], v12 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v12, "longLongValue"), v12, v11, v21))
  {
    v8 = NSMapGet(self->_storeIdentifiersToDownloads, &v21);
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v13 = getSSDownloadPropertyLibraryItemIdentifier_186();
  v14 = [v6 valueForProperty:v13];
  v15 = [v14 longLongValue];
  v21 = v15;

  if (v15 || (getSSDownloadPropertyLibraryItemIdentifier_186(), v16 = objc_claimAutoreleasedReturnValue(), [v7 valueForDownloadProperty:v16], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "longLongValue"), v21 = v18, v17, v16, v18))
  {
    v8 = NSMapGet(self->_libraryIdentifiersToDownloads, &v21);
LABEL_9:
    v19 = v8;
    goto LABEL_10;
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (void)_onQueue_addDownloadToMapTables:(id)a3
{
  v4 = a3;
  key = [v4 storeItemIdentifier];
  if (key)
  {
    NSMapInsert(self->_storeIdentifiersToDownloads, &key, v4);
  }

  v6 = [v4 libraryItemIdentifier];
  if (v6)
  {
    NSMapInsert(self->_libraryIdentifiersToDownloads, &v6, v4);
  }

  v5 = [v4 downloadIdentifier];
  if (v5)
  {
    NSMapInsert(self->_downloadIdentifiersToDownloads, &v5, v4);
  }
}

- (id)_observersForDownload:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__220;
    v16 = __Block_byref_object_dispose__221;
    v17 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__MPStoreDownloadManager__observersForDownload___block_invoke;
    block[3] = &unk_1E7681330;
    v11 = &v12;
    block[4] = self;
    v10 = v4;
    dispatch_sync(accessQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __48__MPStoreDownloadManager__observersForDownload___block_invoke(void *a1)
{
  v3 = [*(a1[4] + 88) count];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFA8]);
    v1 = [*(a1[4] + 88) allObjects];
    v5 = [v4 initWithArray:v1];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v5);
  if (v3)
  {

    v5 = v1;
  }

  v11 = [*(a1[4] + 72) objectForKey:a1[5]];
  if ([v11 count])
  {
    v6 = *(*(a1[6] + 8) + 40);
    v7 = [v11 allObjects];
    [v6 addObjectsFromArray:v7];
  }

  v8 = [*(*(a1[6] + 8) + 40) count];
  v9 = *(a1[6] + 8);
  if (v8)
  {
    v10 = *(v9 + 40);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong((v9 + 40), v10);
}

- (id)_observersForAllDownloads
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__220;
  v10 = __Block_byref_object_dispose__221;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MPStoreDownloadManager__observersForAllDownloads__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__MPStoreDownloadManager__observersForAllDownloads__block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 88) count];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFA8]);
    v1 = [*(*(a1 + 32) + 88) allObjects];
    v5 = [v4 initWithArray:v1];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  obj = v5;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  v6 = obj;
  if (v3)
  {

    v6 = v1;
  }
}

- (id)_existingDownloadForSSDownload:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__220;
    v16 = __Block_byref_object_dispose__221;
    v17 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MPStoreDownloadManager__existingDownloadForSSDownload___block_invoke;
    block[3] = &unk_1E7681330;
    v11 = &v12;
    block[4] = self;
    v10 = v4;
    dispatch_sync(accessQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __57__MPStoreDownloadManager__existingDownloadForSSDownload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_findStoreDownloadWithSSDownload:*(a1 + 40) SSPurchase:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_addPurchaseFinishedHandler:(id)a3 forDownloads:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![v8 count])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MPStoreDownloadManager.m" lineNumber:948 description:@"Downloads must not be empty."];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 _SSPurchaseResponse];

        if (v15)
        {
          if (v7)
          {
            v7[2](v7, v14);
          }
        }

        else
        {
          v16 = [[_MPStoreDownloadBlockObserver alloc] initWithDownload:v14];
          [(_MPStoreDownloadBlockObserver *)v16 setDidFinishPurchaseHandler:v7];
          [(MPStoreDownloadManager *)self _registerBlockObserver:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)downloadManagerNetworkUsageDidChange:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(MPStoreDownloadManager *)self _observersForAllDownloads];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 downloadManagerNetworkUsageDidChange:self];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)downloadManager:(id)a3 downloadStatesDidChange:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    v10 = "com.apple.amp.mediaplayer";
    do
    {
      v11 = 0;
      v37 = v8;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v46 + 1) + 8 * v11);
        if (![(MPStoreDownloadManager *)self _shouldHideDownload:v12])
        {
          v13 = [(MPStoreDownloadManager *)self _existingDownloadForSSDownload:v12];
          if (v13)
          {
            v14 = v13;
            [v13 _setSSDownload:v12];
            accessQueue = self->_accessQueue;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __66__MPStoreDownloadManager_downloadManager_downloadStatesDidChange___block_invoke;
            block[3] = &unk_1E76823C0;
            block[4] = self;
            v16 = v14;
            v45 = v16;
            dispatch_barrier_sync(accessQueue, block);
          }

          else
          {
            v17 = os_log_create(v10, "Download");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v51 = v12;
              _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_ERROR, "Download did change %{public}@ with no existing download.", buf, 0xCu);
            }

            v16 = [[MPStoreDownload alloc] initWithType:0 attributes:0];
            [v36 addObject:v16];
            [(MPStoreDownload *)v16 _setSSDownload:v12];
          }

          v18 = os_log_create(v10, "Download");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v51 = v12;
            v52 = 2114;
            v53 = v16;
            _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_DEFAULT, "Download did change: %{public}@. Download: %{public}@", buf, 0x16u);
          }

          v19 = [(MPStoreDownload *)v16 _isCanceled];
          v20 = [v12 downloadPhaseIdentifier];
          v21 = v20;
          if (v19)
          {
            v22 = 0;
            if (!v16)
            {
              goto LABEL_26;
            }

            goto LABEL_22;
          }

          v23 = v9;
          v24 = v10;
          v25 = v6;
          soft_SSDownloadPhaseIsFinishedPhase(v20);
          if ((v26 & 1) != 0 || (getSSDownloadPhaseFailed(), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v21 isEqual:v27], v27, v28))
          {
            [v35 addObject:v16];
            [(MPStoreDownloadManager *)self _updateMediaItemPropertiesForFinishedStoreDownload:v16 SSDownload:v12];
            goto LABEL_20;
          }

          if ([(MPStoreDownload *)v16 _isCanceled])
          {
LABEL_20:
            v22 = 0;
          }

          else
          {
            [(MPStoreDownload *)v34 addObject:v16];
            v22 = [(MPStoreDownloadManager *)self _isActiveDownload:v16];
          }

          v6 = v25;
          v10 = v24;
          v9 = v23;
          v8 = v37;
          if (!v16)
          {
LABEL_26:

            goto LABEL_27;
          }

LABEL_22:
          if (v22)
          {
            v29 = v39;
          }

          else
          {
            v29 = v38;
          }

          [v29 addObject:v16];
          goto LABEL_26;
        }

LABEL_27:
        ++v11;
      }

      while (v8 != v11);
      v30 = [v6 countByEnumeratingWithState:&v46 objects:v58 count:16];
      v8 = v30;
    }

    while (v30);
  }

  v31 = os_log_create("com.apple.amp.mediaplayer", "Download_Oversize");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v51 = v6;
    v52 = 2114;
    v53 = v34;
    v54 = 2114;
    v55 = v36;
    v56 = 2114;
    v57 = v35;
    _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_DEFAULT, "Download states did change: %{public}@, progressed downloads: %{public}@, added downloads: %{public}@, finished: %{public}@", buf, 0x2Au);
  }

  if ([(MPStoreDownload *)v34 count])
  {
    calloutSerialQueue = self->_calloutSerialQueue;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __66__MPStoreDownloadManager_downloadManager_downloadStatesDidChange___block_invoke_51;
    v42[3] = &unk_1E76823C0;
    v42[4] = self;
    v43 = v34;
    dispatch_async(calloutSerialQueue, v42);
  }

  [v36 removeObjectsInArray:v35];
  if ([v35 count])
  {
    v33 = self->_calloutSerialQueue;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __66__MPStoreDownloadManager_downloadManager_downloadStatesDidChange___block_invoke_2;
    v40[3] = &unk_1E76823C0;
    v40[4] = self;
    v41 = v35;
    dispatch_async(v33, v40);
  }

  if ([v36 count])
  {
    [(MPStoreDownloadManager *)self _updateDownloadsWithAdditions:v36 removals:0];
  }

  [(MPStoreDownloadManager *)self _updateActiveDownloadsWithChangedActiveDownloads:v39 inactiveDownloads:v38];
}

void __66__MPStoreDownloadManager_downloadManager_downloadStatesDidChange___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__MPStoreDownloadManager_downloadManager_downloadStatesDidChange___block_invoke_3;
  v3[3] = &unk_1E7675308;
  v3[4] = v2;
  v4 = v1;
  [v2 _sendDownloadsDidFinishToObserversForDownloads:v4 notifyDownloadManager:1 completionHandler:v3];
}

- (void)purchaseManager:(id)a3 didFinishPurchasesWithResponses:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v20 = self;
  v23 = [(MPStoreDownloadManager *)self downloads];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v5;
  v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v24)
  {
    v22 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v7;
        v8 = *(*(&v32 + 1) + 8 * v7);
        v9 = [v8 purchase];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v10 = v23;
        v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v29;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v29 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v28 + 1) + 8 * i);
              v16 = [v15 _SSPurchase];
              v17 = [v16 isEqual:v9];

              if (v17)
              {
                [v15 _setSSPurchase:0 SSPurchaseResponse:v8];
                if (([v15 isFinished] & 1) == 0)
                {
                  [v6 addObject:v15];
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v12);
        }

        v7 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v24);
  }

  calloutSerialQueue = v20->_calloutSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MPStoreDownloadManager_purchaseManager_didFinishPurchasesWithResponses___block_invoke;
  block[3] = &unk_1E76823C0;
  block[4] = v20;
  v27 = v6;
  v19 = v6;
  dispatch_async(calloutSerialQueue, block);
}

- (void)requestPermissionToDownloadWithType:(int64_t)a3 completionHandler:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3 == 1)
  {
    if (v6)
    {
      calloutSerialQueue = self->_calloutSerialQueue;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __80__MPStoreDownloadManager_requestPermissionToDownloadWithType_completionHandler___block_invoke_2;
      v13[3] = &unk_1E7682370;
      v14 = v6;
      dispatch_async(calloutSerialQueue, v13);
      v9 = v14;
      goto LABEL_9;
    }
  }

  else
  {
    if (a3 != 2)
    {
      v9 = os_log_create("com.apple.amp.mediaplayer", "Download");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543618;
        v18 = v12;
        v19 = 2048;
        v20 = a3;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] UNKNOWN PURCHASE TYPE: %li", buf, 0x16u);
      }

      goto LABEL_9;
    }

    if (v6)
    {
      v8 = self->_calloutSerialQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__MPStoreDownloadManager_requestPermissionToDownloadWithType_completionHandler___block_invoke;
      block[3] = &unk_1E7682370;
      v16 = v6;
      dispatch_async(v8, block);
      v9 = v16;
LABEL_9:
    }
  }
}

- (void)removeObserver:(id)a3 forDownloads:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MPStoreDownloadManager_removeObserver_forDownloads___block_invoke;
    block[3] = &unk_1E76800A0;
    v11 = v7;
    v12 = self;
    v13 = v6;
    dispatch_barrier_sync(accessQueue, block);
  }
}

void __54__MPStoreDownloadManager_removeObserver_forDownloads___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v26;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v26 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v25 + 1) + 8 * i);
          v8 = [*(*(a1 + 40) + 72) objectForKey:{v7, v25}];
          [v8 removeObject:*(a1 + 48)];
          if (![v8 count])
          {
            [*(*(a1 + 40) + 72) removeObjectForKey:v7];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v4);
    }
  }

  else
  {
    [*(*(a1 + 40) + 88) removeObject:*(a1 + 48)];
    if (![*(*(a1 + 40) + 88) count])
    {
      v9 = *(a1 + 40);
      v10 = *(v9 + 88);
      *(v9 + 88) = 0;
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = [*(*(a1 + 40) + 72) keyEnumerator];
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v33 + 1) + 8 * j);
          v18 = [*(*(a1 + 40) + 72) objectForKey:v17];
          if ([v18 containsObject:*(a1 + 48)] && (!objc_msgSend(*(a1 + 32), "count") || objc_msgSend(*(a1 + 32), "containsObject:", v17)))
          {
            [v18 removeObject:*(a1 + 48)];
          }

          if (![v18 count])
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v14);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v2 = v11;
    v19 = [v2 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(a1 + 40) + 72) removeObjectForKey:*(*(&v29 + 1) + 8 * k)];
        }

        v20 = [v2 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v20);
    }
  }

  if (![*(*(a1 + 40) + 72) count])
  {
    v23 = *(a1 + 40);
    v24 = *(v23 + 72);
    *(v23 + 72) = 0;
  }
}

- (void)prioritizeDownloads:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [a3 reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 _SSDownload];
        v11 = v10;
        if (v10)
        {
          downloadManager = self->_downloadManager;
          if (downloadManager)
          {
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __46__MPStoreDownloadManager_prioritizeDownloads___block_invoke;
            v20[3] = &unk_1E767B680;
            v20[4] = v9;
            v21 = v10;
            [(SSDownloadManager *)downloadManager moveDownload:v21 afterDownload:0 completionBlock:v20];

            goto LABEL_18;
          }

          v14 = os_log_create("com.apple.amp.mediaplayer", "Download");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreDownloadErrorDomain" code:-5002 userInfo:0];
            *buf = 138543618;
            v28 = v9;
            v29 = 2114;
            v30 = v17;
            _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_ERROR, "Failed to move download: %{public}@ with error: %{public}@", buf, 0x16u);
LABEL_16:
          }
        }

        else
        {
          v13 = [v9 _SSPurchase];
          v14 = v13;
          if (v13)
          {
            purchaseManager = self->_purchaseManager;
            if (!purchaseManager)
            {
              v17 = os_log_create("com.apple.amp.mediaplayer", "Download");
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreDownloadErrorDomain" code:-5002 userInfo:0];
                *buf = 138543618;
                v28 = v9;
                v29 = 2114;
                v30 = v18;
                _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_ERROR, "Failed to move purchase: %{public}@ with error: %{public}@", buf, 0x16u);
              }

              goto LABEL_16;
            }

            v26 = v13;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __46__MPStoreDownloadManager_prioritizeDownloads___block_invoke_49;
            v19[3] = &unk_1E767B220;
            v19[4] = v9;
            [(SSPurchaseManager *)purchaseManager movePurchases:v16 afterPurchase:0 withCompletionBlock:v19];
          }
        }

LABEL_18:
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v6);
  }
}

void __46__MPStoreDownloadManager_prioritizeDownloads___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Download");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Failed to move download: %{public}@ with error: %{public}@", &v6, 0x16u);
    }
  }

  else
  {
    [*(a1 + 40) prioritizeAboveDownload:0 completionBlock:0];
  }
}

void __46__MPStoreDownloadManager_prioritizeDownloads___block_invoke_49(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Download");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "Failed to move purchase: %{public}@ with error: %{public}@", &v8, 0x16u);
    }
  }
}

- (id)downloadForStoreID:(int64_t)a3
{
  if (a3)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__220;
    v11 = __Block_byref_object_dispose__221;
    v12 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__MPStoreDownloadManager_downloadForStoreID___block_invoke;
    block[3] = &unk_1E76814A0;
    block[5] = &v7;
    block[6] = a3;
    block[4] = self;
    dispatch_sync(accessQueue, block);
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __45__MPStoreDownloadManager_downloadForStoreID___block_invoke(void *a1)
{
  v2 = NSMapGet(*(a1[4] + 96), a1 + 6);
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)downloadForMediaItemPersistentID:(unint64_t)a3
{
  if (a3)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__220;
    v11 = __Block_byref_object_dispose__221;
    v12 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MPStoreDownloadManager_downloadForMediaItemPersistentID___block_invoke;
    block[3] = &unk_1E76814A0;
    block[5] = &v7;
    block[6] = a3;
    block[4] = self;
    dispatch_sync(accessQueue, block);
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __59__MPStoreDownloadManager_downloadForMediaItemPersistentID___block_invoke(void *a1)
{
  v2 = NSMapGet(*(a1[4] + 80), a1 + 6);
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)downloadForMediaItem:(id)a3
{
  v4 = a3;
  v5 = [v4 persistentID];
  if (!v5 || ([(MPStoreDownloadManager *)self downloadForMediaItemPersistentID:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [v4 valueForProperty:@"storeItemAdamID"];
    v6 = [v7 longLongValue];

    if (v6)
    {
      v6 = [(MPStoreDownloadManager *)self downloadForStoreID:v6];
    }
  }

  return v6;
}

- (id)downloadForDownloadPersistentIdentifier:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__220;
  v11 = __Block_byref_object_dispose__221;
  v12 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MPStoreDownloadManager_downloadForDownloadPersistentIdentifier___block_invoke;
  block[3] = &unk_1E76814A0;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __66__MPStoreDownloadManager_downloadForDownloadPersistentIdentifier___block_invoke(void *a1)
{
  v2 = NSMapGet(*(a1[4] + 64), a1 + 6);
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)restartDownloads:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      v10 = 0;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v36 + 1) + 8 * v10) _SSDownload];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  [(MPStoreDownloadManager *)self _updateDownloadsWithAdditions:v6 removals:0];
  v12 = dispatch_group_create();
  if ([v5 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        v17 = 0;
        do
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v32 + 1) + 8 * v17++) _addOverridePhaseIdentifier:@"MPStoreDownloadPhaseWaiting"];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v15);
    }

    dispatch_group_enter(v12);
    downloadManager = self->_downloadManager;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __43__MPStoreDownloadManager_restartDownloads___block_invoke;
    v27[3] = &unk_1E767AD48;
    v28 = v13;
    v29 = self;
    v30 = v5;
    v31 = v12;
    [(SSDownloadManager *)downloadManager restartDownloads:v30 completionBlock:v27];
  }

  calloutSerialQueue = self->_calloutSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MPStoreDownloadManager_restartDownloads___block_invoke_48;
  block[3] = &unk_1E76823C0;
  block[4] = self;
  v20 = v6;
  v26 = v20;
  dispatch_async(calloutSerialQueue, block);
  v21 = self->_calloutSerialQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __43__MPStoreDownloadManager_restartDownloads___block_invoke_2;
  v23[3] = &unk_1E76823C0;
  v23[4] = self;
  v24 = v20;
  v22 = v20;
  dispatch_group_notify(v12, v21, v23);
}

void __43__MPStoreDownloadManager_restartDownloads___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        [v9 _removeOverridePhaseIdentifier:@"MPStoreDownloadPhaseWaiting"];
        v10 = *(a1 + 40);
        v11 = [v9 _SSDownload];
        v12 = [v10 _existingDownloadForSSDownload:v11];

        if (!v12)
        {
          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v6 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (v16)
  {
    v13 = os_log_create("com.apple.amp.mediaplayer", "Download");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      *buf = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, "Failed to restart downloads %{public}@ with error %{public}@", buf, 0x16u);
    }
  }

  if ([v6 count])
  {
    v15 = os_log_create("com.apple.amp.mediaplayer", "Download");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v6;
      _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "Finished attempted restart with removed downloads: %{public}@", buf, 0xCu);
    }

    [*(a1 + 40) _updateDownloadsWithAdditions:0 removals:v6];
  }

  dispatch_group_leave(*(a1 + 56));
}

- (void)resumeDownloads:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v35 + 1) + 8 * v10) _SSDownload];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v8);
  }

  v12 = dispatch_group_create();
  if ([v5 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        v17 = 0;
        do
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v31 + 1) + 8 * v17++) _addOverridePhaseIdentifier:@"MPStoreDownloadPhaseWaiting"];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v15);
    }

    dispatch_group_enter(v12);
    downloadManager = self->_downloadManager;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __42__MPStoreDownloadManager_resumeDownloads___block_invoke;
    v27[3] = &unk_1E76801E8;
    v28 = v13;
    v29 = v5;
    v30 = v12;
    [(SSDownloadManager *)downloadManager resumeDownloads:v29 completionBlock:v27];
  }

  calloutSerialQueue = self->_calloutSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MPStoreDownloadManager_resumeDownloads___block_invoke_47;
  block[3] = &unk_1E76823C0;
  block[4] = self;
  v20 = v6;
  v26 = v20;
  dispatch_async(calloutSerialQueue, block);
  v21 = self->_calloutSerialQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __42__MPStoreDownloadManager_resumeDownloads___block_invoke_2;
  v23[3] = &unk_1E76823C0;
  v23[4] = self;
  v24 = v20;
  v22 = v20;
  dispatch_group_notify(v12, v21, v23);
}

void __42__MPStoreDownloadManager_resumeDownloads___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) _removeOverridePhaseIdentifier:{@"MPStoreDownloadPhaseWaiting", v11}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v6);
  }

  if (v3)
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Download");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      *buf = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v3;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "Failed to resume downloads %{public}@ with error %{public}@", buf, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)pauseDownloads:(id)a3
{
  v27 = self;
  v56 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v48;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        v12 = [v11 _SSDownload];
        if (v12)
        {
          [v11 _addOverridePhaseIdentifier:@"MPStoreDownloadPhasePaused"];
          if (!v8)
          {
            v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
          }

          [v8 addObject:v11];
          [v31 addObject:v12];
          [v30 addObject:v11];
        }

        else
        {
          v13 = [v11 _SSPurchase];
          if (v13)
          {
            [v11 _addOverridePhaseIdentifier:@"MPStoreDownloadPhaseCanceled"];
            if (!v7)
            {
              v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
            }

            [v7 addObject:v11];
            [v29 addObject:v13];
            [v28 addObject:v11];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v14 = dispatch_group_create();
  v15 = v27;
  if ([v31 count])
  {
    if (v27->_downloadManager)
    {
      dispatch_group_enter(v14);
      downloadManager = v27->_downloadManager;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __41__MPStoreDownloadManager_pauseDownloads___block_invoke;
      v43[3] = &unk_1E76801E8;
      v44 = v8;
      v45 = v31;
      v46 = v14;
      [(SSDownloadManager *)downloadManager pauseDownloads:v45 completionBlock:v43];

      v17 = v44;
    }

    else
    {
      v17 = os_log_create("com.apple.amp.mediaplayer", "Download");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreDownloadErrorDomain" code:-5002 userInfo:0];
        *buf = 138543618;
        v52 = v31;
        v53 = 2114;
        v54 = v18;
        _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_ERROR, "Failed to pause downloads %{public}@ with error %{public}@", buf, 0x16u);
      }
    }
  }

  if ([v29 count])
  {
    if (v15->_purchaseManager)
    {
      dispatch_group_enter(v14);
      purchaseManager = v15->_purchaseManager;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __41__MPStoreDownloadManager_pauseDownloads___block_invoke_45;
      v37[3] = &unk_1E7675398;
      v38 = v7;
      v39 = v29;
      v40 = v28;
      v41 = v15;
      v42 = v14;
      [(SSPurchaseManager *)purchaseManager cancelPurchases:v39 withCompletionBlock:v37];

      v20 = v38;
    }

    else
    {
      v20 = os_log_create("com.apple.amp.mediaplayer", "Download");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreDownloadErrorDomain" code:-5002 userInfo:0];
        *buf = 138543618;
        v52 = v31;
        v53 = 2114;
        v54 = v21;
        _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_ERROR, "Failed to pause downloads %{public}@ with error %{public}@", buf, 0x16u);
      }
    }
  }

  calloutSerialQueue = v15->_calloutSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MPStoreDownloadManager_pauseDownloads___block_invoke_46;
  block[3] = &unk_1E76823C0;
  block[4] = v15;
  v23 = v4;
  v36 = v23;
  dispatch_async(calloutSerialQueue, block);
  v24 = v15->_calloutSerialQueue;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __41__MPStoreDownloadManager_pauseDownloads___block_invoke_2;
  v32[3] = &unk_1E76800A0;
  v32[4] = v15;
  v33 = v23;
  v34 = v7;
  v25 = v7;
  v26 = v23;
  dispatch_group_notify(v14, v24, v32);
}

void __41__MPStoreDownloadManager_pauseDownloads___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v14 + 1) + 8 * v8++) _removeOverridePhaseIdentifier:{@"MPStoreDownloadPhasePaused", v14}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v6);
  }

  v9 = os_log_create("com.apple.amp.mediaplayer", "Download");
  v10 = v9;
  if (v3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = [v3 msv_description];
      *buf = 138543618;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, "Paused downloads %{public}@ error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    *buf = 138543362;
    v19 = v13;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "Paused downloads %{public}@", buf, 0xCu);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __41__MPStoreDownloadManager_pauseDownloads___block_invoke_45(uint64_t a1, char a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v25 + 1) + 8 * v10++) _removeOverridePhaseIdentifier:@"MPStoreDownloadPhaseCanceled"];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v8);
  }

  v11 = os_log_create("com.apple.amp.mediaplayer", "Download");
  v12 = v11;
  if (v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = [v5 msv_description];
      *buf = 138543618;
      v31 = v13;
      v32 = 2114;
      v33 = v14;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "Caneled purchases %{public}@ error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      *buf = 138543362;
      v31 = v15;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "Caneled purchases %{public}@", buf, 0xCu);
    }

    if (a2)
    {
      [*(a1 + 56) _updateDownloadsWithAdditions:0 removals:*(a1 + 48)];
      goto LABEL_24;
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = *(a1 + 48);
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v21 + 1) + 8 * v20++) _setCanceled:{0, v21}];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v18);
  }

LABEL_24:
  dispatch_group_leave(*(a1 + 64));
}

uint64_t __41__MPStoreDownloadManager_pauseDownloads___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _sendDownloadsDidProgressToObserversForDownloads:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _sendDownloadsDidFinishToObserversForDownloads:v3 notifyDownloadManager:1 completionHandler:0];
}

- (void)cancelDownloads:(id)a3
{
  v35 = self;
  v69 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v59;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v59 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v58 + 1) + 8 * i);
        v13 = [v12 _SSDownload];
        if (v13)
        {
          [v5 addObject:v13];
          [v4 addObject:v12];
        }

        else
        {
          v14 = [v12 _SSPurchase];
          if (v14)
          {
            [v6 addObject:v14];
            [v37 addObject:v12];
          }
        }

        [v12 _setCanceled:1];
      }

      v9 = [v7 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v9);
  }

  v15 = dispatch_group_create();
  v16 = v35;
  if ([v5 count])
  {
    if (v35->_downloadManager)
    {
      dispatch_group_enter(v15);
      [(MPStoreDownloadManager *)v35 _updateActiveDownloadsWithCancelledDownloads:v4];
      downloadManager = v35->_downloadManager;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __42__MPStoreDownloadManager_cancelDownloads___block_invoke;
      v53[3] = &unk_1E767AD48;
      v54 = v5;
      v55 = v4;
      v56 = v35;
      v57 = v15;
      [(SSDownloadManager *)downloadManager cancelDownloads:v54 completionBlock:v53];

      v18 = v54;
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v19 = v4;
      v20 = [v19 countByEnumeratingWithState:&v49 objects:v67 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v50;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v50 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v49 + 1) + 8 * j) _setCanceled:{0, v35}];
          }

          v21 = [v19 countByEnumeratingWithState:&v49 objects:v67 count:16];
        }

        while (v21);
      }

      v18 = os_log_create("com.apple.amp.mediaplayer", "Download");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreDownloadErrorDomain" code:-5002 userInfo:0];
        *buf = 138543618;
        v64 = v5;
        v65 = 2114;
        v66 = v24;
        _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_ERROR, "Failed to cancel downloads %{public}@ with error %{public}@", buf, 0x16u);
      }

      v16 = v35;
    }
  }

  if ([v6 count])
  {
    if (v16->_purchaseManager)
    {
      dispatch_group_enter(v15);
      [(MPStoreDownloadManager *)v16 _updateActiveDownloadsWithCancelledDownloads:v37];
      purchaseManager = v16->_purchaseManager;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __42__MPStoreDownloadManager_cancelDownloads___block_invoke_43;
      v44[3] = &unk_1E767B530;
      v45 = v6;
      v46 = v37;
      v47 = v16;
      v48 = v15;
      [(SSPurchaseManager *)purchaseManager cancelPurchases:v45 withCompletionBlock:v44];

      v26 = v45;
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v27 = v37;
      v28 = [v27 countByEnumeratingWithState:&v40 objects:v62 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v41;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v41 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v40 + 1) + 8 * k) _setCanceled:0];
          }

          v29 = [v27 countByEnumeratingWithState:&v40 objects:v62 count:16];
        }

        while (v29);
      }

      v26 = os_log_create("com.apple.amp.mediaplayer", "Download");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPStoreDownloadErrorDomain" code:-5002 userInfo:0];
        *buf = 138543618;
        v64 = v6;
        v65 = 2114;
        v66 = v32;
        _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_ERROR, "Failed to cancel purchases %{public}@ with error %{public}@", buf, 0x16u);
      }

      v16 = v36;
    }
  }

  calloutSerialQueue = v16->_calloutSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MPStoreDownloadManager_cancelDownloads___block_invoke_44;
  block[3] = &unk_1E76823C0;
  block[4] = v16;
  v39 = v7;
  v34 = v7;
  dispatch_group_notify(v15, calloutSerialQueue, block);
}

void __42__MPStoreDownloadManager_cancelDownloads___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Download");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "Cancelled downloads %{public}@ error=%{public}@", buf, 0x16u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) _setCanceled:{0, v14}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [*(a1 + 48) _addNonCancelledDownloadsToActiveList:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "Cancelled downloads %{public}@", buf, 0xCu);
    }

    [*(a1 + 48) _updateDownloadsWithAdditions:0 removals:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __42__MPStoreDownloadManager_cancelDownloads___block_invoke_43(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.mediaplayer", "Download");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v5 msv_description];
      *buf = 138543874;
      v22 = v8;
      v23 = 1024;
      v24 = a2;
      v25 = 2114;
      v26 = v9;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Cancelled purchases %{public}@, result %d error=%{public}@", buf, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v22 = v10;
      v23 = 1024;
      v24 = a2;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Cancelled purchases %{public}@, result %d", buf, 0x12u);
    }

    if (a2)
    {
      [*(a1 + 48) _updateDownloadsWithAdditions:0 removals:*(a1 + 40)];
      goto LABEL_17;
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(a1 + 40);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15++) _setCanceled:{0, v16}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  [*(a1 + 48) _addNonCancelledDownloadsToActiveList:*(a1 + 40)];
LABEL_17:
  dispatch_group_leave(*(a1 + 56));
}

- (void)addObserver:(id)a3 forDownloads:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__MPStoreDownloadManager_addObserver_forDownloads___block_invoke;
    block[3] = &unk_1E76800A0;
    v11 = v7;
    v12 = self;
    v13 = v6;
    dispatch_barrier_sync(accessQueue, block);
  }
}

void __51__MPStoreDownloadManager_addObserver_forDownloads___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  if (v2)
  {
    if (!*(v3 + 72))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:1];
      v5 = *(a1 + 40);
      v6 = *(v5 + 72);
      *(v5 + 72) = v4;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [*(*(a1 + 40) + 72) objectForKey:{v12, v20}];
          if (!v13)
          {
            v13 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:1];
            [*(*(a1 + 40) + 72) setObject:v13 forKey:v12];
          }

          if (([v13 containsObject:*(a1 + 48)] & 1) == 0)
          {
            [v13 addObject:*(a1 + 48)];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v14 = *(v3 + 88);
    if (!v14)
    {
      v15 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:1];
      v16 = *(a1 + 40);
      v17 = *(v16 + 88);
      *(v16 + 88) = v15;

      v14 = *(*(a1 + 40) + 88);
    }

    if (([v14 containsObject:*(a1 + 48)] & 1) == 0)
    {
      v18 = *(a1 + 48);
      v19 = *(*(a1 + 40) + 88);

      [v19 addObject:v18];
    }
  }
}

- (void)addFinishHandler:(id)a3 forDownloads:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![v8 count])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MPStoreDownloadManager.m" lineNumber:398 description:@"Downloads must not be empty."];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 isFinished])
        {
          if (v7)
          {
            v7[2](v7, v14);
          }
        }

        else
        {
          v15 = [[_MPStoreDownloadBlockObserver alloc] initWithDownload:v14];
          [(_MPStoreDownloadBlockObserver *)v15 setDidFinishDownloadHandler:v7];
          [(MPStoreDownloadManager *)self _registerBlockObserver:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (id)addDownloads:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v5)
  {
    v6 = *v35;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        location = 0;
        p_location = &location;
        v30 = 0x3032000000;
        v31 = __Block_byref_object_copy__220;
        v32 = __Block_byref_object_dispose__221;
        v33 = 0;
        accessQueue = self->_accessQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __39__MPStoreDownloadManager_addDownloads___block_invoke;
        block[3] = &unk_1E7681330;
        block[5] = v8;
        block[6] = &location;
        block[4] = self;
        dispatch_sync(accessQueue, block);
        if (p_location[5])
        {
          [v20 addObject:?];
        }

        else
        {
          v10 = [v8 _SSPurchase];
          if (v10)
          {
            [v16 addObject:v10];
            [v18 addObject:v8];
            [v20 addObject:v8];
          }
        }

        _Block_object_dispose(&location, 8);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v5);
  }

  if ([v18 count])
  {
    [(MPStoreDownloadManager *)self _updateDownloadsWithAdditions:v18 removals:0];
  }

  if ([v16 count])
  {
    if (self->_purchaseManager)
    {
      objc_initWeak(&location, self);
      purchaseManager = self->_purchaseManager;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __39__MPStoreDownloadManager_addDownloads___block_invoke_2;
      v24[3] = &unk_1E7675330;
      objc_copyWeak(&v26, &location);
      v25 = v18;
      [(SSPurchaseManager *)purchaseManager addPurchases:v17 withCompletionBlock:v24];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    else
    {
      objc_initWeak(&location, self);
      calloutSerialQueue = self->_calloutSerialQueue;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __39__MPStoreDownloadManager_addDownloads___block_invoke_5;
      v21[3] = &unk_1E7675358;
      v21[4] = self;
      v22 = v18;
      objc_copyWeak(&v23, &location);
      dispatch_async(calloutSerialQueue, v21);
      objc_destroyWeak(&v23);

      objc_destroyWeak(&location);
    }
  }

  if ([v20 count])
  {
    v13 = v20;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v14 = v13;

  return v13;
}

void __39__MPStoreDownloadManager_addDownloads___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [*(a1 + 40) _SSDownload];
  v3 = [*(a1 + 40) _SSPurchase];
  v4 = [v2 _onQueue_findStoreDownloadWithSSDownload:v7 SSPurchase:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __39__MPStoreDownloadManager_addDownloads___block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if ((v8 & 1) == 0 && WeakRetained)
  {
    v9 = WeakRetained[3];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__MPStoreDownloadManager_addDownloads___block_invoke_3;
    v10[3] = &unk_1E76823C0;
    v11 = WeakRetained;
    v12 = *(a1 + 32);
    dispatch_async(v9, v10);
  }
}

void __39__MPStoreDownloadManager_addDownloads___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__MPStoreDownloadManager_addDownloads___block_invoke_6;
  v4[3] = &unk_1E76766F0;
  objc_copyWeak(&v6, (a1 + 48));
  v5 = *(a1 + 40);
  [v2 _sendDownloadsDidFinishToObserversForDownloads:v3 notifyDownloadManager:0 completionHandler:v4];

  objc_destroyWeak(&v6);
}

void __39__MPStoreDownloadManager_addDownloads___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateDownloadsWithAdditions:0 removals:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __39__MPStoreDownloadManager_addDownloads___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__MPStoreDownloadManager_addDownloads___block_invoke_4;
  v4[3] = &unk_1E7675308;
  v5 = v2;
  v6 = *(a1 + 40);
  [v5 _sendDownloadsDidFinishToObserversForDownloads:v3 notifyDownloadManager:0 completionHandler:v4];
}

- (id)activeDownloadForStoreID:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  [(MPStoreDownloadManager *)self activeDownloads];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 storeItemIdentifier] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)activeDownloadForMediaItemPersistentID:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  [(MPStoreDownloadManager *)self activeDownloads];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 libraryItemIdentifier] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (NSArray)userDownloads
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__220;
  v10 = __Block_byref_object_dispose__221;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MPStoreDownloadManager_userDownloads__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__MPStoreDownloadManager_userDownloads__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)downloads
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__220;
  v11 = __Block_byref_object_dispose__221;
  v12 = 0;
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MPStoreDownloadManager_downloads__block_invoke;
  v6[3] = &unk_1E76819F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);
  if ([v8[5] count])
  {
    v3 = v8[5];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__MPStoreDownloadManager_downloads__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)activeDownloads
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__220;
  v10 = __Block_byref_object_dispose__221;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MPStoreDownloadManager_activeDownloads__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__MPStoreDownloadManager_activeDownloads__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)dealloc
{
  [(SSDownloadManager *)self->_downloadManager removeObserver:self];
  [(SSPurchaseManager *)self->_purchaseManager setDelegate:0];
  v3.receiver = self;
  v3.super_class = MPStoreDownloadManager;
  [(MPStoreDownloadManager *)&v3 dealloc];
}

- (MPStoreDownloadManager)init
{
  [MEMORY[0x1E695DF30] raise:@"MPStoreDownloadManagerInitException" format:@"-init is not supported. Use +sharedManager instead."];

  return 0;
}

@end