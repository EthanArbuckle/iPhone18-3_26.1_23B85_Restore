@interface AVFigAssetInspectorLoader
+ (id)_figAssetMediaSelectionPropertiesArray;
+ (id)_figAssetPropertiesForKeys;
+ (id)_figAssetTrackMediaSelectionPropertiesArray;
+ (id)_figAssetTrackPropertiesForKeys;
+ (void)_mapAssetKeys:(id)keys toFigAssetPropertySet:(id)set figAssetTrackPropertySet:(id)propertySet callerName:(id)name;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- (AVFigAssetInspectorLoader)initWithFigAsset:(OpaqueFigAsset *)asset forAsset:(id)forAsset;
- (AVFigAssetInspectorLoader)initWithURL:(id)l figAssetCreationFlags:(unint64_t)flags figAssetCreationOptions:(id)options avAssetInitializationOptions:(id)initializationOptions forAsset:(id)asset figErr:(int *)err;
- (BOOL)_isStreaming;
- (BOOL)hasProtectedContent;
- (BOOL)isCompatibleWithSavedPhotosAlbum;
- (BOOL)isComposable;
- (BOOL)isExportable;
- (BOOL)isPlayable;
- (BOOL)isReadable;
- (OpaqueFigFormatReader)_copyFormatReader;
- (double)_fragmentMindingInterval;
- (id)assetInspector;
- (id)contentKeySpecifiersEligibleForPreloading;
- (id)figChapterGroupInfo;
- (id)figChapters;
- (id)lyrics;
- (id)originalNetworkContentURL;
- (id)resolvedURL;
- (id)variants;
- (int64_t)_loadStatusForProperty:(id)property figAsset:(OpaqueFigAsset *)asset error:(id *)error;
- (int64_t)_statusOfValueForKey:(id)key error:(id *)error firstNonLoadedDependencyKey:(id *)dependencyKey;
- (int64_t)firstFragmentSequenceNumber;
- (int64_t)fragmentCount;
- (unint64_t)downloadToken;
- (void)_addFigAssetNotifications;
- (void)_ensureAllDependenciesOfKeyAreLoaded:(id)loaded;
- (void)_invokeCompletionHandlerForLoadingBatches:(id)batches;
- (void)_removeFigAssetNotifications;
- (void)_setFragmentMindingInterval:(double)interval;
- (void)_setIsAssociatedWithFragmentMinder:(BOOL)minder;
- (void)cancelLoading;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(id)keys keysForCollectionKeys:(id)collectionKeys completionHandler:(id)handler;
@end

@implementation AVFigAssetInspectorLoader

+ (id)_figAssetMediaSelectionPropertiesArray
{
  if (ensureDictionariesOfFigPropertiesForKeys_buildFigPropertiesForKeysOnce != -1)
  {
    +[AVFigAssetInspectorLoader _figAssetPropertiesForKeys];
  }

  return sFigAssetMediaSelectionProperties;
}

- (void)_addFigAssetNotifications
{
  if (self->_figAsset)
  {
    if (!self->_registeredForFigAssetNotifications)
    {
      v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
      _weakReference = [(AVAssetInspectorLoader *)self _weakReference];
      CFRetain(_weakReference);
      [v3 addListenerWithWeakReference:_weakReference callback:handleFigAssetLoadingNotification name:*MEMORY[0x1E6970E88] object:self->_figAsset flags:0];
      [v3 addListenerWithWeakReference:_weakReference callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EA8] object:self->_figAsset flags:0];
      [v3 addListenerWithWeakReference:_weakReference callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EA0] object:self->_figAsset flags:0];
      [v3 addListenerWithWeakReference:_weakReference callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EC8] object:self->_figAsset flags:0];
      [v3 addListenerWithWeakReference:_weakReference callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970ED0] object:self->_figAsset flags:0];
      [v3 addListenerWithWeakReference:_weakReference callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EC0] object:self->_figAsset flags:0];
      [v3 addListenerWithWeakReference:_weakReference callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EB8] object:self->_figAsset flags:0];
      self->_registeredForFigAssetNotifications = 1;
    }
  }
}

+ (id)_figAssetTrackMediaSelectionPropertiesArray
{
  if (ensureDictionariesOfFigPropertiesForKeys_buildFigPropertiesForKeysOnce != -1)
  {
    +[AVFigAssetInspectorLoader _figAssetPropertiesForKeys];
  }

  return sFigAssetTrackMediaSelectionProperties;
}

+ (id)_figAssetPropertiesForKeys
{
  if (ensureDictionariesOfFigPropertiesForKeys_buildFigPropertiesForKeysOnce != -1)
  {
    +[AVFigAssetInspectorLoader _figAssetPropertiesForKeys];
  }

  return sFigAssetPropertiesForKeys;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  result = [(AVFigAssetInspectorLoader *)self assetInspector];
  if (result)
  {

    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result duration];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (id)assetInspector
{
  assetInspectorOnce = self->_assetInspectorOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVFigAssetInspectorLoader_assetInspector__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)assetInspectorOnce runBlockOnce:v5];
  return self->_assetInspector;
}

AVFigAssetInspector *__43__AVFigAssetInspectorLoader_assetInspector__block_invoke(uint64_t a1)
{
  result = -[AVFigAssetInspector initWithFigAsset:]([AVFigAssetInspector alloc], "initWithFigAsset:", [*(a1 + 32) _figAsset]);
  *(*(a1 + 32) + 40) = result;
  return result;
}

+ (id)_figAssetTrackPropertiesForKeys
{
  if (ensureDictionariesOfFigPropertiesForKeys_buildFigPropertiesForKeysOnce != -1)
  {
    +[AVFigAssetInspectorLoader _figAssetPropertiesForKeys];
  }

  return sFigAssetTrackPropertiesForKeys;
}

- (BOOL)_isStreaming
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector _isStreaming];
}

- (AVFigAssetInspectorLoader)initWithURL:(id)l figAssetCreationFlags:(unint64_t)flags figAssetCreationOptions:(id)options avAssetInitializationOptions:(id)initializationOptions forAsset:(id)asset figErr:(int *)err
{
  v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
  if ([asset _hasResourceLoaderDelegate])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v12 setObject:v13 forKey:*MEMORY[0x1E6970F58]];
  }

  v14 = [initializationOptions objectForKey:@"AVAssetRequiresInProcessOperationKey"];
  if (v14 && ([v14 BOOLValue] & 1) != 0)
  {
    v15 = FigAssetCreateWithURL();
  }

  else
  {
    v15 = FigAssetRemoteCreateWithURLAndRetry();
  }

  v16 = v15;

  if (err)
  {
    *err = v16;
  }

  return 0;
}

- (AVFigAssetInspectorLoader)initWithFigAsset:(OpaqueFigAsset *)asset forAsset:(id)forAsset
{
  v37[1] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = AVFigAssetInspectorLoader;
  cf = 0;
  v6 = [(AVAssetInspectorLoader *)&v34 init];
  if (v6)
  {
    v6->_assetInspectorOnce = objc_alloc_init(AVDispatchOnce);
    v6->_weakReferenceToAsset = [forAsset _weakReference];
    if (asset)
    {
      v7 = CFRetain(asset);
    }

    else
    {
      v7 = 0;
    }

    v6->_figAsset = v7;
    v6->_loadingMutex = FigSimpleMutexCreate();
    v6->_loadingBatches = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.avfoundation.avasset.completionsQueue", v8);
    v6->_completionHandlerQueue = v9;
    if (v6->_loadingMutex && v6->_loadingBatches && v9)
    {
      if (v6->_figAsset)
      {
        v33 = 0;
        [(AVFigAssetInspectorLoader *)v6 _addFigAssetNotifications];
        v10 = *MEMORY[0x1E695E480];
        CMBaseObject = FigAssetGetCMBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          (v12)(CMBaseObject, *MEMORY[0x1E69711F8], v10, &v33);
          v12 = v33;
        }

        v6->_URL = v12;
        v14 = FigAssetGetCMBaseObject();
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v15)
        {
          v15(v14, *MEMORY[0x1E69711E8], v10, &cf);
          v16 = cf;
        }

        else
        {
          v16 = 0;
        }

        v6->_prefersNominalDurations = ([v16 longLongValue] >> 8) & 1;
        figAsset = v6->_figAsset;
        v18 = +[AVFigAssetInspectorLoader _figAssetTrackMediaSelectionPropertiesArray];
        v19 = *(CMBaseObjectGetVTable() + 16);
        if (*v19 >= 2uLL)
        {
          v20 = v19[13];
          if (v20)
          {
            v20(figAsset, @"trackPropertyForMediaSelectionOptions", v18);
          }
        }

        v21 = [+[AVFigAssetInspectorLoader _figAssetMediaSelectionPropertiesArray](AVFigAssetInspectorLoader "_figAssetMediaSelectionPropertiesArray")];
        v22 = v6->_figAsset;
        v23 = *(CMBaseObjectGetVTable() + 16);
        if (*v23 >= 2uLL)
        {
          v24 = v23[11];
          if (v24)
          {
            v24(v22, @"availableMediaCharacteristicsWithMediaSelectionOptions", v21);
          }
        }

        v25 = v6->_figAsset;
        v37[0] = *MEMORY[0x1E69738A8];
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
        v27 = *(CMBaseObjectGetVTable() + 16);
        if (*v27 >= 2uLL)
        {
          v28 = v27[13];
          if (v28)
          {
            v28(v25, @"trackPropertyForPlaybackCapabilities", v26);
          }
        }

        v36 = *MEMORY[0x1E6971240];
        v29 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:{1), "arrayByAddingObject:", @"trackPropertyForPlaybackCapabilities"}];
        v30 = v6->_figAsset;
        v31 = *(CMBaseObjectGetVTable() + 16);
        if (*v31 >= 2uLL)
        {
          v32 = v31[11];
          if (v32)
          {
            v32(v30, @"playbackCapabilities", v29);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)_removeFigAssetNotifications
{
  if (self->_figAsset)
  {
    if (self->_registeredForFigAssetNotifications)
    {
      v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
      _weakReference = [(AVAssetInspectorLoader *)self _weakReference];
      [v3 removeListenerWithWeakReference:_weakReference callback:handleFigAssetLoadingNotification name:*MEMORY[0x1E6970E88] object:self->_figAsset];
      [v3 removeListenerWithWeakReference:_weakReference callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EA8] object:self->_figAsset];
      [v3 removeListenerWithWeakReference:_weakReference callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EA0] object:self->_figAsset];
      [v3 removeListenerWithWeakReference:_weakReference callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EC8] object:self->_figAsset];
      [v3 removeListenerWithWeakReference:_weakReference callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970ED0] object:self->_figAsset];
      [v3 removeListenerWithWeakReference:_weakReference callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EC0] object:self->_figAsset];
      [v3 removeListenerWithWeakReference:_weakReference callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EB8] object:self->_figAsset];
      CFRelease(_weakReference);
      self->_registeredForFigAssetNotifications = 0;
    }
  }
}

- (void)dealloc
{
  [(AVFigAssetInspectorLoader *)self _removeFigAssetNotifications];

  completionHandlerQueue = self->_completionHandlerQueue;
  if (completionHandlerQueue)
  {
    dispatch_release(completionHandlerQueue);
  }

  figAsset = self->_figAsset;
  if (figAsset)
  {
    CFRelease(figAsset);
  }

  if (self->_loadingMutex)
  {
    FigSimpleMutexDestroy();
  }

  v5.receiver = self;
  v5.super_class = AVFigAssetInspectorLoader;
  [(AVAssetInspectorLoader *)&v5 dealloc];
}

- (OpaqueFigFormatReader)_copyFormatReader
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector _copyFormatReader];
}

- (int64_t)_loadStatusForProperty:(id)property figAsset:(OpaqueFigAsset *)asset error:(id *)error
{
  v17 = 0;
  v18 = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v9)
  {
    v10 = v9(asset, property, &v18 + 4, &v18, &v17);
    v11 = v17;
  }

  else
  {
    v11 = 0;
    v10 = -12782;
  }

  v12 = v11;
  if (v10)
  {
    v13 = 3;
  }

  else
  {
    v13 = HIDWORD(v18);
  }

  if (error && v13 == 3)
  {
    if (HIDWORD(v18) == 3)
    {
      v14 = v18;
    }

    else
    {
      v14 = 0;
    }

    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v14;
    }

    *error = [(AVAssetInspectorLoader *)self _createAVErrorForError:v12 andFigErrorCode:v15, v17];
  }

  return v13;
}

- (int64_t)_statusOfValueForKey:(id)key error:(id *)error firstNonLoadedDependencyKey:(id *)dependencyKey
{
  v51 = *MEMORY[0x1E69E9840];
  v48 = 0;
  FigSimpleMutexLock();
  _figAsset = [(AVFigAssetInspectorLoader *)self _figAsset];
  if (self->_loadingCanceled)
  {
    v10 = 0;
    v11 = 4;
    goto LABEL_49;
  }

  v12 = _figAsset;
  if (!_figAsset)
  {
    v29 = [(AVAssetInspectorLoader *)self _createAVErrorForError:0 andFigErrorCode:self->_figAssetCreationStatus];
    v10 = 0;
    goto LABEL_48;
  }

  v13 = [objc_msgSend(objc_opt_class() "_figAssetPropertiesForKeys")];
  array = [MEMORY[0x1E695DF70] array];
  if (!v13)
  {
    NSLog(&cfstr_AvassetStatuso.isa, key);
    v11 = [(AVFigAssetInspectorLoader *)self _loadStatusForProperty:*MEMORY[0x1E6971228] figAsset:v12 error:&v48];
    v10 = 0;
    goto LABEL_49;
  }

  v15 = array;
  errorCopy = error;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = [v13 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (!v16)
  {
    v10 = 0;
    v11 = 2;
    goto LABEL_39;
  }

  v17 = v16;
  dependencyKeyCopy = dependencyKey;
  v18 = *v45;
  v11 = 2;
  v38 = *v45;
  v39 = v13;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v45 != v18)
      {
        objc_enumerationMutation(v13);
      }

      v10 = *(*(&v44 + 1) + 8 * i);
      if (v11 >= 3)
      {
        v20 = 0;
      }

      else
      {
        v20 = &v48;
      }

      v21 = [(AVFigAssetInspectorLoader *)self _loadStatusForProperty:*(*(&v44 + 1) + 8 * i) figAsset:v12 error:v20];
      if (v21 <= 1 && v11 != 3)
      {
        v11 = v21;
        goto LABEL_36;
      }

      if (v21 == 3)
      {
        if (![v10 isEqualToString:@"availableMediaCharacteristicsWithMediaSelectionOptions"])
        {
          [v15 addObject:v10];
LABEL_31:
          v11 = 3;
          continue;
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v23 = +[AVFigAssetInspectorLoader _figAssetMediaSelectionPropertiesArray];
        v24 = [v23 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (!v24)
        {
          goto LABEL_31;
        }

        v25 = v24;
        v26 = *v41;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v41 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v40 + 1) + 8 * j);
            if ([(AVFigAssetInspectorLoader *)self _loadStatusForProperty:v28 figAsset:v12 error:0]== 3)
            {
              [v15 addObject:v28];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v25);
        v11 = 3;
        v18 = v38;
        v13 = v39;
      }
    }

    v17 = [v13 countByEnumeratingWithState:&v44 objects:v50 count:16];
  }

  while (v17);
  v10 = 0;
LABEL_36:
  dependencyKey = dependencyKeyCopy;
LABEL_39:
  error = errorCopy;
  if (errorCopy)
  {
    v30 = v11 != 3 || v48 == 0;
    if (!v30 && v15 != 0)
    {
      v32 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v48, "userInfo")}];
      [v32 setObject:v15 forKey:@"AVErrorFailedDependenciesKey"];
      v33 = MEMORY[0x1E696ABC0];
      domain = [v48 domain];
      v29 = [v33 errorWithDomain:domain code:objc_msgSend(v48 userInfo:{"code"), v32}];
LABEL_48:
      v48 = v29;
      v11 = 3;
    }
  }

LABEL_49:
  FigSimpleMutexUnlock();
  if (error && v11 == 3)
  {
    *error = v48;
  }

  if (dependencyKey)
  {
    *dependencyKey = v10;
  }

  return v11;
}

+ (void)_mapAssetKeys:(id)keys toFigAssetPropertySet:(id)set figAssetTrackPropertySet:(id)propertySet callerName:(id)name
{
  _figAssetPropertiesForKeys = [self _figAssetPropertiesForKeys];
  _figAssetTrackPropertiesForKeys = [self _figAssetTrackPropertiesForKeys];
  v13 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__AVFigAssetInspectorLoader__mapAssetKeys_toFigAssetPropertySet_figAssetTrackPropertySet_callerName___block_invoke;
  v14[3] = &unk_1E7464E90;
  v14[4] = _figAssetPropertiesForKeys;
  v14[5] = _figAssetTrackPropertiesForKeys;
  v14[6] = v13;
  v14[7] = set;
  v14[8] = propertySet;
  [keys enumerateObjectsUsingBlock:v14];
  if ([v13 count])
  {
    NSLog(&cfstr_InvokedWithUnr.isa, name, [v13 allObjects]);
  }
}

uint64_t __101__AVFigAssetInspectorLoader__mapAssetKeys_toFigAssetPropertySet_figAssetTrackPropertySet_callerName___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKey:a2];
  result = [*(a1 + 40) objectForKey:a2];
  if (v4 | result)
  {
    v6 = result;
    if (v4)
    {
      result = [*(a1 + 56) addObjectsFromArray:v4];
    }

    if (v6)
    {
      v7 = *(a1 + 64);

      return [v7 addObjectsFromArray:v6];
    }
  }

  else
  {
    [*(a1 + 48) addObject:a2];
    v8 = *(a1 + 56);
    v9 = *MEMORY[0x1E6971228];

    return [v8 addObject:v9];
  }

  return result;
}

- (void)loadValuesAsynchronouslyForKeys:(id)keys keysForCollectionKeys:(id)collectionKeys completionHandler:(id)handler
{
  v66 = *MEMORY[0x1E69E9840];
  if (dword_1ED5AC2D8)
  {
    valuePtr = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (keys)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v46 = MEMORY[0x1E695DF30];
      v47 = *MEMORY[0x1E695D940];
      v48 = "(keys == nil) || [keys isKindOfClass:[NSArray class]]";
      goto LABEL_67;
    }
  }

  if (!collectionKeys)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v46 = MEMORY[0x1E695DF30];
    v47 = *MEMORY[0x1E695D940];
    v48 = "[keysForCollectionKeys isKindOfClass:[NSDictionary class]]";
LABEL_67:
    v49 = [v46 exceptionWithName:v47 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, v48), 0}];
    objc_exception_throw(v49);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v15 = [collectionKeys countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  v17 = *v57;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v57 != v17)
      {
        objc_enumerationMutation(collectionKeys);
      }

      [collectionKeys objectForKey:{*(*(&v56 + 1) + 8 * i), v50, v52}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v46 = MEMORY[0x1E695DF30];
        v47 = *MEMORY[0x1E695D940];
        v48 = "[[keysForCollectionKeys objectForKey:thisKey] isKindOfClass:[NSArray class]]";
        goto LABEL_67;
      }
    }

    v16 = [collectionKeys countByEnumeratingWithState:&v56 objects:v61 count:16];
  }

  while (v16);
LABEL_15:
  FigSimpleMutexLock();
  _figAsset = [(AVFigAssetInspectorLoader *)self _figAsset];
  if ([keys count])
  {
    if (!_figAsset)
    {
LABEL_21:
      v20 = 0;
      goto LABEL_22;
    }

LABEL_20:
    if (self->_loadingCanceled)
    {
      goto LABEL_21;
    }

    v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    v25 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
    [v25 addObjectsFromArray:keys];
    if (collectionKeys)
    {
      [v25 addObjectsFromArray:{objc_msgSend(collectionKeys, "allKeys")}];
    }

    v26 = [MEMORY[0x1E695DFA8] setWithCapacity:{0, v50}];
    v27 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
    [objc_opt_class() _mapAssetKeys:v25 toFigAssetPropertySet:v26 figAssetTrackPropertySet:v27 callerName:@"-[AVAsset loadValuesAsynchronouslyForKeys:completionHandler:]"];
    if (collectionKeys)
    {
      v28 = [collectionKeys objectForKey:@"tracks"];
      if (v28)
      {
        v29 = v28;
        v30 = dictionaryOfFigAssetTrackPropertiesForTrackKeys(self->_prefersNominalDurations);
        v31 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __101__AVFigAssetInspectorLoader_loadValuesAsynchronouslyForKeys_keysForCollectionKeys_completionHandler___block_invoke;
        v55[3] = &unk_1E7464EB8;
        v55[4] = v30;
        v55[5] = v27;
        v55[6] = v31;
        [v29 enumerateObjectsUsingBlock:v55];
        if ([v31 count])
        {
          NSLog(&cfstr_AvassetLoadval_0.isa, [v31 allObjects]);
        }
      }
    }

    allObjects = [v26 allObjects];
    if ([allObjects count])
    {
      valuePtr = 0;
      v54 = 0;
      if (dword_1ED5AC2D8)
      {
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v34 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v34)
      {
        v35 = v34(_figAsset, allObjects, &v54, &valuePtr);
      }

      else
      {
        v35 = -12782;
      }

      if (dword_1ED5AC2D8)
      {
        v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!v35 && !v54)
      {
        v37 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        if (v37)
        {
          v38 = v37;
          [v20 setObject:v37 forKey:@"AVAsynchronousLoadingPropertyBatchIDKey"];
          CFRelease(v38);
        }
      }
    }

    allObjects2 = [v27 allObjects];
    if ([allObjects2 count])
    {
      valuePtr = 0;
      v54 = 0;
      if (dword_1ED5AC2D8)
      {
        v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v41 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v41)
      {
        v42 = v41(_figAsset, 0, allObjects2, &v54, &valuePtr);
      }

      else
      {
        v42 = -12782;
      }

      if (dword_1ED5AC2D8)
      {
        v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!v42 && !v54)
      {
        v44 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        if (v44)
        {
          v45 = v44;
          [v20 setObject:v44 forKey:@"AVAsynchronousLoadingTrackPropertyBatchIDKey"];
          CFRelease(v45);
        }
      }
    }
  }

  else
  {
    v20 = 0;
    if ([collectionKeys count] && _figAsset)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  if ([v20 count])
  {
    if (handler)
    {
      v21 = [handler copy];
      [v20 setObject:v21 forKey:@"AVAsynchronousLoadingCompletionHandlerKey"];
    }

    [(NSMutableArray *)self->_loadingBatches addObject:v20];
    FigSimpleMutexUnlock();
  }

  else
  {
    FigSimpleMutexUnlock();
    if (handler)
    {
      if (dword_1ED5AC2D8)
      {
        valuePtr = 0;
        v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v23 = valuePtr;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          v62 = 136315394;
          v63 = "[AVFigAssetInspectorLoader loadValuesAsynchronouslyForKeys:keysForCollectionKeys:completionHandler:]";
          v64 = 2048;
          v65 = v20;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      (*(handler + 2))(handler);
    }
  }
}

uint64_t __101__AVFigAssetInspectorLoader_loadValuesAsynchronouslyForKeys_keysForCollectionKeys_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKey:a2];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 40);

    return [v6 addObjectsFromArray:v5];
  }

  else
  {
    v8 = *(a1 + 48);

    return [v8 addObject:a2];
  }
}

- (void)cancelLoading
{
  v14 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_loadingBatches];
  [(NSMutableArray *)self->_loadingBatches removeAllObjects];
  self->_loadingCanceled = 1;
  FigSimpleMutexUnlock();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
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

        v8 = [*(*(&v9 + 1) + 8 * v7) objectForKey:@"AVAsynchronousLoadingCompletionHandlerKey"];
        if (v8)
        {
          (*(v8 + 16))();
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_ensureAllDependenciesOfKeyAreLoaded:(id)loaded
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(AVFigAssetInspectorLoader *)self statusOfValueForKey:loaded error:0]<= 1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v5 = objc_alloc_init(MEMORY[0x1E696AB30]);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObject:loaded];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__AVFigAssetInspectorLoader__ensureAllDependenciesOfKeyAreLoaded___block_invoke;
    v12[3] = &unk_1E7460EE0;
    v12[4] = v5;
    v12[5] = &v13;
    [(AVFigAssetInspectorLoader *)self loadValuesAsynchronouslyForKeys:v6 completionHandler:v12];
    [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0];
    [v5 lock];
    if ((v14[3] & 1) == 0)
    {
      v7 = 5.0;
      do
      {
        [v5 waitUntilDate:{objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSinceNow:", v7, v9, v10)}];
        if (v14[3])
        {
          break;
        }

        v11 = 0;
        [(AVFigAssetInspectorLoader *)self _statusOfValueForKey:loaded error:0 firstNonLoadedDependencyKey:&v11];
        if (dword_1ED5AC2D8)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v7 = v7 + v7;
      }

      while ((v14[3] & 1) == 0);
    }

    [v5 unlock];

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __66__AVFigAssetInspectorLoader__ensureAllDependenciesOfKeyAreLoaded___block_invoke(uint64_t a1)
{
  [*(a1 + 32) lock];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  [*(a1 + 32) signal];
  v2 = *(a1 + 32);

  return [v2 unlock];
}

- (id)variants
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector variants];
}

- (id)lyrics
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector lyrics];
}

- (BOOL)isPlayable
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector isPlayable];
}

- (BOOL)isExportable
{
  _isStreaming = [(AVFigAssetInspectorLoader *)self _isStreaming];
  v4 = [-[AVFigAssetInspectorLoader assetInspector](self "assetInspector")];
  return ([(AVFigAssetInspectorLoader *)self statusOfValueForKey:@"exportable" error:0]== 2) & !_isStreaming & v4;
}

- (BOOL)isReadable
{
  _isStreaming = [(AVFigAssetInspectorLoader *)self _isStreaming];
  v4 = [-[AVFigAssetInspectorLoader assetInspector](self "assetInspector")];
  return ([(AVFigAssetInspectorLoader *)self statusOfValueForKey:@"readable" error:0]== 2) & !_isStreaming & v4;
}

- (BOOL)isComposable
{
  _isStreaming = [(AVFigAssetInspectorLoader *)self _isStreaming];
  v4 = [-[AVFigAssetInspectorLoader assetInspector](self "assetInspector")];
  return ([(AVFigAssetInspectorLoader *)self statusOfValueForKey:@"composable" error:0]== 2) & !_isStreaming & v4;
}

- (BOOL)isCompatibleWithSavedPhotosAlbum
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector isCompatibleWithSavedPhotosAlbum];
}

- (id)figChapterGroupInfo
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector figChapterGroupInfo];
}

- (id)figChapters
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector figChapters];
}

- (id)resolvedURL
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector resolvedURL];
}

- (id)originalNetworkContentURL
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector originalNetworkContentURL];
}

- (unint64_t)downloadToken
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector downloadToken];
}

- (id)contentKeySpecifiersEligibleForPreloading
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector contentKeySpecifiersEligibleForPreloading];
}

- (BOOL)hasProtectedContent
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector hasProtectedContent];
}

- (int64_t)firstFragmentSequenceNumber
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector firstFragmentSequenceNumber];
}

- (int64_t)fragmentCount
{
  assetInspector = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [assetInspector fragmentCount];
}

- (void)_invokeCompletionHandlerForLoadingBatches:(id)batches
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [batches countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v19 = *v21;
    do
    {
      v5 = 0;
      v16 = v4;
      do
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(batches);
        }

        v6 = *(*(&v20 + 1) + 8 * v5);
        v7 = [v6 objectForKey:{@"AVAsynchronousLoadingCompletionHandlerKey", v14, v15}];
        if (v7)
        {
          v8 = v7;
          v9 = [v6 objectForKeyedSubscript:@"AVAsynchronousLoadingPropertyBatchIDKey"];
          if (v9)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@", batchID = %ld", objc_msgSend(v9, "longValue")];
          }

          v11 = [v6 objectForKeyedSubscript:@"AVAsynchronousLoadingTrackPropertyBatchIDKey"];
          if (v11)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@", track batchID = %ld", objc_msgSend(v11, "longValue")];
          }

          if (dword_1ED5AC2D8)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v4 = v16;
          }

          dispatch_async(self->_completionHandlerQueue, v8);
        }

        else if (dword_1ED5AC2D8)
        {
          v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        ++v5;
      }

      while (v4 != v5);
      v4 = [batches countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  if (![batches count])
  {
    if (dword_1ED5AC2D8)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (double)_fragmentMindingInterval
{
  [(AVFigAssetInspectorLoader *)self _figAsset];
  valuePtr = 0;
  CMBaseObject = FigAssetGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6971270], *MEMORY[0x1E695E480], &valuePtr);
    if (valuePtr)
    {
      CFNumberGetValue(valuePtr, kCFNumberSInt64Type, &valuePtr);
      if (valuePtr)
      {
        CFRelease(valuePtr);
      }
    }
  }

  return 0.0;
}

- (void)_setFragmentMindingInterval:(double)interval
{
  [(AVFigAssetInspectorLoader *)self _figAsset];
  valuePtr = (interval * 1000.0);
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  CMBaseObject = FigAssetGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v6(CMBaseObject, *MEMORY[0x1E6971270], v4);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)_setIsAssociatedWithFragmentMinder:(BOOL)minder
{
  fragmentMinderAssociationCount = self->_fragmentMinderAssociationCount;
  if (minder)
  {
    v4 = fragmentMinderAssociationCount + 1;
  }

  else
  {
    v4 = fragmentMinderAssociationCount - 1;
  }

  self->_fragmentMinderAssociationCount = v4;
}

@end