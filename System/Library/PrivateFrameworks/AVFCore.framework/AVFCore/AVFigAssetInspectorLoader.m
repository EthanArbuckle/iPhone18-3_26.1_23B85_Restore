@interface AVFigAssetInspectorLoader
+ (id)_figAssetMediaSelectionPropertiesArray;
+ (id)_figAssetPropertiesForKeys;
+ (id)_figAssetTrackMediaSelectionPropertiesArray;
+ (id)_figAssetTrackPropertiesForKeys;
+ (void)_mapAssetKeys:(id)a3 toFigAssetPropertySet:(id)a4 figAssetTrackPropertySet:(id)a5 callerName:(id)a6;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- (AVFigAssetInspectorLoader)initWithFigAsset:(OpaqueFigAsset *)a3 forAsset:(id)a4;
- (AVFigAssetInspectorLoader)initWithURL:(id)a3 figAssetCreationFlags:(unint64_t)a4 figAssetCreationOptions:(id)a5 avAssetInitializationOptions:(id)a6 forAsset:(id)a7 figErr:(int *)a8;
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
- (int64_t)_loadStatusForProperty:(id)a3 figAsset:(OpaqueFigAsset *)a4 error:(id *)a5;
- (int64_t)_statusOfValueForKey:(id)a3 error:(id *)a4 firstNonLoadedDependencyKey:(id *)a5;
- (int64_t)firstFragmentSequenceNumber;
- (int64_t)fragmentCount;
- (unint64_t)downloadToken;
- (void)_addFigAssetNotifications;
- (void)_ensureAllDependenciesOfKeyAreLoaded:(id)a3;
- (void)_invokeCompletionHandlerForLoadingBatches:(id)a3;
- (void)_removeFigAssetNotifications;
- (void)_setFragmentMindingInterval:(double)a3;
- (void)_setIsAssociatedWithFragmentMinder:(BOOL)a3;
- (void)cancelLoading;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(id)a3 keysForCollectionKeys:(id)a4 completionHandler:(id)a5;
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
      v4 = [(AVAssetInspectorLoader *)self _weakReference];
      CFRetain(v4);
      [v3 addListenerWithWeakReference:v4 callback:handleFigAssetLoadingNotification name:*MEMORY[0x1E6970E88] object:self->_figAsset flags:0];
      [v3 addListenerWithWeakReference:v4 callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EA8] object:self->_figAsset flags:0];
      [v3 addListenerWithWeakReference:v4 callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EA0] object:self->_figAsset flags:0];
      [v3 addListenerWithWeakReference:v4 callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EC8] object:self->_figAsset flags:0];
      [v3 addListenerWithWeakReference:v4 callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970ED0] object:self->_figAsset flags:0];
      [v3 addListenerWithWeakReference:v4 callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EC0] object:self->_figAsset flags:0];
      [v3 addListenerWithWeakReference:v4 callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EB8] object:self->_figAsset flags:0];
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
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 _isStreaming];
}

- (AVFigAssetInspectorLoader)initWithURL:(id)a3 figAssetCreationFlags:(unint64_t)a4 figAssetCreationOptions:(id)a5 avAssetInitializationOptions:(id)a6 forAsset:(id)a7 figErr:(int *)a8
{
  v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a5];
  if ([a7 _hasResourceLoaderDelegate])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v12 setObject:v13 forKey:*MEMORY[0x1E6970F58]];
  }

  v14 = [a6 objectForKey:@"AVAssetRequiresInProcessOperationKey"];
  if (v14 && ([v14 BOOLValue] & 1) != 0)
  {
    v15 = FigAssetCreateWithURL();
  }

  else
  {
    v15 = FigAssetRemoteCreateWithURLAndRetry();
  }

  v16 = v15;

  if (a8)
  {
    *a8 = v16;
  }

  return 0;
}

- (AVFigAssetInspectorLoader)initWithFigAsset:(OpaqueFigAsset *)a3 forAsset:(id)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = AVFigAssetInspectorLoader;
  cf = 0;
  v6 = [(AVAssetInspectorLoader *)&v34 init];
  if (v6)
  {
    v6->_assetInspectorOnce = objc_alloc_init(AVDispatchOnce);
    v6->_weakReferenceToAsset = [a4 _weakReference];
    if (a3)
    {
      v7 = CFRetain(a3);
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
      v4 = [(AVAssetInspectorLoader *)self _weakReference];
      [v3 removeListenerWithWeakReference:v4 callback:handleFigAssetLoadingNotification name:*MEMORY[0x1E6970E88] object:self->_figAsset];
      [v3 removeListenerWithWeakReference:v4 callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EA8] object:self->_figAsset];
      [v3 removeListenerWithWeakReference:v4 callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EA0] object:self->_figAsset];
      [v3 removeListenerWithWeakReference:v4 callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EC8] object:self->_figAsset];
      [v3 removeListenerWithWeakReference:v4 callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970ED0] object:self->_figAsset];
      [v3 removeListenerWithWeakReference:v4 callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EC0] object:self->_figAsset];
      [v3 removeListenerWithWeakReference:v4 callback:handleAndReflectFigAssetNotification name:*MEMORY[0x1E6970EB8] object:self->_figAsset];
      CFRelease(v4);
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
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 _copyFormatReader];
}

- (int64_t)_loadStatusForProperty:(id)a3 figAsset:(OpaqueFigAsset *)a4 error:(id *)a5
{
  v17 = 0;
  v18 = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v9)
  {
    v10 = v9(a4, a3, &v18 + 4, &v18, &v17);
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

  if (a5 && v13 == 3)
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

    *a5 = [(AVAssetInspectorLoader *)self _createAVErrorForError:v12 andFigErrorCode:v15, v17];
  }

  return v13;
}

- (int64_t)_statusOfValueForKey:(id)a3 error:(id *)a4 firstNonLoadedDependencyKey:(id *)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v48 = 0;
  FigSimpleMutexLock();
  v9 = [(AVFigAssetInspectorLoader *)self _figAsset];
  if (self->_loadingCanceled)
  {
    v10 = 0;
    v11 = 4;
    goto LABEL_49;
  }

  v12 = v9;
  if (!v9)
  {
    v29 = [(AVAssetInspectorLoader *)self _createAVErrorForError:0 andFigErrorCode:self->_figAssetCreationStatus];
    v10 = 0;
    goto LABEL_48;
  }

  v13 = [objc_msgSend(objc_opt_class() "_figAssetPropertiesForKeys")];
  v14 = [MEMORY[0x1E695DF70] array];
  if (!v13)
  {
    NSLog(&cfstr_AvassetStatuso.isa, a3);
    v11 = [(AVFigAssetInspectorLoader *)self _loadStatusForProperty:*MEMORY[0x1E6971228] figAsset:v12 error:&v48];
    v10 = 0;
    goto LABEL_49;
  }

  v15 = v14;
  v37 = a4;
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
  v36 = a5;
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
  a5 = v36;
LABEL_39:
  a4 = v37;
  if (v37)
  {
    v30 = v11 != 3 || v48 == 0;
    if (!v30 && v15 != 0)
    {
      v32 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v48, "userInfo")}];
      [v32 setObject:v15 forKey:@"AVErrorFailedDependenciesKey"];
      v33 = MEMORY[0x1E696ABC0];
      v34 = [v48 domain];
      v29 = [v33 errorWithDomain:v34 code:objc_msgSend(v48 userInfo:{"code"), v32}];
LABEL_48:
      v48 = v29;
      v11 = 3;
    }
  }

LABEL_49:
  FigSimpleMutexUnlock();
  if (a4 && v11 == 3)
  {
    *a4 = v48;
  }

  if (a5)
  {
    *a5 = v10;
  }

  return v11;
}

+ (void)_mapAssetKeys:(id)a3 toFigAssetPropertySet:(id)a4 figAssetTrackPropertySet:(id)a5 callerName:(id)a6
{
  v11 = [a1 _figAssetPropertiesForKeys];
  v12 = [a1 _figAssetTrackPropertiesForKeys];
  v13 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__AVFigAssetInspectorLoader__mapAssetKeys_toFigAssetPropertySet_figAssetTrackPropertySet_callerName___block_invoke;
  v14[3] = &unk_1E7464E90;
  v14[4] = v11;
  v14[5] = v12;
  v14[6] = v13;
  v14[7] = a4;
  v14[8] = a5;
  [a3 enumerateObjectsUsingBlock:v14];
  if ([v13 count])
  {
    NSLog(&cfstr_InvokedWithUnr.isa, a6, [v13 allObjects]);
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

- (void)loadValuesAsynchronouslyForKeys:(id)a3 keysForCollectionKeys:(id)a4 completionHandler:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
  if (dword_1ED5AC2D8)
  {
    valuePtr = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a3)
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

  if (!a4)
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
  v15 = [a4 countByEnumeratingWithState:&v56 objects:v61 count:16];
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
        objc_enumerationMutation(a4);
      }

      [a4 objectForKey:{*(*(&v56 + 1) + 8 * i), v50, v52}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v46 = MEMORY[0x1E695DF30];
        v47 = *MEMORY[0x1E695D940];
        v48 = "[[keysForCollectionKeys objectForKey:thisKey] isKindOfClass:[NSArray class]]";
        goto LABEL_67;
      }
    }

    v16 = [a4 countByEnumeratingWithState:&v56 objects:v61 count:16];
  }

  while (v16);
LABEL_15:
  FigSimpleMutexLock();
  v19 = [(AVFigAssetInspectorLoader *)self _figAsset];
  if ([a3 count])
  {
    if (!v19)
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
    [v25 addObjectsFromArray:a3];
    if (a4)
    {
      [v25 addObjectsFromArray:{objc_msgSend(a4, "allKeys")}];
    }

    v26 = [MEMORY[0x1E695DFA8] setWithCapacity:{0, v50}];
    v27 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
    [objc_opt_class() _mapAssetKeys:v25 toFigAssetPropertySet:v26 figAssetTrackPropertySet:v27 callerName:@"-[AVAsset loadValuesAsynchronouslyForKeys:completionHandler:]"];
    if (a4)
    {
      v28 = [a4 objectForKey:@"tracks"];
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

    v32 = [v26 allObjects];
    if ([v32 count])
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
        v35 = v34(v19, v32, &v54, &valuePtr);
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

    v39 = [v27 allObjects];
    if ([v39 count])
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
        v42 = v41(v19, 0, v39, &v54, &valuePtr);
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
    if ([a4 count] && v19)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  if ([v20 count])
  {
    if (a5)
    {
      v21 = [a5 copy];
      [v20 setObject:v21 forKey:@"AVAsynchronousLoadingCompletionHandlerKey"];
    }

    [(NSMutableArray *)self->_loadingBatches addObject:v20];
    FigSimpleMutexUnlock();
  }

  else
  {
    FigSimpleMutexUnlock();
    if (a5)
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

      (*(a5 + 2))(a5);
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

- (void)_ensureAllDependenciesOfKeyAreLoaded:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(AVFigAssetInspectorLoader *)self statusOfValueForKey:a3 error:0]<= 1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v5 = objc_alloc_init(MEMORY[0x1E696AB30]);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];
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
        [(AVFigAssetInspectorLoader *)self _statusOfValueForKey:a3 error:0 firstNonLoadedDependencyKey:&v11];
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
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 variants];
}

- (id)lyrics
{
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 lyrics];
}

- (BOOL)isPlayable
{
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 isPlayable];
}

- (BOOL)isExportable
{
  v3 = [(AVFigAssetInspectorLoader *)self _isStreaming];
  v4 = [-[AVFigAssetInspectorLoader assetInspector](self "assetInspector")];
  return ([(AVFigAssetInspectorLoader *)self statusOfValueForKey:@"exportable" error:0]== 2) & !v3 & v4;
}

- (BOOL)isReadable
{
  v3 = [(AVFigAssetInspectorLoader *)self _isStreaming];
  v4 = [-[AVFigAssetInspectorLoader assetInspector](self "assetInspector")];
  return ([(AVFigAssetInspectorLoader *)self statusOfValueForKey:@"readable" error:0]== 2) & !v3 & v4;
}

- (BOOL)isComposable
{
  v3 = [(AVFigAssetInspectorLoader *)self _isStreaming];
  v4 = [-[AVFigAssetInspectorLoader assetInspector](self "assetInspector")];
  return ([(AVFigAssetInspectorLoader *)self statusOfValueForKey:@"composable" error:0]== 2) & !v3 & v4;
}

- (BOOL)isCompatibleWithSavedPhotosAlbum
{
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 isCompatibleWithSavedPhotosAlbum];
}

- (id)figChapterGroupInfo
{
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 figChapterGroupInfo];
}

- (id)figChapters
{
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 figChapters];
}

- (id)resolvedURL
{
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 resolvedURL];
}

- (id)originalNetworkContentURL
{
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 originalNetworkContentURL];
}

- (unint64_t)downloadToken
{
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 downloadToken];
}

- (id)contentKeySpecifiersEligibleForPreloading
{
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 contentKeySpecifiersEligibleForPreloading];
}

- (BOOL)hasProtectedContent
{
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 hasProtectedContent];
}

- (int64_t)firstFragmentSequenceNumber
{
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 firstFragmentSequenceNumber];
}

- (int64_t)fragmentCount
{
  v2 = [(AVFigAssetInspectorLoader *)self assetInspector];

  return [v2 fragmentCount];
}

- (void)_invokeCompletionHandlerForLoadingBatches:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(a3);
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
      v4 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  if (![a3 count])
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

- (void)_setFragmentMindingInterval:(double)a3
{
  [(AVFigAssetInspectorLoader *)self _figAsset];
  valuePtr = (a3 * 1000.0);
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

- (void)_setIsAssociatedWithFragmentMinder:(BOOL)a3
{
  fragmentMinderAssociationCount = self->_fragmentMinderAssociationCount;
  if (a3)
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