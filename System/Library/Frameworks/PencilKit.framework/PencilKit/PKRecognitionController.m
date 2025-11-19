@interface PKRecognitionController
+ (BOOL)currentDeviceSupportsAutoRefine;
+ (id)changeStrokesUsingTransformations:(id)a3 strokeGroups:(id)a4 drawing:(id)a5 originalStrokes:(id)a6;
+ (id)newStrokesFromApplyingTransformations:(id)a3 strokeGroups:(id)a4 drawing:(id)a5 originalStrokes:(id)a6;
+ (id)undoCommandsToChangeStrokesUsingTransformations:(void *)a3 strokeGroups:(void *)a4 drawing:(void *)a5 originalStrokes:;
+ (uint64_t)canSupportRefinementForStrokes:(uint64_t)a1;
+ (uint64_t)supportsCopyAsTextForStrokes:(uint64_t)a1;
+ (uint64_t)supportsStraighteningForStrokes:(uint64_t)a1;
+ (void)generateStrokeDataFromApplyingTransformations:(void *)a3@<X3> strokeGroups:(void *)a4@<X4> drawing:(void *)a5@<X8> originalStrokes:;
+ (void)removeStrokesFromStyleInventory:(id)a3;
- (BOOL)canConvertTextToHandwriting:(id)a3;
- (BOOL)shouldCancelForAutoRefineCompletion;
- (PKMathRecognitionController)mathRecognitionController;
- (PKRecognitionController)initWithDrawing:(id)a3 visibleOnscreenStrokes:(id)a4 useSessionCache:(BOOL)a5 sessionCacheIdentifier:(id)a6;
- (_PKDataDetectorController)dataDetectorController;
- (id)compactSurroundTextResults:(uint64_t)a1;
- (id)contextLookupResultsAtLocation:(CGPoint)a3 completion:(id)a4;
- (id)contextLookupResultsForPath:(CGPath *)a3 completion:(id)a4;
- (id)contextLookupResultsWithSelectedStrokes:(id)a3 completion:(id)a4;
- (id)reflowableLinesInitialStrokes:(id)a3 atLocation:(CGPoint)a4 completion:(id)a5;
- (id)searchQuery;
- (id)setInternalDelegate:(id *)result;
- (id)strokesForSearchQueryItem:(void *)a3 drawing:;
- (uint64_t)sessionManager;
- (void)_drawingDidUpdate:(uint64_t)a1;
- (void)convertTextToHandwriting:(id)a3 bounds:(CGRect)a4 inkColor:(id)a5 inputScale:(double)a6 suggestedHeight:(double)a7 suggestedDrawing:(id)a8 progress:(id)a9 completion:(id)a10 shouldCancel:(id)a11;
- (void)dealloc;
- (void)fetchIndexableContentWithCompletion:(uint64_t)a1;
- (void)fetchTranscriptionForStrokes:(void *)a3 withCompletion:;
- (void)recognitionSessionManager:(id)a3 foundDataDetectorItems:(id)a4;
- (void)recognitionSessionManager:(id)a3 foundHashtagItems:(id)a4;
- (void)recognitionSessionManager:(id)a3 foundMentionItems:(id)a4;
- (void)recognitionSessionManager:(id)a3 foundProofreadingItems:(id)a4;
- (void)recognitionSessionManager:(id)a3 foundStrokeGroupItems:(id)a4;
- (void)refineStrokes:(id)a3 drawing:(id)a4 inputScale:(double)a5 completion:(id)a6;
- (void)replaceStrokes:(id)a3 withString:(id)a4 inBounds:(CGRect)a5 inputScale:(double)a6 completion:(id)a7;
- (void)setDrawing:(id)a3;
- (void)setDrawing:(id)a3 withVisibleOnscreenStrokes:(id)a4;
- (void)straightenStrokes:(id)a3 drawing:(id)a4 completionBlockWithStrokeTransformInfo:(id)a5;
- (void)supportsRefinementForStrokes:(void *)a3 completionBlock:;
- (void)tagAsActive;
- (void)tagAsIdle;
@end

@implementation PKRecognitionController

- (PKRecognitionController)initWithDrawing:(id)a3 visibleOnscreenStrokes:(id)a4 useSessionCache:(BOOL)a5 sessionCacheIdentifier:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = PKRecognitionController;
  v13 = [(PKRecognitionController *)&v22 init];
  if (v13)
  {
    v14 = [MEMORY[0x1E696AFB0] UUID];
    listenerID = v13->_listenerID;
    v13->_listenerID = v14;

    v16 = +[PKRecognitionSessionManagerConfiguration interactiveCanvasConfiguration];
    [(PKMathResultAttribution *)v16 setDarkModeImage:v12];
    if (v16 && v7)
    {
      v16[8] = 1;
    }

    v17 = [[PKRecognitionSessionManager alloc] initWithConfiguration:v16];
    [(PKRecognitionSessionManager *)v17 setDelegate:v13];
    [(PKRecognitionSessionManager *)v17 addListener:?];
    sessionManager = v13->_sessionManager;
    v13->_sessionManager = v17;
    v19 = v17;

    v20 = [v10 uuid];
    [PKRecognitionSessionCache addRecognitionSession:v19 forUUID:v20];

    if (v11)
    {
      [(PKRecognitionSessionManager *)v19 setDrawing:v10 withVisibleOnscreenStrokes:v11];
    }

    else
    {
      [(PKRecognitionSessionManager *)v19 setDrawing:v10];
    }

    [(PKRecognitionController *)v13 _drawingDidUpdate:v10];
  }

  return v13;
}

- (void)_drawingDidUpdate:(uint64_t)a1
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      [(PKMathRecognitionController *)v4 _drawingDidUpdate:v3];
      v5 = MEMORY[0x1E695DFA8];
      v6 = [v3 strokes];
      v7 = [v5 setWithCapacity:{objc_msgSend(v6, "count")}];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [v3 strokes];
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          v12 = 0;
          do
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v20 + 1) + 8 * v12) _strokeUUID];
            if (v13)
            {
              [v7 addObject:v13];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v10);
      }

      v15 = (a1 + 32);
      v14 = *(a1 + 32);
      if (v14)
      {
        v16 = [v14 mutableCopy];
        [v16 minusSet:v7];
        objc_storeStrong((a1 + 32), v7);
        if ([v16 count])
        {
          v17 = *(a1 + 16);
          v18 = [v16 copy];
          [v17 didEraseStrokes:v18];
        }
      }

      else
      {
        v19 = v7;
        v16 = *v15;
        *v15 = v19;
      }
    }
  }
}

- (void)dealloc
{
  [(PKRecognitionSessionManager *)self->_sessionManager removeListener:?];
  v3.receiver = self;
  v3.super_class = PKRecognitionController;
  [(PKRecognitionController *)&v3 dealloc];
}

- (void)tagAsIdle
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.pencilkit", "Math");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PKRecognitionController *)self drawing];
    v5 = [v4 uuid];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Tag recognition session as idle: %@", &v6, 0xCu);
  }

  [(PKRecognitionSessionManager *)self->_sessionManager tagAsIdle];
}

- (void)tagAsActive
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.pencilkit", "Math");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PKRecognitionController *)self drawing];
    v5 = [v4 uuid];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Tag recognition session as active: %@", &v6, 0xCu);
  }

  [(PKRecognitionSessionManager *)self->_sessionManager tagAsActive];
}

- (void)setDrawing:(id)a3 withVisibleOnscreenStrokes:(id)a4
{
  sessionManager = self->_sessionManager;
  v7 = a3;
  [(PKRecognitionSessionManager *)sessionManager setDrawing:v7 withVisibleOnscreenStrokes:a4];
  [(PKRecognitionController *)self _drawingDidUpdate:v7];
}

- (void)setDrawing:(id)a3
{
  sessionManager = self->_sessionManager;
  v5 = a3;
  [(PKRecognitionSessionManager *)sessionManager setDrawing:v5];
  [(PKRecognitionController *)self _drawingDidUpdate:v5];
}

- (id)searchQuery
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc(MEMORY[0x1E6997BA8]);
    v3 = [(PKRecognitionSessionManager *)v1[6] session];
    v1 = [v2 initWithRecognitionSession:v3];
  }

  return v1;
}

- (id)strokesForSearchQueryItem:(void *)a3 drawing:
{
  if (a1)
  {
    v4 = a3;
    v5 = [a2 strokeIdentifiers];
    v6 = [v5 allObjects];
    v7 = [v4 strokesForCHStrokeIdentifiers:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_PKDataDetectorController)dataDetectorController
{
  v3 = self->_dataDetectorController;
  if (!v3)
  {
    v3 = objc_alloc_init(_PKDataDetectorController);
    dataDetectorController = self->_dataDetectorController;
    self->_dataDetectorController = v3;

    [(PKRecognitionSessionManager *)self->_sessionManager setWantsDataDetection:?];
  }

  return v3;
}

- (PKMathRecognitionController)mathRecognitionController
{
  p_mathRecognitionController = &self->_mathRecognitionController;
  v4 = self->_mathRecognitionController;
  if (!v4)
  {
    v5 = objc_alloc_init(PKMathRecognitionController);
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5[1].super.isa, self->_sessionManager);
    }

    objc_storeStrong(p_mathRecognitionController, v6);
    sessionManager = self->_sessionManager;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__PKRecognitionController_mathRecognitionController__block_invoke;
    v9[3] = &unk_1E82DBAB8;
    v4 = v6;
    v10 = v4;
    [(PKRecognitionSessionManager *)sessionManager fetchCurrentStrokeGroupItems:v9];
  }

  return v4;
}

- (uint64_t)sessionManager
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void __52__PKRecognitionController_mathRecognitionController__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = [v3 count];
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Found existing stroke groups when setting up math: %lu", buf, 0xCu);
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__PKRecognitionController_mathRecognitionController__block_invoke_11;
    v5[3] = &unk_1E82D6E70;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __52__PKRecognitionController_mathRecognitionController__block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(PKMathRecognitionController *)v2 _foundStrokeGroups:1 canDelay:?];
  }
}

- (id)contextLookupResultsAtLocation:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E6997B40]);
  v9 = [(PKRecognitionSessionManager *)self->_sessionManager session];
  v10 = [v8 initWithRecognitionSession:v9];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PKRecognitionController_contextLookupResultsAtLocation_completion___block_invoke;
  v16[3] = &unk_1E82DBAE0;
  objc_copyWeak(&v18, &location);
  v11 = v7;
  v17 = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__PKRecognitionController_contextLookupResultsAtLocation_completion___block_invoke_17;
  v14[3] = &unk_1E82DBB08;
  objc_copyWeak(&v15, &location);
  v12 = [v10 contextLookupResultsAtLocation:v16 completion:v14 shouldCancel:{x, y}];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v12;
}

void __69__PKRecognitionController_contextLookupResultsAtLocation_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.pencilkit", "Generative");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = [v5 count];
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Context Lookup - Found %lu strokes at location", &v14, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(a1 + 32);
    v11 = WeakRetained[6];
    v12 = [(PKRecognitionSessionManager *)v11 drawing];
    v13 = [v12 strokesForCHStrokeIdentifiers:v5];
    (*(v10 + 16))(v10, v13, v6);
  }
}

BOOL __69__PKRecognitionController_contextLookupResultsAtLocation_completion___block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained == 0;

  return v2;
}

- (id)contextLookupResultsForPath:(CGPath *)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x1E6997B40]);
  v8 = [(PKRecognitionSessionManager *)self->_sessionManager session];
  v9 = [v7 initWithRecognitionSession:v8];

  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__PKRecognitionController_contextLookupResultsForPath_completion___block_invoke;
    v14[3] = &unk_1E82DBB58;
    objc_copyWeak(&v16, &location);
    v14[4] = self;
    v15 = v6;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__PKRecognitionController_contextLookupResultsForPath_completion___block_invoke_2;
    v12[3] = &unk_1E82DBB08;
    objc_copyWeak(&v13, &location);
    v10 = [v9 structuredContextLookupResultsWithSelectionPath:a3 completion:v14 shouldCancel:v12];
    objc_destroyWeak(&v13);

    objc_destroyWeak(&v16);
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0, 0, 0);
    v10 = 0;
  }

  objc_destroyWeak(&location);

  return v10;
}

void __66__PKRecognitionController_contextLookupResultsForPath_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = os_log_create("com.apple.pencilkit", "Generative");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v34 = [v11 count];
    v35 = 2048;
    v36 = [v12 count];
    _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Context Lookup - Found %lu text results and %lu surrounding text results from path", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __66__PKRecognitionController_contextLookupResultsForPath_completion___block_invoke_22;
    v30[3] = &unk_1E82DBB30;
    v31 = v15;
    v26 = v15;
    [v11 enumerateObjectsUsingBlock:v30];
    v25 = [(PKRecognitionController *)*(a1 + 32) compactSurroundTextResults:v12];
    v16 = *(a1 + 40);
    v17 = WeakRetained[6];
    v27 = [(PKRecognitionSessionManager *)v17 drawing];
    [v27 strokesForCHStrokeIdentifiers:v9];
    v18 = v29 = v9;
    v19 = v11;
    v20 = WeakRetained[6];
    [(PKRecognitionSessionManager *)v20 drawing];
    v21 = v28 = v12;
    v22 = [v21 strokesForCHStrokeIdentifiers:v10];
    v32 = v25;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    v24 = v23 = v10;
    (*(v16 + 16))(v16, v18, v22, v26, v24);

    v11 = v19;
    v10 = v23;

    v12 = v28;
    v9 = v29;
  }
}

void __66__PKRecognitionController_contextLookupResultsForPath_completion___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = [a2 topTranscription];
  [*(a1 + 32) addObject:v3];
}

- (id)compactSurroundTextResults:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x1E696AB08];
    v3 = a2;
    v4 = [v2 whitespaceAndNewlineCharacterSet];
    v5 = objc_opt_new();
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __54__PKRecognitionController_compactSurroundTextResults___block_invoke;
    v13 = &unk_1E82DBB80;
    v14 = v5;
    v15 = v4;
    v6 = v4;
    v7 = v5;
    [v3 enumerateObjectsUsingBlock:&v10];

    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __66__PKRecognitionController_contextLookupResultsForPath_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained == 0;

  return v2;
}

- (id)contextLookupResultsWithSelectedStrokes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E6997B40]);
  v9 = [(PKRecognitionSessionManager *)self->_sessionManager session];
  v10 = [v8 initWithRecognitionSession:v9];

  if (objc_opt_respondsToSelector())
  {
    v11 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v6];
    v12 = [PKStrokeProvider _identifiersForStrokes:v11];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__PKRecognitionController_contextLookupResultsWithSelectedStrokes_completion___block_invoke;
    v17[3] = &unk_1E82DBB58;
    objc_copyWeak(&v19, &location);
    v17[4] = self;
    v18 = v7;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__PKRecognitionController_contextLookupResultsWithSelectedStrokes_completion___block_invoke_2;
    v15[3] = &unk_1E82DBB08;
    objc_copyWeak(&v16, &location);
    v13 = [v10 structuredContextLookupResultsWithSelectedStrokes:v12 completion:v17 shouldCancel:v15];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&v19);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, 0, 0);
    v13 = 0;
  }

  objc_destroyWeak(&location);

  return v13;
}

void __78__PKRecognitionController_contextLookupResultsWithSelectedStrokes_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v14 = os_log_create("com.apple.pencilkit", "Generative");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v33 = [v11 count];
      v34 = 2048;
      v35 = [v12 count];
      _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Context Lookup - Found %lu text results and %lu surrounding text results from selected strokes", buf, 0x16u);
    }

    v15 = [MEMORY[0x1E695DF70] array];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __78__PKRecognitionController_contextLookupResultsWithSelectedStrokes_completion___block_invoke_30;
    v29[3] = &unk_1E82DBB30;
    v30 = v15;
    v25 = v15;
    [v11 enumerateObjectsUsingBlock:v29];
    v24 = [(PKRecognitionController *)*(a1 + 32) compactSurroundTextResults:v12];
    v16 = *(a1 + 40);
    v17 = WeakRetained[6];
    v26 = [(PKRecognitionSessionManager *)v17 drawing];
    [v26 strokesForCHStrokeIdentifiers:v9];
    v18 = v28 = v9;
    v19 = WeakRetained[6];
    [(PKRecognitionSessionManager *)v19 drawing];
    v20 = v27 = v12;
    [v20 strokesForCHStrokeIdentifiers:v10];
    v22 = v21 = WeakRetained;
    v31 = v24;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    (*(v16 + 16))(v16, v18, v22, v25, v23);

    WeakRetained = v21;
    v12 = v27;

    v9 = v28;
  }
}

void __78__PKRecognitionController_contextLookupResultsWithSelectedStrokes_completion___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = [a2 topTranscription];
  [*(a1 + 32) addObject:v3];
}

BOOL __78__PKRecognitionController_contextLookupResultsWithSelectedStrokes_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained == 0;

  return v2;
}

void __54__PKRecognitionController_compactSurroundTextResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 topTranscription];
  if ([v3 length])
  {
    [*(a1 + 32) appendString:v3];
    if (([*(a1 + 40) characterIsMember:{objc_msgSend(v3, "characterAtIndex:", objc_msgSend(v3, "length") - 1)}] & 1) == 0)
    {
      [*(a1 + 32) appendString:@"\n"];
    }
  }
}

+ (BOOL)currentDeviceSupportsAutoRefine
{
  v2 = PKIsPadDevice();
  if (v2)
  {
    LOBYTE(v2) = CHGetPersonalizedSynthesisSupportState() > 2;
  }

  return v2;
}

- (BOOL)shouldCancelForAutoRefineCompletion
{
  p_isa = &self->super.isa;
  if (self)
  {
    sessionManager = self->_sessionManager;
    if (!sessionManager)
    {
      goto LABEL_8;
    }

    if (([(PKAutoRefineTaskManager *)sessionManager->q_autoRefineManager hasOngoingAnimationTask]& 1) != 0)
    {
      return 1;
    }

    v5 = p_isa[6];
    if (v5)
    {
      p_isa = objc_loadWeakRetained((v5 + 208));
    }

    else
    {
LABEL_8:
      p_isa = 0;
    }
  }

  [p_isa clearRefinableStrokes];

  return 0;
}

- (void)fetchTranscriptionForStrokes:(void *)a3 withCompletion:
{
  if (result)
  {
    return [(PKRecognitionSessionManager *)result[6] fetchTranscriptionForStrokes:a2 callCompletionOnMainThread:0 cancelBlock:&__block_literal_global_77 withCompletion:a3];
  }

  return result;
}

- (void)fetchIndexableContentWithCompletion:(uint64_t)a1
{
  if (a1)
  {
    [(PKRecognitionSessionManager *)*(a1 + 48) fetchIndexableContentWithCompletion:a2];
  }
}

- (id)reflowableLinesInitialStrokes:(id)a3 atLocation:(CGPoint)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = _PKSignpostLog();
  v12 = os_signpost_id_generate(v11);

  v13 = _PKSignpostLog();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "reflowableLinesInitialStrokes", "", buf, 2u);
  }

  v15 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_INFO, "BEGIN reflowableLinesInitialStrokes", buf, 2u);
  }

  v16 = objc_alloc(MEMORY[0x1E6997B88]);
  v17 = [(PKRecognitionSessionManager *)self->_sessionManager session];
  v18 = [v16 initWithRecognitionSession:v17];

  sessionManager = self->_sessionManager;
  if (sessionManager)
  {
    WeakRetained = objc_loadWeakRetained(&sessionManager->_autoRefineViewDelegate);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained clearRefinableStrokes];

  v21 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v9];
  v22 = [PKStrokeProvider _identifiersForStrokes:v21];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __79__PKRecognitionController_reflowableLinesInitialStrokes_atLocation_completion___block_invoke;
  v28[3] = &unk_1E82DBBA8;
  v30 = v12;
  v28[4] = self;
  v23 = v10;
  v29 = v23;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __79__PKRecognitionController_reflowableLinesInitialStrokes_atLocation_completion___block_invoke_37;
  v26[3] = &unk_1E82DBB08;
  objc_copyWeak(&v27, &location);
  v24 = [v18 reflowableTextTokensForInitialStrokes:v22 point:v28 completion:v26 shouldCancel:{x, y}];
  objc_destroyWeak(&v27);

  objc_destroyWeak(&location);

  return v24;
}

void __79__PKRecognitionController_reflowableLinesInitialStrokes_atLocation_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _PKSignpostLog();
  v5 = v4;
  v6 = a1[6];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v5, OS_SIGNPOST_INTERVAL_END, v6, "reflowableLinesInitialStrokes", "", buf, 2u);
  }

  v7 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_INFO, "END reflowableLinesInitialStrokes", v13, 2u);
  }

  v8 = a1[4];
  if (v8 && (v9 = *(v8 + 48)) != 0 && [(PKAutoRefineTaskManager *)*(v9 + 152) hasOngoingAnimationTask])
  {
    v10 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_ERROR, "AutoRefine: No reflow result because hasOngoingAutoRefineAnimationTask=YES", v12, 2u);
    }

    v11 = *(a1[5] + 16);
  }

  else
  {
    v11 = *(a1[5] + 16);
  }

  v11();
}

BOOL __79__PKRecognitionController_reflowableLinesInitialStrokes_atLocation_completion___block_invoke_37(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained == 0;

  return v2;
}

- (BOOL)canConvertTextToHandwriting:(id)a3
{
  v4 = a3;
  if (CHGetPersonalizedSynthesisSupportState() == 4)
  {
    if (self)
    {
      sessionManager = self->_sessionManager;
    }

    else
    {
      sessionManager = 0;
    }

    v6 = [(PKRecognitionSessionManager *)sessionManager canSynthesizeDrawingForText:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)convertTextToHandwriting:(id)a3 bounds:(CGRect)a4 inkColor:(id)a5 inputScale:(double)a6 suggestedHeight:(double)a7 suggestedDrawing:(id)a8 progress:(id)a9 completion:(id)a10 shouldCancel:(id)a11
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v23 = a3;
  v24 = a5;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v28 = a11;
  v29 = _PKSignpostLog();
  v30 = os_signpost_id_generate(v29);

  v31 = _PKSignpostLog();
  v32 = v31;
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "Synthesize convertTextToHandwriting", "", buf, 2u);
  }

  v33 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v33, OS_LOG_TYPE_INFO, "BEGIN Synthesize convertTextToHandwriting", buf, 2u);
  }

  if (!v25)
  {
    v25 = [(PKRecognitionController *)self drawing];
  }

  if (self)
  {
    self = self->_sessionManager;
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __145__PKRecognitionController_convertTextToHandwriting_bounds_inkColor_inputScale_suggestedHeight_suggestedDrawing_progress_completion_shouldCancel___block_invoke;
  v35[3] = &unk_1E82DBBF8;
  v36 = v27;
  v37 = v30;
  v34 = v27;
  [(PKRecognitionSessionManager *)self synthesizeDrawingForText:v23 drawing:v25 inkColor:a6 inputScale:a7 suggestedHeight:x bounds:y progress:width completion:height shouldCancel:v24, v26, v35, v28];
}

void __145__PKRecognitionController_convertTextToHandwriting_bounds_inkColor_inputScale_suggestedHeight_suggestedDrawing_progress_completion_shouldCancel___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __145__PKRecognitionController_convertTextToHandwriting_bounds_inkColor_inputScale_suggestedHeight_suggestedDrawing_progress_completion_shouldCancel___block_invoke_2;
  block[3] = &unk_1E82DBBD0;
  v10 = *(a1 + 32);
  v19 = *(a1 + 40);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __145__PKRecognitionController_convertTextToHandwriting_bounds_inkColor_inputScale_suggestedHeight_suggestedDrawing_progress_completion_shouldCancel___block_invoke_2(uint64_t a1)
{
  v2 = _PKSignpostLog();
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Synthesize convertTextToHandwriting", "", buf, 2u);
  }

  v5 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "END Synthesize convertTextToHandwriting", v7, 2u);
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)replaceStrokes:(id)a3 withString:(id)a4 inBounds:(CGRect)a5 inputScale:(double)a6 completion:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a7;
  v16 = a4;
  v17 = a3;
  v18 = _PKSignpostLog();
  v19 = os_signpost_id_generate(v18);

  v20 = _PKSignpostLog();
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "Synthesize replaceStrokes", "", buf, 2u);
  }

  v22 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_INFO, "BEGIN Synthesize replaceStrokes", buf, 2u);
  }

  if (self)
  {
    sessionManager = self->_sessionManager;
  }

  else
  {
    sessionManager = 0;
  }

  v24 = sessionManager;
  v25 = [(PKRecognitionController *)self drawing];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __84__PKRecognitionController_replaceStrokes_withString_inBounds_inputScale_completion___block_invoke;
  v27[3] = &unk_1E82DBBF8;
  v28 = v15;
  v29 = v19;
  v26 = v15;
  [(PKRecognitionSessionManager *)v24 synthesizeDrawingForReplacementText:v16 drawing:v25 strokes:v17 bounds:v27 inputScale:x completion:y, width, height, a6];
}

void __84__PKRecognitionController_replaceStrokes_withString_inBounds_inputScale_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PKRecognitionController_replaceStrokes_withString_inBounds_inputScale_completion___block_invoke_2;
  block[3] = &unk_1E82DBBD0;
  v10 = *(a1 + 32);
  v19 = *(a1 + 40);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __84__PKRecognitionController_replaceStrokes_withString_inBounds_inputScale_completion___block_invoke_2(uint64_t a1)
{
  v2 = _PKSignpostLog();
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Synthesize replaceStrokes", "", buf, 2u);
  }

  v5 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "END Synthesize replaceStrokes", v7, 2u);
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)straightenStrokes:(id)a3 drawing:(id)a4 completionBlockWithStrokeTransformInfo:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    sessionManager = self->_sessionManager;
  }

  else
  {
    sessionManager = 0;
  }

  v28 = sessionManager;
  v27 = [(PKRecognitionSessionManager *)v28 session];
  v12 = [objc_alloc(MEMORY[0x1E6997BE0]) initWithRecognitionSession:v27];
  v13 = [PKStrokeProvider slicesForStrokes:v8];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      v19 = 0;
      do
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v33 + 1) + 8 * v19) strokeIdentifier];
        [v14 addObject:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v17);
  }

  v21 = [v9 copy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__PKRecognitionController_straightenStrokes_drawing_completionBlockWithStrokeTransformInfo___block_invoke;
  aBlock[3] = &unk_1E82DBC20;
  v31 = v8;
  v32 = v10;
  v30 = v21;
  v22 = v8;
  v23 = v21;
  v24 = v10;
  v25 = _Block_copy(aBlock);
  v26 = [v12 strokePointTransformationsForContextStrokes:v14 completionWithTelemetry:v25 shouldCancel:&__block_literal_global_43_0];
}

void __92__PKRecognitionController_straightenStrokes_drawing_completionBlockWithStrokeTransformInfo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  (*(*(a1 + 48) + 16))();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__PKRecognitionController_straightenStrokes_drawing_completionBlockWithStrokeTransformInfo___block_invoke_2;
  block[3] = &unk_1E82D7148;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __92__PKRecognitionController_straightenStrokes_drawing_completionBlockWithStrokeTransformInfo___block_invoke_2(uint64_t a1)
{
  v2 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v2 recordTextLineStraightening:0 withUndo:?];
}

+ (void)generateStrokeDataFromApplyingTransformations:(void *)a3@<X3> strokeGroups:(void *)a4@<X4> drawing:(void *)a5@<X8> originalStrokes:
{
  v57 = *MEMORY[0x1E69E9840];
  v40 = a1;
  v8 = a2;
  v9 = a3;
  v36 = a4;
  objc_opt_self();
  v45 = objc_opt_new();
  v44 = objc_opt_new();
  if ([v8 count])
  {
    v10 = 0;
    v38 = v9;
    v39 = v8;
    do
    {
      v11 = [v8 objectAtIndexedSubscript:{v10, v36}];
      v41 = v10;
      v12 = [v40 objectAtIndexedSubscript:v10];
      v42 = [MEMORY[0x1E695DF70] array];
      v13 = [MEMORY[0x1E695DFA0] orderedSet];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = v11;
      v14 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v52;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v52 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v51 + 1) + 8 * i);
            v19 = [v18 strokeUUID];
            v20 = [v9 _visibleStrokeForIdentifier:v19];

            if (v20)
            {
              v21 = [v18 strokeUUID];
              v22 = [v13 containsObject:v21];

              if ((v22 & 1) == 0)
              {
                v23 = [v18 strokeUUID];
                [v13 addObject:v23];

                [v42 addObject:v20];
              }
            }
          }

          v15 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v15);
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v24 = v42;
      v25 = [v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v48;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v48 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v47 + 1) + 8 * j);
            v30 = [v29 path];
            if (v29)
            {
              [v29 transform];
            }

            else
            {
              memset(v46, 0, sizeof(v46));
            }

            v31 = [v30 copyTransformed:v12 inCoordinateSpace:v46];
            v32 = [v29 _strokeUUID];
            [v45 setObject:v31 forKeyedSubscript:v32];

            v33 = [v29 _strokeMask];
            v34 = [v33 maskTransformedBy:v12];
            v35 = [v29 _strokeUUID];
            [v44 setObject:v34 forKeyedSubscript:v35];
          }

          v26 = [v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
        }

        while (v26);
      }

      v10 = v41 + 1;
      v8 = v39;
      v9 = v38;
    }

    while ([v39 count] > (v41 + 1));
  }

  *a5 = v36;
  a5[1] = v45;
  a5[2] = v44;
}

+ (id)changeStrokesUsingTransformations:(id)a3 strokeGroups:(id)a4 drawing:(id)a5 originalStrokes:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v24 = v9;
  v25 = v10;
  v26 = a6;
  v27 = v11;
  [(PKRecognitionController *)v9 generateStrokeDataFromApplyingTransformations:v10 strokeGroups:v11 drawing:v26 originalStrokes:&v32];
  v12 = v32;
  v13 = v33;
  v14 = v34;
  v15 = [v11 _originalStrokeDataUUIDToTransformedStrokeDictFromStrokes:v12 pathDict:v13 maskDict:v14];
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v12;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v18)
  {
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v28 + 1) + 8 * i) _strokeDataUUID];
        v22 = [v15 objectForKeyedSubscript:v21];

        if (v22)
        {
          [v16 addObject:v22];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v18);
  }

  return v16;
}

+ (id)undoCommandsToChangeStrokesUsingTransformations:(void *)a3 strokeGroups:(void *)a4 drawing:(void *)a5 originalStrokes:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_self();
  v17 = 0;
  v18 = 0;
  v19 = 0;
  [(PKRecognitionController *)v8 generateStrokeDataFromApplyingTransformations:v9 strokeGroups:v10 drawing:v11 originalStrokes:&v17];
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v15 = [v10 transformStrokes:v12 paths:v13 masks:v14];

  return v15;
}

+ (id)newStrokesFromApplyingTransformations:(id)a3 strokeGroups:(id)a4 drawing:(id)a5 originalStrokes:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  [(PKRecognitionController *)v9 generateStrokeDataFromApplyingTransformations:v10 strokeGroups:v11 drawing:v12 originalStrokes:&v18];
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v16 = [v11 _originalStrokeUUIDToTransformedStrokeDictFromStrokes:v13 pathDict:v14 maskDict:v15];

  return v16;
}

- (void)refineStrokes:(id)a3 drawing:(id)a4 inputScale:(double)a5 completion:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (self)
  {
    sessionManager = self->_sessionManager;
  }

  else
  {
    sessionManager = 0;
  }

  v28 = sessionManager;
  v14 = [(PKRecognitionSessionManager *)v28 session];
  v29 = v10;
  v15 = [PKStrokeProvider slicesForStrokes:v10];
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      v21 = 0;
      do
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v35 + 1) + 8 * v21) strokeIdentifier];
        [v16 addObject:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v19);
  }

  v23 = [v11 copy];
  v24 = [objc_alloc(MEMORY[0x1E6997BE8]) initWithRecognitionSession:v14];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __71__PKRecognitionController_refineStrokes_drawing_inputScale_completion___block_invoke;
  v30[3] = &unk_1E82DBC70;
  v31 = v23;
  v32 = self;
  v34 = a5;
  v33 = v12;
  v25 = v12;
  v26 = v23;
  v27 = [v24 refinedTokensForContextStrokes:v16 completion:v30 shouldCancel:&__block_literal_global_52];
}

void __71__PKRecognitionController_refineStrokes_drawing_inputScale_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v39 = a2;
  v38 = a3;
  v37 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [v39 count];
  v7 = [v38 count];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    v9 = 0;
    do
    {
      v41 = v9;
      v40 = [v39 objectAtIndexedSubscript:?];
      v42 = [v38 objectAtIndexedSubscript:v41];
      if ([v42 count])
      {
        v50 = 0;
        v51 = &v50;
        v52 = 0x3032000000;
        v53 = __Block_byref_object_copy__27;
        v54 = __Block_byref_object_dispose__27;
        v10 = *(a1 + 32);
        v11 = [v42 firstObject];
        v12 = [v11 strokeUUID];
        v55 = [v10 _visibleStrokeForIdentifier:v12];

        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __71__PKRecognitionController_refineStrokes_drawing_inputScale_completion___block_invoke_48;
        v47[3] = &unk_1E82DBC48;
        v48 = *(a1 + 32);
        v49 = &v50;
        [v42 enumerateObjectsUsingBlock:v47];
        if (v51[5])
        {
          v13 = *(a1 + 40);
          v14 = [v40 drawing];
          v15 = *(a1 + 56);
          v16 = v51[5];
          v17 = v14;
          v18 = v16;
          v19 = v18;
          if (v13)
          {
            if (v18)
            {
              v58[0] = v18;
              v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
            }

            else
            {
              v20 = MEMORY[0x1E695E0F0];
            }

            v22 = objc_opt_class();
            v23 = *(MEMORY[0x1E695EFD0] + 16);
            v56[0] = *MEMORY[0x1E695EFD0];
            v56[1] = v23;
            v56[2] = *(MEMORY[0x1E695EFD0] + 32);
            v24 = [PKStroke _createStrokesFromCHDrawing:v17 transform:v56 inputScale:v20 sourceStrokes:v22 strokeClass:0 newInk:1 suggestedHeight:v15 shouldSetSynthesizedFlag:-1.0];
            if (v19)
            {
            }
          }

          else
          {
            v24 = 0;
          }

          v21 = v24;
        }

        else
        {
          v21 = MEMORY[0x1E695E0F0];
        }

        v25 = v21;
        if ([v21 count])
        {
          [v37 addObjectsFromArray:v25];
          v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v25, "count")}];
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v27 = v42;
          v28 = [v27 countByEnumeratingWithState:&v43 objects:v57 count:16];
          if (v28)
          {
            v29 = *v44;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v44 != v29)
                {
                  objc_enumerationMutation(v27);
                }

                v31 = *(a1 + 32);
                v32 = [*(*(&v43 + 1) + 8 * i) strokeUUID];
                v33 = [v31 _visibleStrokeForIdentifier:v32];

                if (v33)
                {
                  [v26 addObject:v33];
                  [v5 addObject:v33];
                }
              }

              v28 = [v27 countByEnumeratingWithState:&v43 objects:v57 count:16];
            }

            while (v28);
          }

          [PKStroke _applyPropertiesToNewStrokes:v25 fromOldStrokes:v26];
        }

        _Block_object_dispose(&v50, 8);
      }

      v34 = [v39 count];
      v35 = [v38 count];
      v9 = v41 + 1;
      if (v34 >= v35)
      {
        v36 = v35;
      }

      else
      {
        v36 = v34;
      }
    }

    while (v9 < v36);
  }

  (*(*(a1 + 48) + 16))();
}

void __71__PKRecognitionController_refineStrokes_drawing_inputScale_completion___block_invoke_48(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 strokeUUID];
  obj = [v6 _visibleStrokeForIdentifier:v7];

  v8 = obj;
  if (obj)
  {
    v9 = [obj _isSynthesizedInk];
    v8 = obj;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
      v8 = obj;
      *a4 = 1;
    }
  }
}

+ (void)removeStrokesFromStyleInventory:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [PKStrokeProvider slicesForStrokes:a3];
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) encodedStrokeIdentifier];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [MEMORY[0x1E6997B78] updateStyleInventoryWithRemovedStrokeIdentifiers:v4];
}

+ (uint64_t)supportsCopyAsTextForStrokes:(uint64_t)a1
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = +[PKRecognitionSessionManager enabledLocales];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([MEMORY[0x1E6997B80] isLocaleSupported:*(*(&v14 + 1) + 8 * i) withMode:6])
        {

          v12 = 0u;
          v13 = 0u;
          v10 = 0u;
          v11 = 0u;
          v3 = v2;
          v4 = [v3 countByEnumeratingWithState:&v10 objects:v18 count:16];
          if (v4)
          {
            v7 = *v11;
            while (2)
            {
              for (j = 0; j != v4; ++j)
              {
                if (*v11 != v7)
                {
                  objc_enumerationMutation(v3);
                }

                if (![*(*(&v10 + 1) + 8 * j) _shapeType])
                {
                  v4 = 1;
                  goto LABEL_20;
                }
              }

              v4 = [v3 countByEnumeratingWithState:&v10 objects:v18 count:16];
              if (v4)
              {
                continue;
              }

              break;
            }
          }

          goto LABEL_20;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  return v4;
}

+ (uint64_t)supportsStraighteningForStrokes:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [(PKRecognitionController *)v3 supportsCopyAsTextForStrokes:v2];

  return v4;
}

+ (uint64_t)canSupportRefinementForStrokes:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      v10 = [v9 _isSynthesizedInk];
      if (([v9 _flags] & 0x20000000000) != 0)
      {
        break;
      }

      v6 |= v10 ^ 1;
      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  v6 = 0;
LABEL_11:

  return v6 & 1;
}

- (void)supportsRefinementForStrokes:(void *)a3 completionBlock:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (([PKRecognitionController canSupportRefinementForStrokes:v5]& 1) != 0)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __72__PKRecognitionController_supportsRefinementForStrokes_completionBlock___block_invoke;
      v7[3] = &unk_1E82D9ED0;
      v7[4] = a1;
      v8 = v6;
      [(PKRecognitionController *)a1 fetchTranscriptionForStrokes:v5 withCompletion:v7];
    }

    else
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

uint64_t __72__PKRecognitionController_supportsRefinementForStrokes_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 48);
  }

  else
  {
    v4 = 0;
  }

  [(PKRecognitionSessionManager *)v4 canSynthesizeDrawingForText:a2];
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)recognitionSessionManager:(id)a3 foundDataDetectorItems:(id)a4
{
  v8 = a4;
  [(_PKDataDetectorController *)self->_dataDetectorController _foundDataDetectorItems:v8];
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_internalDelegate);
    [v7 recognitionController:self foundDataDetectorItems:v8];
  }
}

- (void)recognitionSessionManager:(id)a3 foundHashtagItems:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_internalDelegate);
    [v7 recognitionController:self foundHashtagItems:v8];
  }
}

- (void)recognitionSessionManager:(id)a3 foundMentionItems:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_internalDelegate);
    [v7 recognitionController:self foundMentionItems:v8];
  }
}

- (void)recognitionSessionManager:(id)a3 foundProofreadingItems:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_internalDelegate);
    [v7 recognitionController:self foundProofreadingItems:v8];
  }
}

- (void)recognitionSessionManager:(id)a3 foundStrokeGroupItems:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (self->_mathRecognitionController)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__PKRecognitionController_recognitionSessionManager_foundStrokeGroupItems___block_invoke;
    v7[3] = &unk_1E82D6E70;
    v7[4] = self;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __75__PKRecognitionController_recognitionSessionManager_foundStrokeGroupItems___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mathRecognitionController];
  if (v2)
  {
    v3 = v2;
    [(PKMathRecognitionController *)v2 _foundStrokeGroups:1 canDelay:?];
    v2 = v3;
  }
}

- (id)setInternalDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 5, a2);
  }

  return result;
}

@end