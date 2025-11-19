@interface AVAssetMakeReadyForInspectionLoader
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- (AVAssetMakeReadyForInspectionLoader)initWithURL:(id)a3;
- (BOOL)_statusOfValuesIsTerminalWhileMutexLockedForKeys:(id)a3;
- (BOOL)_updateStatusWhileMutexLocked:(int64_t)a3 figErrorCode:(int)a4;
- (OpaqueFigFormatReader)_copyFormatReader;
- (OpaqueFigFormatReader)_copyFormatReaderFromFigObjectWithFigErrorCode:(int *)a3;
- (id)_dictionaryOfSpecialGettersForKeyValueStatus;
- (id)_dictionaryOfSpecialLoadingMethodsForKeys;
- (id)_getAndPruneCompletionsWhileMutexLocked;
- (id)_loadValuesUsingDefaultLoadingMethodWhileMutexLockedForKeys:(id)a3;
- (id)_loadValuesWhileMutexLockedForKeys:(id)a3;
- (id)assetInspector;
- (id)lyrics;
- (int64_t)_statusOfValueWhileMutexLockedForKey:(id)a3 error:(id *)a4;
- (int64_t)statusOfValueForKey:(id)a3 error:(id *)a4;
- (void)_setStatus:(int64_t)a3 figErrorCode:(int)a4;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4;
@end

@implementation AVAssetMakeReadyForInspectionLoader

- (AVAssetMakeReadyForInspectionLoader)initWithURL:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVAssetMakeReadyForInspectionLoader;
  v4 = [(AVAssetInspectorLoader *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_status = 0;
    v4->_loadingMutex = FigSimpleMutexCreate();
    v5->_URL = [a3 copy];
  }

  return v5;
}

- (void)dealloc
{
  formatReader = self->_formatReader;
  if (formatReader)
  {
    CFRelease(formatReader);
  }

  if (self->_loadingMutex)
  {
    FigSimpleMutexDestroy();
  }

  v4.receiver = self;
  v4.super_class = AVAssetMakeReadyForInspectionLoader;
  [(AVAssetInspectorLoader *)&v4 dealloc];
}

- (id)assetInspector
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (OpaqueFigFormatReader)_copyFormatReader
{
  result = self->_formatReader;
  if (result)
  {
    goto LABEL_5;
  }

  v4 = [(AVAssetMakeReadyForInspectionLoader *)self _copyFormatReaderFromFigObjectWithFigErrorCode:0];
  if (v4)
  {
    CFRelease(v4);
  }

  [(AVAssetMakeReadyForInspectionLoader *)self _setStatus:2 figErrorCode:0];
  result = self->_formatReader;
  if (result)
  {
LABEL_5:

    return CFRetain(result);
  }

  return result;
}

- (OpaqueFigFormatReader)_copyFormatReaderFromFigObjectWithFigErrorCode:(int *)a3
{
  v6 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v6);
  if (a3)
  {
    *a3 = 0;
  }

  return 0;
}

- (id)_dictionaryOfSpecialGettersForKeyValueStatus
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (int64_t)_statusOfValueWhileMutexLockedForKey:(id)a3 error:(id *)a4
{
  v6 = [-[AVAssetMakeReadyForInspectionLoader _dictionaryOfSpecialGettersForKeyValueStatus](self "_dictionaryOfSpecialGettersForKeyValueStatus")];
  if (v6)
  {
    v10 = 0;
    [v6 getValue:&v10];
    status = [-[AVAssetMakeReadyForInspectionLoader performSelector:](self performSelector:{v10), "intValue"}];
    if (!a4)
    {
      return status;
    }
  }

  else
  {
    status = self->_status;
    if (!a4)
    {
      return status;
    }
  }

  if (status == 3)
  {
    v8 = [(AVAssetInspectorLoader *)self _createAVErrorForError:0 andFigErrorCode:self->_basicInspectionFailureCode];
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  return status;
}

- (BOOL)_statusOfValuesIsTerminalWhileMutexLockedForKeys:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        if ([(AVAssetMakeReadyForInspectionLoader *)self _statusOfValueWhileMutexLockedForKey:*(*(&v10 + 1) + 8 * v8) error:0]< 2)
        {
          return 0;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (id)_getAndPruneCompletionsWhileMutexLocked
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keysAwaitingCompletion = self->_keysAwaitingCompletion;
  v6 = [(NSMutableArray *)keysAwaitingCompletion countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(keysAwaitingCompletion);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (-[AVAssetMakeReadyForInspectionLoader _statusOfValuesIsTerminalWhileMutexLockedForKeys:](self, "_statusOfValuesIsTerminalWhileMutexLockedForKeys:", [v10 objectForKey:@"keys"]))
        {
          v11 = [v10 objectForKey:@"handler"];
          if (v11)
          {
            [v3 addObject:v11];
          }

          [v4 addObject:v10];
        }
      }

      v7 = [(NSMutableArray *)keysAwaitingCompletion countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_keysAwaitingCompletion removeObjectsInArray:v4];
  if ([v3 count])
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)statusOfValueForKey:(id)a3 error:(id *)a4
{
  FigSimpleMutexLock();
  v7 = [(AVAssetMakeReadyForInspectionLoader *)self _statusOfValueWhileMutexLockedForKey:a3 error:a4];
  FigSimpleMutexUnlock();
  return v7;
}

- (BOOL)_updateStatusWhileMutexLocked:(int64_t)a3 figErrorCode:(int)a4
{
  v9 = a4;
  status = self->_status;
  v6 = status;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      self->_basicInspectionFailureCode = a4;
    }

    else if (a3 != 4)
    {
      return status != v6;
    }

    if (status <= 2)
    {
      self->_status = a3;
      v6 = a3;
    }
  }

  else
  {
    if (a3 == 1)
    {
      if (status > 0)
      {
        return status != v6;
      }

      v6 = 1;
      goto LABEL_18;
    }

    if (a3 == 2 && status <= 1)
    {
      if (!self->_formatReader)
      {
        v7 = [(AVAssetMakeReadyForInspectionLoader *)self _copyFormatReaderFromFigObjectWithFigErrorCode:&v9];
        self->_formatReader = v7;
        if (!v7)
        {
          if ([(AVAssetMakeReadyForInspectionLoader *)self _inspectionRequiresAFormatReader])
          {
            v6 = 3;
            self->_status = 3;
            self->_basicInspectionFailureCode = v9;
            return status != v6;
          }
        }
      }

      v6 = 2;
LABEL_18:
      self->_status = v6;
    }
  }

  return status != v6;
}

- (void)_setStatus:(int64_t)a3 figErrorCode:(int)a4
{
  v4 = *&a4;
  v17 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if ([(AVAssetMakeReadyForInspectionLoader *)self _updateStatusWhileMutexLocked:a3 figErrorCode:v4])
  {
    v7 = [(AVAssetMakeReadyForInspectionLoader *)self _getAndPruneCompletionsWhileMutexLocked];
  }

  else
  {
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v12 + 1) + 8 * v11++) + 16))();
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)_loadValuesUsingDefaultLoadingMethodWhileMutexLockedForKeys:(id)a3
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- (id)_dictionaryOfSpecialLoadingMethodsForKeys
{
  if (getDictionaryOfSpecialLoadingMethodsForKeys_onceToken != -1)
  {
    [AVAssetMakeReadyForInspectionLoader _dictionaryOfSpecialLoadingMethodsForKeys];
  }

  return getDictionaryOfSpecialLoadingMethodsForKeys_sSpecialLoadingMethodsForKeys;
}

- (id)_loadValuesWhileMutexLockedForKeys:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v8 = [(AVAssetMakeReadyForInspectionLoader *)self _dictionaryOfSpecialLoadingMethodsForKeys];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [v8 objectForKey:v13];
        if (v14)
        {
          v15 = v14;
          v16 = v6;
        }

        else
        {
          v16 = v7;
          v15 = v13;
        }

        [v16 addObject:v15];
      }

      v10 = [a3 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v17 = [(AVAssetMakeReadyForInspectionLoader *)self _loadValuesUsingDefaultLoadingMethodWhileMutexLockedForKeys:a3];
    if (v17)
    {
      [v5 addObjectsFromArray:v17];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v6);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        v25 = 0;
        [v22 getValue:&v25];
        v23 = [(AVAssetMakeReadyForInspectionLoader *)self performSelector:v25];
        if (v23)
        {
          [v5 addObjectsFromArray:v23];
        }
      }

      v19 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  return v5;
}

- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
LABEL_4:
    if (a4)
    {
      v7 = *(a4 + 2);

      v7(a4);
    }

    return;
  }

  FigSimpleMutexLock();
  if ([(AVAssetMakeReadyForInspectionLoader *)self _statusOfValuesIsTerminalWhileMutexLockedForKeys:a3])
  {
    FigSimpleMutexUnlock();
    goto LABEL_4;
  }

  if (!self->_keysAwaitingCompletion)
  {
    self->_keysAwaitingCompletion = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  }

  v8 = [a4 copy];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a3, @"keys", v8, @"handler", 0}];

  [(NSMutableArray *)self->_keysAwaitingCompletion addObject:v9];
  if ([-[AVAssetMakeReadyForInspectionLoader _loadValuesWhileMutexLockedForKeys:](self _loadValuesWhileMutexLockedForKeys:{a3), "count"}])
  {
    v10 = [(AVAssetMakeReadyForInspectionLoader *)self _getAndPruneCompletionsWhileMutexLocked];
  }

  else
  {
    v10 = 0;
  }

  FigSimpleMutexUnlock();
  if ([v10 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          (*(*(*(&v15 + 1) + 8 * i) + 16))();
        }

        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  result = [(AVAssetMakeReadyForInspectionLoader *)self assetInspector];
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

- (id)lyrics
{
  v2 = [(AVAssetMakeReadyForInspectionLoader *)self assetInspector];

  return [v2 lyrics];
}

@end