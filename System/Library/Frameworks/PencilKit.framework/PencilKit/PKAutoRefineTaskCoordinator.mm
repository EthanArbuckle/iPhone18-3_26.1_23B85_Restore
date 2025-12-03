@interface PKAutoRefineTaskCoordinator
- (BOOL)hasRefinableStrokes;
- (BOOL)isRefinableStroke:(id)stroke;
- (id)initWithDelegate:(void *)delegate recognitionController:;
- (uint64_t)setUserInteractionDelay:(uint64_t)result;
- (void)autoRefineTask:(id)task synthesizeRefinedDrawingForStrokes:(id)strokes transcription:(id)transcription drawingUUID:(id)d completionBlock:(id)block;
- (void)clearRefinableStrokes;
- (void)enumerateRefinableStrokesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)indexRefinableStroke:(id *)stroke;
@end

@implementation PKAutoRefineTaskCoordinator

- (id)initWithDelegate:(void *)delegate recognitionController:
{
  v5 = a2;
  delegateCopy = delegate;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = PKAutoRefineTaskCoordinator;
    v7 = objc_msgSendSuper2(&v18, sel_init);
    self = v7;
    if (v7)
    {
      objc_storeWeak(v7 + 2, v5);
      objc_storeWeak(self + 1, delegateCopy);
      *(self + 24) = self[3] & 0xFE | objc_opt_respondsToSelector() & 1;
      if (objc_opt_respondsToSelector())
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      *(self + 24) = self[3] & 0xFD | v8;
      if (objc_opt_respondsToSelector())
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      *(self + 24) = self[3] & 0xFB | v9;
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v12 = [bundleIdentifier isEqualToString:@"com.apple.freeform"];

      if (v12)
      {
        self[4] = 0x3FD0000000000000;
      }

      if ((self[3] & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(self + 1);
        v14 = WeakRetained;
        if (WeakRetained)
        {
          v15 = *(WeakRetained + 6);
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;
        [(PKRecognitionSessionManager *)v16 setAutoRefineViewDelegate:self];
      }
    }
  }

  return self;
}

void __111__PKAutoRefineTaskCoordinator_autoRefineTask_synthesizeRefinedDrawingForStrokes_transcription_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, double a7, double a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__PKAutoRefineTaskCoordinator_autoRefineTask_synthesizeRefinedDrawingForStrokes_transcription_completionBlock___block_invoke_2;
  block[3] = &unk_1E82DA498;
  objc_copyWeak(v39, (a1 + 96));
  v38 = v18;
  *&v19 = *(a1 + 32);
  *(&v19 + 1) = *(a1 + 40);
  v27 = v19;
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  *&v22 = v20;
  *(&v22 + 1) = v21;
  v29 = v27;
  v30 = v22;
  v31 = *(a1 + 64);
  v32 = *(a1 + 72);
  v33 = v17;
  v34 = v16;
  v35 = v15;
  v39[1] = *(a1 + 104);
  v36 = *(a1 + 80);
  v37 = *(a1 + 88);
  v39[2] = a5;
  v39[3] = *&a7;
  v39[4] = *&a8;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v39);
}

void __111__PKAutoRefineTaskCoordinator_autoRefineTask_synthesizeRefinedDrawingForStrokes_transcription_completionBlock___block_invoke_2(uint64_t a1)
{
  v97[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 128));
  v69 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) autoRefineTaskCoordinatorCurrentStroke:WeakRetained];
    v67 = v3;
    v4 = v3;
    if (v3)
    {
      v97[0] = v3;
      v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:1];
      v4 = v67;
    }

    else
    {
      v68 = MEMORY[0x1E695E0F0];
    }

    if ((v69[24] & 4) != 0)
    {
      v5 = v4 == 0;
      v6 = [*(a1 + 32) autoRefineTaskCoordinatorRecentStrokes:*(a1 + 40)];

      if (v5)
      {
        v68 = v6;
      }

      else
      {
        v68 = [v6 arrayByAddingObject:v67];
      }
    }

    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    v12 = *(a1 + 88);
    v92 = 0;
    v93 = 0;
    v13 = [(PKAutoRefineTask *)v7 isInvalidatedGivenDrawing:v8 autoRefineController:v9 currentStrokes:v68 inStrokesToReplace:v10 lineDrawing:v11 strokeGroups:v12 outStrokeGroupsToReplace:&v93 outStrokesToPreserve:&v92];
    v14 = v93;
    v66 = v92;
    v72 = v14;
    if (v13)
    {
      v15 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "Cancelling task since it's invalid", buf, 2u);
      }

      [(PKAutoRefineTask *)*(a1 + 48) cancel];
      v88 = 0;
      v89 = &v88;
      v90 = 0x2020000000;
      v91 = 0;
      goto LABEL_27;
    }

    v88 = 0;
    v89 = &v88;
    v90 = 0x2020000000;
    v91 = 0;
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __111__PKAutoRefineTaskCoordinator_autoRefineTask_synthesizeRefinedDrawingForStrokes_transcription_completionBlock___block_invoke_8;
    v87[3] = &unk_1E82DA448;
    v87[4] = &v88;
    [v14 enumerateObjectsUsingBlock:v87];
    if (!v89[3])
    {
LABEL_27:
      v39 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v39, OS_LOG_TYPE_DEBUG, "Completed with no strokes to replace", buf, 2u);
      }

      (*(*(a1 + 120) + 16))();
      [(PKAutoRefineTask *)*(a1 + 48) strokesAnimationCompletedWithSuccess:?];
      goto LABEL_60;
    }

    v16 = os_log_create("com.apple.pencilkit", "AutoRefine");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v62 = [*(a1 + 96) count];
      v63 = [*(a1 + 80) strokeCount];
      v64 = [*(a1 + 72) count];
      *buf = 134218496;
      *&buf[4] = v62;
      *&buf[12] = 2048;
      *&buf[14] = v63;
      *&buf[22] = 2048;
      *&buf[24] = v64;
      _os_log_debug_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEBUG, "AutoRefine in view delegate callback inside the synthesis query call for %ld groups of strokes, %ld new strokes replacing %ld strokes", buf, 0x20u);
    }

    v71 = [MEMORY[0x1E695DF70] array];
    v70 = [MEMORY[0x1E695DF70] array];
    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (v17 < [*(a1 + 96) count])
    {
      v20 = *(a1 + 64);
      v21 = [v72 objectAtIndexedSubscript:v17];
      v85 = v18;
      v86 = v19;
      v22 = [(PKAutoRefineController *)v20 stableSynthesisParametersFromSourceStrokes:v21 outInk:&v86 outReferenceStroke:&v85];
      v23 = v86;

      v24 = v85;
      if (v22)
      {
        v25 = [*(a1 + 96) objectAtIndexedSubscript:v17];
        v26 = *(a1 + 136);
        v96 = v24;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
        v28 = objc_opt_class();
        v29 = *(MEMORY[0x1E695EFD0] + 16);
        *buf = *MEMORY[0x1E695EFD0];
        *&buf[16] = v29;
        v95 = *(MEMORY[0x1E695EFD0] + 32);
        v30 = [PKStroke _createStrokesFromCHDrawing:v25 transform:buf inputScale:v27 sourceStrokes:v28 strokeClass:v23 newInk:1 suggestedHeight:v26 shouldSetSynthesizedFlag:-1.0];

        [v71 addObjectsFromArray:v30];
        v31 = [v72 objectAtIndexedSubscript:v17];
        [v70 addObjectsFromArray:v31];

        v32 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v35 = [v30 count];
          v36 = [v72 objectAtIndexedSubscript:v17];
          v37 = [v36 count];
          v38 = [v23 description];
          *buf = 134218754;
          *&buf[4] = v17;
          *&buf[12] = 2048;
          *&buf[14] = v35;
          *&buf[22] = 2048;
          *&buf[24] = v37;
          LOWORD(v95) = 2112;
          *(&v95 + 2) = v38;
          _os_log_debug_impl(&dword_1C7CCA000, v32, OS_LOG_TYPE_DEBUG, "AutoRefine synthesis query call for group %ld: %ld new strokes replacing %ld strokes, innk = %@", buf, 0x2Au);
        }
      }

      else
      {
        v32 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v33 = [v72 objectAtIndexedSubscript:v17];
          v34 = [v33 count];
          *buf = 134218240;
          *&buf[4] = v17;
          *&buf[12] = 2048;
          *&buf[14] = v34;
          _os_log_debug_impl(&dword_1C7CCA000, v32, OS_LOG_TYPE_DEBUG, "AutoRefine synthesis query call for group %ld: keeping %ld old strokes unchanged due to variable ink", buf, 0x16u);
        }

        v30 = v32;
      }

      ++v17;
      v18 = v24;
      v19 = v23;
    }

    if ((v69[24] & 2) != 0)
    {
      v49 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v49, OS_LOG_TYPE_DEBUG, "Using delegate to replace strokes.", buf, 2u);
      }

      v50 = *(a1 + 48);
      if (v50)
      {
        *(v50 + 106) = 1;
      }

      v51 = [v71 count];
      if ([v71 count])
      {
        [*(a1 + 32) autoRefineTaskCoordinator:v69 replaceStrokes:v70 withRefinedStrokes:v71];
        [(PKSqueezePaletteViewContext *)*(a1 + 64) setSelectedColor:v18];
        [(PKMathResultAttribution *)*(a1 + 64) setDate:v19];
        [(PKAutoRefineController *)*(a1 + 64) removeAsRefinableStrokes:v70];
      }

      if (v51)
      {
        v52 = 1000000000;
      }

      else
      {
        v52 = 0;
      }

      v53 = dispatch_time(0, v52);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __111__PKAutoRefineTaskCoordinator_autoRefineTask_synthesizeRefinedDrawingForStrokes_transcription_completionBlock___block_invoke_12;
      block[3] = &unk_1E82D7908;
      v84 = *(a1 + 120);
      v83 = *(a1 + 48);
      dispatch_after(v53, MEMORY[0x1E69E96A0], block);

      v41 = v84;
    }

    else
    {
      if (![v71 count] || !*(a1 + 104))
      {
        (*(*(a1 + 120) + 16))();
        [(PKAutoRefineTask *)*(a1 + 48) strokesAnimationCompletedWithSuccess:?];
LABEL_59:

LABEL_60:
        _Block_object_dispose(&v88, 8);

        goto LABEL_61;
      }

      v40 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v40, OS_LOG_TYPE_DEBUG, "Replacing strokes with the undo command.", buf, 2u);
      }

      v41 = [*(a1 + 56) undoableAddNewStrokes:v71 replacingOldStrokes:v70];
      if (v41)
      {
        [(PKSqueezePaletteViewContext *)*(a1 + 64) setSelectedColor:v18];
        [(PKMathResultAttribution *)*(a1 + 64) setDate:v19];
        [(PKAutoRefineController *)*(a1 + 64) removeAsRefinableStrokes:v70];
        v42 = *(a1 + 48);
        if (v42)
        {
          *(v42 + 106) = 1;
        }

        v43 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v65 = [v70 count];
          *buf = 134217984;
          *&buf[4] = v65;
          _os_log_debug_impl(&dword_1C7CCA000, v43, OS_LOG_TYPE_DEBUG, "Animating refine for strokes: %lu", buf, 0xCu);
        }

        v44 = *(a1 + 56);
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __111__PKAutoRefineTaskCoordinator_autoRefineTask_synthesizeRefinedDrawingForStrokes_transcription_completionBlock___block_invoke_14;
        v73[3] = &unk_1E82DA470;
        v45 = *(a1 + 112);
        v74 = *(a1 + 104);
        v79 = *(a1 + 120);
        v75 = *(a1 + 48);
        v76 = v71;
        v77 = v70;
        v46 = v66;
        v47 = *(a1 + 144);
        v78 = v46;
        v80 = v47;
        v81 = *(a1 + 152);
        [v45 refineFrom:v77 to:v76 in:v44 completionHandler:v73];

        v48 = v74;
      }

      else
      {
        (*(*(a1 + 120) + 16))();
        [(PKAutoRefineTask *)*(a1 + 48) strokesAnimationCompletedWithSuccess:?];
        v54 = [PKAutoRefineLogEntry alloc];
        v55 = [(PKAutoRefineTask *)*(a1 + 48) locale];
        v56 = *(a1 + 48);
        v57 = 0.0;
        if (v56 && *(v56 + 105) == 1)
        {
          v57 = *(v56 + 64) - *(v56 + 56);
        }

        v58 = *(a1 + 144);
        v59 = [(PKAutoRefineTask *)v56 debugInfo];
        v48 = [(PKAutoRefineLogEntry *)v54 initWithRefinedStrokes:v71 originalStrokes:v70 unchangedStrokes:v66 locale:v55 refinedWordCount:v58 duration:1 isAutoRefined:v57 debugInfo:v59];

        v60 = +[PKHandwritingSynthesisLogger sharedHandwritingSynthesisLogger];
        [(PKHandwritingSynthesisLogger *)v60 addLogEntry:v48];

        if ([*(a1 + 104) delegateSupportsDidRefineStrokes])
        {
          v61 = [*(a1 + 104) delegate];
          [v61 canvasView:*(a1 + 104) didRefineStrokes:v70 withNewStrokes:v71];
        }
      }
    }

    goto LABEL_59;
  }

  (*(*(a1 + 120) + 16))();
LABEL_61:
}

uint64_t __111__PKAutoRefineTaskCoordinator_autoRefineTask_synthesizeRefinedDrawingForStrokes_transcription_completionBlock___block_invoke_8(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __111__PKAutoRefineTaskCoordinator_autoRefineTask_synthesizeRefinedDrawingForStrokes_transcription_completionBlock___block_invoke_12(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [(PKAutoRefineTask *)v2 strokesAnimationCompletedWithSuccess:?];
}

void __111__PKAutoRefineTaskCoordinator_autoRefineTask_synthesizeRefinedDrawingForStrokes_transcription_completionBlock___block_invoke_14(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4 canvasView];
    v23[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v4 canvasView:v5 registerUndoCommands:v6];
  }

  v7 = [*(a1 + 32) selectionController];
  v8 = v7;
  if (v7)
  {
    [(PKSelectionController *)v7 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
  }

  (*(*(a1 + 72) + 16))();
  [(PKAutoRefineTask *)*(a1 + 40) strokesAnimationCompletedWithSuccess:?];
  v9 = [PKAutoRefineLogEntry alloc];
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 48);
  v13 = [(PKAutoRefineTask *)*(a1 + 40) locale];
  v14 = *(a1 + 80);
  v15 = *(a1 + 40);
  v16 = 0.0;
  if (v15 && *(v15 + 105) == 1)
  {
    v16 = *(v15 + 64) - *(v15 + 56);
  }

  v17 = [(PKAutoRefineTask *)v15 debugInfo];
  v18 = [(PKAutoRefineLogEntry *)v9 initWithRefinedStrokes:v12 originalStrokes:v10 unchangedStrokes:v11 locale:v13 refinedWordCount:v14 duration:1 isAutoRefined:v16 debugInfo:v17];

  [(PKAutoRefineLogEntry *)v18 estimateMetricsWithTokenDeviation:*(a1 + 88) tokenHeight:*(a1 + 96)];
  v19 = +[PKHandwritingSynthesisLogger sharedHandwritingSynthesisLogger];
  [(PKHandwritingSynthesisLogger *)v19 addLogEntry:v18];

  v20 = *(a1 + 32);
  v21 = [v20 canvasView];
  [v20 _canvasView:v21 didCompleteRefinementEntry:v18];

  if ([*(a1 + 32) delegateSupportsDidRefineStrokes])
  {
    v22 = [*(a1 + 32) delegate];
    [v22 canvasView:*(a1 + 32) didRefineStrokes:*(a1 + 56) withNewStrokes:*(a1 + 48)];
  }
}

- (void)indexRefinableStroke:(id *)stroke
{
  if (stroke)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained(stroke + 1);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 6);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    [(PKRecognitionSessionManager *)v7 setAutoRefineViewDelegate:stroke];

    v8 = objc_loadWeakRetained(stroke + 2);
    v13 = [v8 autoRefineTaskCoordinatorAutoRefineController:stroke];

    [(PKAutoRefineController *)v13 indexRefinableStroke:v3];
    v9 = objc_loadWeakRetained(stroke + 1);
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 6);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    [(PKRecognitionSessionManager *)v12 updateWithRefinableStroke:v3];
  }
}

- (void)clearRefinableStrokes
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained autoRefineTaskCoordinatorAutoRefineController:self];

  [(PKAutoRefineController *)v4 clearRefinableStrokes];
}

- (BOOL)hasRefinableStrokes
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained autoRefineTaskCoordinatorAutoRefineController:self];

  if (v4)
  {
    v5 = [v4[1] count] > 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isRefinableStroke:(id)stroke
{
  strokeCopy = stroke;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained autoRefineTaskCoordinatorAutoRefineController:self];

  LOBYTE(WeakRetained) = [(PKAutoRefineController *)v6 isRefinableStroke:strokeCopy];
  return WeakRetained;
}

- (void)enumerateRefinableStrokesWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained autoRefineTaskCoordinatorAutoRefineController:self];

  if (v8)
  {
    [v8[1] enumerateObjectsWithOptions:options usingBlock:blockCopy];
  }
}

- (void)autoRefineTask:(id)task synthesizeRefinedDrawingForStrokes:(id)strokes transcription:(id)transcription drawingUUID:(id)d completionBlock:(id)block
{
  taskCopy = task;
  strokesCopy = strokes;
  transcriptionCopy = transcription;
  blockCopy = block;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v37 = taskCopy;
      v35 = transcriptionCopy;
      if (*&self->_delegateFlags)
      {
        v17 = objc_loadWeakRetained(&self->_delegate);
        v16 = [v17 autoRefineTaskCoordinatorTiledView:self];
      }

      else
      {
        v16 = 0;
      }

      v18 = [WeakRetained autoRefineTaskCoordinatorAutoRefineController:self];
      refineAnimationController = [v16 refineAnimationController];
      v19 = objc_loadWeakRetained(&self->_recognitionController);
      drawing = [v19 drawing];
      v21 = [drawing copy];

      v22 = objc_loadWeakRetained(&self->_recognitionController);
      v23 = v22;
      if (v22)
      {
        v24 = *(v22 + 6);
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      session = [(PKRecognitionSessionManager *)v25 session];
      if (v16)
      {
        [v16 inputScale];
        v28 = v27;
      }

      else
      {
        v28 = 1.0;
      }

      v29 = os_log_create("com.apple.pencilkit", "AutoRefine");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v29, OS_LOG_TYPE_DEBUG, "AutoRefine executeSynthesisWithSession session with last provider version.", buf, 2u);
      }

      objc_initWeak(location, self);
      *buf = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = __111__PKAutoRefineTaskCoordinator_autoRefineTask_synthesizeRefinedDrawingForStrokes_transcription_completionBlock___block_invoke;
      v43 = &unk_1E82DA4C0;
      objc_copyWeak(v52, location);
      v44 = WeakRetained;
      selfCopy = self;
      v30 = v37;
      v46 = v30;
      v31 = v21;
      v47 = v31;
      v32 = v18;
      v48 = v32;
      v49 = strokesCopy;
      v52[1] = *&v28;
      v33 = v16;
      v50 = v33;
      v34 = refineAnimationController;
      v51 = v34;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __111__PKAutoRefineTaskCoordinator_autoRefineTask_synthesizeRefinedDrawingForStrokes_transcription_completionBlock___block_invoke_2_19;
      v38[3] = &unk_1E82D6F70;
      v39 = blockCopy;
      [(PKAutoRefineTask *)v30 executeSynthesisWithSession:session processingBlock:buf completionBlock:v38];

      objc_destroyWeak(v52);
      objc_destroyWeak(location);

      taskCopy = v37;
      transcriptionCopy = v35;
    }

    else
    {
      blockCopy[2](blockCopy);
    }
  }
}

- (uint64_t)setUserInteractionDelay:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

@end