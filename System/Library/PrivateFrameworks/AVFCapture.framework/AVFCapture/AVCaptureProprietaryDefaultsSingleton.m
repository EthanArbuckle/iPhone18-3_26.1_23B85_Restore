@interface AVCaptureProprietaryDefaultsSingleton
+ (__CVBuffer)imageForKey:(id)a3 fillWidth:(int)a4 fillHeight:(int)a5;
+ (id)cameraHistoryDownplayOverrideList;
+ (id)objectForKey:(id)a3;
+ (id)objectsForWildcardKey:(id)a3;
+ (id)proprietaryDefaultsDomainForAuditToken:(id *)a3;
+ (id)proprietaryDefaultsSingleton;
+ (int)retryPriorFailedKeyObservationRegistrations;
+ (void)addObserver:(id)a3 forKey:(id)a4 callHandlerForInitialValue:(BOOL)a5 defaultChangedHandler:(id)a6;
+ (void)initialize;
+ (void)removeObserver:(id)a3 forKey:(id)a4;
+ (void)setObject:(id)a3 forKey:(id)a4;
+ (void)setObject:(id)a3 forWildcardKey:(id)a4;
+ (void)updateCameraHistory:(id)a3 withCameraInfo:(id)a4 maxLength:(unint64_t)a5 updateCameraHistoryDownplayOverrideList:(BOOL)a6 cameraCanBeInOverrideList:(BOOL)a7;
+ (void)updateCameraOverrideHistory:(id)a3 withCameraInfo:(id)a4 setOverride:(BOOL)a5;
+ (void)updateProprietaryDefaultsSource;
- (AVCaptureProprietaryDefaultsSingleton)init;
- (__CVBuffer)imageForKey:(id)a3 fillWidth:(int)a4 fillHeight:(int)a5;
- (id)cameraHistoryDownplayOverrideList;
- (id)objectForKey:(id)a3;
- (id)objectsForWildcardKey:(id)a3;
- (id)proprietaryDefaultsDomainForAuditToken:(id *)a3;
- (int)_registerWithServerToObserveKey:(id)a3;
- (int)retryPriorFailedKeyObservationRegistrations;
- (void)_handleDefaultChangedNotificationForKey:(id)a3 newValue:(id)a4 handlersForKeyObservers:(id)a5 callHandlersAsync:(BOOL)a6;
- (void)_handleNotification:(id)a3 payload:(id)a4;
- (void)_runBlockOnProprietaryDefaultsSourceQueueSync:(id)a3;
- (void)_updateProprietaryDefaultsSource:(BOOL)a3;
- (void)addObserver:(id)a3 forKey:(id)a4 callHandlerForInitialValue:(BOOL)a5 defaultChangedHandler:(id)a6;
- (void)dealloc;
- (void)removeObserver:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forWildcardKey:(id)a4;
- (void)unobserveChangesForKey:(id)a3;
- (void)updateCameraHistory:(id)a3 withCameraInfo:(id)a4 maxLength:(unint64_t)a5 updateCameraHistoryDownplayOverrideList:(BOOL)a6 cameraCanBeInOverrideList:(BOOL)a7;
- (void)updateCameraOverrideHistory:(id)a3 withCameraInfo:(id)a4 setOverride:(BOOL)a5;
@end

@implementation AVCaptureProprietaryDefaultsSingleton

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)proprietaryDefaultsSingleton
{
  if (proprietaryDefaultsSingleton_onceToken != -1)
  {
    +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];
  }

  return proprietaryDefaultsSingleton_sProprietaryDefaults;
}

AVCaptureProprietaryDefaultsSingleton *__69__AVCaptureProprietaryDefaultsSingleton_proprietaryDefaultsSingleton__block_invoke()
{
  result = objc_alloc_init(AVCaptureProprietaryDefaultsSingleton);
  proprietaryDefaultsSingleton_sProprietaryDefaults = result;
  return result;
}

- (AVCaptureProprietaryDefaultsSingleton)init
{
  v7.receiver = self;
  v7.super_class = AVCaptureProprietaryDefaultsSingleton;
  v2 = [(AVCaptureProprietaryDefaultsSingleton *)&v7 init];
  if (v2)
  {
    v3 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.avfoundation.proprietarydefaults.singleton.source_queue.%p", AVCPDS_DefaultsSourceQueueContext), "UTF8String"];
    v4 = strlen(v3) + 1;
    v2->_proprietaryDefaultsSourceQueueLabelLength = v4;
    v5 = malloc_type_malloc(v4, 0x350620FFuLL);
    v2->_proprietaryDefaultsSourceQueueLabel = v5;
    memcpy(v5, v3, v2->_proprietaryDefaultsSourceQueueLabelLength);
    v2->_proprietaryDefaultsSourceQueue = dispatch_queue_create(v2->_proprietaryDefaultsSourceQueueLabel, 0);
    v2->_proprietaryDefaultChangeNotificationCallbackQueue = dispatch_queue_create("com.apple.avfoundation.proprietarydefaults.singleton.callback", 0);
    if ((AVCaptureIsRunningInMediaserverd() & 1) == 0)
    {
      +[AVCaptureDevice _registerOnceForServerConnectionDiedNotification];
    }

    v2->_weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v2];
    v2->_defaultChangedHandlersForObserversForKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_keyObservationsThatFailedToRegisterWithServer = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(AVCaptureProprietaryDefaultsSingleton *)v2 _updateProprietaryDefaultsSource:1];
  }

  return v2;
}

+ (id)cameraHistoryDownplayOverrideList
{
  v2 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];

  return [v2 cameraHistoryDownplayOverrideList];
}

- (id)cameraHistoryDownplayOverrideList
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__6;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__AVCaptureProprietaryDefaultsSingleton_cameraHistoryDownplayOverrideList__block_invoke;
  v4[3] = &unk_1E786FEE0;
  v4[4] = self;
  v4[5] = &v5;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __74__AVCaptureProprietaryDefaultsSingleton_cameraHistoryDownplayOverrideList__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 40);
  if (v1)
  {
    v2 = result;
    v3 = getpid();
    v4 = *(*(v2 + 40) + 8);
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v6 = v7;
    if (*v7 >= 3uLL)
    {
      if (v6[8])
      {
        v8 = v6[10];

        return v8(v1, v3, v4 + 40);
      }
    }
  }

  return result;
}

+ (void)addObserver:(id)a3 forKey:(id)a4 callHandlerForInitialValue:(BOOL)a5 defaultChangedHandler:(id)a6
{
  v7 = a5;
  v10 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];

  [v10 addObserver:a3 forKey:a4 callHandlerForInitialValue:v7 defaultChangedHandler:a6];
}

+ (void)removeObserver:(id)a3 forKey:(id)a4
{
  v6 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];

  [v6 removeObserver:a3 forKey:a4];
}

+ (id)objectForKey:(id)a3
{
  v4 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];

  return [v4 objectForKey:a3];
}

+ (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];

  [v6 setObject:a3 forKey:a4];
}

+ (id)objectsForWildcardKey:(id)a3
{
  v4 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];

  return [v4 objectsForWildcardKey:a3];
}

+ (void)setObject:(id)a3 forWildcardKey:(id)a4
{
  v6 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];

  [v6 setObject:a3 forWildcardKey:a4];
}

+ (__CVBuffer)imageForKey:(id)a3 fillWidth:(int)a4 fillHeight:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v8 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];

  return [v8 imageForKey:a3 fillWidth:v6 fillHeight:v5];
}

+ (int)retryPriorFailedKeyObservationRegistrations
{
  v2 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];

  return [v2 retryPriorFailedKeyObservationRegistrations];
}

+ (id)proprietaryDefaultsDomainForAuditToken:(id *)a3
{
  v4 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];
  v5 = *&a3->var0[4];
  v7[0] = *a3->var0;
  v7[1] = v5;
  return [v4 proprietaryDefaultsDomainForAuditToken:v7];
}

+ (void)updateCameraHistory:(id)a3 withCameraInfo:(id)a4 maxLength:(unint64_t)a5 updateCameraHistoryDownplayOverrideList:(BOOL)a6 cameraCanBeInOverrideList:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];

  [v12 updateCameraHistory:a3 withCameraInfo:a4 maxLength:a5 updateCameraHistoryDownplayOverrideList:v8 cameraCanBeInOverrideList:v7];
}

+ (void)updateCameraOverrideHistory:(id)a3 withCameraInfo:(id)a4 setOverride:(BOOL)a5
{
  v5 = a5;
  v8 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];

  [v8 updateCameraOverrideHistory:a3 withCameraInfo:a4 setOverride:v5];
}

- (void)dealloc
{
  proprietaryDefaultsSource = self->_proprietaryDefaultsSource;
  if (proprietaryDefaultsSource)
  {
    CFRelease(proprietaryDefaultsSource);
  }

  free(self->_proprietaryDefaultsSourceQueueLabel);
  v4.receiver = self;
  v4.super_class = AVCaptureProprietaryDefaultsSingleton;
  [(AVCaptureProprietaryDefaultsSingleton *)&v4 dealloc];
}

- (void)addObserver:(id)a3 forKey:(id)a4 callHandlerForInitialValue:(BOOL)a5 defaultChangedHandler:(id)a6
{
  if (!a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"observer must not be nil";
    goto LABEL_8;
  }

  if (!a4)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"key must not be nil";
    goto LABEL_8;
  }

  if (!a6)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"defaultChangedHandler must not be nil";
LABEL_8:
    objc_exception_throw([v6 exceptionWithName:v7 reason:v8 userInfo:{0, a6}]);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__AVCaptureProprietaryDefaultsSingleton_addObserver_forKey_callHandlerForInitialValue_defaultChangedHandler___block_invoke;
  v9[3] = &unk_1E786FD78;
  v9[4] = self;
  v9[5] = a4;
  v9[6] = a3;
  v9[7] = a6;
  v10 = a5;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v9];
}

uint64_t __109__AVCaptureProprietaryDefaultsSingleton_addObserver_forKey_callHandlerForInitialValue_defaultChangedHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    [*(*(a1 + 32) + 56) setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  v4 = [*(a1 + 56) copy];
  result = [v3 objectForKey:*(a1 + 48)];
  v6 = result;
  if (result)
  {
    if (v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = [v3 setObject:v4 forKey:*(a1 + 48)];
    if (v2)
    {
      goto LABEL_9;
    }
  }

  result = [*(a1 + 32) _registerWithServerToObserveKey:*(a1 + 40)];
  if (result)
  {
    result = [*(*(a1 + 32) + 64) addObject:*(a1 + 40)];
  }

LABEL_9:
  if (!v6 && (*(a1 + 64) & 1) != 0)
  {
    v7 = [*(a1 + 32) objectForKey:*(a1 + 40)];
    v8 = *(a1 + 40);
    v9 = v4[2];

    return v9(v4, v8, v7);
  }

  return result;
}

- (void)removeObserver:(id)a3 forKey:(id)a4
{
  if (!a3)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = @"observer must not be nil";
    goto LABEL_6;
  }

  if (!a4)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = @"key must not be nil";
LABEL_6:
    objc_exception_throw([v4 exceptionWithName:v5 reason:v6 userInfo:0]);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AVCaptureProprietaryDefaultsSingleton_removeObserver_forKey___block_invoke;
  v7[3] = &unk_1E786EFD0;
  v7[4] = self;
  v7[5] = a4;
  v7[6] = a3;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v7];
}

void *__63__AVCaptureProprietaryDefaultsSingleton_removeObserver_forKey___block_invoke(void *a1)
{
  result = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  if (result)
  {
    v3 = result;
    result = [result objectForKey:a1[6]];
    if (result)
    {
      [v3 removeObjectForKey:a1[6]];
      result = [v3 count];
      if (!result)
      {
        [*(a1[4] + 56) setObject:0 forKeyedSubscript:a1[5]];
        result = [*(a1[4] + 64) removeObject:a1[5]];
        v4 = *(a1[4] + 40);
        if (v4)
        {
          v5 = a1[5];
          VTable = CMBaseObjectGetVTable();
          v8 = *(VTable + 16);
          result = (VTable + 16);
          v7 = v8;
          if (*v8 >= 2uLL)
          {
            v9 = v7[7];
            if (v9)
            {

              return v9(v4, v5);
            }
          }
        }
      }
    }
  }

  return result;
}

- (id)objectForKey:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVCaptureProprietaryDefaultsSingleton_objectForKey___block_invoke;
  v5[3] = &unk_1E786FDA0;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = &v6;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __54__AVCaptureProprietaryDefaultsSingleton_objectForKey___block_invoke(void *a1)
{
  v2 = *(a1[4] + 40);
  if (v2)
  {
    v3 = a1[5];
    v4 = *(a1[6] + 8);
    v5 = *(CMBaseObjectGetVTable() + 16);
    if (*v5 >= 2uLL)
    {
      v6 = v5[4];
      if (v6)
      {
        v6(v2, v3, v4 + 40);
      }
    }
  }

  v7 = *(*(a1[6] + 8) + 40);

  return v7;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__AVCaptureProprietaryDefaultsSingleton_setObject_forKey___block_invoke;
  v8[3] = &unk_1E786FDC8;
  v8[4] = self;
  v8[5] = a4;
  v8[6] = a3;
  v8[7] = &v9;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v8];
  v7 = v10[5];
  if (v7)
  {
    [(AVCaptureProprietaryDefaultsSingleton *)self _handleDefaultChangedNotificationForKey:a4 newValue:a3 handlersForKeyObservers:v7 callHandlersAsync:0];
  }

  _Block_object_dispose(&v9, 8);
}

void __58__AVCaptureProprietaryDefaultsSingleton_setObject_forKey___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (v1)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(CMBaseObjectGetVTable() + 16);
    if (*v5 >= 2uLL)
    {
      v6 = v5[5];
      if (v6)
      {
        if (!v6(v1, v3, v4))
        {
          *(*(*(a1 + 56) + 8) + 40) = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
          v7 = *(*(*(a1 + 56) + 8) + 40);
          if (v7)
          {
            if (![v7 count])
            {
              [*(a1 + 32) unobserveChangesForKey:*(a1 + 40)];

              *(*(*(a1 + 56) + 8) + 40) = 0;
            }
          }
        }
      }
    }
  }
}

- (id)objectsForWildcardKey:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AVCaptureProprietaryDefaultsSingleton_objectsForWildcardKey___block_invoke;
  v5[3] = &unk_1E786FDA0;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = &v6;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__63__AVCaptureProprietaryDefaultsSingleton_objectsForWildcardKey___block_invoke(void *result)
{
  v1 = *(result[4] + 40);
  if (v1)
  {
    v2 = result;
    v3 = result[5];
    v4 = *(result[6] + 8);
    v5 = *(CMBaseObjectGetVTable() + 16);
    if (*v5 >= 7uLL)
    {
      v6 = v5[14];
      if (v6)
      {
        v6(v1, v3, v4 + 40);
      }
    }

    v7 = *(*(v2[6] + 8) + 40);

    return v7;
  }

  return result;
}

- (void)setObject:(id)a3 forWildcardKey:(id)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__6;
  v14 = __Block_byref_object_dispose__6;
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__AVCaptureProprietaryDefaultsSingleton_setObject_forWildcardKey___block_invoke;
  v9[3] = &unk_1E786FDC8;
  v9[4] = self;
  v9[5] = a4;
  v9[6] = a3;
  v9[7] = &v10;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v9];
  v7 = v11[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__AVCaptureProprietaryDefaultsSingleton_setObject_forWildcardKey___block_invoke_2;
  v8[3] = &unk_1E786FDF0;
  v8[4] = self;
  v8[5] = a3;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];

  _Block_object_dispose(&v10, 8);
}

id __66__AVCaptureProprietaryDefaultsSingleton_setObject_forWildcardKey___block_invoke(uint64_t a1)
{
  v21 = 0;
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(CMBaseObjectGetVTable() + 16);
    if (*v5 >= 7uLL && (v6 = v5[15]) != 0)
    {
      LOBYTE(v2) = v6(v2, v3, v4, &v21) != 0;
      v7 = v21;
    }

    else
    {
      v7 = 0;
      LOBYTE(v2) = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  result = v7;
  if ((v2 & 1) == 0)
  {
    v9 = v21;
    if (v21)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      result = [v21 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (result)
      {
        v10 = result;
        v11 = *v18;
        do
        {
          v12 = 0;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v17 + 1) + 8 * v12);
            v14 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v13];
            v15 = v14;
            if (v14 && ![v14 count])
            {
              [*(a1 + 32) unobserveChangesForKey:v13];
            }

            else
            {
              [*(*(*(a1 + 56) + 8) + 40) setObject:v15 forKeyedSubscript:v13];
            }

            v12 = v12 + 1;
          }

          while (v10 != v12);
          result = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
          v10 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (__CVBuffer)imageForKey:(id)a3 fillWidth:(int)a4 fillHeight:(int)a5
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__AVCaptureProprietaryDefaultsSingleton_imageForKey_fillWidth_fillHeight___block_invoke;
  v7[3] = &unk_1E786FE18;
  v7[4] = self;
  v7[5] = a3;
  v8 = a5;
  v9 = a4;
  v7[6] = &v10;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v7];
  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v5;
}

void __74__AVCaptureProprietaryDefaultsSingleton_imageForKey_fillWidth_fillHeight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    __74__AVCaptureProprietaryDefaultsSingleton_imageForKey_fillWidth_fillHeight___block_invoke_cold_5();
    return;
  }

  v21 = 0;
  v3 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:v2 options:256 relativeToURL:0 bookmarkDataIsStale:0 error:&v21];
  if (v21)
  {
    __74__AVCaptureProprietaryDefaultsSingleton_imageForKey_fillWidth_fillHeight___block_invoke_cold_1();
    return;
  }

  if (!v3)
  {
    __74__AVCaptureProprietaryDefaultsSingleton_imageForKey_fillWidth_fillHeight___block_invoke_cold_4();
    return;
  }

  v4 = [MEMORY[0x1E695F658] imageWithContentsOfURL:v3];
  if (!v4)
  {
    __74__AVCaptureProprietaryDefaultsSingleton_imageForKey_fillWidth_fillHeight___block_invoke_cold_3();
    return;
  }

  v5 = v4;
  [v4 extent];
  v7 = v6;
  [v5 extent];
  v9 = v8;
  v10 = *(a1 + 56);
  v11 = *(a1 + 60);
  if (v11 / v8 <= v10 / v7)
  {
    v12 = v10 / v7;
  }

  else
  {
    v12 = v11 / v8;
  }

  if (v12 < 1.0)
  {
    memset(&v20, 0, sizeof(v20));
    CGAffineTransformMakeScale(&v20, v12, v12);
    v19 = v20;
    v13 = [v5 imageByApplyingTransform:&v19];
    if (!v13)
    {
      __74__AVCaptureProprietaryDefaultsSingleton_imageForKey_fillWidth_fillHeight___block_invoke_cold_2();
      return;
    }

    v5 = v13;
    v9 = v9 * v12;
    v7 = v7 * v12;
  }

  v14 = *MEMORY[0x1E69660D8];
  v17[0] = *MEMORY[0x1E69660D0];
  v17[1] = v14;
  v18[0] = MEMORY[0x1E695E118];
  v18[1] = MEMORY[0x1E695E0F8];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], v9, v7, 0x34323076u, v15, (*(*(a1 + 48) + 8) + 24)))
  {
    v16 = *(*(*(a1 + 48) + 8) + 24);
    if (v16)
    {
      CFRelease(v16);
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E695F620] contextWithOptions:{MEMORY[0x1E695E0F8]), "render:toCVPixelBuffer:", v5, *(*(*(a1 + 48) + 8) + 24)}];
    CFAutorelease(*(*(*(a1 + 48) + 8) + 24));
  }
}

- (int)retryPriorFailedKeyObservationRegistrations
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__AVCaptureProprietaryDefaultsSingleton_retryPriorFailedKeyObservationRegistrations__block_invoke;
  v11[3] = &unk_1E786FE40;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v28;
  v11[7] = &v22;
  v11[8] = &v16;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v11];
  v3 = [v29[5] count];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = [v29[5] objectAtIndexedSubscript:i];
      v6 = [v23[5] objectAtIndexedSubscript:i];
      v7 = [v17[5] objectAtIndexedSubscript:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = 0;
      }

      else
      {
        v8 = v7;
      }

      [(AVCaptureProprietaryDefaultsSingleton *)self _handleDefaultChangedNotificationForKey:v6 newValue:v8 handlersForKeyObservers:v5 callHandlersAsync:0];
    }
  }

  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  return v9;
}

uint64_t __84__AVCaptureProprietaryDefaultsSingleton_retryPriorFailedKeyObservationRegistrations__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  if (result)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = *(*(a1 + 32) + 64);
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _registerWithServerToObserveKey:v9];
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          break;
        }

        [v3 addObject:v9];
        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v23 objects:v22 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    result = [v3 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (result)
    {
      v10 = result;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v3);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          [*(*(a1 + 32) + 64) removeObject:v13];
          v14 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v13];
          if (v14)
          {
            v15 = v14;
            if ([v14 count])
            {
              if (!*(*(*(a1 + 48) + 8) + 40))
              {
                *(*(*(a1 + 48) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
                *(*(*(a1 + 56) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
                *(*(*(a1 + 64) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              v16 = [*(a1 + 32) objectForKey:v13];
              if (!v16)
              {
                v16 = [MEMORY[0x1E695DFB0] null];
              }

              [*(*(*(a1 + 48) + 8) + 40) addObject:v15];
              [*(*(*(a1 + 56) + 8) + 40) addObject:v13];
              [*(*(*(a1 + 64) + 8) + 40) addObject:v16];
            }

            else
            {
              [*(a1 + 32) unobserveChangesForKey:v13];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        result = [v3 countByEnumeratingWithState:&v18 objects:v17 count:16];
        v10 = result;
      }

      while (result);
    }
  }

  return result;
}

- (int)_registerWithServerToObserveKey:(id)a3
{
  proprietaryDefaultsSource = self->_proprietaryDefaultsSource;
  if (!proprietaryDefaultsSource)
  {
    return -12780;
  }

  v5 = *(CMBaseObjectGetVTable() + 16);
  if (*v5 < 2uLL)
  {
    return -12782;
  }

  v6 = v5[6];
  if (!v6)
  {
    return -12782;
  }

  return v6(proprietaryDefaultsSource, a3);
}

- (id)proprietaryDefaultsDomainForAuditToken:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__AVCaptureProprietaryDefaultsSingleton_proprietaryDefaultsDomainForAuditToken___block_invoke;
  v6[3] = &unk_1E786FE68;
  v3 = *&a3->var0[4];
  v7 = *a3->var0;
  v8 = v3;
  v6[4] = self;
  v6[5] = &v9;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v6];
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __80__AVCaptureProprietaryDefaultsSingleton_proprietaryDefaultsDomainForAuditToken___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 40);
  if (v1)
  {
    v2 = *(*(result + 40) + 8);
    v7 = *(result + 48);
    v8 = *(result + 64);
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 16);
    result = VTable + 16;
    v4 = v5;
    if (*v5 >= 5uLL)
    {
      v6 = v4[12];
      if (v6)
      {
        v9[0] = v7;
        v9[1] = v8;
        return v6(v1, v9, v2 + 40);
      }
    }
  }

  return result;
}

- (void)updateCameraHistory:(id)a3 withCameraInfo:(id)a4 maxLength:(unint64_t)a5 updateCameraHistoryDownplayOverrideList:(BOOL)a6 cameraCanBeInOverrideList:(BOOL)a7
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __152__AVCaptureProprietaryDefaultsSingleton_updateCameraHistory_withCameraInfo_maxLength_updateCameraHistoryDownplayOverrideList_cameraCanBeInOverrideList___block_invoke;
  v10[3] = &unk_1E786FE90;
  v10[4] = self;
  v10[5] = a3;
  v11 = a6;
  v12 = a7;
  v10[6] = a4;
  v10[7] = &v13;
  v10[8] = &v19;
  v10[9] = a5;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v10];
  v9 = v20[5];
  if (v9)
  {
    [(AVCaptureProprietaryDefaultsSingleton *)self _handleDefaultChangedNotificationForKey:a3 newValue:v14[5] handlersForKeyObservers:v9 callHandlersAsync:0];
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

void __152__AVCaptureProprietaryDefaultsSingleton_updateCameraHistory_withCameraInfo_maxLength_updateCameraHistoryDownplayOverrideList_cameraCanBeInOverrideList___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (v1)
  {
    v3 = getpid();
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    v8 = *(a1 + 81);
    v9 = *(*(a1 + 56) + 8);
    v10 = *(CMBaseObjectGetVTable() + 16);
    if (*v10 >= 3uLL)
    {
      v11 = v10[8];
      if (v11)
      {
        if (!v11(v1, v3, v4, v5, v6, v7, v8, v9 + 40))
        {
          if (*(*(*(a1 + 56) + 8) + 40))
          {
            *(*(*(a1 + 64) + 8) + 40) = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
            v12 = *(*(*(a1 + 64) + 8) + 40);
            if (v12)
            {
              if (![v12 count])
              {
                [*(a1 + 32) unobserveChangesForKey:*(a1 + 40)];

                *(*(*(a1 + 64) + 8) + 40) = 0;
              }
            }
          }
        }
      }
    }
  }
}

- (void)updateCameraOverrideHistory:(id)a3 withCameraInfo:(id)a4 setOverride:(BOOL)a5
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__AVCaptureProprietaryDefaultsSingleton_updateCameraOverrideHistory_withCameraInfo_setOverride___block_invoke;
  v13[3] = &unk_1E786FEB8;
  v13[4] = self;
  v13[5] = a3;
  v14 = a5;
  v13[6] = a4;
  v13[7] = &v15;
  v13[8] = &v21;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v13];
  v7 = v22[5];
  if (v7)
  {
    if (dword_1ED8069E0)
    {
      v12 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v7 = v22[5];
    }

    [(AVCaptureProprietaryDefaultsSingleton *)self _handleDefaultChangedNotificationForKey:a3 newValue:v16[5] handlersForKeyObservers:v7 callHandlersAsync:0, v9, v10];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
}

void __96__AVCaptureProprietaryDefaultsSingleton_updateCameraOverrideHistory_withCameraInfo_setOverride___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (v1)
  {
    v26[0] = 0;
    v3 = getpid();
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 72);
    v7 = *(*(a1 + 56) + 8);
    v8 = *(CMBaseObjectGetVTable() + 16);
    if (*v8 >= 3uLL)
    {
      if (*(v8 + 64))
      {
        if (!(*(v8 + 72))(v1, v3, v4, v5, v6, v26, v7 + 40) && v26[0] != 0)
        {
          if (dword_1ED8069E0)
          {
            v28 = 0;
            v27 = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v11 = v28;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v27))
            {
              v12 = v11;
            }

            else
            {
              v12 = v11 & 0xFFFFFFFE;
            }

            if (v12)
            {
              v13 = *(a1 + 40);
              v14 = *(*(*(a1 + 56) + 8) + 40);
              v18 = 136315907;
              v19 = "[AVCaptureProprietaryDefaultsSingleton updateCameraOverrideHistory:withCameraInfo:setOverride:]_block_invoke";
              v20 = 2112;
              v21 = v13;
              v22 = 1024;
              v23 = 84;
              v24 = 2113;
              v25 = v14;
              LODWORD(v17) = 38;
              v16 = &v18;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *(*(*(a1 + 64) + 8) + 40) = [*(*(a1 + 32) + 56) objectForKeyedSubscript:{*(a1 + 40), v16, v17}];
          v15 = *(*(*(a1 + 64) + 8) + 40);
          if (v15)
          {
            if (![v15 count])
            {
              [*(a1 + 32) unobserveChangesForKey:*(a1 + 40)];

              *(*(*(a1 + 64) + 8) + 40) = 0;
            }
          }
        }
      }
    }
  }
}

+ (void)updateProprietaryDefaultsSource
{
  v2 = +[AVCaptureProprietaryDefaultsSingleton proprietaryDefaultsSingleton];

  [v2 _updateProprietaryDefaultsSource:1];
}

- (void)_updateProprietaryDefaultsSource:(BOOL)a3
{
  if (AVCaptureIsRunningInMediaserverd())
  {
    v4 = FigCaptureSourceCopySources();
  }

  else
  {
    v4 = FigCaptureSourceRemoteCopyCaptureSources();
  }

  v5 = v4;
  v6 = [v4 firstObject];
  if (!v6)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [v5 count];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__AVCaptureProprietaryDefaultsSingleton__updateProprietaryDefaultsSource___block_invoke;
  v10[3] = &unk_1E786ECD0;
  v10[4] = self;
  v10[5] = v6;
  [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v10];
  if (v5)
  {
    CFRelease(v5);
  }
}

void *__74__AVCaptureProprietaryDefaultsSingleton__updateProprietaryDefaultsSource___block_invoke(void *result)
{
  v1 = *(result[4] + 40);
  if (result[5] != v1)
  {
    v2 = result;
    if (v1)
    {
      [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", *(result[4] + 48), avpds_proprietaryDefaultsSourceNotificationHandler, 0, *(result[4] + 40)}];
      v3 = *(v2[4] + 40);
      if (v3)
      {
        CFRelease(v3);
        *(v2[4] + 40) = 0;
      }
    }

    result = v2[5];
    if (result)
    {
      *(v2[4] + 40) = CFRetain(result);
      [objc_msgSend(MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "addListenerWithWeakReference:callback:name:object:flags:", *(v2[4] + 48), avpds_proprietaryDefaultsSourceNotificationHandler, 0, *(v2[4] + 40), 0}];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = [*(v2[4] + 56) allKeys];
      result = [v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (result)
      {
        v5 = result;
        v6 = *v14;
        do
        {
          v7 = 0;
          do
          {
            if (*v14 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = *(*(&v13 + 1) + 8 * v7);
            v9 = *(v2[4] + 40);
            v10 = *(CMBaseObjectGetVTable() + 16);
            if (*v10 >= 2uLL)
            {
              v11 = v10[6];
              if (v11)
              {
                v11(v9, v8);
              }
            }

            v7 = (v7 + 1);
          }

          while (v5 != v7);
          result = [v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
          v5 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (void)_handleNotification:(id)a3 payload:(id)a4
{
  if ([a3 isEqualToString:*MEMORY[0x1E6990528]])
  {
    v6 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990868]];
    v7 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6990870]];
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      [AVCaptureProprietaryDefaultsSingleton _handleNotification:payload:];
    }

    else
    {

      [(AVCaptureProprietaryDefaultsSingleton *)self _handleDefaultChangedNotificationForKey:v6 newValue:v7 handlersForKeyObservers:0 callHandlersAsync:1];
    }
  }
}

- (void)unobserveChangesForKey:(id)a3
{
  proprietaryDefaultsSource = self->_proprietaryDefaultsSource;
  if (proprietaryDefaultsSource)
  {
    v5 = *(CMBaseObjectGetVTable() + 16);
    if (*v5 >= 2uLL)
    {
      v6 = v5[7];
      if (v6)
      {

        v6(proprietaryDefaultsSource, a3);
      }
    }
  }
}

- (void)_handleDefaultChangedNotificationForKey:(id)a3 newValue:(id)a4 handlersForKeyObservers:(id)a5 callHandlersAsync:(BOOL)a6
{
  v6 = a6;
  context = objc_autoreleasePoolPush();
  if (a5 || (v27 = 0, v28 = &v27, v29 = 0x3052000000, v30 = __Block_byref_object_copy__6, v31 = __Block_byref_object_dispose__6, v32 = 0, v26[0] = MEMORY[0x1E69E9820], v26[1] = 3221225472, v26[2] = __132__AVCaptureProprietaryDefaultsSingleton__handleDefaultChangedNotificationForKey_newValue_handlersForKeyObservers_callHandlersAsync___block_invoke, v26[3] = &unk_1E786FF08, v26[5] = a3, v26[6] = &v27, v26[4] = self, [(AVCaptureProprietaryDefaultsSingleton *)self _runBlockOnProprietaryDefaultsSourceQueueSync:v26, context], a5 = v28[5], _Block_object_dispose(&v27, 8), a5))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a4 = 0;
    }

    v10 = [objc_msgSend(a5 keyEnumerator];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [a5 objectForKey:v15];
          if (v16)
          {
            if (v6)
            {
              proprietaryDefaultChangeNotificationCallbackQueue = self->_proprietaryDefaultChangeNotificationCallbackQueue;
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __132__AVCaptureProprietaryDefaultsSingleton__handleDefaultChangedNotificationForKey_newValue_handlersForKeyObservers_callHandlersAsync___block_invoke_2;
              block[3] = &unk_1E786FF30;
              block[4] = v15;
              block[5] = a3;
              block[6] = a4;
              block[7] = v16;
              dispatch_async(proprietaryDefaultChangeNotificationCallbackQueue, block);
            }

            else
            {
              (*(v16 + 16))(v16, a3, a4);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v21 count:16];
      }

      while (v12);
    }
  }

  objc_autoreleasePoolPop(context);
}

void __132__AVCaptureProprietaryDefaultsSingleton__handleDefaultChangedNotificationForKey_newValue_handlersForKeyObservers_callHandlersAsync___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    if (![v2 count])
    {
      [*(a1 + 32) unobserveChangesForKey:*(a1 + 40)];

      *(*(*(a1 + 48) + 8) + 40) = 0;
    }
  }
}

void __132__AVCaptureProprietaryDefaultsSingleton__handleDefaultChangedNotificationForKey_newValue_handlersForKeyObservers_callHandlersAsync___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
  v3 = *(a1 + 32);
}

- (void)_runBlockOnProprietaryDefaultsSourceQueueSync:(id)a3
{
  label = dispatch_queue_get_label(0);
  if (label && !strncmp(label, self->_proprietaryDefaultsSourceQueueLabel, self->_proprietaryDefaultsSourceQueueLabelLength))
  {
    v7 = *(a3 + 2);

    v7(a3);
  }

  else
  {
    proprietaryDefaultsSourceQueue = self->_proprietaryDefaultsSourceQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__AVCaptureProprietaryDefaultsSingleton__runBlockOnProprietaryDefaultsSourceQueueSync___block_invoke;
    block[3] = &unk_1E786F798;
    block[4] = a3;
    dispatch_sync(proprietaryDefaultsSourceQueue, block);
  }
}

@end