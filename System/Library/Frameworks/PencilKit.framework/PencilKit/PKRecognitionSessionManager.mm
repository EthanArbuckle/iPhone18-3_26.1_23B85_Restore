@interface PKRecognitionSessionManager
+ (BOOL)hasAutoRefineLocaleEnabled;
+ (id)enabledLocales;
- (CGAffineTransform)_affineTransformFromBounds:(double)bounds targetHeight:(double)height targetPoint:(double)point;
- (PKRecognitionSessionManager)init;
- (id)_firstStrokesInSelectedStrokes:(uint64_t)strokes isRTL:;
- (id)_lastStrokesInSelectedStrokes:(uint64_t)strokes isRTL:;
- (id)calculateDocumentProviderSnapshot;
- (id)canvasAttachmentProviderSnapshot;
- (id)directStrokeProviderSnapshot;
- (id)drawing;
- (id)fetchTranscriptionForStrokes:(char)strokes callCompletionOnMainThread:(void *)thread cancelBlock:(void *)block withCompletion:;
- (id)fetchTranscriptionForStrokes:(void *)strokes cancelBlock:(void *)block withCompletion:;
- (id)groupQuery;
- (id)initWithConfiguration:(id *)configuration;
- (id)listeners;
- (id)q_groupQuery;
- (id)session;
- (id)strokeProviderSnapshot;
- (uint64_t)canSynthesizeDrawingForText:(uint64_t)text;
- (uint64_t)contentTypeForIntersectedStrokes:(uint64_t)strokes;
- (uint64_t)didHitHandwritingStroke:(uint64_t)stroke;
- (uint64_t)q_createRecognitionSessionIfNecessary;
- (void)_dispatchSyncToRecognitionThreadIfNecessary:(uint64_t)necessary;
- (void)addListener:(uint64_t)listener;
- (void)autoRefineQuery:(id)query didUpdateWithQueryItem:(id)item validProviderVersion:(id)version;
- (void)cacheTranscription:(void *)transcription strokeGroup:;
- (void)cleanupSessionIfNecessary;
- (void)completeTextSynthesisForText:(id *)text bounds:(void *)bounds ink:(void *)ink inputScale:(void *)scale suggestedHeight:(void *)height contextDrawing:(void *)drawing sourceStrokes:(void *)strokes tokenStringRanges:(int)ranges tokens:(double)tokens isProofreadingReplacement:(double)text0 completion:(void *)text1;
- (void)dataDetectorQuery:(id)query foundItems:(id)items;
- (void)dealloc;
- (void)fetchCurrentStrokeGroupItems:(uint64_t)items;
- (void)fetchIndexableContentWithCompletion:(uint64_t)completion;
- (void)fetchIntersectedStrokesAtPoint:(uint64_t)point selectionType:(void *)type inputType:(void *)inputType visibleOnscreenStrokes:(double)strokes completion:(double)completion;
- (void)fetchIntersectedStrokesBetweenTopPoint:(void *)point bottomPoint:(double)bottomPoint liveScrollOffset:(double)offset isRTL:(double)l completion:(double)completion;
- (void)fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(void *)strokes completion:;
- (void)groupQuery:(id)query foundItems:(id)items;
- (void)hashtagQuery:(id)query foundItems:(id)items;
- (void)mentionQuery:(id)query foundItems:(id)items;
- (void)proofreadingQuery:(id)query foundItems:(id)items;
- (void)q_needRecognitionUpdateWithCancel:(void *)result;
- (void)q_saveRecognitionSessionIfNecessary;
- (void)q_teardownSession;
- (void)q_updateRecognitionStateWithFinishedResult:(uint64_t)result;
- (void)recognitionSessionDidUpdateRecognitionResult:(id)result;
- (void)removeListener:(uint64_t)listener;
- (void)saveRecognitionSessionIfNecessary;
- (void)scheduleSaveRecognitionSession;
- (void)setAutoRefineViewDelegate:(uint64_t)delegate;
- (void)setCalculateDocumentProvider:(uint64_t)provider;
- (void)setCanvasAttachmentProvider:(uint64_t)provider;
- (void)setDelegate:(uint64_t)delegate;
- (void)setDrawing:(void *)drawing;
- (void)setDrawing:(void *)drawing withVisibleOnscreenStrokes:;
- (void)setMathPreferredUpdatesInterval:(uint64_t)interval;
- (void)setMentionSuffixes:(uint64_t)suffixes;
- (void)setVisibleOnscreenStrokes:(uint64_t)strokes;
- (void)setWantsAutoRefine:(uint64_t)refine;
- (void)setWantsDataDetection:(uint64_t)detection;
- (void)setWantsHashtagDetection:(uint64_t)detection;
- (void)setWantsMentionDetection:(uint64_t)detection;
- (void)setWantsProofreadingDetection:(uint64_t)detection;
- (void)synthesizeDrawingForMathResultBlock:(void *)block fallbackText:(void *)text drawing:(void *)drawing mathItem:(void *)item inkColor:(void *)color inputScale:(double)scale completion:;
- (void)synthesizeDrawingForReplacementText:(void *)text drawing:(void *)drawing strokes:(void *)strokes bounds:(CGFloat)bounds inputScale:(CGFloat)scale completion:(CGFloat)completion;
- (void)synthesizeDrawingForText:(void *)text drawing:(double)drawing inkColor:(double)color inputScale:(double)scale suggestedHeight:(double)height bounds:(double)bounds progress:(double)progress completion:(uint64_t)self0 shouldCancel:(void *)self1;
- (void)synthesizeDrawingForText:(void *)text sourceDrawing:(void *)drawing originalBounds:(double)bounds fitInBounds:(double)inBounds inputScale:(double)scale completion:(double)completion;
- (void)tagAsActive;
- (void)tagAsIdle;
- (void)textInputDidChange:(id)change;
- (void)textStrokesCoveredByStroke:(void *)stroke completion:;
- (void)updateWithRefinableStroke:(uint64_t)stroke;
@end

@implementation PKRecognitionSessionManager

- (PKRecognitionSessionManager)init
{
  objc_opt_self();
  v3 = +[PKRecognitionSessionManagerConfiguration interactiveCanvasConfiguration];
  v4 = [(PKRecognitionSessionManager *)&self->super.isa initWithConfiguration:v3];

  return v4;
}

- (id)initWithConfiguration:(id *)configuration
{
  v3 = a2;
  if (configuration)
  {
    v25.receiver = configuration;
    v25.super_class = PKRecognitionSessionManager;
    v4 = objc_msgSendSuper2(&v25, sel_init);
    configuration = v4;
    if (v4)
    {
      if (v3)
      {
        v5 = v3[2];
      }

      else
      {
        v5 = 0;
      }

      objc_storeStrong(v4 + 24, v5);
      v6 = os_log_create("com.apple.pencilkit", "RecognitionManager");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v24[0] = 0;
        _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Create manager.", v24, 2u);
      }

      if (v3)
      {
        v7 = *(v3 + 8);
      }

      else
      {
        v7 = 0;
      }

      *(configuration + 8) = v7 & 1;
      [configuration setState:0];
      *(configuration + 120) = 1;
      *(configuration + 121) = 0;
      *(configuration + 125) = 0;
      v8 = configuration[18];
      configuration[18] = 0;

      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v10 = configuration[20];
      configuration[20] = weakObjectsHashTable;

      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_create("com.apple.PencilKit.RecognitionManager", v11);
      v13 = configuration[3];
      configuration[3] = v12;

      v14 = objc_alloc_init(PKHandwritingTranscriptionCache);
      v15 = configuration[12];
      configuration[12] = v14;

      v16 = objc_alloc_init(PKHandwritingTranscriptionCache);
      v17 = configuration[13];
      configuration[13] = v16;

      v18 = [[PKRecognitionQueryController alloc] initWithRecognitionSessionManager:configuration];
      v19 = configuration[16];
      configuration[16] = v18;

      if (v3)
      {
        if (*(v3 + 9) == 1)
        {
          v20 = configuration[16];
          v21 = objc_opt_class();
          if (v20)
          {
            [v20[4] setObject:v21 forKey:@"SmartSelection"];
          }
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:configuration selector:sel_textInputDidChange_ name:@"TIPreferencesControllerChangedNotification" object:0];
    }
  }

  return configuration;
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.pencilkit", "RecognitionManager");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Teardown", buf, 2u);
  }

  self->_isTearingDown = 1;
  observerWrapper = self->_observerWrapper;
  if (observerWrapper)
  {
    atomic_store(1u, &observerWrapper->_deactivated);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  if (dispatch_queue_get_label(0) == "com.apple.PencilKit.RecognitionManager")
  {
    [(PKRecognitionSessionManager *)self q_teardownSession];
  }

  else
  {
    recognitionSessionQueue = self->_recognitionSessionQueue;
    *buf = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __47__PKRecognitionSessionManager__teardownSession__block_invoke;
    v11 = &unk_1E82D6388;
    selfCopy = self;
    dispatch_sync(recognitionSessionQueue, buf);
  }

  v7.receiver = self;
  v7.super_class = PKRecognitionSessionManager;
  [(PKRecognitionSessionManager *)&v7 dealloc];
}

- (void)textStrokesCoveredByStroke:(void *)stroke completion:
{
  v7 = a2;
  strokeCopy = stroke;
  if (self)
  {
    groupQuery = [(PKRecognitionSessionManager *)self groupQuery];
    [groupQuery textStrokesCoveredByStroke:v7 completion:strokeCopy];
  }
}

- (id)groupQuery
{
  if (self)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x3032000000;
    v7 = __Block_byref_object_copy__31;
    v8 = __Block_byref_object_dispose__31;
    v9 = 0;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __41__PKRecognitionSessionManager_groupQuery__block_invoke;
    v3[3] = &unk_1E82D6868;
    v3[4] = self;
    v3[5] = &v4;
    [(PKRecognitionSessionManager *)self _dispatchSyncToRecognitionThreadIfNecessary:v3];
    v1 = v5[5];
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (void)setDelegate:(uint64_t)delegate
{
  v3 = a2;
  if (delegate)
  {
    v8 = v3;
    objc_storeWeak((delegate + 200), v3);
    if (objc_opt_respondsToSelector())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *(delegate + 184) = *(delegate + 184) & 0xFD | v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *(delegate + 184) = *(delegate + 184) & 0xFB | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    *(delegate + 184) = *(delegate + 184) & 0xF7 | v6;
    *(delegate + 184) = *(delegate + 184) & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v7 = 16;
    }

    else
    {
      v7 = 0;
    }

    *(delegate + 184) = *(delegate + 184) & 0xEF | v7;
    v3 = v8;
  }
}

- (void)addListener:(uint64_t)listener
{
  v3 = a2;
  v4 = v3;
  if (listener)
  {
    v5 = *(listener + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__PKRecognitionSessionManager_addListener___block_invoke;
    v6[3] = &unk_1E82D6890;
    v6[4] = listener;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)removeListener:(uint64_t)listener
{
  v3 = a2;
  v4 = v3;
  if (listener)
  {
    v5 = *(listener + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__PKRecognitionSessionManager_removeListener___block_invoke;
    v6[3] = &unk_1E82D6890;
    v6[4] = listener;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __46__PKRecognitionSessionManager_removeListener___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 160) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 160) count])
  {
    v2 = *(a1 + 32);

    [(PKRecognitionSessionManager *)v2 q_teardownSession];
  }
}

- (void)q_teardownSession
{
  if (self)
  {
    v2 = *(self + 136);
    v3 = v2;
    if (v2)
    {
      atomic_store(1u, v2 + 16);
    }

    v4 = *(self + 136);
    *(self + 136) = 0;

    v5 = *(self + 128);
    if (v5)
    {
      [(PKRecognitionQueryController *)*(self + 128) clearVisibleStrokesQueries];
      [(PKRecognitionQueryController *)v5 clearDrawingQueries];
    }

    [(PKRecognitionSessionManager *)self q_saveRecognitionSessionIfNecessary];
    v6 = *(self + 152);
    if (v6)
    {
      [(PKAutoRefineTaskManager *)v6 cancelAllTasks];
      v7 = *(self + 152);
      *(self + 152) = 0;
    }

    [*(self + 48) cancelOngoingRequests];
    [*(self + 48) setDataSource:0];
    v8 = *(self + 64);
    *(self + 64) = 0;

    v9 = *(self + 48);
    v10 = *(self + 48);
    *(self + 48) = 0;

    if (v3)
    {
      if (v9)
      {
        v11 = dispatch_get_global_queue(17, 0);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __48__PKRecognitionSessionManager_q_teardownSession__block_invoke;
        v12[3] = &unk_1E82D6890;
        v13 = v9;
        v14 = v3;
        dispatch_async(v11, v12);
      }
    }
  }
}

- (id)listeners
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__31;
  v9 = __Block_byref_object_dispose__31;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__PKRecognitionSessionManager_listeners__block_invoke;
  v4[3] = &unk_1E82D6868;
  v4[4] = self;
  v4[5] = &v5;
  [(PKRecognitionSessionManager *)self _dispatchSyncToRecognitionThreadIfNecessary:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_dispatchSyncToRecognitionThreadIfNecessary:(uint64_t)necessary
{
  v3 = a2;
  if (necessary)
  {
    if (dispatch_queue_get_label(0) == "com.apple.PencilKit.RecognitionManager")
    {
      v3[2](v3);
    }

    else
    {
      v4 = *(necessary + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__PKRecognitionSessionManager__dispatchSyncToRecognitionThreadIfNecessary___block_invoke;
      block[3] = &unk_1E82D63B0;
      v6 = v3;
      dispatch_sync(v4, block);
    }
  }
}

- (void)tagAsActive
{
  if (self)
  {
    v1 = *(self + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__PKRecognitionSessionManager_tagAsActive__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

- (void)tagAsIdle
{
  if (self)
  {
    v1 = *(self + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__PKRecognitionSessionManager_tagAsIdle__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

- (void)cleanupSessionIfNecessary
{
  if (self)
  {
    v1 = *(self + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PKRecognitionSessionManager_cleanupSessionIfNecessary__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

void __56__PKRecognitionSessionManager_cleanupSessionIfNecessary__block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 160) count])
  {
    v2 = *(a1 + 32);

    [(PKRecognitionSessionManager *)v2 q_teardownSession];
  }
}

- (id)session
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__31;
    v9 = __Block_byref_object_dispose__31;
    v10 = 0;
    if (dispatch_queue_get_label(0) == "com.apple.PencilKit.RecognitionManager")
    {
      v10 = *(selfCopy + 6);
    }

    else
    {
      v2 = *(selfCopy + 3);
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __38__PKRecognitionSessionManager_session__block_invoke;
      v4[3] = &unk_1E82D6868;
      v4[4] = selfCopy;
      v4[5] = &v5;
      dispatch_sync(v2, v4);
    }

    selfCopy = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

- (id)drawing
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = selfCopy[4];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setDrawing:(void *)drawing
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (drawing)
  {
    drawingCopy = drawing;
    objc_sync_enter(drawingCopy);
    if ([v3 isEqual:drawingCopy[4]])
    {
      objc_sync_exit(drawingCopy);
    }

    else
    {
      v5 = [v3 copy];
      v6 = drawingCopy[4];
      drawingCopy[4] = v5;

      objc_sync_exit(drawingCopy);
      v7 = os_log_create("com.apple.pencilkit", "RecognitionManager");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [v3 uuid];
        *buf = 138412290;
        v15 = uuid;
        _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Drawing did change: %@", buf, 0xCu);
      }

      [(PKRecognitionSessionManager *)drawingCopy scheduleSaveRecognitionSession];
      v9 = [v3 copy];
      v10 = drawingCopy[3];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __42__PKRecognitionSessionManager_setDrawing___block_invoke;
      v12[3] = &unk_1E82D6890;
      v12[4] = drawingCopy;
      v13 = v9;
      v11 = v9;
      dispatch_async(v10, v12);
    }
  }
}

- (void)scheduleSaveRecognitionSession
{
  if (self && *(self + 8) == 1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__PKRecognitionSessionManager_scheduleSaveRecognitionSession__block_invoke;
    aBlock[3] = &unk_1E82D6388;
    aBlock[4] = self;
    v1 = _Block_copy(aBlock);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v1[2](v1);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v1);
    }
  }
}

void __42__PKRecognitionSessionManager_setDrawing___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3 && *(a1 + 40))
  {
    v4 = [v3 uuid];
    v5 = [*(a1 + 40) uuid];
    v6 = [v4 isEqual:v5] ^ 1;

    v2 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong((v2 + 40), *(a1 + 40));
  v7 = *(a1 + 32);
  v8 = *(v7 + 112);
  *(v7 + 112) = 0;

  if (*(a1 + 40))
  {
    if (v6)
    {
      v9 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Drawing UUID changed in setDrawing.", v11, 2u);
      }
    }

    [(PKRecognitionSessionManager *)*(a1 + 32) q_createRecognitionSessionIfNecessary];
    [PKRecognitionSessionManager q_needRecognitionUpdateWithCancel:?];
  }

  else
  {
    v10 = *(a1 + 32);

    [(PKRecognitionSessionManager *)v10 q_teardownSession];
  }
}

- (uint64_t)q_createRecognitionSessionIfNecessary
{
  v32 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 48))
  {
    return result;
  }

  uuid = [*(result + 40) uuid];
  if (uuid)
  {
    v3 = *(v1 + 8);

    if (v3 == 1)
    {
      uuid2 = [*(v1 + 40) uuid];
      v5 = PKLoadRecognitionSession(uuid2, *(v1 + 192));
      v6 = *(v1 + 48);
      *(v1 + 48) = v5;

      v7 = os_log_create("com.apple.pencilkit", "RecognitionManager");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        uuid3 = [*(v1 + 40) uuid];
        uniqueCacheFilePath = [uuid3 uniqueCacheFilePath];
        v10 = *(v1 + 48) != 0;
        *buf = 138412546;
        *&buf[4] = uniqueCacheFilePath;
        *&buf[12] = 1024;
        *&buf[14] = v10;
        _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Loading session cache for: %@, success: %{BOOL}d", buf, 0x12u);
      }

      if (!*(v1 + 48))
      {
        goto LABEL_10;
      }

      [v1 setState:3];
    }
  }

  if (!*(v1 + 48))
  {
LABEL_10:
    v11 = [objc_alloc(MEMORY[0x1E6997B78]) initWithMode:0];
    v12 = *(v1 + 48);
    *(v1 + 48) = v11;

    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v13 = *(v1 + 48);
      v29 = *MEMORY[0x1E6997AE0];
      v30 = @"! &() + , - . / 0 1 2 3 4 5 6 7 8 9 : = [ \\\\ \\ \\$ \\% \\arccos \\arcsin \\arctan \\ast \\cdot \\circ \\cos \\cosh \\cot \\coth \\csc \\div \\frac \\hline \\lceil \\left( \\left. \\left\\lceil \\left\\lfloor \\left| \\lfloor \\lg \\ln \\log \\pi \\prime \\rceil \\rfloor \\right) \\right. \\right\\rceil \\right\\rfloor \\right| \\sec \\sin \\sinh \\sqrt \\tan \\tanh \\times ] ^ _ a A b B c C d D e E f F g G H h i I j J k K L l m M n N o O p P q Q r R s S t T u U v V w W x X y Y z Z { | } \\begin{array}{lr} \\end{array}";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      [v13 updateRecognitionOptions:v14];
    }
  }

  textSynthesizer = [*(v1 + 48) textSynthesizer];
  v16 = *(v1 + 64);
  *(v1 + 64) = textSynthesizer;

  enabledLocales = [objc_opt_class() enabledLocales];
  [*(v1 + 48) setPreferredLocales:enabledLocales];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [*(v1 + 48) textSynthesizerWithLocaleFallbackIsSupported])
  {
    textSynthesizerWithLocaleFallback = [*(v1 + 48) textSynthesizerWithLocaleFallback];
    v19 = *(v1 + 56);
    *(v1 + 56) = textSynthesizerWithLocaleFallback;
  }

  [*(v1 + 48) setDataSource:v1];
  if (*(v1 + 48) && !*(v1 + 152))
  {
    v20 = objc_alloc_init(PKAutoRefineTaskManager);
    v21 = *(v1 + 152);
    *(v1 + 152) = v20;

    WeakRetained = objc_loadWeakRetained((v1 + 208));
    v23 = *(v1 + 152);
    if (v23)
    {
      objc_storeWeak((v23 + 32), WeakRetained);
    }
  }

  v24 = [PKRecognitionSessionObserverWrapper alloc];
  v25 = v1;
  if (v24)
  {
    *buf = v24;
    *&buf[8] = PKRecognitionSessionObserverWrapper;
    v26 = objc_msgSendSuper2(buf, sel_init);
    v24 = v26;
    if (v26)
    {
      objc_storeWeak(&v26->_realObserver, v25);
      atomic_store(0, &v24->_deactivated);
    }
  }

  v28 = v25[17];
  v27 = v25 + 17;
  *v27 = v24;

  return [*(v1 + 48) registerChangeObserver:*v27];
}

- (void)q_needRecognitionUpdateWithCancel:(void *)result
{
  if (result)
  {
    v1 = result;
    if ([result state] != 3)
    {
      [*(v1 + 6) cancelOngoingRequests];
      [(PKRecognitionQueryController *)*(v1 + 16) setupVisibleStrokesQueries];
      v2 = os_log_create("com.apple.pencilkit", "RecognitionManager");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v3 = 0;
        _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Cancel the ongoing requests", v3, 2u);
      }
    }

    return [*(v1 + 6) setNeedsRecognitionUpdate];
  }

  return result;
}

- (void)setCalculateDocumentProvider:(uint64_t)provider
{
  v3 = a2;
  v4 = v3;
  if (provider)
  {
    v5 = *(provider + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PKRecognitionSessionManager_setCalculateDocumentProvider___block_invoke;
    v6[3] = &unk_1E82D6890;
    v6[4] = provider;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __60__PKRecognitionSessionManager_setCalculateDocumentProvider___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);
  v4 = v2;
  v5 = v4;
  if (v3 | v4)
  {
    if (v3)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v3 isEqual:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  v8 = os_log_create("com.apple.pencilkit", "Math");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) recognizedExpressions];
    v10 = [v9 count];
    v11 = [*(a1 + 40) declaredVariables];
    v12 = 134218496;
    v13 = v10;
    v14 = 2048;
    v15 = [v11 count];
    v16 = 1024;
    v17 = v6 ^ 1;
    _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Calculate document provider changed: %lu, %lu, did change: %{BOOL}d", &v12, 0x1Cu);
  }

  if ((v6 & 1) == 0)
  {
    [PKRecognitionSessionManager q_needRecognitionUpdateWithCancel:?];
  }
}

- (void)setCanvasAttachmentProvider:(uint64_t)provider
{
  v3 = a2;
  v4 = v3;
  if (provider)
  {
    v5 = *(provider + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__PKRecognitionSessionManager_setCanvasAttachmentProvider___block_invoke;
    v6[3] = &unk_1E82D6890;
    v6[4] = provider;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __59__PKRecognitionSessionManager_setCanvasAttachmentProvider___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 88);
  v4 = v2;
  v5 = v4;
  if (v3 | v4)
  {
    if (v3)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v3 isEqual:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  v8 = os_log_create("com.apple.pencilkit", "generative");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) attachments];
    v10 = 134218240;
    v11 = [v9 count];
    v12 = 1024;
    v13 = v6 ^ 1;
    _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Canvas attachment provider changed: %lu, did change: %{BOOL}d", &v10, 0x12u);
  }
}

- (void)setDrawing:(void *)drawing withVisibleOnscreenStrokes:
{
  v5 = a2;
  drawingCopy = drawing;
  v7 = drawingCopy;
  if (self)
  {
    v8 = [drawingCopy copy];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = [v5 isEqual:selfCopy[4]];
    if ((v10 & 1) == 0)
    {
      v11 = [v5 copy];
      v12 = selfCopy[4];
      selfCopy[4] = v11;
    }

    objc_sync_exit(selfCopy);

    v13 = [v5 copy];
    v14 = v10 ^ 1;
    v15 = selfCopy[3];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__PKRecognitionSessionManager_setDrawing_withVisibleOnscreenStrokes___block_invoke;
    v18[3] = &unk_1E82D6DD0;
    v18[4] = selfCopy;
    v19 = v13;
    v20 = v8;
    v21 = v14;
    v16 = v8;
    v17 = v13;
    dispatch_async(v15, v18);
  }
}

void __69__PKRecognitionSessionManager_setDrawing_withVisibleOnscreenStrokes___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3 && *(a1 + 40))
  {
    v4 = [v3 uuid];
    v5 = [*(a1 + 40) uuid];
    v6 = [v4 isEqual:v5] ^ 1;

    v2 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong((v2 + 40), *(a1 + 40));
  v7 = drawingStrokesFromStrokes(*(a1 + 48), *(a1 + 40));
  v8 = ([v7 isEqualToArray:*(*(a1 + 32) + 112)] & 1) == 0 && objc_msgSend(*(a1 + 32), "state") != 3;
  v9 = *(a1 + 32);
  if (*(v9 + 40))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 112);
  *(v9 + 112) = v10;

  if (*(a1 + 40))
  {
    if ((*(a1 + 56) | v8))
    {
      v12 = os_log_create("com.apple.pencilkit", "RecognitionManager");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(*(a1 + 32) + 40) uuid];
        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_DEFAULT, "Drawing or visible strokes did change: %@", &v15, 0xCu);
      }

      [(PKRecognitionSessionManager *)*(a1 + 32) scheduleSaveRecognitionSession];
      if (v6)
      {
        v14 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Drawing UUID changed in setDrawing:withVisibleOnscreenStrokes:", &v15, 2u);
        }
      }

      [(PKRecognitionSessionManager *)*(a1 + 32) q_createRecognitionSessionIfNecessary];
      [PKRecognitionSessionManager q_needRecognitionUpdateWithCancel:?];
    }
  }

  else
  {
    [(PKRecognitionSessionManager *)*(a1 + 32) q_teardownSession];
  }
}

- (void)setVisibleOnscreenStrokes:(uint64_t)strokes
{
  v3 = a2;
  v4 = v3;
  if (strokes)
  {
    v5 = [v3 copy];
    v6 = *(strokes + 24);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PKRecognitionSessionManager_setVisibleOnscreenStrokes___block_invoke;
    v8[3] = &unk_1E82D6890;
    v8[4] = strokes;
    v9 = v5;
    v7 = v5;
    dispatch_async(v6, v8);
  }
}

void __57__PKRecognitionSessionManager_setVisibleOnscreenStrokes___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = drawingStrokesFromStrokes(*(a1 + 40), *(*(a1 + 32) + 40));
  LOBYTE(v2) = [v3 isEqualToArray:*(*v2 + 112)];
  objc_storeStrong((*(a1 + 32) + 112), v3);
  if (!(([*(a1 + 32) state] == 3) | v2 & 1))
  {
    v4 = os_log_create("com.apple.pencilkit", "RecognitionManager");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(*(a1 + 32) + 40) uuid];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Visible strokes did change: %@", &v6, 0xCu);
    }

    [(PKRecognitionSessionManager *)*(a1 + 32) scheduleSaveRecognitionSession];
    [PKRecognitionSessionManager q_needRecognitionUpdateWithCancel:?];
  }
}

void __53__PKRecognitionSessionManager_setWantsTranscription___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 125) != v2)
  {
    *(v1 + 125) = v2;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      [(PKRecognitionSessionManager *)v5 q_createRecognitionSessionIfNecessary];
      v6 = *(*(a1 + 32) + 128);
      v7 = objc_opt_class();
      if (v6)
      {
        [*(v6 + 32) setObject:v7 forKey:@"Transcription"];
      }

      v8 = *(a1 + 32);
      v9 = v8[16];
      v10 = [v8 state];

      [(PKRecognitionQueryController *)v9 updateQueriesIfNecessaryWithState:v10];
    }

    else
    {
      v11 = *(v5 + 128);

      [(PKRecognitionQueryController *)v11 removeQueryWithIdentifier:?];
    }
  }
}

- (void)setWantsAutoRefine:(uint64_t)refine
{
  if (refine)
  {
    v2 = *(refine + 24);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __50__PKRecognitionSessionManager_setWantsAutoRefine___block_invoke;
    v3[3] = &unk_1E82D75A0;
    v3[4] = refine;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

void __50__PKRecognitionSessionManager_setWantsAutoRefine___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 126) != v2)
  {
    *(v1 + 126) = v2;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      [(PKRecognitionSessionManager *)v5 q_createRecognitionSessionIfNecessary];
      if (!*(*(a1 + 32) + 144))
      {
        v6 = [[PKAutoRefineQuery alloc] initWithRecognitionSessionManager:*(a1 + 32)];
        v7 = os_log_create("com.apple.pencilkit", "RecognitionManager");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v11 = 0;
          _os_log_debug_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEBUG, "PKAutoRefineQuery created", v11, 2u);
        }

        [(PKQuery *)v6 setDelegate:*(a1 + 32)];
        if (v6)
        {
          objc_storeWeak(&v6->_autoRefineDelegate, *(a1 + 32));
        }

        objc_storeStrong((*(a1 + 32) + 144), v6);
        [*(*(a1 + 32) + 144) start];
      }
    }

    else
    {
      if (*(v5 + 144))
      {
        [*(v5 + 144) pause];
        [*(*(a1 + 32) + 144) teardown];
        v8 = *(a1 + 32);
        v9 = *(v8 + 144);
        *(v8 + 144) = 0;

        v5 = *(a1 + 32);
      }

      v10 = *(v5 + 152);

      [(PKAutoRefineTaskManager *)v10 cancelAllTasks];
    }
  }
}

- (void)setWantsDataDetection:(uint64_t)detection
{
  if (detection)
  {
    v2 = *(detection + 24);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __53__PKRecognitionSessionManager_setWantsDataDetection___block_invoke;
    v3[3] = &unk_1E82D75A0;
    v3[4] = detection;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

void __53__PKRecognitionSessionManager_setWantsDataDetection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 121) != v2)
  {
    *(v1 + 121) = v2;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      [(PKRecognitionSessionManager *)v5 q_createRecognitionSessionIfNecessary];
      v6 = *(*(a1 + 32) + 128);
      v7 = objc_opt_class();
      if (v6)
      {
        [*(v6 + 32) setObject:v7 forKey:@"DataDetectors"];
      }

      v8 = *(a1 + 32);
      v9 = v8[16];
      v10 = [v8 state];

      [(PKRecognitionQueryController *)v9 updateQueriesIfNecessaryWithState:v10];
    }

    else
    {
      v11 = *(v5 + 128);

      [(PKRecognitionQueryController *)v11 removeQueryWithIdentifier:?];
    }
  }
}

- (void)setWantsHashtagDetection:(uint64_t)detection
{
  if (detection)
  {
    v2 = *(detection + 24);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __56__PKRecognitionSessionManager_setWantsHashtagDetection___block_invoke;
    v3[3] = &unk_1E82D75A0;
    v3[4] = detection;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

void __56__PKRecognitionSessionManager_setWantsHashtagDetection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 122) != v2)
  {
    *(v1 + 122) = v2;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      [(PKRecognitionSessionManager *)v5 q_createRecognitionSessionIfNecessary];
      v6 = *(*(a1 + 32) + 128);
      v7 = objc_opt_class();
      if (v6)
      {
        [*(v6 + 32) setObject:v7 forKey:@"Hashtags"];
      }

      v8 = *(a1 + 32);
      v9 = v8[16];
      v10 = [v8 state];

      [(PKRecognitionQueryController *)v9 updateQueriesIfNecessaryWithState:v10];
    }

    else
    {
      v11 = *(v5 + 128);

      [(PKRecognitionQueryController *)v11 removeQueryWithIdentifier:?];
    }
  }
}

- (void)setWantsMentionDetection:(uint64_t)detection
{
  if (detection)
  {
    v2 = *(detection + 24);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __56__PKRecognitionSessionManager_setWantsMentionDetection___block_invoke;
    v3[3] = &unk_1E82D75A0;
    v3[4] = detection;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

void __56__PKRecognitionSessionManager_setWantsMentionDetection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 123) != v2)
  {
    *(v1 + 123) = v2;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      [(PKRecognitionSessionManager *)v5 q_createRecognitionSessionIfNecessary];
      v6 = *(*(a1 + 32) + 128);
      v7 = objc_opt_class();
      if (v6)
      {
        [*(v6 + 32) setObject:v7 forKey:@"Mentions"];
      }

      [(PKRecognitionQueryController *)*(*(a1 + 32) + 128) setSuffixes:@"Mentions" forQueryWithIdentifier:?];
      v8 = *(a1 + 32);
      v9 = v8[16];
      v10 = [v8 state];

      [(PKRecognitionQueryController *)v9 updateQueriesIfNecessaryWithState:v10];
    }

    else
    {
      v11 = *(v5 + 128);

      [(PKRecognitionQueryController *)v11 removeQueryWithIdentifier:?];
    }
  }
}

- (void)setWantsProofreadingDetection:(uint64_t)detection
{
  if (detection)
  {
    if (a2)
    {
      v3 = PKCurrentDeviceSupportsProofreading();
      if (v3)
      {
        LOBYTE(v3) = PKCurrentAppSupportsRefinement();
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }

    v4 = *(detection + 24);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__PKRecognitionSessionManager_setWantsProofreadingDetection___block_invoke;
    v5[3] = &unk_1E82D75A0;
    v5[4] = detection;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void __61__PKRecognitionSessionManager_setWantsProofreadingDetection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 124) != v2)
  {
    *(v1 + 124) = v2;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    if (v4 == 1)
    {
      [(PKRecognitionSessionManager *)v5 q_createRecognitionSessionIfNecessary];
      v6 = *(*(a1 + 32) + 128);
      v7 = objc_opt_class();
      if (v6)
      {
        [*(v6 + 32) setObject:v7 forKey:@"Proofreading"];
      }

      v8 = *(a1 + 32);
      v9 = v8[16];
      v10 = [v8 state];

      [(PKRecognitionQueryController *)v9 updateQueriesIfNecessaryWithState:v10];
    }

    else
    {
      v11 = *(v5 + 128);

      [(PKRecognitionQueryController *)v11 removeQueryWithIdentifier:?];
    }
  }
}

uint64_t __61__PKRecognitionSessionManager_scheduleSaveRecognitionSession__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__PKRecognitionSessionManager_cancelSaveRecognitionSession__block_invoke;
    aBlock[3] = &unk_1E82D6388;
    aBlock[4] = v1;
    v3 = _Block_copy(aBlock);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v3[2](v3);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v3);
    }

    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return [v4 performSelector:sel_saveRecognitionSessionIfNecessary withObject:0 afterDelay:5.0];
}

- (void)saveRecognitionSessionIfNecessary
{
  if (self->_shouldLoadAndSaveSession)
  {
    block[5] = v2;
    block[6] = v3;
    recognitionSessionQueue = self->_recognitionSessionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PKRecognitionSessionManager_saveRecognitionSessionIfNecessary__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = self;
    dispatch_async(recognitionSessionQueue, block);
  }
}

- (void)q_saveRecognitionSessionIfNecessary
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ([self state] == 3 && *(self + 8) == 1)
    {
      v2 = *(self + 48);
      if (v2)
      {
        uuid = [*(self + 40) uuid];
        v4 = PKSaveRecognitionSession(v2, uuid, *(self + 192));

        v5 = os_log_create("com.apple.pencilkit", "RecognitionManager");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          uuid2 = [*(self + 40) uuid];
          uniqueCacheFilePath = [uuid2 uniqueCacheFilePath];
          v8 = 138412546;
          v9 = uniqueCacheFilePath;
          v10 = 1024;
          v11 = v4;
          _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "Save session cache for: %@, success: %{BOOL}d", &v8, 0x12u);
        }
      }
    }
  }
}

uint64_t __48__PKRecognitionSessionManager_q_teardownSession__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.pencilkit", "RecognitionManager");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Delayed removing observer when tearing down.", v4, 2u);
  }

  return [*(a1 + 32) unregisterChangeObserver:*(a1 + 40)];
}

- (id)calculateDocumentProviderSnapshot
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__31;
  v16 = __Block_byref_object_dispose__31;
  v17 = 0;
  if (dispatch_queue_get_label(0) == "com.apple.PencilKit.RecognitionManager")
  {
    v17 = self->q_calculateDocumentProvider;
  }

  else
  {
    recognitionSessionQueue = self->_recognitionSessionQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__PKRecognitionSessionManager_calculateDocumentProviderSnapshot__block_invoke;
    v11[3] = &unk_1E82D6868;
    v11[4] = self;
    v11[5] = &v12;
    dispatch_sync(recognitionSessionQueue, v11);
  }

  v4 = os_log_create("com.apple.pencilkit", "RecognitionManager");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    recognizedExpressions = [v13[5] recognizedExpressions];
    v6 = [recognizedExpressions count];
    declaredVariables = [v13[5] declaredVariables];
    v8 = [declaredVariables count];
    *buf = 134218240;
    v19 = v6;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Providing  a calculate document provider with %lu expressions and %lu variables.", buf, 0x16u);
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)canvasAttachmentProviderSnapshot
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__31;
  v14 = __Block_byref_object_dispose__31;
  v15 = 0;
  if (dispatch_queue_get_label(0) == "com.apple.PencilKit.RecognitionManager")
  {
    v15 = self->q_canvasAttachmentProvider;
  }

  else
  {
    recognitionSessionQueue = self->_recognitionSessionQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__PKRecognitionSessionManager_canvasAttachmentProviderSnapshot__block_invoke;
    v9[3] = &unk_1E82D6868;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(recognitionSessionQueue, v9);
  }

  v4 = os_log_create("com.apple.pencilkit", "RecognitionManager");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    attachments = [v11[5] attachments];
    v6 = [attachments count];
    *buf = 134217984;
    v17 = v6;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Providing a canvas attachment provider with %lu attachments.", buf, 0xCu);
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)directStrokeProviderSnapshot
{
  if (self)
  {
    self = [self strokeProviderSnapshot];
    v1 = vars8;
  }

  return self;
}

- (id)strokeProviderSnapshot
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PKRecognitionSessionManager_strokeProviderSnapshot__block_invoke;
  v6[3] = &unk_1E82D8600;
  v6[4] = self;
  v6[5] = &v7;
  v3 = _Block_copy(v6);
  if (dispatch_queue_get_label(0) == "com.apple.PencilKit.RecognitionManager")
  {
    v3[2](v3);
  }

  else
  {
    dispatch_sync(self->_recognitionSessionQueue, v3);
  }

  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __53__PKRecognitionSessionManager_strokeProviderSnapshot__block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.pencilkit", "RecognitionManager");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 112) count];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    if (*(v4 + 112))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *buf = 134218498;
    v48 = v3;
    v49 = 2112;
    v50 = v5;
    v51 = 2112;
    v52 = v6;
    _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Providing  a strokeProviderSnapshot with %lu visible strokes and with drawing: %@.  Processing only visible strokes: %@", buf, 0x20u);
  }

  [(PKRecognitionSessionManager *)*(a1 + 32) q_updateRecognitionStateWithFinishedResult:?];
  v7 = [*(a1 + 32) state] != 3 && objc_msgSend(*(a1 + 32), "state") != 2;
  v8 = [[PKStrokeProvider alloc] initWithDrawing:*(*(a1 + 32) + 40) visibleOnscreenStrokes:*(*(a1 + 32) + 112) shouldProcessVisibleStrokes:v7 transcriptionCache:*(*(a1 + 32) + 96)];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v29 = [*(*(a1 + 32) + 104) allCachedGroups];
  if ([v29 count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v29;
    v25 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v25)
    {
      v24 = 0;
      v26 = *v41;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v40 + 1) + 8 * i);
          v12 = [MEMORY[0x1E695DFA8] set];
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v30 = v11;
          v13 = [v30 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v13)
          {
            v31 = *v37;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v37 != v31)
                {
                  objc_enumerationMutation(v30);
                }

                v15 = *(*(&v36 + 1) + 8 * j);
                v32 = 0u;
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v16 = [*(*(*(a1 + 40) + 8) + 40) orderedStrokes];
                v17 = [v16 countByEnumeratingWithState:&v32 objects:v44 count:16];
                if (v17)
                {
                  v18 = *v33;
                  do
                  {
                    for (k = 0; k != v17; ++k)
                    {
                      if (*v33 != v18)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v20 = *(*(&v32 + 1) + 8 * k);
                      if ([*(*(*(a1 + 40) + 8) + 40) isStroke:v20 versionOfStrokeWithIdentifier:v15])
                      {
                        v21 = [v20 strokeIdentifier];
                        [v12 addObject:v21];
                      }
                    }

                    v17 = [v16 countByEnumeratingWithState:&v32 objects:v44 count:16];
                  }

                  while (v17);
                }
              }

              v13 = [v30 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v13);
          }

          v22 = [v12 count];
          if (v22 == [v30 count])
          {
            v23 = [*(*(a1 + 32) + 104) cachedTranscriptionForStrokeGroup:v30];
            [*(*(a1 + 32) + 96) addCachedTranscription:v23 forStrokeGroup:v12];

            v24 = 1;
          }

          if ([v12 count])
          {
            [*(*(a1 + 32) + 104) clearCacheForStrokeGroup:v30];
          }
        }

        v25 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v25);

      if (v24)
      {
        [*(*(*(a1 + 40) + 8) + 40) updateTranscriptionCache:*(*(a1 + 32) + 96)];
      }
    }

    else
    {
    }
  }
}

- (void)q_updateRecognitionStateWithFinishedResult:(uint64_t)result
{
  v36 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return;
  }

  if ([result state] == 3)
  {
    goto LABEL_3;
  }

  if ([result state] || !*(result + 112))
  {
    if ([result state] == 1 || !*(result + 112))
    {
      if ([result state] != 1 || (v12 = *(result + 112), objc_msgSend(*(result + 40), "strokes"), v13 = objc_claimAutoreleasedReturnValue(), LODWORD(v12) = objc_msgSend(v12, "isEqualToArray:", v13), v13, !v12))
      {
        [result setState:2];
        v15 = os_log_create("com.apple.pencilkit", "RecognitionManager");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(result + 40);
          strokes = [v16 strokes];
          *buf = 138412802;
          v29 = v16;
          v30 = 2048;
          resultCopy4 = [strokes count];
          v32 = 2112;
          resultCopy2 = result;
          _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "State Update: Starting to process a stroke provider with the full drawing %@ with %lu strokes with manager %@", buf, 0x20u);
        }

        goto LABEL_27;
      }

      v14 = os_log_create("com.apple.pencilkit", "RecognitionManager");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Visible onscreen strokes are equal to those in the drawing, skip reprocessing", buf, 2u);
      }
    }

    else if ([result state] != 2 || (a2 & 1) == 0)
    {
      [result setState:0];
      goto LABEL_25;
    }

LABEL_3:
    [result setState:3];
    [*(result + 72) timeIntervalSinceNow];
    v5 = v4;
    date = [MEMORY[0x1E695DF00] date];
    v7 = *(result + 72);
    *(result + 72) = date;

    v8 = os_log_create("com.apple.pencilkit", "RecognitionManager");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(result + 40);
      strokes2 = [v9 strokes];
      v11 = [strokes2 count];
      *buf = 138413058;
      v29 = v9;
      v30 = 2048;
      resultCopy4 = v11;
      v32 = 2112;
      resultCopy2 = result;
      v34 = 2048;
      v35 = v5;
      _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "State Update: Finished processing drawing %@ with %lu strokes with manager %@ in %.2fs", buf, 0x2Au);
    }

    [(PKRecognitionQueryController *)*(result + 128) setupDrawingQueriesIfNecessary];
    [(PKRecognitionQueryController *)*(result + 128) clearVisibleStrokesQueries];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PKRecognitionSessionManager_q_updateRecognitionStateWithFinishedResult___block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = result;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    return;
  }

  [result setState:a2];
  if ((a2 & 1) == 0)
  {
LABEL_25:
    v15 = os_log_create("com.apple.pencilkit", "RecognitionManager");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [*(result + 112) count];
      *buf = 134218242;
      v29 = v24;
      v30 = 2112;
      resultCopy4 = result;
      _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "State Update: Starting to process a stroke provider with just %lu visible strokes with manager: %@", buf, 0x16u);
    }

LABEL_27:

    date2 = [MEMORY[0x1E695DF00] date];
    v26 = *(result + 72);
    *(result + 72) = date2;

    return;
  }

  [*(result + 72) timeIntervalSinceNow];
  v19 = v18;
  date3 = [MEMORY[0x1E695DF00] date];
  v21 = *(result + 72);
  *(result + 72) = date3;

  v22 = os_log_create("com.apple.pencilkit", "RecognitionManager");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*(result + 112) count];
    *buf = 134218498;
    v29 = v23;
    v30 = 2112;
    resultCopy4 = result;
    v32 = 2048;
    resultCopy2 = v19;
    _os_log_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_DEFAULT, "State Update: Finished processing %lu visible strokes with manager: %@ in %.2fs", buf, 0x20u);
  }

  [*(result + 48) setNeedsRecognitionUpdate];
}

- (void)textInputDidChange:(id)change
{
  session = [(PKRecognitionSessionManager *)self session];
  enabledLocales = [objc_opt_class() enabledLocales];
  [session setPreferredLocales:enabledLocales];
}

- (void)setAutoRefineViewDelegate:(uint64_t)delegate
{
  obj = a2;
  if (delegate)
  {
    WeakRetained = objc_loadWeakRetained((delegate + 208));

    if (WeakRetained != obj)
    {
      objc_storeWeak((delegate + 208), obj);
      v4 = *(delegate + 152);
      if (v4)
      {
        objc_storeWeak((v4 + 32), obj);
      }
    }
  }
}

- (void)setMentionSuffixes:(uint64_t)suffixes
{
  v3 = a2;
  if (suffixes && ([*(suffixes + 216) isEqual:v3] & 1) == 0)
  {
    v4 = [v3 copy];
    objc_storeStrong((suffixes + 216), v4);
    v5 = *(suffixes + 24);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__PKRecognitionSessionManager_setMentionSuffixes___block_invoke;
    v7[3] = &unk_1E82D6890;
    v7[4] = suffixes;
    v8 = v4;
    v6 = v4;
    dispatch_async(v5, v7);
  }
}

- (void)setMathPreferredUpdatesInterval:(uint64_t)interval
{
  if (interval)
  {
    v2 = *(interval + 24);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __63__PKRecognitionSessionManager_setMathPreferredUpdatesInterval___block_invoke;
    v3[3] = &unk_1E82D83D0;
    v3[4] = interval;
    *&v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

- (void)fetchCurrentStrokeGroupItems:(uint64_t)items
{
  v3 = a2;
  v4 = v3;
  if (items)
  {
    v5 = *(items + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PKRecognitionSessionManager_fetchCurrentStrokeGroupItems___block_invoke;
    v6[3] = &unk_1E82D6D58;
    v6[4] = items;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __60__PKRecognitionSessionManager_fetchCurrentStrokeGroupItems___block_invoke(uint64_t a1)
{
  v2 = [(PKRecognitionSessionManager *)*(a1 + 32) q_groupQuery];
  [v2 fetchCurrentStrokeGroupItems:*(a1 + 40)];
}

- (id)q_groupQuery
{
  if (self)
  {
    selfCopy = self;
    state = [self state];
    v4 = *(selfCopy + 16);
    if (state == 3)
    {
      [(PKRecognitionQueryController *)v4 drawingQueryWithIdentifier:?];
    }

    else
    {
      [(PKRecognitionQueryController *)v4 visibleStrokesQueryWithIdentifier:?];
    }
    self = ;
    v1 = vars8;
  }

  return self;
}

- (void)recognitionSessionDidUpdateRecognitionResult:(id)result
{
  resultCopy = result;
  if (!self->_isTearingDown)
  {
    v5 = os_log_create("com.apple.pencilkit", "RecognitionManager");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "State Update: PKRecognitionSessionManager recognitionSessionDidUpdateRecognitionResult", buf, 2u);
    }

    recognitionSessionQueue = self->_recognitionSessionQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__PKRecognitionSessionManager_recognitionSessionDidUpdateRecognitionResult___block_invoke;
    v7[3] = &unk_1E82D6890;
    v8 = resultCopy;
    selfCopy = self;
    dispatch_async(recognitionSessionQueue, v7);
  }
}

void __76__PKRecognitionSessionManager_recognitionSessionDidUpdateRecognitionResult___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2 == *(v1 + 48))
  {
    [(PKRecognitionSessionManager *)v1 q_updateRecognitionStateWithFinishedResult:?];
  }
}

void __41__PKRecognitionSessionManager_groupQuery__block_invoke(uint64_t a1)
{
  v2 = [(PKRecognitionSessionManager *)*(a1 + 32) q_groupQuery];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)fetchIntersectedStrokesAtPoint:(uint64_t)point selectionType:(void *)type inputType:(void *)inputType visibleOnscreenStrokes:(double)strokes completion:(double)completion
{
  typeCopy = type;
  inputTypeCopy = inputType;
  if (self)
  {
    v15 = *(self + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __120__PKRecognitionSessionManager_fetchIntersectedStrokesAtPoint_selectionType_inputType_visibleOnscreenStrokes_completion___block_invoke;
    block[3] = &unk_1E82DBD60;
    block[4] = self;
    strokesCopy = strokes;
    completionCopy = completion;
    v21 = a2;
    pointCopy = point;
    v17 = typeCopy;
    v18 = inputTypeCopy;
    dispatch_async(v15, block);
  }
}

void __120__PKRecognitionSessionManager_fetchIntersectedStrokesAtPoint_selectionType_inputType_visibleOnscreenStrokes_completion___block_invoke(uint64_t a1)
{
  v2 = [(PKRecognitionSessionManager *)*(a1 + 32) q_groupQuery];

  if (v2)
  {
    v3 = [(PKRecognitionSessionManager *)*(a1 + 32) q_groupQuery];
    [v3 q_fetchStrokesForPoint:*(a1 + 72) selectionType:*(a1 + 80) inputType:*(a1 + 40) visibleOnscreenStrokes:*(a1 + 48) completion:{*(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __120__PKRecognitionSessionManager_fetchIntersectedStrokesAtPoint_selectionType_inputType_visibleOnscreenStrokes_completion___block_invoke_2;
    block[3] = &unk_1E82D63B0;
    v5 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)fetchIntersectedStrokesBetweenTopPoint:(void *)point bottomPoint:(double)bottomPoint liveScrollOffset:(double)offset isRTL:(double)l completion:(double)completion
{
  pointCopy = point;
  if (self)
  {
    if ((a8 == 0.0 && a9 == 0.0 || [self state] == 3) && objc_msgSend(self, "state") > 1)
    {
      v18 = self[3];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __116__PKRecognitionSessionManager_fetchIntersectedStrokesBetweenTopPoint_bottomPoint_liveScrollOffset_isRTL_completion___block_invoke;
      block[3] = &unk_1E82DBD88;
      block[4] = self;
      bottomPointCopy = bottomPoint;
      offsetCopy = offset;
      lCopy = l;
      completionCopy = completion;
      v25 = a2;
      v20 = pointCopy;
      dispatch_async(v18, block);
    }

    else
    {
      (*(pointCopy + 2))(pointCopy, 0);
    }
  }
}

void __116__PKRecognitionSessionManager_fetchIntersectedStrokesBetweenTopPoint_bottomPoint_liveScrollOffset_isRTL_completion___block_invoke(uint64_t a1)
{
  v2 = [(PKRecognitionSessionManager *)*(a1 + 32) q_groupQuery];

  if (v2)
  {
    v3 = [(PKRecognitionSessionManager *)*(a1 + 32) q_groupQuery];
    [v3 q_fetchStrokesBetweenTopPoint:*(a1 + 80) bottomPoint:*(a1 + 40) isRTL:*(a1 + 48) completion:{*(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __116__PKRecognitionSessionManager_fetchIntersectedStrokesBetweenTopPoint_bottomPoint_liveScrollOffset_isRTL_completion___block_invoke_2;
    block[3] = &unk_1E82D63B0;
    v5 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)_firstStrokesInSelectedStrokes:(uint64_t)strokes isRTL:
{
  v5 = a2;
  if (self && [self state] == 3)
  {
    groupQuery = [(PKRecognitionSessionManager *)self groupQuery];
    v7 = [groupQuery firstStrokesInStrokes:v5 isRTL:strokes];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_lastStrokesInSelectedStrokes:(uint64_t)strokes isRTL:
{
  v5 = a2;
  if (self && [self state] == 3)
  {
    groupQuery = [(PKRecognitionSessionManager *)self groupQuery];
    v7 = [groupQuery lastStrokesInStrokes:v5 isRTL:strokes];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:(void *)strokes completion:
{
  v5 = a2;
  strokesCopy = strokes;
  if (self)
  {
    if ([self state] == 3)
    {
      v7 = self[3];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __107__PKRecognitionSessionManager_fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes_completion___block_invoke;
      block[3] = &unk_1E82D6840;
      block[4] = self;
      v9 = v5;
      v10 = strokesCopy;
      dispatch_async(v7, block);
    }

    else
    {
      (*(strokesCopy + 2))(strokesCopy, 0, 0);
    }
  }
}

void __107__PKRecognitionSessionManager_fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes_completion___block_invoke(uint64_t a1)
{
  v2 = [(PKRecognitionSessionManager *)*(a1 + 32) q_groupQuery];

  if (v2)
  {
    v3 = [(PKRecognitionSessionManager *)*(a1 + 32) q_groupQuery];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __107__PKRecognitionSessionManager_fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes_completion___block_invoke_2;
    v8[3] = &unk_1E82DBDB0;
    v4 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v3 q_fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes:v4 completion:v8];
    v5 = &v9;
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __107__PKRecognitionSessionManager_fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes_completion___block_invoke_4;
    v6[3] = &unk_1E82D63B0;
    v5 = &v7;
    v7 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __107__PKRecognitionSessionManager_fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__PKRecognitionSessionManager_fetchStrokesAmbiguouslyBelowAndAboveInsertSpaceHandleWithStrokes_completion___block_invoke_3;
  block[3] = &unk_1E82D7500;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (uint64_t)contentTypeForIntersectedStrokes:(uint64_t)strokes
{
  v3 = a2;
  if (strokes)
  {
    groupQuery = [(PKRecognitionSessionManager *)strokes groupQuery];
    v5 = [groupQuery contentTypeForIntersectedStrokes:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateWithRefinableStroke:(uint64_t)stroke
{
  v4 = a2;
  if (stroke)
  {
    v3 = *(stroke + 152);
    if (v3)
    {
      [(PKAutoRefineTaskManager *)v3 cancelTasksGivenRefinableStroke:v4];
    }
  }
}

- (uint64_t)didHitHandwritingStroke:(uint64_t)stroke
{
  v3 = a2;
  if (stroke)
  {
    groupQuery = [(PKRecognitionSessionManager *)stroke groupQuery];
    fetchCurrentHandwritingStrokeUUIDs = [groupQuery fetchCurrentHandwritingStrokeUUIDs];
    v6 = [fetchCurrentHandwritingStrokeUUIDs containsObject:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGAffineTransform)_affineTransformFromBounds:(double)bounds targetHeight:(double)height targetPoint:(double)point
{
  result = CGRectIsEmpty(*&a2);
  if (result)
  {
    v16 = MEMORY[0x1E695EFD0];
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    *self = *MEMORY[0x1E695EFD0];
    *(self + 16) = v17;
    v18 = *(v16 + 32);
  }

  else
  {
    *(self + 16) = 0u;
    *(self + 32) = 0u;
    *self = 0u;
    CGAffineTransformMakeTranslation(self, a7, a8);
    memset(&v24, 0, sizeof(v24));
    CGAffineTransformMakeTranslation(&v24, -a2, -bounds);
    t1 = v24;
    CGAffineTransformMakeScale(&v21, a6 / point, a6 / point);
    CGAffineTransformConcat(&v23, &t1, &v21);
    v24 = v23;
    t1 = v23;
    v19 = *(self + 16);
    *&v21.a = *self;
    *&v21.c = v19;
    *&v21.tx = *(self + 32);
    result = CGAffineTransformConcat(&v23, &t1, &v21);
    v20 = *&v23.c;
    *self = *&v23.a;
    *(self + 16) = v20;
    v18 = *&v23.tx;
  }

  *(self + 32) = v18;
  return result;
}

- (void)synthesizeDrawingForText:(void *)text sourceDrawing:(void *)drawing originalBounds:(double)bounds fitInBounds:(double)inBounds inputScale:(double)scale completion:(double)completion
{
  v27 = a2;
  textCopy = text;
  drawingCopy = drawing;
  if (self)
  {
    v30 = *(self + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__PKRecognitionSessionManager_synthesizeDrawingForText_sourceDrawing_originalBounds_fitInBounds_inputScale_completion___block_invoke;
    block[3] = &unk_1E82DBDD8;
    boundsCopy = bounds;
    inBoundsCopy = inBounds;
    scaleCopy = scale;
    completionCopy = completion;
    block[4] = self;
    v33 = v27;
    v34 = textCopy;
    v40 = a9;
    v41 = a10;
    v42 = a11;
    v43 = a12;
    v44 = a17;
    v35 = drawingCopy;
    dispatch_async(v30, block);
  }
}

void __119__PKRecognitionSessionManager_synthesizeDrawingForText_sourceDrawing_originalBounds_fitInBounds_inputScale_completion___block_invoke(uint64_t a1)
{
  v82[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6997B28];
  v82[0] = MEMORY[0x1E695E118];
  v3 = *MEMORY[0x1E6997B30];
  v81[0] = v2;
  v81[1] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 88)];
  v82[1] = v4;
  v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 64);
  v76 = 0;
  v7 = [v6 synthesizeDrawingForString:v5 options:v69 shouldCancel:&__block_literal_global_79 error:&v76];
  v66 = v76;
  v8 = *(a1 + 32);
  v9 = [v7 drawing];
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v67 = *(a1 + 88);
  v68 = *(a1 + 80);
  v70 = *(a1 + 104);
  v71 = *(a1 + 96);
  v13 = *(a1 + 112);
  v14 = *(a1 + 120);
  v15 = *(a1 + 128);
  v16 = v9;
  v17 = v10;
  if (v8)
  {
    memset(&v80, 0, sizeof(v80));
    [v16 bounds];
    [(PKRecognitionSessionManager *)&v80 _affineTransformFromBounds:v18 targetHeight:v19 targetPoint:v20, v21, v14, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v79 = v80;
    v22 = [v17 strokes];
    v23 = [v17 strokeClass];
    v24 = [v17 strokes];
    v25 = [v24 firstObject];
    v26 = [v25 ink];
    v27 = [PKStroke _createStrokesFromCHDrawing:v16 transform:&v79 inputScale:v22 sourceStrokes:v23 strokeClass:v26 newInk:1 suggestedHeight:v15 shouldSetSynthesizedFlag:-1.0];

    v28 = [objc_alloc(objc_opt_class()) initWithStrokes:v27 fromDrawing:v17];
    [v28 bounds];
    [(PKRecognitionSessionManager *)&v79 _affineTransformFromBounds:v29 targetHeight:v30 targetPoint:v31, v32, v14, v71, v70];
    v80 = v79;
    v33 = [v28 drawingByApplyingTransform:&v79 transformInk:0];

    [v33 bounds];
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = v37;
    if (v36 <= v13)
    {
      v44 = v33;
    }

    else
    {
      v65 = v12;
      MidX = CGRectGetMidX(*&v34);
      v83.origin.x = v38;
      v83.origin.y = v39;
      v83.size.width = v40;
      v83.size.height = v41;
      MidY = CGRectGetMidY(v83);
      CGAffineTransformMakeTranslation(&v79, -MidX, -MidY);
      v80 = v79;
      t1 = v79;
      CGAffineTransformMakeScale(&t2, v13 / v40, v13 / v40);
      CGAffineTransformConcat(&v79, &t1, &t2);
      v80 = v79;
      t1 = v79;
      CGAffineTransformMakeTranslation(&t2, MidX, MidY);
      CGAffineTransformConcat(&v79, &t1, &t2);
      v80 = v79;
      v44 = [v33 drawingByApplyingTransform:&v79 transformInk:0];

      v12 = v65;
      [v44 bounds];
      v38 = v45;
      v39 = v46;
      v40 = v47;
      v41 = v48;
    }

    v84.origin.x = v11;
    v84.origin.y = v12;
    v84.size.height = v67;
    v84.size.width = v68;
    v49 = CGRectGetMidX(v84);
    v85.origin.x = v38;
    v85.origin.y = v39;
    v85.size.width = v40;
    v85.size.height = v41;
    v50 = v49 - CGRectGetMidX(v85);
    v51 = v38 + v50;
    v86.origin.x = v51;
    v86.origin.y = v39;
    v86.size.width = v40;
    v86.size.height = v41;
    MinX = CGRectGetMinX(v86);
    v87.origin.y = v70;
    v87.origin.x = v71;
    v87.size.width = v13;
    v87.size.height = v14;
    v53 = MinX - CGRectGetMinX(v87);
    if (v53 >= 0.0)
    {
      v54 = v51;
    }

    else
    {
      v50 = v50 - v53;
      v54 = v51 - v53;
    }

    v55 = v39;
    v56 = v40;
    v57 = v41;
    MaxX = CGRectGetMaxX(*&v54);
    v88.origin.y = v70;
    v88.origin.x = v71;
    v88.size.width = v13;
    v88.size.height = v14;
    v59 = MaxX - CGRectGetMaxX(v88);
    if (v59 <= 0.0)
    {
      v60 = v50;
    }

    else
    {
      v60 = v50 - v59;
    }

    CGAffineTransformMakeTranslation(&v79, v60, 0.0);
    v61 = [v44 drawingByApplyingTransform:&v79];
  }

  else
  {
    v61 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__PKRecognitionSessionManager_synthesizeDrawingForText_sourceDrawing_originalBounds_fitInBounds_inputScale_completion___block_invoke_3;
  block[3] = &unk_1E82D7500;
  v62 = *(a1 + 56);
  v74 = v7;
  v75 = v62;
  v73 = v61;
  v63 = v7;
  v64 = v61;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __119__PKRecognitionSessionManager_synthesizeDrawingForText_sourceDrawing_originalBounds_fitInBounds_inputScale_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v5 = [*(a1 + 40) segmentContents];
  v4 = [*(a1 + 40) segmentStrokeIndexes];
  (*(v3 + 16))(v3, v2, v5, v4);
}

- (void)synthesizeDrawingForMathResultBlock:(void *)block fallbackText:(void *)text drawing:(void *)drawing mathItem:(void *)item inkColor:(void *)color inputScale:(double)scale completion:
{
  v71 = *MEMORY[0x1E69E9840];
  v49 = a2;
  blockCopy = block;
  textCopy = text;
  drawingCopy = drawing;
  itemCopy = item;
  colorCopy = color;
  if (self)
  {
    v17 = [textCopy copy];

    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    symbolStrokes = [drawingCopy symbolStrokes];
    [drawingCopy boundsForTriggerStrokes];
    x = v72.origin.x;
    y = v72.origin.y;
    width = v72.size.width;
    height = v72.size.height;
    if (CGRectIsNull(v72))
    {
      v23 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7CCA000, v23, OS_LOG_TYPE_ERROR, "No trigger bounds for drawing. Falling back to full bounds", buf, 2u);
      }

      [v17 bounds];
      x = v24;
      y = v25;
      width = v26;
      height = v27;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v28 = symbolStrokes;
    v29 = [v28 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v29)
    {
      v30 = *v66;
      v31 = 0.0;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v66 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v65 + 1) + 8 * i);
          [v18 addObject:v33];
          v34 = [v33 ink];
          color = [v34 color];
          [color alphaComponent];
          v37 = v36;

          v31 = v31 + v37;
        }

        v29 = [v28 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v29);
    }

    else
    {
      v31 = 0.0;
    }

    if ([v18 count])
    {
      v38 = [v18 count];
      firstObject = [v18 firstObject];
      v40 = [itemCopy colorWithAlphaComponent:v31 / v38];
      v41 = [firstObject ink];
      v42 = [PKInk inkFromInk:v41 color:v40];
    }

    else
    {
      v42 = 0;
    }

    v43 = [objc_alloc(objc_opt_class()) initWithStrokes:v18 fromDrawing:v17];
    v44 = *(self + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __128__PKRecognitionSessionManager_synthesizeDrawingForMathResultBlock_fallbackText_drawing_mathItem_inkColor_inputScale_completion___block_invoke;
    block[3] = &unk_1E82DBE00;
    v53 = drawingCopy;
    selfCopy = self;
    v58 = v49;
    v55 = blockCopy;
    v56 = v43;
    v60 = x;
    v61 = y;
    v62 = width;
    v63 = height;
    v57 = v42;
    scaleCopy = scale;
    v59 = colorCopy;
    v45 = v42;
    v46 = v43;
    dispatch_async(v44, block);
  }

  else
  {
    v17 = textCopy;
  }
}

void __128__PKRecognitionSessionManager_synthesizeDrawingForMathResultBlock_fallbackText_drawing_mathItem_inkColor_inputScale_completion___block_invoke(uint64_t a1)
{
  v96[2] = *MEMORY[0x1E69E9840];
  v2 = [(PKMathRecognitionItem *)*(a1 + 32) suggestedHeightForResult];
  v95[0] = *MEMORY[0x1E6997B30];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v95[1] = *MEMORY[0x1E6997B28];
  v96[0] = v3;
  v96[1] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];

  if ([*(a1 + 32) isVerticalExpression] && (v5 = -[PKMathRecognitionItem suggestedDistanceBetweenDigits](*(a1 + 32)), v5 > 0.0))
  {
    v6 = [v4 mutableCopy];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6997B20]];

    v8 = [v6 copy];
  }

  else
  {
    v8 = v4;
  }

  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = *(*(a1 + 40) + 56);
  v11 = *(a1 + 72);
  v85 = 0;
  v12 = [v10 synthesizeExpressionEvaluationResultWithBlock:v11 options:v8 shouldCancel:&__block_literal_global_154 error:&v85];
  v76 = v85;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v13 = [objc_opt_class() enabledLocales];
  v14 = [v13 countByEnumeratingWithState:&v81 objects:v94 count:16];
  if (v14)
  {
    v15 = *v82;
    do
    {
      v16 = 0;
      do
      {
        if (*v82 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v81 + 1) + 8 * v16);
        v18 = (*(*(a1 + 72) + 16))();
        v19 = [v17 languageIdentifier];
        [v9 setObject:v18 forKeyedSubscript:v19];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v81 objects:v94 count:16];
    }

    while (v14);
  }

  if (!v12)
  {
    v20 = *(a1 + 48);
    v21 = *(*(a1 + 40) + 64);
    v80 = v76;
    v12 = [v21 synthesizeDrawingForString:v20 options:v8 shouldCancel:&__block_literal_global_156 error:&v80];
    v22 = v80;

    v76 = v22;
    [v9 setObject:*(a1 + 48) forKeyedSubscript:@"fallback"];
  }

  v23 = *(a1 + 40);
  v24 = [v12 drawing];
  v25 = *(a1 + 88);
  v26 = *(a1 + 96);
  v27 = *(a1 + 104);
  v28 = *(a1 + 112);
  v30 = *(a1 + 56);
  v29 = *(a1 + 64);
  v75 = *(a1 + 120);
  v31 = [*(a1 + 32) isVerticalExpression];
  v32 = v24;
  v33 = v30;
  v34 = v29;
  if (v23)
  {
    v35 = v2 + 4.0;
    v36 = (v2 + 4.0) * 8.0 / -30.0;
    if (v31)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = (v2 + 4.0) * 8.0 / -30.0;
    }

    if (v31)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0.0;
    }

    v97.origin.x = v25;
    v97.origin.y = v26;
    v97.size.width = v27;
    v97.size.height = v28;
    v98 = CGRectInset(v97, v37, v38);
    x = v98.origin.x;
    y = v98.origin.y;
    width = v98.size.width;
    height = v98.size.height;
    [v33 bounds];
    v100 = CGRectInset(v99, v37, v38);
    v71 = v100.origin.y;
    v72 = v100.origin.x;
    v69 = v100.size.height;
    v70 = v100.size.width;
    [v32 bounds];
    v44 = v43;
    [v32 bounds];
    v73 = v47;
    v74 = v48;
    v49 = v35 / v44;
    if (v31)
    {
      v50 = v45;
      v101.origin.x = x;
      v101.origin.y = y;
      v101.size.width = width;
      v101.size.height = height;
      MaxY = CGRectGetMaxY(v101);
      v102.origin.y = v71;
      v102.origin.x = v72;
      v102.size.height = v69;
      v102.size.width = v70;
      MaxX = CGRectGetMaxX(v102);
      memset(&v90, 0, sizeof(v90));
      CGAffineTransformMakeTranslation(&v90, MaxX - v50 * v49, MaxY);
      memset(&v89, 0, sizeof(v89));
      CGAffineTransformMakeTranslation(&v89, -v73, -v74);
      t1 = v89;
      CGAffineTransformMakeScale(&t2, v49, v49);
    }

    else
    {
      v53 = v46;
      v103.origin.x = x;
      v103.origin.y = y;
      v103.size.width = width;
      v103.size.height = height;
      v54 = CGRectGetMaxX(v103);
      v104.origin.x = x;
      v104.origin.y = y;
      v104.size.width = width;
      v104.size.height = height;
      MidY = CGRectGetMidY(v104);
      v56 = v53 * 0.5;
      memset(&v90, 0, sizeof(v90));
      CGAffineTransformMakeTranslation(&v90, v54, MidY - v56);
      memset(&v89, 0, sizeof(v89));
      CGAffineTransformMakeTranslation(&v89, -v73, -v74 - v56);
      t1 = v89;
      CGAffineTransformMakeScale(&t2, v49, v49);
      CGAffineTransformConcat(&v88, &t1, &t2);
      v89 = v88;
      t1 = v88;
      CGAffineTransformMakeTranslation(&t2, 0.0, v56);
    }

    CGAffineTransformConcat(&v88, &t1, &t2);
    v89 = v88;
    t1 = v88;
    t2 = v90;
    CGAffineTransformConcat(&v88, &t1, &t2);
    v90 = v88;
    v89 = v88;
    v57 = [v33 strokes];
    v58 = +[PKStroke _createStrokesFromCHDrawing:transform:inputScale:sourceStrokes:strokeClass:newInk:suggestedHeight:shouldSetSynthesizedFlag:](PKStroke, "_createStrokesFromCHDrawing:transform:inputScale:sourceStrokes:strokeClass:newInk:suggestedHeight:shouldSetSynthesizedFlag:", v32, &v89, v57, [v33 strokeClass], v34, 1, v75, -1.0);

    v59 = [objc_alloc(objc_opt_class()) initWithStrokes:v58 fromDrawing:v33];
  }

  else
  {
    v59 = 0;
  }

  v60 = [PKHandwritingSynthesisMathResultLogEntry alloc];
  v61 = [v59 strokes];
  v93 = v61;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
  v91[0] = @"mathTopResult";
  v63 = [v12 content];
  v92[0] = v63;
  v92[1] = v9;
  v91[1] = @"mathAllResults";
  v91[2] = @"options";
  v92[2] = v8;
  v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:3];
  v65 = [(PKHandwritingSynthesisMathResultLogEntry *)v60 initWithSynthesizedStrokeGroups:v62 debugInfo:v64];

  v66 = +[PKHandwritingSynthesisLogger sharedHandwritingSynthesisLogger];
  [(PKHandwritingSynthesisLogger *)v66 addLogEntry:v65];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__PKRecognitionSessionManager_synthesizeDrawingForMathResultBlock_fallbackText_drawing_mathItem_inkColor_inputScale_completion___block_invoke_4;
  block[3] = &unk_1E82D63D8;
  v67 = *(a1 + 80);
  v78 = v59;
  v79 = v67;
  v68 = v59;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (uint64_t)canSynthesizeDrawingForText:(uint64_t)text
{
  v3 = a2;
  if (text)
  {
    if (objc_opt_respondsToSelector())
    {
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v5 = [v3 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
      v6 = [v5 componentsJoinedByString:&stru_1F476BD20];

      if ([v6 length])
      {
        v7 = [*(text + 64) supportedCharacterIndexesForString:v6 options:0];
        v8 = [v6 length];
        v9 = [v7 count];
        text = 1.0 - (v8 - v9) / [v6 length] >= 0.65;
      }

      else
      {
        text = 0;
      }
    }

    else
    {
      text = 0;
    }
  }

  return text;
}

- (void)synthesizeDrawingForText:(void *)text drawing:(double)drawing inkColor:(double)color inputScale:(double)scale suggestedHeight:(double)height bounds:(double)bounds progress:(double)progress completion:(uint64_t)self0 shouldCancel:(void *)self1
{
  v24 = a2;
  textCopy = text;
  cancelCopy = cancel;
  v27 = a12;
  v28 = a13;
  if (self)
  {
    v29 = [textCopy copy];
    objc_initWeak(&location, self);
    v30 = self[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __140__PKRecognitionSessionManager_synthesizeDrawingForText_drawing_inkColor_inputScale_suggestedHeight_bounds_progress_completion_shouldCancel___block_invoke;
    block[3] = &unk_1E82DBE50;
    objc_copyWeak(v39, &location);
    v31 = v24;
    v39[1] = *&scale;
    v39[2] = *&height;
    v39[3] = *&bounds;
    v39[4] = *&progress;
    v39[5] = *&drawing;
    v39[6] = *&color;
    v34 = v31;
    v35 = v29;
    v36 = v27;
    v37 = v28;
    v38 = cancelCopy;
    v32 = v29;
    dispatch_async(v30, block);

    objc_destroyWeak(v39);
    objc_destroyWeak(&location);
  }
}

void __140__PKRecognitionSessionManager_synthesizeDrawingForText_drawing_inkColor_inputScale_suggestedHeight_bounds_progress_completion_shouldCancel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x1E6997BE8]);
    v4 = [(PKRecognitionSessionManager *)WeakRetained session];
    v5 = [v3 initWithRecognitionSession:v4];

    v6 = *(a1 + 32);
    v7 = *(a1 + 80);
    v8 = *(a1 + 88);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __140__PKRecognitionSessionManager_synthesizeDrawingForText_drawing_inkColor_inputScale_suggestedHeight_bounds_progress_completion_shouldCancel___block_invoke_2;
    v13[3] = &unk_1E82DBE28;
    objc_copyWeak(&v17, (a1 + 72));
    v14 = *(a1 + 32);
    v9 = *(a1 + 96);
    v18 = *(a1 + 80);
    v19 = v9;
    v20 = *(a1 + 112);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v10 = [v5 synthesizeTokensForString:v6 point:v13 completion:*(a1 + 56) shouldCancel:{v7, v8}];

    objc_destroyWeak(&v17);
  }

  else
  {
    v10 = 0;
    (*(*(a1 + 48) + 16))();
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64), v10, v11, v12);
}

void __140__PKRecognitionSessionManager_synthesizeDrawingForText_drawing_inkColor_inputScale_suggestedHeight_bounds_progress_completion_shouldCancel___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = *(a1 + 96);
    v8 = *(a1 + 104);
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = [v9 strokes];
    [PKRecognitionSessionManager completeTextSynthesisForText:v10 bounds:0 ink:v9 inputScale:v11 suggestedHeight:v12 contextDrawing:v5 sourceStrokes:0 tokenStringRanges:v7 tokens:v8 isProofreadingReplacement:*(a1 + 48) completion:?];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)completeTextSynthesisForText:(id *)text bounds:(void *)bounds ink:(void *)ink inputScale:(void *)scale suggestedHeight:(void *)height contextDrawing:(void *)drawing sourceStrokes:(void *)strokes tokenStringRanges:(int)ranges tokens:(double)tokens isProofreadingReplacement:(double)text0 completion:(void *)text1
{
  v74 = *MEMORY[0x1E69E9840];
  boundsCopy = bounds;
  inkCopy = ink;
  scaleCopy = scale;
  heightCopy = height;
  drawingCopy = drawing;
  strokesCopy = strokes;
  completionCopy = completion;
  v59 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(strokesCopy, "count", strokesCopy)}];
  v62 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(strokesCopy, "count")}];
  strokeProviderSnapshot = [text strokeProviderSnapshot];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v20 = strokesCopy;
  v21 = [v20 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (v21)
  {
    v22 = *v70;
    v23 = MEMORY[0x1E695EFD0];
    v24 = MEMORY[0x1E695F050];
    do
    {
      v25 = 0;
      do
      {
        if (*v70 != v22)
        {
          objc_enumerationMutation(v20);
        }

        drawing = [*(*(&v69 + 1) + 8 * v25) drawing];
        v27 = v23[1];
        v68[0] = *v23;
        v68[1] = v27;
        v68[2] = v23[2];
        v28 = +[PKStroke _createStrokesFromCHDrawing:transform:inputScale:sourceStrokes:strokeClass:newInk:suggestedHeight:shouldSetSynthesizedFlag:](PKStroke, "_createStrokesFromCHDrawing:transform:inputScale:sourceStrokes:strokeClass:newInk:suggestedHeight:shouldSetSynthesizedFlag:", drawing, v68, heightCopy, [scaleCopy strokeClass], inkCopy, 1, tokens, replacement);

        v29 = [objc_alloc(objc_opt_class()) initWithStrokes:v28 fromDrawing:scaleCopy];
        [v29 set_canvasBounds:{*v24, v24[1], v24[2], v24[3]}];
        [v59 addObject:v29];
        [v62 addObject:v28];

        ++v25;
      }

      while (v21 != v25);
      v21 = [v20 countByEnumeratingWithState:&v69 objects:v73 count:16];
    }

    while (v21);
  }

  if (ranges)
  {
    v30 = [PKHandwritingSynthesisProofreadingLogEntry alloc];
    firstObject2 = [v62 valueForKeyPath:@"@unionOfArrays.self"];
    firstObject = [v20 firstObject];
    debugInfo = [firstObject debugInfo];
    v34 = [(PKHandwritingSynthesisProofreadingLogEntry *)v30 initWithSynthesizedStrokes:firstObject2 originalStrokes:heightCopy debugInfo:debugInfo];
  }

  else
  {
    v36 = [PKHandwritingSynthesisGenerationLogEntry alloc];
    firstObject2 = [v20 firstObject];
    debugInfo2 = [firstObject2 debugInfo];
    v34 = [(PKHandwritingSynthesisGenerationLogEntry *)v36 initWithSynthesizedStrokeGroups:v62 debugInfo:debugInfo2];
  }

  v35 = +[PKHandwritingSynthesisLogger sharedHandwritingSynthesisLogger];
  [(PKHandwritingSynthesisLogger *)v35 addLogEntry:v34];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __189__PKRecognitionSessionManager_completeTextSynthesisForText_bounds_ink_inputScale_suggestedHeight_contextDrawing_sourceStrokes_tokenStringRanges_tokens_isProofreadingReplacement_completion___block_invoke;
  block[3] = &unk_1E82DBEC8;
  v38 = completionCopy;
  v67 = v38;
  v50 = drawingCopy;
  v64 = v50;
  v39 = v20;
  v65 = v39;
  v51 = v59;
  v66 = v51;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  for (i = 0; i < [v39 count]; ++i)
  {
    v41 = [v39 objectAtIndexedSubscript:i];
    v42 = MEMORY[0x1E695DFB8];
    v43 = [v62 objectAtIndexedSubscript:i];
    v58 = [v42 orderedSetWithArray:v43];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {

      break;
    }

    v44 = [PKStrokeProvider _identifiersForStrokes:v58];
    v45 = [v41 asFullTextResultWithStrokeIdentifiers:v44 strokeProvider:strokeProviderSnapshot];
    v46 = v58;
    v47 = MEMORY[0x1E695DFD8];
    v48 = [PKStrokeProvider _identifiersForStrokes:v46];
    v49 = [v47 setWithArray:v48];

    [text[13] addCachedTranscription:v45 forStrokeGroup:v49];
  }
}

- (void)synthesizeDrawingForReplacementText:(void *)text drawing:(void *)drawing strokes:(void *)strokes bounds:(CGFloat)bounds inputScale:(CGFloat)scale completion:(CGFloat)completion
{
  v48 = *MEMORY[0x1E69E9840];
  v19 = a2;
  textCopy = text;
  drawingCopy = drawing;
  strokesCopy = strokes;
  if (self)
  {
    v23 = [textCopy copy];

    if ([drawingCopy count])
    {
      lastObject = [drawingCopy lastObject];
      v25 = [lastObject ink];
    }

    else
    {
      lastObject = [drawingCopy lastObject];
      v26 = [lastObject ink];
      color = [v26 color];
      v25 = [PKInk inkWithIdentifier:@"com.apple.ink.monoline" color:color weight:1.0];
    }

    v28 = [objc_alloc(objc_opt_class()) initWithStrokes:drawingCopy fromDrawing:v23];
    v29 = os_log_create("com.apple.pencilkit", "Proofreading");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      uuid = [v23 uuid];
      v49.origin.x = bounds;
      v49.origin.y = scale;
      v49.size.width = completion;
      v49.size.height = a9;
      v34 = NSStringFromCGRect(v49);
      *location = 138412803;
      *&location[4] = uuid;
      v44 = 2112;
      v45 = v34;
      v46 = 2117;
      v47 = v19;
      _os_log_debug_impl(&dword_1C7CCA000, v29, OS_LOG_TYPE_DEBUG, "Requested to synthesize drawing: %@ in bounds: %@ for replacement text: %{sensitive}@", location, 0x20u);
    }

    objc_initWeak(location, self);
    v30 = self[3];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __112__PKRecognitionSessionManager_synthesizeDrawingForReplacementText_drawing_strokes_bounds_inputScale_completion___block_invoke;
    v35[3] = &unk_1E82DBEA0;
    objc_copyWeak(v42, location);
    v36 = drawingCopy;
    v37 = v19;
    textCopy = v23;
    v42[1] = *&bounds;
    v42[2] = *&scale;
    v42[3] = *&completion;
    v42[4] = *&a9;
    v38 = textCopy;
    v39 = v25;
    v42[5] = *&a10;
    v40 = v28;
    v41 = strokesCopy;
    v31 = v28;
    v32 = v25;
    dispatch_async(v30, v35);

    objc_destroyWeak(v42);
    objc_destroyWeak(location);
  }
}

void __112__PKRecognitionSessionManager_synthesizeDrawingForReplacementText_drawing_strokes_bounds_inputScale_completion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x1E6997BE8]);
    v4 = [(PKRecognitionSessionManager *)WeakRetained session];
    v5 = [v3 initWithRecognitionSession:v4];

    v6 = [MEMORY[0x1E695DFB8] orderedSetWithArray:*(a1 + 32)];
    v7 = [PKStrokeProvider _identifiersForStrokes:v6];
    v8 = *(a1 + 40);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __112__PKRecognitionSessionManager_synthesizeDrawingForReplacementText_drawing_strokes_bounds_inputScale_completion___block_invoke_2;
    v20[3] = &unk_1E82DBE78;
    objc_copyWeak(&v25, (a1 + 80));
    v9 = *(a1 + 48);
    v26 = *(a1 + 88);
    v27 = *(a1 + 104);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v28 = *(a1 + 120);
    v12 = *(a1 + 64);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v21 = v14;
    v22 = v13;
    v23 = *(a1 + 32);
    v24 = *(a1 + 72);
    v15 = [v5 synthesizeTokensForString:v8 replacingStrokes:v7 completion:v20 shouldCancel:&__block_literal_global_188];

    objc_destroyWeak(&v25);
  }

  else
  {
    v16 = os_log_create("com.apple.pencilkit", "Proofreading");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [*(a1 + 48) uuid];
      v18 = NSStringFromCGRect(*(a1 + 88));
      v19 = *(a1 + 40);
      *buf = 138412803;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      v33 = 2117;
      v34 = v19;
      _os_log_debug_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEBUG, "Ignoring synthesis of drawing: %@ in bounds: %@, for replacement text: %{sensitive}@", buf, 0x20u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void __112__PKRecognitionSessionManager_synthesizeDrawingForReplacementText_drawing_strokes_bounds_inputScale_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v26 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v26, "count")}];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v26;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v41 count:16];
    if (v7)
    {
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v11 = MEMORY[0x1E696AEC0];
          v12 = [v10 string];
          [v10 bounds];
          v13 = NSStringFromCGRect(v43);
          v14 = [v11 stringWithFormat:@"%@ [%@]", v12, v13];
          [v5 addObject:v14];
        }

        v7 = [v6 countByEnumeratingWithState:&v27 objects:v41 count:16];
      }

      while (v7);
    }

    v15 = os_log_create("com.apple.pencilkit", "Proofreading");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = [*(a1 + 32) uuid];
      v18 = NSStringFromCGRect(*(a1 + 88));
      v19 = *(a1 + 40);
      *buf = 138413315;
      v32 = v17;
      v33 = 2112;
      v34 = v18;
      v35 = 2117;
      v36 = v19;
      v37 = 2112;
      v38 = v25;
      v39 = 2117;
      v40 = v5;
      _os_log_debug_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEBUG, "Did synthesize drawing: %@ in bounds: %@, for replacement text: %{sensitive}@. Token ranges: %@. Token: %{sensitive}@", buf, 0x34u);
    }

    [PKRecognitionSessionManager completeTextSynthesisForText:*(a1 + 40) bounds:*(a1 + 48) ink:*(a1 + 56) inputScale:*(a1 + 64) suggestedHeight:v25 contextDrawing:v6 sourceStrokes:1 tokenStringRanges:*(a1 + 120) tokens:*(a1 + 112) isProofreadingReplacement:*(a1 + 72) completion:?];
  }

  else
  {
    v16 = os_log_create("com.apple.pencilkit", "Proofreading");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v20 = [*(a1 + 32) uuid];
      v21 = NSStringFromCGRect(*(a1 + 88));
      v22 = *(a1 + 40);
      *buf = 138412803;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      v35 = 2117;
      v36 = v22;
      _os_log_debug_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEBUG, "Ignoring synthesis of drawing: %@ in bounds: %@ for replacement text: %{sensitive}@", buf, 0x20u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

- (void)cacheTranscription:(void *)transcription strokeGroup:
{
  v9 = a2;
  transcriptionCopy = transcription;
  if (self)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = [PKStrokeProvider _identifiersForStrokes:transcriptionCopy];
    v8 = [v6 setWithArray:v7];

    [*(self + 96) addCachedTranscription:v9 forStrokeGroup:v8];
  }
}

- (void)dataDetectorQuery:(id)query foundItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [PKDataDetectorItem dataDetectorItemWithQueryItem:*(*(&v14 + 1) + 8 * v10) sessionManager:self, v14];
        if (v11)
        {
          [array addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (*&self->_delegateFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = [array copy];
    [WeakRetained recognitionSessionManager:self foundDataDetectorItems:v13];
  }
}

- (void)hashtagQuery:(id)query foundItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [PKHashtagItem hashtagItemWithQueryItem:*(*(&v14 + 1) + 8 * v10) sessionManager:self, v14];
        if (v11)
        {
          [array addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ((*&self->_delegateFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = [array copy];
    [WeakRetained recognitionSessionManager:self foundHashtagItems:v13];
  }
}

- (void)mentionQuery:(id)query foundItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [PKMentionItem mentionItemWithQueryItem:*(*(&v14 + 1) + 8 * v10) sessionManager:self, v14];
        if (v11)
        {
          [array addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ((*&self->_delegateFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = [array copy];
    [WeakRetained recognitionSessionManager:self foundMentionItems:v13];
  }
}

- (void)proofreadingQuery:(id)query foundItems:(id)items
{
  v44 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  [(NSTimer *)self->_proofreadingTimer invalidate];
  array = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = itemsCopy;
  v5 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v5)
  {
    v6 = *v36;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [PKProofreadingItem proofreadingItemWithQueryItem:*(*(&v35 + 1) + 8 * i) sessionManager:self];
        if (v8)
        {
          [array addObject:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v5);
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(array, "count")}];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = array;
  v10 = [v25 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v10)
  {
    v11 = *v32;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v25);
        }

        v13 = *(*(&v31 + 1) + 8 * j);
        v14 = MEMORY[0x1E696AEC0];
        identifier = [v13 identifier];
        replacementStrings = [v13 replacementStrings];
        v17 = [v14 stringWithFormat:@"{identifer:%@, replacementStrings:%@}", identifier, replacementStrings];
        [v9 addObject:v17];
      }

      v10 = [v25 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v10);
  }

  v18 = os_log_create("com.apple.pencilkit", "Proofreading");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v23 = [v25 valueForKey:@"identifier"];
    *location = 138412547;
    *&location[4] = v23;
    v40 = 2117;
    v41 = v9;
    _os_log_debug_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEBUG, "Recognized proofreading items: %@. Strings: %{sensitive}@", location, 0x16u);
  }

  if ((*&self->_delegateFlags & 8) != 0)
  {
    objc_initWeak(location, self);
    if (self->q_wantsAutoRefine)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 1.0;
    }

    v20 = MEMORY[0x1E695DFF0];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __60__PKRecognitionSessionManager_proofreadingQuery_foundItems___block_invoke;
    v28[3] = &unk_1E82DBEF0;
    objc_copyWeak(&v30, location);
    v29 = v25;
    v21 = [v20 scheduledTimerWithTimeInterval:0 repeats:v28 block:v19];
    proofreadingTimer = self->_proofreadingTimer;
    self->_proofreadingTimer = v21;

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }
}

void __60__PKRecognitionSessionManager_proofreadingQuery_foundItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 25);
  }

  else
  {
    v3 = 0;
  }

  v4 = [*(a1 + 32) copy];
  [v3 recognitionSessionManager:v5 foundProofreadingItems:v4];
}

- (void)groupQuery:(id)query foundItems:(id)items
{
  itemsCopy = items;
  if ((*&self->_delegateFlags & 0x10) != 0)
  {
    v7 = itemsCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained recognitionSessionManager:self foundStrokeGroupItems:v7];

    itemsCopy = v7;
  }
}

void __49__PKRecognitionSessionManager_transcriptionQuery__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = *(*(a1 + 32) + 128);
  if (v2 == 3)
  {
    [(PKRecognitionQueryController *)v3 drawingQueryWithIdentifier:?];
  }

  else
  {
    [(PKRecognitionQueryController *)v3 visibleStrokesQueryWithIdentifier:?];
  }
  v4 = ;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)fetchTranscriptionForStrokes:(void *)strokes cancelBlock:(void *)block withCompletion:
{
  v7 = a2;
  strokesCopy = strokes;
  blockCopy = block;
  if (self)
  {
    self = [(PKRecognitionSessionManager *)self fetchTranscriptionForStrokes:v7 callCompletionOnMainThread:1 cancelBlock:strokesCopy withCompletion:blockCopy];
  }

  return self;
}

- (id)fetchTranscriptionForStrokes:(char)strokes callCompletionOnMainThread:(void *)thread cancelBlock:(void *)block withCompletion:
{
  v9 = a2;
  threadCopy = thread;
  blockCopy = block;
  if (self)
  {
    v12 = *(self + 24);
    block = MEMORY[0x1E69E9820];
    p_block = 3221225472;
    v25 = __53__PKRecognitionSessionManager_setWantsTranscription___block_invoke;
    v26 = &unk_1E82D75A0;
    selfCopy = self;
    LOBYTE(v28) = 1;
    dispatch_async(v12, &block);
    v13 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v9];
    v14 = [PKStrokeProvider _identifiersForStrokes:v13];
    block = 0;
    p_block = &block;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__31;
    selfCopy = __Block_byref_object_dispose__31;
    v28 = 0;
    v15 = *(self + 24);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__PKRecognitionSessionManager_transcriptionQuery__block_invoke;
    v22[3] = &unk_1E82D8600;
    v22[4] = self;
    v22[5] = &block;
    dispatch_sync(v15, v22);
    v16 = *(p_block + 40);
    _Block_object_dispose(&block, 8);

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __114__PKRecognitionSessionManager_fetchTranscriptionForStrokes_callCompletionOnMainThread_cancelBlock_withCompletion___block_invoke;
    v19[3] = &unk_1E82DBF18;
    strokesCopy = strokes;
    v20 = blockCopy;
    v17 = [v16 contextualTextResultsForContextStrokes:v14 completion:v19 shouldCancel:threadCopy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __114__PKRecognitionSessionManager_fetchTranscriptionForStrokes_callCompletionOnMainThread_cancelBlock_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 topTranscription];
  v5 = v4;
  v6 = &stru_1F476BD20;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  if (*(a1 + 40) == 1)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __114__PKRecognitionSessionManager_fetchTranscriptionForStrokes_callCompletionOnMainThread_cancelBlock_withCompletion___block_invoke_2;
    v8[3] = &unk_1E82D63D8;
    v10 = *(a1 + 32);
    v9 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)fetchIndexableContentWithCompletion:(uint64_t)completion
{
  v3 = a2;
  v4 = v3;
  if (completion)
  {
    v5 = *(completion + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__PKRecognitionSessionManager_fetchIndexableContentWithCompletion___block_invoke;
    v6[3] = &unk_1E82D6D58;
    v6[4] = completion;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __67__PKRecognitionSessionManager_fetchIndexableContentWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6997B60]);
  v3 = [(PKRecognitionSessionManager *)*(a1 + 32) session];
  v4 = [v2 initWithRecognitionSession:v3];

  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PKRecognitionSessionManager_fetchIndexableContentWithCompletion___block_invoke_2;
  v7[3] = &unk_1E82D6D58;
  v8 = v4;
  v9 = *(a1 + 40);
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__PKRecognitionSessionManager_fetchIndexableContentWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) start];
  [*(a1 + 32) waitForPendingUpdates];
  v2 = [PKIndexableContent alloc];
  v3 = [*(a1 + 32) indexableContent];
  v4 = [(PKIndexableContent *)v2 initWithIndexableContent:v3];

  (*(*(a1 + 40) + 16))();
}

+ (id)enabledLocales
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [MEMORY[0x1E695DF58] preferredLanguages];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v3 = v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{*(*(&v10 + 1) + 8 * i), v10}];
        if (v7)
        {
          [array addObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v8;
}

+ (BOOL)hasAutoRefineLocaleEnabled
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  enabledLocales = [objc_opt_class() enabledLocales];
  v3 = [enabledLocales countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(enabledLocales);
        }

        if (CHHasPersonalizedSynthesisSupportForLocale())
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [enabledLocales countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)autoRefineQuery:(id)query didUpdateWithQueryItem:(id)item validProviderVersion:(id)version
{
  v20 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  versionCopy = version;
  recognitionSessionQueue = self->_recognitionSessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__PKRecognitionSessionManager_autoRefineQuery_didUpdateWithQueryItem_validProviderVersion___block_invoke;
  block[3] = &unk_1E82D6400;
  block[4] = self;
  v10 = itemCopy;
  v16 = v10;
  v11 = versionCopy;
  v17 = v11;
  dispatch_sync(recognitionSessionQueue, block);
  v12 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    textResult = [v10 textResult];
    refinableTranscription = [textResult refinableTranscription];
    *buf = 138739971;
    v19 = refinableTranscription;
    _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_DEFAULT, "AutoRefine query item with transcription %{sensitive}@ handled.", buf, 0xCu);
  }
}

void __91__PKRecognitionSessionManager_autoRefineQuery_didUpdateWithQueryItem_validProviderVersion___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  v3 = [WeakRetained hasRefinableStrokes];

  v4 = objc_loadWeakRetained((*(a1 + 32) + 208));
  if (v4 && (v5 = v4, [*(a1 + 40) textResult], v6 = objc_claimAutoreleasedReturnValue(), v7 = (v6 != 0) & v3, v6, v5, v7 == 1))
  {
    v8 = [(PKRecognitionSessionManager *)*(a1 + 32) directStrokeProviderSnapshot];
    v54 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v9 = [*(a1 + 40) strokeIdentifiers];
    v10 = [v9 countByEnumeratingWithState:&v51 objects:v67 count:16];
    if (v10)
    {
      v11 = 0;
      v12 = *v52;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v52 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v51 + 1) + 8 * i);
          if (([v8 isValidStrokeIdentifier:v14] & 1) == 0)
          {

            v30 = os_log_create("com.apple.pencilkit", "AutoRefine");
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1C7CCA000, v30, OS_LOG_TYPE_DEFAULT, "AutoRefine item rejected because some strokes are invalid in new snapshot", buf, 2u);
            }

            goto LABEL_30;
          }

          v15 = [v8 strokeForIdentifier:v14];
          if (v11)
          {
            v11 = 1;
          }

          else
          {
            v16 = objc_loadWeakRetained((*(a1 + 32) + 208));
            v17 = [v15 stroke];
            v11 = [v16 isRefinableStroke:v17];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v51 objects:v67 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      if (v11)
      {
        v18 = *(a1 + 48);
        v19 = [v8 strokeProviderVersion];
        v20 = [v18 isEqual:v19];

        v21 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [*(a1 + 40) textResult];
          v22 = [v47 refinableTranscription];
          v23 = *(a1 + 48);
          v24 = [v8 strokeProviderVersion];
          v25 = [v8 orderedStrokes];
          v26 = [v25 count];
          v27 = [*(a1 + 40) strokeIdentifiers];
          v28 = [v27 count];
          *buf = 138741251;
          v56 = v22;
          v57 = 2112;
          v58 = v23;
          v59 = 2112;
          v60 = v24;
          v61 = 1024;
          v62 = v20;
          v63 = 2048;
          v64 = v26;
          v65 = 2048;
          v66 = v28;
          _os_log_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEFAULT, "AutoRefine processing new item with transcription %{sensitive}@ received in recognition manager. Versions = %@ vs %@, match ? %d. Current stroke count = %ld, strokes in item = %ld.", buf, 0x3Au);
        }

        v29 = [[PKAutoRefineQueryItem alloc] initWithQueryItem:v8 usingStrokeProvider:?];
        v30 = v29;
        if (v29)
        {
          v31 = v29[13];
        }

        else
        {
          v31 = 0;
        }

        v32 = v31;
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __91__PKRecognitionSessionManager_autoRefineQuery_didUpdateWithQueryItem_validProviderVersion___block_invoke_216;
        v50[3] = &unk_1E82DBF40;
        v50[4] = *(a1 + 32);
        v33 = [v32 indexesOfObjectsPassingTest:v50];

        if (v30)
        {
          objc_setProperty_nonatomic_copy(v30, v34, v33, 112);
        }

        if ([(PKAutoRefineTaskManager *)*(*(a1 + 32) + 152) isTrackingQueryItemIdenticalToQueryItem:v30])
        {
          v35 = os_log_create("com.apple.pencilkit", "AutoRefine");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            if (v30)
            {
              isa = v30[10].isa;
            }

            else
            {
              isa = 0;
            }

            v37 = isa;
            v38 = [(objc_class *)v37 refinableTranscription];
            *buf = 138739971;
            v56 = v38;
            _os_log_impl(&dword_1C7CCA000, v35, OS_LOG_TYPE_DEFAULT, "AutoRefine item with transcription _%{sensitive}@_ rejected because an identical task is already being tracked.", buf, 0xCu);
          }
        }

        else
        {
          [(PKAutoRefineTaskManager *)*(*(a1 + 32) + 152) cancelTasksGivenQueryItem:v30];
          v43 = *(*(a1 + 32) + 152);
          v44 = [*(a1 + 40) textResult];
          v45 = [v44 tokenColumnCount] - 1;
          v46 = *(a1 + 48);
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __91__PKRecognitionSessionManager_autoRefineQuery_didUpdateWithQueryItem_validProviderVersion___block_invoke_218;
          v48[3] = &unk_1E82DBF90;
          v48[4] = *(a1 + 32);
          v49 = v30;
          [(PKAutoRefineTaskManager *)v43 scheduleAutoRefineTaskForItem:v49 firstColumnToCommit:0 lastColumnToCommit:v45 providerVersion:v46 delay:v48 taskInitBlock:0.0];
        }

        goto LABEL_30;
      }
    }

    else
    {
    }

    v30 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_loadWeakRetained((*(a1 + 32) + 208));
      v42 = [v41 hasRefinableStrokes];
      *buf = 67109120;
      LODWORD(v56) = v42;
      _os_log_impl(&dword_1C7CCA000, v30, OS_LOG_TYPE_DEFAULT, "AutoRefine item rejected because it contains no refinable strokes, current tracker has refinable strokes ? %d", buf, 8u);
    }
  }

  else
  {
    v30 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [*(a1 + 40) textResult];
      v40 = [v39 refinableTranscription];
      *buf = 138740227;
      v56 = v40;
      v57 = 1024;
      LODWORD(v58) = v3;
      _os_log_impl(&dword_1C7CCA000, v30, OS_LOG_TYPE_DEFAULT, "AutoRefine item with transcription _%{sensitive}@_ rejected: refinable strokes ? %d, .", buf, 0x12u);
    }

    v8 = v30;
  }

LABEL_30:
}

uint64_t __91__PKRecognitionSessionManager_autoRefineQuery_didUpdateWithQueryItem_validProviderVersion___block_invoke_216(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 40) _visibleStrokeForIdentifier:a2];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  v5 = [WeakRetained isRefinableStroke:v3];

  return v5;
}

void __91__PKRecognitionSessionManager_autoRefineQuery_didUpdateWithQueryItem_validProviderVersion___block_invoke_218(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(PKRecognitionSessionManager *)*(a1 + 32) directStrokeProviderSnapshot];
  v5 = [*(*(a1 + 32) + 40) uuid];
  [(PKAutoRefineTaskManager *)*(*(a1 + 32) + 152) setCurrentDrawingUUID:v5];

  v6 = os_log_create("com.apple.pencilkit", "AutoRefine");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v3;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "AutoRefine running init block for immediate task %p - checking if task should be cancelled against one of the autorefinable strokes", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__PKRecognitionSessionManager_autoRefineQuery_didUpdateWithQueryItem_validProviderVersion___block_invoke_219;
  v11[3] = &unk_1E82DBF68;
  v12 = *(a1 + 40);
  v8 = v3;
  v13 = v8;
  v9 = v4;
  v14 = v9;
  [WeakRetained enumerateRefinableStrokesWithOptions:2 usingBlock:v11];

  v10 = [(PKRecognitionSessionManager *)*(a1 + 32) directStrokeProviderSnapshot];
  [(PKSqueezePaletteViewContext *)*(*(a1 + 32) + 152) setSelectedColor:v10];
}

void __91__PKRecognitionSessionManager_autoRefineQuery_didUpdateWithQueryItem_validProviderVersion___block_invoke_219(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[13];
  }

  v8 = v7;
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 134217984;
      v17 = v11;
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "AutoRefine found a refinable stroke covered by the item in the task %p", buf, 0xCu);
    }

    *a4 = 1;
  }

  else
  {
    v12 = [*(a1 + 48) drawing];
    v13 = [v12 _visibleStrokeForIdentifier:v6];

    if (v13)
    {
      v15 = 0;
      [(PKAutoRefineTask *)*(a1 + 40) trimTaskForNewStroke:v13 shouldCancel:&v15];
      if (v15 == 1)
      {
        v14 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEBUG, "Cancel task given refinable stroke.", buf, 2u);
        }

        [(PKAutoRefineTask *)*(a1 + 40) cancel];
        *a4 = 1;
      }
    }
  }
}

@end