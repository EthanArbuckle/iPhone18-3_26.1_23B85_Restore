@interface AVAssetWriterFinishWritingHelper
- (AVAssetWriterFinishWritingHelper)initWithConfigurationState:(id)state finishWritingOperations:(id)operations figAssetWriterCallbackContextToken:(void *)token figAssetWriter:(OpaqueFigAssetWriter *)writer figAssetWriterIsRemote:(BOOL)remote;
- (BOOL)_isDefunct;
- (void)_finishWritingOperationsDidFinish;
- (void)cancelWriting;
- (void)dealloc;
@end

@implementation AVAssetWriterFinishWritingHelper

uint64_t __160__AVAssetWriterFinishWritingHelper_initWithConfigurationState_finishWritingOperations_figAssetWriterCallbackContextToken_figAssetWriter_figAssetWriterIsRemote___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];

  return [v1 _finishWritingOperationsDidFinish];
}

- (void)dealloc
{
  if (self->_figAssetWriterCallbackContextToken)
  {
    [+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
    self->_figAssetWriterCallbackContextToken = 0;
  }

  figAssetWriter = self->_figAssetWriter;
  if (figAssetWriter)
  {
    CFRelease(figAssetWriter);
  }

  v4.receiver = self;
  v4.super_class = AVAssetWriterFinishWritingHelper;
  [(AVAssetWriterHelper *)&v4 dealloc];
}

- (void)_finishWritingOperationsDidFinish
{
  v5 = 0;
  v3 = [AVOperation statusOfOperations:self->_finishWritingOperations error:&v5];
  if (v3 == 4)
  {
    [(AVAssetWriterHelper *)self transitionToFailedStatusWithError:v5];
  }

  else if (v3 == 2)
  {
    [(AVAssetWriterHelper *)self _transitionToClientInitiatedTerminalStatus:2];
  }

  else
  {
    [(AVAssetWriterHelper *)self _transitionToClientInitiatedTerminalStatus:4];
    [objc_msgSend(MEMORY[0x1E696AC08] defaultManager];
  }
}

- (void)cancelWriting
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  finishWritingOperations = self->_finishWritingOperations;
  v3 = [(NSArray *)finishWritingOperations countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(finishWritingOperations);
        }

        [*(*(&v7 + 1) + 8 * i) cancel];
      }

      v4 = [(NSArray *)finishWritingOperations countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)_isDefunct
{
  v8 = 0;
  figAssetWriter = self->_figAssetWriter;
  v3 = *(CMBaseObjectGetVTable() + 8);
  if (*v3 < 5uLL)
  {
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = v3[11];
    if (v4)
    {
      LOBYTE(v4) = v4(figAssetWriter, &v8) == 0;
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v5)
  {
    v5 = v6;
  }

  return v5 == 1;
}

- (AVAssetWriterFinishWritingHelper)initWithConfigurationState:(id)state finishWritingOperations:(id)operations figAssetWriterCallbackContextToken:(void *)token figAssetWriter:(OpaqueFigAssetWriter *)writer figAssetWriterIsRemote:(BOOL)remote
{
  v55 = *MEMORY[0x1E69E9840];
  v13 = [[AVWeakReference alloc] initWithReferencedObject:self];
  v53.receiver = self;
  v53.super_class = AVAssetWriterFinishWritingHelper;
  v14 = [(AVAssetWriterHelper *)&v53 initWithConfigurationState:state];
  if (v14)
  {
    v48 = MEMORY[0x1E69E9820];
    v49 = 3221225472;
    v50 = __160__AVAssetWriterFinishWritingHelper_initWithConfigurationState_finishWritingOperations_figAssetWriterCallbackContextToken_figAssetWriter_figAssetWriterIsRemote___block_invoke;
    v51 = &unk_1E7460C00;
    v52 = v13;
    v15 = [AVWorkaroundNSBlockOperation blockOperationWithBlock:&v48];
    v16 = [(AVWorkaroundNSBlockOperation *)v15 setName:@"Transition to terminal status"];
    v24 = OUTLINED_FUNCTION_0_9(v16, v17, v18, v19, v20, v21, v22, v23, 0, 0, 0, 0, 0, 0, 0, 0, v46, v48, v49, v50, v51, v52, v53.receiver, v53.super_class, v54);
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      do
      {
        v27 = 0;
        do
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(operations);
          }

          v28 = [(AVWorkaroundNSBlockOperation *)v15 addDependency:*(v39 + 8 * v27++)];
        }

        while (v25 != v27);
        v25 = OUTLINED_FUNCTION_0_9(v28, v29, v30, v31, v32, v33, v34, v35, v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, v49, v50, v51, v52, v53.receiver, v53.super_class, v54);
      }

      while (v25);
    }

    v14->_finishWritingOperations = [operations copy];
    v14->_transitionToTerminalStatusOperation = v15;
    v14->_figAssetWriterCallbackContextToken = token;
    if (writer)
    {
      v36 = CFRetain(writer);
    }

    else
    {
      v36 = 0;
    }

    v14->_figAssetWriter = v36;
    v14->_figAssetWriterIsRemote = remote;
  }

  return v14;
}

@end