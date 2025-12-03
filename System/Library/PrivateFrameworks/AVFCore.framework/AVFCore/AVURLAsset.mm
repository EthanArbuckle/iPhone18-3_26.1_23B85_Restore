@interface AVURLAsset
+ (AVURLAsset)URLAssetWithURL:(NSURL *)URL options:(NSDictionary *)options;
+ (BOOL)isPlayableExtendedMIMEType:(id)type options:(id)options;
+ (NSArray)audiovisualContentTypes;
+ (id)UTTypeIDArrayFromUTTypeArray:(id)array;
+ (id)_UTTypes;
+ (id)_avfValidationPlist;
+ (id)_avfValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypes;
+ (id)_figMIMETypes;
+ (id)_fileUTTypes;
+ (id)_getFigAssetCreationOptionsFromURLAssetInitializationOptions:(id)options assetLoggingIdentifier:(id)identifier figAssetCreationFlags:(unint64_t *)flags error:(id *)error;
+ (id)_getFigAssetiTunesStoreContentInfoFromURLAssetiTunesStoreContentInfo:(id)info;
+ (id)_initializationOptionsClasses;
+ (id)_objectWithItemProviderFileURL:(id)l typeIdentifier:(id)identifier isInPlace:(BOOL)place error:(id *)error;
+ (id)_streamingUTTypes;
+ (id)assetForNSURLSessionWithURL:(id)l propertyList:(id)list;
+ (id)instanceIdentifierMapTable;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
+ (id)readableTypeIdentifiersForItemProvider;
+ (id)userInfoObjectForURLAsset:(id)asset;
+ (id)userInfoObjectForURLAssetInstanceIdentifier:(id)identifier;
+ (id)writableTypeIdentifiersForItemProvider;
- (AVAssetCache)assetCache;
- (AVURLAsset)initWithFigCreationOptions:(id)options options:(id)a4 figAssetCreationOptions:(id)creationOptions figAssetCreationFlags:(unint64_t)flags;
- (AVURLAsset)initWithFileURL:(id)l offset:(int64_t)offset length:(int64_t)length options:(id)options;
- (AVURLAsset)initWithURL:(NSURL *)URL options:(NSDictionary *)options;
- (BOOL)_attachedToExternalContentKeySession;
- (BOOL)_clientURLLoadingRepresentsAccurateNetworkStatistics;
- (BOOL)_doNotLogURLs;
- (BOOL)_shouldOptimizeAccessForLinearMoviePlayback;
- (BOOL)shouldMatchDataInCacheByURLPathComponentOnly;
- (BOOL)shouldMatchDataInCacheByURLWithoutQueryComponent;
- (NSString)cacheKey;
- (NSString)description;
- (NSURL)URL;
- (NSUUID)httpSessionIdentifier;
- (NSUUID)uniqueIdentifier;
- (id)SHA1Digest;
- (id)_absoluteURL;
- (id)_errorForFigNotificationPayload:(__CFDictionary *)payload key:(__CFString *)key;
- (id)_installHandlerForNSURLSessionConfiguration:(id)configuration queue:(id)queue;
- (id)_loadFileRepresentationOfTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)_resourceLoaderWithRemoteHandlerContext:(id)context;
- (id)_serializableCreationOptions;
- (id)identifyingTag;
- (id)identifyingTagClass;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)propertyListForNSURLSessionAssetReturningError:(id *)error;
- (id)recommendedDestinationURLPathExtension;
- (id)tracks;
- (int)_attachToContentKeySession:(id)session contentKeyBoss:(OpaqueFigContentKeyBoss *)boss failedSinceAlreadyAttachedToAnotherSession:(BOOL *)anotherSession;
- (unint64_t)referenceRestrictions;
- (void)_addFigAssetNotifications;
- (void)_ensureAssetDownloadCache;
- (void)_removeFigAssetNotifications;
- (void)_removeUserInfoObject;
- (void)_setAssetInspectorLoader:(id)loader;
- (void)_setUserInfoObject:(id)object;
- (void)_tracksDidChange;
- (void)cancelLoading;
- (void)dealloc;
- (void)expire;
@end

@implementation AVURLAsset

+ (id)_UTTypes
{
  if (getTypeAccessMutex_onceToken != -1)
  {
    +[AVURLAsset _figMIMETypes];
  }

  FigSimpleMutexLock();
  v2 = gUTTypes;
  if (!gUTTypes)
  {
    if (ensureSupportedFormatsChangedNotificationRegistered_onceToken != -1)
    {
      +[AVURLAsset _figMIMETypes];
    }

    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = +[AVURLAsset _fileUTTypes];
    if (v4)
    {
      [v3 unionSet:v4];
    }

    v5 = +[AVURLAsset _streamingUTTypes];
    if (v5)
    {
      [v3 unionSet:v5];
    }

    gUTTypes = [v3 allObjects];

    v2 = gUTTypes;
  }

  v6 = v2;
  if (getTypeAccessMutex_onceToken != -1)
  {
    +[AVURLAsset _figMIMETypes];
  }

  FigSimpleMutexUnlock();

  return v6;
}

+ (id)_fileUTTypes
{
  v33 = *MEMORY[0x1E69E9840];
  if (getTypeAccessMutex_onceToken != -1)
  {
    +[AVURLAsset _figMIMETypes];
  }

  FigSimpleMutexLock();
  v3 = gFileUTTypes;
  if (!gFileUTTypes)
  {
    if (ensureSupportedFormatsChangedNotificationRegistered_onceToken != -1)
    {
      +[AVURLAsset _figMIMETypes];
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v4 unionSet:{+[AVURLAsset _figFileUTIs](AVURLAsset, "_figFileUTIs")}];
    v5 = +[AVURLAsset _figFilePathExtensions];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      v9 = *MEMORY[0x1E6982C48];
      v10 = *MEMORY[0x1E6982CD8];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [self UTTypeIDArrayFromUTTypeArray:{objc_msgSend(MEMORY[0x1E6982C40], "typesWithTag:tagClass:conformingToType:", *(*(&v27 + 1) + 8 * i), v9, v10)}];
          if (AVAssetUTIsAreComplementary(v4, v12))
          {
            [v4 addObjectsFromArray:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }

    v13 = +[AVURLAsset _figFileMIMETypes];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      v17 = *MEMORY[0x1E6982C50];
      v18 = *MEMORY[0x1E6982CD8];
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v20 = [self UTTypeIDArrayFromUTTypeArray:{objc_msgSend(MEMORY[0x1E6982C40], "typesWithTag:tagClass:conformingToType:", *(*(&v23 + 1) + 8 * j), v17, v18)}];
          if (AVAssetUTIsAreComplementary(v4, v20))
          {
            [v4 addObjectsFromArray:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v15);
    }

    [v4 unionSet:{+[AVMediaFileType allFileTypeIdentifiers](AVMediaFileType, "allFileTypeIdentifiers")}];
    gFileUTTypes = [v4 copy];

    v3 = gFileUTTypes;
  }

  v21 = v3;
  if (getTypeAccessMutex_onceToken != -1)
  {
    +[AVURLAsset _streamingUTTypes];
  }

  FigSimpleMutexUnlock();
  return v21;
}

+ (id)_streamingUTTypes
{
  v32 = *MEMORY[0x1E69E9840];
  if (getTypeAccessMutex_onceToken != -1)
  {
    +[AVURLAsset _figMIMETypes];
  }

  FigSimpleMutexLock();
  v3 = gStreamingUTTypes;
  if (!gStreamingUTTypes)
  {
    if (ensureSupportedFormatsChangedNotificationRegistered_onceToken != -1)
    {
      +[AVURLAsset _figMIMETypes];
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v4 unionSet:{+[AVURLAsset _figStreamingUTIs](AVURLAsset, "_figStreamingUTIs")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = +[AVURLAsset _figStreamingMIMETypes];
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    v7 = MEMORY[0x1E6982C50];
    if (v6)
    {
      v8 = v6;
      v9 = *v27;
      v10 = *MEMORY[0x1E6982C50];
      v11 = *MEMORY[0x1E6982CD8];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v13 = [self UTTypeIDArrayFromUTTypeArray:{objc_msgSend(MEMORY[0x1E6982C40], "typesWithTag:tagClass:conformingToType:", *(*(&v26 + 1) + 8 * i), v10, v11)}];
          if (AVAssetUTIsAreComplementary(v4, v13))
          {
            [v4 addObjectsFromArray:v13];
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v8);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      v17 = *v7;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v5);
          }

          v19 = [self UTTypeIDArrayFromUTTypeArray:{objc_msgSend(MEMORY[0x1E6982C40], "typesWithTag:tagClass:conformingToType:", *(*(&v22 + 1) + 8 * j), v17, objc_msgSend(MEMORY[0x1E6982C40], "typeWithIdentifier:", @"public.playlist"}];
          if (AVAssetUTIsAreComplementary(v4, v19))
          {
            [v4 addObjectsFromArray:v19];
          }
        }

        v15 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }

    gStreamingUTTypes = [v4 copy];

    v3 = gStreamingUTTypes;
  }

  v20 = v3;
  if (getTypeAccessMutex_onceToken != -1)
  {
    +[AVURLAsset _streamingUTTypes];
  }

  FigSimpleMutexUnlock();
  return v20;
}

- (void)_removeFigAssetNotifications
{
  _assetInspectorLoader = [(AVURLAsset *)self _assetInspectorLoader];
  if (_assetInspectorLoader)
  {
    v4 = _assetInspectorLoader;
    v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVAsset *)self _weakReference];
    [v5 removeListenerWithWeakReference:_weakReference callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EA8] object:v4];
    [v5 removeListenerWithWeakReference:_weakReference callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EA0] object:v4];
    [v5 removeListenerWithWeakReference:_weakReference callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EC8] object:v4];
    [v5 removeListenerWithWeakReference:_weakReference callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970ED0] object:v4];
    [v5 removeListenerWithWeakReference:_weakReference callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EC0] object:v4];
    [v5 removeListenerWithWeakReference:_weakReference callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EB8] object:v4];

    CFRelease(_weakReference);
  }
}

- (void)_addFigAssetNotifications
{
  _assetInspectorLoader = [(AVURLAsset *)self _assetInspectorLoader];
  if (_assetInspectorLoader)
  {
    v4 = _assetInspectorLoader;
    v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVAsset *)self _weakReference];
    CFRetain(_weakReference);
    [v5 addListenerWithWeakReference:_weakReference callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EA8] object:v4 flags:0];
    [v5 addListenerWithWeakReference:_weakReference callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EA0] object:v4 flags:0];
    [v5 addListenerWithWeakReference:_weakReference callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EC8] object:v4 flags:0];
    [v5 addListenerWithWeakReference:_weakReference callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970ED0] object:v4 flags:0];
    [v5 addListenerWithWeakReference:_weakReference callback:figLoaderNotificationHandler name:*MEMORY[0x1E6970EC0] object:v4 flags:0];
    v7 = *MEMORY[0x1E6970EB8];

    [v5 addListenerWithWeakReference:_weakReference callback:figLoaderNotificationHandler name:v7 object:v4 flags:0];
  }
}

- (id)_absoluteURL
{
  resolvedURL = [(AVURLAsset *)self URL];
  if (!resolvedURL)
  {
    resolvedURL = [(AVURLAsset *)self resolvedURL];
  }

  return [(NSURL *)resolvedURL absoluteURL];
}

- (NSURL)URL
{
  URL = self->_URLAsset->URL;
  if (URL)
  {
    return URL;
  }

  _assetInspector = [(AVURLAsset *)self _assetInspector];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [_assetInspector URL];
}

- (void)dealloc
{
  if (self->_URLAsset)
  {
    [(AVURLAsset *)self _removeUserInfoObject];
    [(AVURLAsset *)self _removeFigAssetNotifications];
    URLAsset = self->_URLAsset;
    tracksAccessQueue = URLAsset->tracksAccessQueue;
    if (tracksAccessQueue)
    {
      dispatch_release(tracksAccessQueue);
      URLAsset = self->_URLAsset;
    }

    if (URLAsset->requiresSecurityScopeRelease)
    {
      [(NSURL *)URLAsset->URL stopAccessingSecurityScopedResource];
      URLAsset = self->_URLAsset;
    }

    CFRelease(self->_URLAsset);
  }

  v5.receiver = self;
  v5.super_class = AVURLAsset;
  [(AVAsset *)&v5 dealloc];
}

- (void)_removeUserInfoObject
{
  if (self->_URLAsset->hasInstanceIdentifierMapping)
  {
    [(AVURLAsset *)self _setUserInfoObject:0];
  }
}

id __20__AVURLAsset_tracks__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2[2] + 48);
  if (!v3)
  {
    *(*(*(a1 + 32) + 16) + 48) = [v2 _tracksWithClass:{objc_msgSend(*(a1 + 32), "_classForAssetTracks")}];
    v3 = *(*(*(a1 + 32) + 16) + 48);
  }

  result = v3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (id)_avfValidationPlist
{
  if (_avfValidationPlist_loadValidationPlistOnceToken != -1)
  {
    +[AVURLAsset _avfValidationPlist];
  }

  return _avfValidationPlist_sAVFoundationValidationPlist;
}

id __33__AVURLAsset__avfValidationPlist__block_invoke()
{
  FigMediaValidatorCreateMediaValidatorPropertyList();
  result = objc_alloc_init(MEMORY[0x1E695DF20]);
  _avfValidationPlist_sAVFoundationValidationPlist = result;
  return result;
}

+ (id)_avfValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AVURLAsset__avfValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypes__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  if (_avfValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypes_loadValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypesOnceToken != -1)
  {
    dispatch_once(&_avfValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypes_loadValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypesOnceToken, block);
  }

  return _avfValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypes_sAVFoundationValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypes;
}

void __79__AVURLAsset__avfValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypes__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _avfValidationPlist];
  FigCopySetOfPlaylistSupportedMIMETypes();
  if ([0 count])
  {
    v2 = [v1 mutableCopy];
    v3 = [0 allObjects];
    [v2 setObject:v3 forKey:*MEMORY[0x1E6971EA8]];
  }

  else
  {
    v2 = v1;
  }

  _avfValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypes_sAVFoundationValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypes = v2;
}

+ (id)_figMIMETypes
{
  if (getTypeAccessMutex_onceToken != -1)
  {
    +[AVURLAsset _figMIMETypes];
  }

  FigSimpleMutexLock();
  v2 = gFigMIMETypes;
  if (!gFigMIMETypes)
  {
    if (ensureSupportedFormatsChangedNotificationRegistered_onceToken != -1)
    {
      +[AVURLAsset _figMIMETypes];
    }

    v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
    v4 = +[AVURLAsset _figFileMIMETypes];
    if (v4)
    {
      [v3 unionSet:v4];
    }

    v5 = +[AVURLAsset _figStreamingMIMETypes];
    if (v5)
    {
      [v3 unionSet:v5];
    }

    gFigMIMETypes = [v3 allObjects];

    v2 = gFigMIMETypes;
  }

  v6 = v2;
  if (getTypeAccessMutex_onceToken != -1)
  {
    +[AVURLAsset _figMIMETypes];
  }

  FigSimpleMutexUnlock();

  return v6;
}

+ (id)UTTypeIDArrayFromUTTypeArray:(id)array
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [array countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(array);
        }

        [array addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "identifier")}];
      }

      while (v6 != v8);
      v6 = [array countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return array;
}

+ (NSArray)audiovisualContentTypes
{
  FigCopySetOfFormatReaderSupportedUTIs();
  v2 = stringsToUTIs(0);
  FigCopySetOfStreamingSupportedUTIs();
  return [objc_msgSend(v2 setByAddingObjectsFromSet:{stringsToUTIs(0)), "allObjects"}];
}

+ (BOOL)isPlayableExtendedMIMEType:(id)type options:(id)options
{
  if (options && [objc_msgSend(options objectForKey:{@"AVURLAssetExtendedMIMETypePlayabilityTreatPlaylistMIMETypesAsISOBMFFMediaDataContainersKey", "BOOLValue"}])
  {
    +[AVURLAsset _avfValidationPlistWithPlaylistMIMETypesTreatedAsISOBMFFMIMETypes];
  }

  else
  {
    +[AVURLAsset _avfValidationPlist];
  }

  +[AVURLAsset audiovisualMIMETypes];
  return FigMediaValidatorValidateRFC4281ExtendedMIMEType() == 0;
}

+ (AVURLAsset)URLAssetWithURL:(NSURL *)URL options:(NSDictionary *)options
{
  v4 = [[self alloc] initWithURL:URL options:options];

  return v4;
}

+ (id)_getFigAssetiTunesStoreContentInfoFromURLAssetiTunesStoreContentInfo:(id)info
{
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v5 = [info objectForKey:@"AVURLAssetiTunesStoreContentIDKey"];
  v6 = [info objectForKey:@"AVURLAssetiTunesStoreContentTypeKey"];
  v7 = [info objectForKey:@"AVURLAssetiTunesStoreContentUserAgentKey"];
  v8 = [info objectForKey:@"AVURLAssetiTunesStoreContentDownloadParametersKey"];
  v9 = [info objectForKey:@"AVURLAssetiTunesStoreContentDSIDKey"];
  v10 = [info objectForKey:@"AVURLAssetiTunesStoreContentPurchasedMediaKindKey"];
  v11 = [info objectForKey:@"AVURLAssetiTunesStoreContentRentalIDKey"];
  v12 = [info objectForKey:@"AVURLAssetiTunesStoreContentHLSAssetURLStringKey"];
  v13 = [info objectForKey:@"AVURLAssetiTunesStoreContentAlternateContentInfoKey"];
  [v4 setValue:v5 forKey:*MEMORY[0x1E6971600]];
  [v4 setValue:v6 forKey:*MEMORY[0x1E6971618]];
  [v4 setValue:v7 forKey:*MEMORY[0x1E6971620]];
  [v4 setValue:v8 forKey:*MEMORY[0x1E69715F0]];
  [v4 setValue:v9 forKey:*MEMORY[0x1E69715E8]];
  [v4 setValue:v10 forKey:*MEMORY[0x1E6971608]];
  [v4 setValue:v11 forKey:*MEMORY[0x1E6971610]];
  if (v12)
  {
    [v4 setValue:v12 forKey:*MEMORY[0x1E69715F8]];
  }

  if (v13)
  {
    v14 = [self _getFigAssetiTunesStoreContentInfoFromURLAssetiTunesStoreContentInfo:v13];
    v15 = [v13 objectForKey:@"AVURLAssetiTunesStoreContentAlternateContentInfoAssetURLStringKey"];
    [v14 setValue:v15 forKey:*MEMORY[0x1E69715E0]];
    [v4 setValue:v14 forKey:*MEMORY[0x1E69715D8]];
  }

  return v4;
}

+ (id)_initializationOptionsClasses
{
  if (_initializationOptionsClasses_onceToken != -1)
  {
    +[AVURLAsset _initializationOptionsClasses];
  }

  return _initializationOptionsClasses_sClassesSet;
}

id __43__AVURLAsset__initializationOptionsClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  result = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  _initializationOptionsClasses_sClassesSet = result;
  return result;
}

+ (id)_getFigAssetCreationOptionsFromURLAssetInitializationOptions:(id)options assetLoggingIdentifier:(id)identifier figAssetCreationFlags:(unint64_t *)flags error:(id *)error
{
  v136 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = [options objectForKey:@"AVURLAssetReferenceRestrictionsKey"];
  if (v12)
  {
    v13 = 4 * ([v12 unsignedIntegerValue] & 0xF);
  }

  else
  {
    v13 = 8;
  }

  *flags = v13;
  v14 = [options objectForKey:@"AVURLAssetPreferNominalDurationsKey"];
  if (v14)
  {
    if (([v14 BOOLValue] & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
LABEL_6:
    *flags |= 0x100uLL;
  }

LABEL_7:
  if ([objc_msgSend(options objectForKey:{@"AVURLAssetDoNotLogURLsKey", "BOOLValue"}])
  {
    *flags |= 0x200uLL;
  }

  v15 = [options objectForKey:@"AVURLAssetTypeKey"];
  if (v15)
  {
    v16 = v15;
    v17 = [+[AVURLAsset _fileUTTypes](AVURLAsset "_fileUTTypes")];
    if (v17 != [+[AVURLAsset _streamingUTTypes](AVURLAsset "_streamingUTTypes")])
    {
      v18 = MEMORY[0x1E6971500];
      if (!v17)
      {
        v18 = MEMORY[0x1E6971508];
      }

      [dictionary setObject:*v18 forKey:*MEMORY[0x1E6970F70]];
    }
  }

  v19 = [options objectForKey:@"AVURLAssetClientBundleIdentifierKey"];
  if (v19)
  {
    [dictionary setObject:v19 forKey:*MEMORY[0x1E6970F50]];
  }

  v20 = [options objectForKey:@"AVURLAssetClientAuditTokenKey"];
  if (v20)
  {
    [dictionary setObject:v20 forKey:*MEMORY[0x1E6970F48]];
  }

  v21 = [options objectForKey:@"AVURLAssetAlternativeConfigurationOptionsKey"];
  if (v21)
  {
    [dictionary setObject:v21 forKey:*MEMORY[0x1E6970F10]];
  }

  v22 = [options objectForKey:@"AVURLAssetSSLPropertiesKey"];
  if (v22)
  {
    [dictionary setObject:v22 forKey:*MEMORY[0x1E69710D8]];
  }

  v23 = [options objectForKey:@"AVURLAssetMaxSizeAllowedForCellularAccessKey"];
  v24 = [options objectForKey:@"AVURLAssetAllowsCellularAccessKey"];
  if (v24)
  {
    bOOLValue = [v24 BOOLValue];
    if (v23 && ((bOOLValue ^ ([v23 longLongValue] == 0)) & 1) == 0)
    {
      v67 = MEMORY[0x1E695DF30];
      v68 = *MEMORY[0x1E695D940];
      v69 = @"AVURLAssetMaxSizeAllowedForCellularAccessKey and AVURLAssetAllowsCellularAccessKey options are incompatible";
      goto LABEL_198;
    }

    if ((bOOLValue & 1) == 0)
    {
      v23 = [MEMORY[0x1E696AD98] numberWithInt:0];
    }
  }

  if (v23)
  {
    [dictionary setObject:v23 forKey:*MEMORY[0x1E6971018]];
  }

  v26 = [options objectForKey:@"AVURLAssetAllowsExpensiveNetworkAccessKey"];
  if (v26 && ([v26 BOOLValue] & 1) == 0)
  {
    [dictionary setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6970FA0]];
  }

  v27 = [options objectForKey:@"AVURLAssetAllowsConstrainedNetworkAccessKey"];
  if (v27 && ([v27 BOOLValue] & 1) == 0)
  {
    [dictionary setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6970F98]];
  }

  if ([objc_msgSend(options objectForKey:{@"AVURLAssetInheritURIQueryComponentFromReferencingURIKey", "BOOLValue"}])
  {
    [dictionary setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6970FF0]];
  }

  v28 = [options objectForKey:@"AVURLAssetBoundNetworkInterfaceName"];
  if (v28)
  {
    [dictionary setObject:v28 forKey:*MEMORY[0x1E6970F30]];
  }

  if ([objc_msgSend(options objectForKey:{@"AVURLAssetUseAppleWirelessDirectLinkKey", "BOOLValue"}])
  {
    [dictionary setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6971110]];
  }

  v29 = [options objectForKey:@"AVURLAssetPreferPreciseDurationAndTimingKey"];
  if (v29)
  {
    [dictionary setObject:v29 forKey:*MEMORY[0x1E6971090]];
  }

  v30 = [options objectForKey:@"AVURLAssetOutOfBandMIMETypeKey"];
  if (v30)
  {
    v31 = [objc_msgSend(objc_msgSend(v30 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceCharacterSet")), "componentsSeparatedByString:", @";", "firstObject"}];
    [dictionary setObject:v31 forKey:*MEMORY[0x1E6971070]];
  }

  v32 = [options objectForKey:@"AVURLAssetOverrideFileTypeKey"];
  if (v32)
  {
    [dictionary setObject:v32 forKey:*MEMORY[0x1E6971068]];
  }

  v33 = [options objectForKey:@"AVURLAssetAllowableTypeCategoriesKey"];
  if (v33)
  {
    [dictionary setObject:v33 forKey:*MEMORY[0x1E6970EF8]];
  }

  v34 = [options objectForKey:@"AVURLAssetAllowableAudioCodecTypesKey"];
  if (v34)
  {
    [dictionary setObject:v34 forKey:*MEMORY[0x1E6970EE8]];
  }

  v35 = [options objectForKey:@"AVURLAssetAllowableVideoCodecTypesKey"];
  if (v35)
  {
    [dictionary setObject:v35 forKey:*MEMORY[0x1E6970F00]];
  }

  v36 = [options objectForKey:@"AVURLAssetAllowableCaptionFormatsKey"];
  if (v36)
  {
    [dictionary setObject:v36 forKey:*MEMORY[0x1E6970EF0]];
  }

  if ([AVAsset _assetCreationOptionsRequiresInProcessOperation:options])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [dictionary setObject:v37 forKey:*MEMORY[0x1E69710D0]];
  }

  if ([AVAsset _assetCreationOptionsPrefersSandboxedOption:options])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [dictionary setObject:v38 forKey:*MEMORY[0x1E6971098]];
  }

  v39 = [options objectForKey:@"AVURLAssetByteRangeInFileKey"];
  if (v39)
  {
    [dictionary setObject:v39 forKey:*MEMORY[0x1E6970F38]];
  }

  v40 = [options objectForKey:@"AVURLAssetHTTPUserAgentKey"];
  v41 = [options objectForKey:@"AVURLAssetHTTPHeaderFieldsKey"];
  if (!v41)
  {
    if (!v40)
    {
      goto LABEL_74;
    }

LABEL_70:
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    goto LABEL_71;
  }

  dictionary2 = v41;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    dictionary2 = 0;
  }

  if (!v40)
  {
    goto LABEL_72;
  }

  if (!dictionary2)
  {
    goto LABEL_70;
  }

  dictionary2 = [dictionary2 mutableCopy];
  allKeys = [dictionary2 allKeys];
  v133[0] = MEMORY[0x1E69E9820];
  v133[1] = 3221225472;
  v133[2] = __126__AVURLAsset__getFigAssetCreationOptionsFromURLAssetInitializationOptions_assetLoggingIdentifier_figAssetCreationFlags_error___block_invoke;
  v133[3] = &unk_1E74620F0;
  v133[4] = dictionary2;
  [allKeys enumerateObjectsUsingBlock:v133];
LABEL_71:
  [dictionary2 setObject:v40 forKey:@"User-Agent"];
LABEL_72:
  if (dictionary2)
  {
    [dictionary setObject:dictionary2 forKey:*MEMORY[0x1E6970FE8]];
  }

LABEL_74:
  v44 = [options objectForKey:@"AVURLAssetAllowedHTTPProtocolTypesKey"];
  if (v44)
  {
    [dictionary setObject:v44 forKey:*MEMORY[0x1E6970F08]];
  }

  v45 = [options objectForKey:@"AVURLAssetApplicationTransportSecurityKey"];
  if (v45)
  {
    [dictionary setObject:v45 forKey:*MEMORY[0x1E6970F28]];
  }

  v46 = [options objectForKey:@"AVURLAssetCacheKey"];
  v47 = [v46 URL];
  if (v47)
  {
    [dictionary setObject:v47 forKey:*MEMORY[0x1E6971040]];
    [dictionary setObject:*MEMORY[0x1E6970E78] forKey:*MEMORY[0x1E6971030]];
    if ([v46 isProgressiveDownloadCacheEnabled])
    {
      [dictionary setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6970F40]];
    }

    if ([v46 isHTTPLiveStreamingCacheEnabled])
    {
      v48 = MEMORY[0x1E695E118];
      v49 = MEMORY[0x1E6970FE0];
LABEL_86:
      [dictionary setObject:v48 forKey:*v49];
    }
  }

  else if ([objc_msgSend(options objectForKey:{@"AVURLAssetCacheUseNonPurgeableMemoryKey", "BOOLValue"}])
  {
    [dictionary setObject:*MEMORY[0x1E6970E80] forKey:*MEMORY[0x1E6971030]];
    v50 = [options objectForKey:@"AVURLAssetCacheNonPurgeableMemoryLimitKey"];
    if (v50)
    {
      v48 = v50;
      v49 = MEMORY[0x1E6971038];
      goto LABEL_86;
    }
  }

  v51 = [options objectForKey:@"AVURLAssetVideoNotEligibleForAppRecordingKey"];
  v52 = MEMORY[0x1E695E4C0];
  if (v51)
  {
    bOOLValue2 = [v51 BOOLValue];
    v54 = MEMORY[0x1E695E4D0];
    if (!bOOLValue2)
    {
      v54 = v52;
    }

    [dictionary setObject:*v54 forKey:*MEMORY[0x1E6971120]];
  }

  v55 = [options objectForKey:@"AVURLAssetUsesNoPersistentCacheKey"];
  v56 = v55;
  if (v55)
  {
    bOOLValue3 = [v55 BOOLValue];
    v58 = MEMORY[0x1E695E4D0];
    if (!bOOLValue3)
    {
      v58 = v52;
    }

    [dictionary setObject:*v58 forKey:*MEMORY[0x1E6971058]];
  }

  if ([objc_msgSend(options objectForKey:{@"AVURLAssetShouldMatchDataInCacheByURLPathComponentOnlyKey", "BOOLValue"}])
  {
    [dictionary setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6971048]];
  }

  if ([objc_msgSend(options objectForKey:{@"AVURLAssetShouldMatchDataInCacheByURLWithoutQueryComponentKey", "BOOLValue"}])
  {
    [dictionary setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6971050]];
  }

  v59 = [options objectForKey:@"AVURLAssetReadAheadOnByteStreamCreationEnabledKey"];
  if (v59)
  {
    [dictionary setObject:v59 forKey:*MEMORY[0x1E6971010]];
  }

  v60 = [options objectForKey:@"AVURLAssetNetworkProbeRequestDisabledKey"];
  v61 = MEMORY[0x1E6970F90];
  if (v60)
  {
    [dictionary setObject:v60 forKey:*MEMORY[0x1E6970F90]];
  }

  v62 = [options objectForKey:@"AVURLAssetNetworkLatencyMitigationKeyPodcastsOnly"];
  if (v62)
  {
    v63 = v62;
    [dictionary setObject:v62 forKey:*MEMORY[0x1E69710E8]];
    [dictionary setObject:v63 forKey:*MEMORY[0x1E6970F78]];
    [dictionary setObject:v63 forKey:*v61];
    [dictionary setObject:v63 forKey:*MEMORY[0x1E6970F20]];
    [dictionary setObject:v63 forKey:*MEMORY[0x1E6970F18]];
  }

  v64 = [options objectForKey:@"AVURLAssetDownloadDestinationURLKey"];
  if (v64)
  {
    [dictionary setObject:v64 forKey:*MEMORY[0x1E6970FB0]];
  }

  v65 = [options objectForKey:@"AVURLAssetDownloadIsLowPriorityKey"];
  if (v65)
  {
    [dictionary setObject:v65 forKey:*MEMORY[0x1E6970FB8]];
  }

  if (v56)
  {
    bOOLValue4 = [v56 BOOLValue];
    if (v64)
    {
      if (bOOLValue4)
      {
        v67 = MEMORY[0x1E695DF30];
        v68 = *MEMORY[0x1E695D940];
        v69 = @"AVURLAssetDownloadDestinationURLKey and AVURLAssetUsesNoPersistentCacheKey options are incompatible";
LABEL_198:
        v117 = AVErrorForClientProgrammingError([v67 exceptionWithName:v68 reason:v69 userInfo:0]);
        dictionary = 0;
        goto LABEL_199;
      }
    }
  }

  v70 = [options objectForKey:@"AVURLAssetPreloadDurationWhenNextItemKey"];
  if (v70)
  {
    memset(&v132[32], 0, 24);
    [v70 CMTimeValue];
    *v132 = *&v132[32];
    [dictionary setObject:AVDictionaryWithTime(v132) forKey:*MEMORY[0x1E69710A0]];
  }

  if ([objc_msgSend(options objectForKey:{@"AVURLAssetOptimizeAccessForLinearMoviePlaybackKey", "BOOLValue"}])
  {
    v71 = *MEMORY[0x1E695E4D0];
    [dictionary setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6971010]];
    [dictionary setObject:v71 forKey:*MEMORY[0x1E6970FF8]];
    [dictionary setObject:v71 forKey:*MEMORY[0x1E69710C0]];
    [dictionary setObject:v71 forKey:*MEMORY[0x1E6970F88]];
    [dictionary setObject:v71 forKey:*v61];
  }

  v72 = [options objectForKey:@"AVAssetPrepareForIncrementalFragmentsKey"];
  if (v72)
  {
    [dictionary setObject:v72 forKey:*MEMORY[0x1E69710B0]];
  }

  identifierCopy = identifier;
  v73 = [options objectForKey:@"AVURLAssetRequiresCustomURLLoadingKey"];
  v74 = [options objectForKey:@"AVURLAssetUseClientURLLoadingExclusively"];
  if (([v73 BOOLValue] & 1) != 0 || objc_msgSend(v74, "BOOLValue"))
  {
    [dictionary setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E69710C8]];
  }

  v75 = [options objectForKey:@"AVURLAssetProtectedContentSupportStorageURLKey"];
  v76 = [options objectForKey:@"AVURLAssetPurchaseBundleKey"];
  v77 = [options objectForKey:@"AVURLAssetAirPlayAuthorizationInfoKey"];
  v78 = v77;
  if (v75 || v76 || v77)
  {
    v79 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v80 = v79;
    if (v75)
    {
      [v79 setValue:v75 forKey:*MEMORY[0x1E6970C10]];
    }

    if (v76)
    {
      [v80 setValue:v76 forKey:*MEMORY[0x1E6970C18]];
    }

    if (v78)
    {
      [v80 setValue:v78 forKey:*MEMORY[0x1E6970C08]];
    }

    [dictionary setObject:v80 forKey:*MEMORY[0x1E6970F60]];
  }

  v81 = [options objectForKey:@"AVURLAssetHTTPCookiesKey"];
  if ([v81 count])
  {
    v82 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v81, "count")}];
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v83 = [v81 countByEnumeratingWithState:&v128 objects:v135 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v129;
      do
      {
        for (i = 0; i != v84; ++i)
        {
          if (*v129 != v85)
          {
            objc_enumerationMutation(v81);
          }

          properties = [*(*(&v128 + 1) + 8 * i) properties];
          if (properties)
          {
            [v82 addObject:properties];
          }
        }

        v84 = [v81 countByEnumeratingWithState:&v128 objects:v135 count:16];
      }

      while (v84);
    }

    [dictionary setObject:v82 forKey:*MEMORY[0x1E6970ED8]];
  }

  v88 = [options objectForKey:@"AVURLAssetiTunesStoreContentInfoKey"];
  if (v88)
  {
    v89 = [self _getFigAssetiTunesStoreContentInfoFromURLAssetiTunesStoreContentInfo:v88];
    [dictionary setObject:v89 forKey:*MEMORY[0x1E6971128]];
  }

  v90 = [options objectForKey:@"AVURLAssetOutOfBandAlternateTracksKey"];
  if (v90)
  {
    v91 = v90;
    v119 = dictionary;
    errorCopy = error;
    v92 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v90, "count")}];
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v93 = [v91 countByEnumeratingWithState:&v124 objects:v134 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v125;
      v96 = *MEMORY[0x1E69737C8];
      v123 = *MEMORY[0x1E695E4D0];
      v122 = *MEMORY[0x1E69737A8];
      do
      {
        for (j = 0; j != v94; ++j)
        {
          if (*v125 != v95)
          {
            objc_enumerationMutation(v91);
          }

          v98 = *(*(&v124 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v99 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v98];
            if (![v99 objectForKey:v96])
            {
              [v99 setValue:@"text" forKey:v96];
            }

            if ([objc_msgSend(v99 objectForKey:{@"MediaSelectionOptionsTaggedMediaCharacteristics", "containsObject:", @"public.auxiliary-content"}])
            {
              [v99 setValue:v123 forKey:v122];
            }

            [v92 addObject:v99];
          }
        }

        v94 = [v91 countByEnumeratingWithState:&v124 objects:v134 count:16];
      }

      while (v94);
    }

    dictionary = v119;
    [v119 setObject:v92 forKey:*MEMORY[0x1E6971060]];
    error = errorCopy;
  }

  v100 = [options objectForKey:@"AVURLAssetEnableQUICKey"];
  if (v100)
  {
    [dictionary setObject:v100 forKey:*MEMORY[0x1E6970FC8]];
  }

  v101 = [options objectForKey:@"AVURLAssetForceQUICKey"];
  if (v101)
  {
    [dictionary setObject:v101 forKey:*MEMORY[0x1E6970FD0]];
  }

  v102 = [options objectForKey:@"AVURLAssetWhitelistQUICKey"];
  if (v102)
  {
    [dictionary setObject:v102 forKey:*MEMORY[0x1E6970EE0]];
  }

  v103 = [options objectForKey:@"AVURLAssetEnableMultiPath"];
  if (v103)
  {
    [dictionary setObject:v103 forKey:*MEMORY[0x1E6970FC0]];
  }

  v104 = [options objectForKey:@"AVURLAssetPrimarySessionIdentifierKey"];
  if (v104)
  {
    uUIDString = [v104 UUIDString];
    [dictionary setObject:uUIDString forKey:*MEMORY[0x1E69710B8]];
  }

  v106 = [options objectForKey:@"AVURLAssetInitialPreloadedPlaylistKey"];
  if (v106)
  {
    [dictionary setObject:v106 forKey:*MEMORY[0x1E6971000]];
  }

  v107 = [options objectForKey:@"AVURLAssetPreferLargeResourceRequests"];
  if (v107)
  {
    [dictionary setObject:v107 forKey:*MEMORY[0x1E6971088]];
  }

  if (identifierCopy)
  {
    [dictionary setObject:identifierCopy forKey:*MEMORY[0x1E6971008]];
  }

  v108 = [options objectForKey:@"AVURLAssetUnitTestOptions"];
  if (v108)
  {
    [dictionary setObject:v108 forKey:*MEMORY[0x1E6971108]];
  }

  if ([options objectForKey:@"AVURLAssetParentNetworkActivityKey"])
  {
    Token = FigNWActivityCreateToken();
    if (Token)
    {
      v110 = Token;
      [dictionary setObject:Token forKey:*MEMORY[0x1E6971078]];
      CFRelease(v110);
    }
  }

  v111 = [options objectForKey:@"AVURLAssetURLRequestAttributionKey"];
  if (v111)
  {
    [dictionary setObject:v111 forKey:*MEMORY[0x1E6971100]];
  }

  v112 = [options objectForKey:@"AVURLAssetShouldEnableLegacyWebKitCompatibilityModeForContentKeyRequests"];
  if (v112)
  {
    [dictionary setObject:v112 forKey:*MEMORY[0x1E69710E0]];
  }

  v113 = [options objectForKey:@"AVURLAssetCustomURLLoaderKey"];
  if (v113)
  {
    [dictionary setObject:v113 forKey:*MEMORY[0x1E6970F68]];
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6970FA8]];
  }

  v114 = [options objectForKey:@"AVURLAssetShouldSupportAIMEMetadataKey"];
  if (v114)
  {
    [dictionary setObject:v114 forKey:*MEMORY[0x1E69710F0]];
  }

  v115 = [options objectForKey:@"AVURLAssetShouldParseExternalSphericalTagsKey"];
  if (v115)
  {
    [dictionary setObject:v115 forKey:*MEMORY[0x1E6971080]];
  }

  v116 = [options objectForKey:@"AVURLAssetDisableL4SKey"];
  if (v116)
  {
    [dictionary setObject:v116 forKey:*MEMORY[0x1E6970F80]];
  }

  v117 = [options objectForKey:@"AVURLAssetRequiresNWLoaderKey"];
  if (v117)
  {
    [dictionary setObject:v117 forKey:*MEMORY[0x1E6971118]];
    v117 = 0;
  }

LABEL_199:
  if (error && !dictionary)
  {
    *error = v117;
  }

  return dictionary;
}

uint64_t __126__AVURLAsset__getFigAssetCreationOptionsFromURLAssetInitializationOptions_assetLoggingIdentifier_figAssetCreationFlags_error___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [a2 caseInsensitiveCompare:@"User-Agent"];
    if (!result)
    {
      v5 = *(a1 + 32);

      return [v5 removeObjectForKey:a2];
    }
  }

  return result;
}

- (AVURLAsset)initWithURL:(NSURL *)URL options:(NSDictionary *)options
{
  v7.receiver = self;
  v7.super_class = AVURLAsset;
  result = [(AVAsset *)&v7 init];
  if (result)
  {
    return avurlasset_setupGuts(result, URL, options, 0, 0);
  }

  return result;
}

- (AVURLAsset)initWithFigCreationOptions:(id)options options:(id)a4 figAssetCreationOptions:(id)creationOptions figAssetCreationFlags:(unint64_t)flags
{
  v11.receiver = self;
  v11.super_class = AVURLAsset;
  result = [(AVAsset *)&v11 init];
  if (result)
  {
    return avurlasset_setupGuts(result, options, a4, creationOptions, flags);
  }

  return result;
}

- (AVURLAsset)initWithFileURL:(id)l offset:(int64_t)offset length:(int64_t)length options:(id)options
{
  v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:offset];
  [dictionary setObject:v12 forKey:*MEMORY[0x1E6970BF0]];
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:length];
  [dictionary setObject:v13 forKey:*MEMORY[0x1E6970BE8]];
  [v10 setObject:dictionary forKey:@"AVURLAssetByteRangeInFileKey"];
  if (!l || ![l isFileURL])
  {
    return 0;
  }

  return [(AVURLAsset *)self initWithURL:l options:v10];
}

- (id)_errorForFigNotificationPayload:(__CFDictionary *)payload key:(__CFString *)key
{
  if (!payload)
  {
    return 0;
  }

  v6 = CFGetTypeID(payload);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(payload, key);
  valuePtr = 0;
  if (!Value)
  {
    return 0;
  }

  v8 = Value;
  v9 = CFGetTypeID(Value);
  if (v9 != CFNumberGetTypeID())
  {
    return 0;
  }

  CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
  return AVLocalizedErrorWithUnderlyingOSStatus(valuePtr, 0);
}

- (void)_ensureAssetDownloadCache
{
  makeOneAssetDownloadCacheOnly = self->_URLAsset->makeOneAssetDownloadCacheOnly;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__AVURLAsset__ensureAssetDownloadCache__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  [(AVDispatchOnce *)makeOneAssetDownloadCacheOnly runBlockOnce:v3];
}

AVAssetDownloadCache *__39__AVURLAsset__ensureAssetDownloadCache__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 16) + 96) objectForKey:@"AVURLAssetCacheKey"];
  if (!result)
  {
    result = [[AVAssetDownloadCache alloc] initWithAsset:*(a1 + 32)];
    *(*(*(a1 + 32) + 16) + 72) = result;
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(AVURLAsset *)self _doNotLogURLs])
  {
    v6 = @"<redacted>";
  }

  else
  {
    v6 = [(AVURLAsset *)self URL];
  }

  return [v3 stringWithFormat:@"<%@: %p, URL = %@>", v5, self, v6];
}

- (void)_setAssetInspectorLoader:(id)loader
{
  if (self->_URLAsset->loader != loader)
  {
    [(AVURLAsset *)self _removeFigAssetNotifications];
    loaderCopy = loader;

    self->_URLAsset->loader = loader;
    URLRequestHelper = self->_URLAsset->URLRequestHelper;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__AVURLAsset__setAssetInspectorLoader___block_invoke;
    v7[3] = &unk_1E7462118;
    v7[4] = loader;
    [(AVAssetClientURLRequestHelper *)URLRequestHelper setFigAssetProvider:v7];
    [(AVURLAsset *)self _addFigAssetNotifications];
  }
}

- (id)tracks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__4;
  URLAsset = self->_URLAsset;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  tracksAccessQueue = URLAsset->tracksAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __20__AVURLAsset_tracks__block_invoke;
  v6[3] = &unk_1E7460EE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(tracksAccessQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_tracksDidChange
{
  tracksAccessQueue = self->_URLAsset->tracksAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AVURLAsset__tracksDidChange__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(tracksAccessQueue, block);
}

- (BOOL)_doNotLogURLs
{
  v2 = [-[AVURLAsset creationOptions](self "creationOptions")];

  return [v2 BOOLValue];
}

- (NSUUID)httpSessionIdentifier
{
  _assetInspector = [(AVURLAsset *)self _assetInspector];

  return [_assetInspector httpSessionIdentifier];
}

- (id)recommendedDestinationURLPathExtension
{
  if ([(AVAsset *)self _isStreaming])
  {
    return @"movpkg";
  }

  identifyingTagClass = [(AVURLAsset *)self identifyingTagClass];
  identifyingTag = [(AVURLAsset *)self identifyingTag];
  if ([identifyingTagClass isEqualToString:*MEMORY[0x1E6982C48]])
  {
    return identifyingTag;
  }

  if (identifyingTag)
  {
    if (identifyingTagClass)
    {
      v6 = [MEMORY[0x1E6982C40] typeWithTag:identifyingTag tagClass:identifyingTagClass conformingToType:0];
    }

    else
    {
      v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:identifyingTag];
    }
  }

  else
  {
    v6 = 0;
  }

  return [v6 preferredFilenameExtension];
}

- (void)cancelLoading
{
  [(AVAssetInspectorLoader *)self->_URLAsset->loader cancelLoading];
  resourceLoader = self->_URLAsset->resourceLoader;

  [(AVAssetResourceLoader *)resourceLoader cancelLoading];
}

- (unint64_t)referenceRestrictions
{
  v2 = [(NSDictionary *)self->_URLAsset->initializationOptions objectForKey:@"AVURLAssetReferenceRestrictionsKey"];

  return [v2 unsignedIntegerValue];
}

- (AVAssetCache)assetCache
{
  result = [(AVURLAsset *)self _managedAssetCache];
  if (!result)
  {
    [(AVURLAsset *)self _ensureAssetDownloadCache];
    return self->_URLAsset->assetCache;
  }

  return result;
}

- (BOOL)shouldMatchDataInCacheByURLPathComponentOnly
{
  v2 = [(NSDictionary *)self->_URLAsset->initializationOptions objectForKey:@"AVURLAssetShouldMatchDataInCacheByURLPathComponentOnlyKey"];

  return [v2 BOOLValue];
}

- (BOOL)shouldMatchDataInCacheByURLWithoutQueryComponent
{
  v2 = [(NSDictionary *)self->_URLAsset->initializationOptions objectForKey:@"AVURLAssetShouldMatchDataInCacheByURLWithoutQueryComponentKey"];

  return [v2 BOOLValue];
}

- (NSString)cacheKey
{
  if (![(AVURLAsset *)self shouldMatchDataInCacheByURLPathComponentOnly])
  {
    [(AVURLAsset *)self shouldMatchDataInCacheByURLWithoutQueryComponent];
  }

  [(AVURLAsset *)self URL];
  v3 = FigCFURLCreateCacheKey();

  return v3;
}

- (id)identifyingTagClass
{
  _assetInspector = [(AVURLAsset *)self _assetInspector];

  return [_assetInspector identifyingTagClass];
}

- (id)identifyingTag
{
  _assetInspector = [(AVURLAsset *)self _assetInspector];

  return [_assetInspector identifyingTag];
}

- (id)SHA1Digest
{
  _assetInspector = [(AVURLAsset *)self _assetInspector];

  return [_assetInspector SHA1Digest];
}

- (BOOL)_shouldOptimizeAccessForLinearMoviePlayback
{
  v2 = [(NSDictionary *)self->_URLAsset->initializationOptions objectForKey:@"AVURLAssetOptimizeAccessForLinearMoviePlaybackKey"];

  return [v2 BOOLValue];
}

- (BOOL)_clientURLLoadingRepresentsAccurateNetworkStatistics
{
  if ([-[NSDictionary objectForKey:](self->_URLAsset->initializationOptions objectForKey:{@"AVURLAssetClientURLLoadingRepresentsAccurateNetworkStatistics", "BOOLValue"}] & 1) != 0 || (objc_msgSend(-[NSDictionary objectForKey:](self->_URLAsset->initializationOptions, "objectForKey:", @"AVURLAssetUseClientURLLoadingExclusively"), "BOOLValue"))
  {
    return 1;
  }

  v4 = [(NSDictionary *)self->_URLAsset->initializationOptions objectForKey:@"AVURLAssetRequiresCustomURLLoadingKey"];

  return [v4 BOOLValue];
}

- (id)_resourceLoaderWithRemoteHandlerContext:(id)context
{
  makeOneResourceLoaderOnly = self->_URLAsset->makeOneResourceLoaderOnly;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__AVURLAsset_AVURLAssetURLHandlingInternal___resourceLoaderWithRemoteHandlerContext___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = context;
  [(AVDispatchOnce *)makeOneResourceLoaderOnly runBlockOnce:v6];
  return self->_URLAsset->resourceLoader;
}

void __85__AVURLAsset_AVURLAssetURLHandlingInternal___resourceLoaderWithRemoteHandlerContext___block_invoke(uint64_t a1)
{
  v2 = [AVAssetResourceLoader initWithURLRequestHelper:"initWithURLRequestHelper:asset:remoteCustomURLHandlerContext:" asset:*(*(*(a1 + 32) + 16) + 16) remoteCustomURLHandlerContext:?];
  v3 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 32) + 16) + 56), &v3, v2);
  if (v3)
  {
  }
}

+ (id)instanceIdentifierMapTable
{
  if (sInstanceIdentifierOnceToken != -1)
  {
    +[AVURLAsset(AVURLAssetInstanceIdentiferMapping) instanceIdentifierMapTable];
  }

  return sInstanceIdentfierMapTable;
}

uint64_t __76__AVURLAsset_AVURLAssetInstanceIdentiferMapping__instanceIdentifierMapTable__block_invoke()
{
  sInstanceIdentifierMapTableQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avurlasset.instanceIdentifierMapping");
  result = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0x10000 valueOptions:5 capacity:0];
  sInstanceIdentfierMapTable = result;
  return result;
}

- (void)_setUserInfoObject:(id)object
{
  uUIDString = [(NSUUID *)[(AVURLAsset *)self httpSessionIdentifier] UUIDString];
  v6 = +[AVURLAsset instanceIdentifierMapTable];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__AVURLAsset_AVURLAssetInstanceIdentiferMapping___setUserInfoObject___block_invoke;
  v7[3] = &unk_1E7462140;
  v7[4] = object;
  v7[5] = v6;
  v7[6] = uUIDString;
  v7[7] = self;
  av_readwrite_dispatch_queue_write(sInstanceIdentifierMapTableQueue, v7);
}

uint64_t __69__AVURLAsset_AVURLAssetInstanceIdentiferMapping___setUserInfoObject___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    result = [v2 setObject:v3 forKey:a1[6]];
    v5 = 1;
  }

  else
  {
    result = [v2 removeObjectForKey:a1[6]];
    v5 = 0;
  }

  *(*(a1[7] + 16) + 104) = v5;
  return result;
}

+ (id)userInfoObjectForURLAsset:(id)asset
{
  result = [objc_msgSend(asset "httpSessionIdentifier")];
  if (result)
  {

    return [self userInfoObjectForURLAssetInstanceIdentifier:result];
  }

  return result;
}

+ (id)userInfoObjectForURLAssetInstanceIdentifier:(id)identifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  instanceIdentifierMapTable = [self instanceIdentifierMapTable];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__AVURLAsset_AVURLAssetInstanceIdentiferMapping__userInfoObjectForURLAssetInstanceIdentifier___block_invoke;
  block[3] = &unk_1E7461068;
  block[5] = identifier;
  block[6] = &v8;
  block[4] = instanceIdentifierMapTable;
  av_readwrite_dispatch_queue_read(sInstanceIdentifierMapTableQueue, block);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __94__AVURLAsset_AVURLAssetInstanceIdentiferMapping__userInfoObjectForURLAssetInstanceIdentifier___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) objectForKey:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (NSUUID)uniqueIdentifier
{
  _assetInspector = [(AVURLAsset *)self _assetInspector];

  return [_assetInspector uniqueIdentifier];
}

- (BOOL)_attachedToExternalContentKeySession
{
  referencedObject = [(AVWeakReference *)self->_URLAsset->sessionReference referencedObject];
  if (referencedObject)
  {
    LOBYTE(referencedObject) = [referencedObject isInternal] ^ 1;
  }

  return referencedObject;
}

- (void)expire
{
  [(AVURLAsset *)self cancelLoading];
  _figAsset = [(AVAsset *)self _figAsset];
  if (_figAsset)
  {
    v4 = _figAsset;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v5)
    {

      v5(v4);
    }
  }
}

- (id)_installHandlerForNSURLSessionConfiguration:(id)configuration queue:(id)queue
{
  v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v7 setMaxConcurrentOperationCount:1];
  [v7 setUnderlyingQueue:queue];
  v8 = [[AVAssetCustomURLBridgeForNSURLSession alloc] initWithFigAsset:[(AVAsset *)self _figAsset]];
  -[AVAssetCustomURLBridgeForNSURLSession setSession:](v8, "setSession:", [MEMORY[0x1E695AC78] sessionWithConfiguration:configuration delegate:v8 delegateQueue:v7]);
  return v8;
}

+ (id)readableTypeIdentifiersForItemProvider
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.avfoundation.urlasset";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  if ([identifier caseInsensitiveCompare:@"com.apple.avfoundation.urlasset"])
  {
    v18 = *MEMORY[0x1E696A278];
    v19[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Reading data from the type identifier %@ is not supported by AVURLAsset.", identifier];
    data = 0;
    v17 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1]);
  }

  else if (data)
  {
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:data error:&v17];
    securityScopedURL = [v10 securityScopedURL];
    assetInitializationOptions = [v10 assetInitializationOptions];
    if (securityScopedURL)
    {
      v13 = v17 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = assetInitializationOptions;
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16 = v15;
      if (v14)
      {
        [v15 addEntriesFromDictionary:v14];
      }

      [v16 setValue:MEMORY[0x1E695E118] forKey:@"AVURLAssetHasSecurityScopedURLKey"];
      data = [AVURLAsset URLAssetWithURL:securityScopedURL options:v16];
    }

    else
    {
      data = 0;
    }
  }

  if (error && !data)
  {
    v8 = v17;
    if (!v17)
    {
      v8 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
    }

    *error = v8;
  }

  return data;
}

+ (id)_objectWithItemProviderFileURL:(id)l typeIdentifier:(id)identifier isInPlace:(BOOL)place error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  if ([identifier caseInsensitiveCompare:@"com.apple.avfoundation.urlasset"])
  {
    v13[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Reading file representations for the type identifier %@ is not supported by AVURLAsset.", identifier, *MEMORY[0x1E696A278]];
    v9 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1]);
    if (error)
    {
      v10 = v9;
      if (v9)
      {
LABEL_8:
        result = 0;
        *error = v10;
        return result;
      }

LABEL_7:
      v10 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
      goto LABEL_8;
    }

    return 0;
  }

  else
  {
    result = [AVURLAsset URLAssetWithURL:l options:0];
    if (error && !result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

+ (id)writableTypeIdentifiersForItemProvider
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.avfoundation.urlasset";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = [(AVURLAsset *)self URL];
  v14 = 0;
  if ([identifier caseInsensitiveCompare:@"com.apple.avfoundation.urlasset"])
  {
    v15 = *MEMORY[0x1E696A278];
    identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"Loading data from the type identifier %@ is not supported by AVURLAsset.", identifier];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&identifier forKeys:&v15 count:1];
    v9 = -11862;
  }

  else
  {
    if ([(NSURL *)v7 isFileURL])
    {
      v10 = [AVURLAssetItemProviderData itemProviderDataWithURL:v7 assetInitializationOptions:self->_URLAsset->initializationOptions];
      v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v14];
      if (v11)
      {
        v12 = v14 == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        (*(handler + 2))(handler, v11);
        return 0;
      }

      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    v17 = *MEMORY[0x1E696A278];
    v18[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Writing to NSItemProviders is not supported for non file:/// scheme URLs: %@", v7];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v9 = -11838;
  }

  v14 = AVLocalizedError(@"AVFoundationErrorDomain", v9, v8);
  if (!v14)
  {
LABEL_12:
    v14 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
  }

LABEL_13:
  (*(handler + 2))(handler, 0);
  return 0;
}

- (id)_loadFileRepresentationOfTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = [(AVURLAsset *)self URL];
  if ([identifier caseInsensitiveCompare:@"com.apple.avfoundation.urlasset"])
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Loading file representations for the type identifier %@ is not supported by AVURLAsset.", identifier, *MEMORY[0x1E696A278]];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = -11862;
  }

  else
  {
    if ([(NSURL *)v6 isFileURL])
    {
      (*(handler + 2))(handler, v6, 1, 0);
      return 0;
    }

    v13 = *MEMORY[0x1E696A278];
    v14[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Writing to NSItemProviders is not supported for non file:/// scheme URLs: %@", v6];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = -11838;
  }

  v9 = AVLocalizedError(@"AVFoundationErrorDomain", v8, v7);
  if (!v9)
  {
    v9 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
  }

  (*(handler + 2))(handler, 0, 0, v9);
  return 0;
}

- (id)_serializableCreationOptions
{
  v2 = [[AVAssetSerializableCreationOptions alloc] initWithCreationOptions:[(AVURLAsset *)self creationOptions]];

  return v2;
}

+ (id)assetForNSURLSessionWithURL:(id)l propertyList:(id)list
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([list objectForKey:@"figAssetCreationOptions"], FigAssetCreateOptionsDictFromPList(), v6 = objc_msgSend(list, "objectForKey:", @"figAssetCreationFlags"), objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    unsignedLongLongValue = [v6 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  v8 = [AVURLAsset alloc];
  v9 = 0;
  return [(AVURLAsset *)v8 initWithFigCreationOptions:l options:MEMORY[0x1E695E0F8] figAssetCreationOptions:v9 figAssetCreationFlags:unsignedLongLongValue];
}

- (int)_attachToContentKeySession:(id)session contentKeyBoss:(OpaqueFigContentKeyBoss *)boss failedSinceAlreadyAttachedToAnotherSession:(BOOL *)anotherSession
{
  v41 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = 0;
  _weakReference = [session _weakReference];
  if (!session || (v10 = 0, atomic_compare_exchange_strong(&self->_URLAsset->sessionReference, &v10, _weakReference), v10))
  {
    if (anotherSession)
    {
      if (_weakReference)
      {
        v19 = _weakReference != self->_URLAsset->sessionReference;
      }

      else
      {
        v19 = 0;
      }

      *anotherSession = v19;
    }

    v20 = 0;
    goto LABEL_34;
  }

  if (![(AVAsset *)self _figAsset])
  {
    fig_log_get_emitter();
    v14 = FigSignalErrorAtGM();
    goto LABEL_40;
  }

  [(AVAsset *)self _figAsset];
  CMBaseObject = FigAssetGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    goto LABEL_33;
  }

  v13 = *MEMORY[0x1E695E480];
  v14 = v12(CMBaseObject, *MEMORY[0x1E69711D8], *MEMORY[0x1E695E480], &v38);
  if (v14)
  {
LABEL_40:
    v20 = v14;
    goto LABEL_34;
  }

  if (boss && v38)
  {
    v15 = _os_feature_enabled_impl();
    v16 = v38;
    v17 = *(CMBaseObjectGetVTable() + 16);
    if (v15)
    {
      v18 = *(v17 + 144);
      if (v18)
      {
LABEL_18:
        v20 = v18(v16, boss);
        if (v20)
        {
          goto LABEL_34;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v18 = *(v17 + 88);
      if (v18)
      {
        goto LABEL_18;
      }
    }

LABEL_33:
    v20 = -12782;
    goto LABEL_34;
  }

LABEL_19:
  [(AVAsset *)self _figAsset];
  v21 = FigAssetGetCMBaseObject();
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v22)
  {
    goto LABEL_33;
  }

  v14 = v22(v21, *MEMORY[0x1E6971208], v13, &v39);
  if (v14)
  {
    goto LABEL_40;
  }

  _contentKeyGroups = [session _contentKeyGroups];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = [_contentKeyGroups countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
LABEL_23:
    v27 = 0;
    while (1)
    {
      if (*v35 != v26)
      {
        objc_enumerationMutation(_contentKeyGroups);
      }

      v28 = v39;
      _figContentKeySession = [*(*(&v34 + 1) + 8 * v27) _figContentKeySession];
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v30)
      {
        goto LABEL_33;
      }

      v14 = v30(v28, _figContentKeySession);
      if (v14)
      {
        goto LABEL_40;
      }

      if (v25 == ++v27)
      {
        v25 = [_contentKeyGroups countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v25)
        {
          goto LABEL_23;
        }

        break;
      }
    }
  }

  resourceLoader = [(AVURLAsset *)self resourceLoader];
  cf = 0;
  v20 = [session createAndInstallCustomURLHandlerForAsset:self outHandler:&cf];
  if (!v20)
  {
    [(AVAssetResourceLoader *)resourceLoader _setContentKeySessionCustomURLHandler:cf];
    if (cf)
    {
      CFRelease(cf);
    }
  }

LABEL_34:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return v20;
}

- (id)propertyListForNSURLSessionAssetReturningError:(id *)error
{
  if (![(AVAsset *)self _figAsset])
  {
LABEL_10:
    v7 = 0;
    goto LABEL_6;
  }

  FigAssetGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v4 = OUTLINED_FUNCTION_2_0();
    v6 = v5(v4);
    if (v6)
    {
      v7 = v6;
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v7 = -12782;
LABEL_6:
  if (error && v7)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v7, 0);
  }

  return 0;
}

@end