@interface PKTextInputHandwritingShot
+ (int)_contentTypeFromKeyboardType:(int64_t)a3;
+ (int)_contentTypeFromTextContentType:(id)a3;
- (BOOL)_shouldTargetFirstResponderElement:(id)a3 strokeIdentifiers:(id)a4;
- (BOOL)isPotentiallyTargetingElement:(id)a3;
- (NSArray)textInputTargets;
- (NSString)description;
- (PKTextInputHandwritingShot)initWithCanvasController:(id)a3 elementsController:(id)a4 languageSpec:(id)a5;
- (PKTextInputHandwritingShotDelegate)delegate;
- (_NSRange)_correctableTextRangeIntersectingStrokesWithIdentifiers:(id)a3 inInputTarget:(id)a4 elementContent:(id)a5;
- (_NSRange)_editingGestureCorrectableRangeForStrokeBounds:(CGRect)a3 InInputTarget:(id)a4 elementContent:(id)a5;
- (_NSRange)_selectedTextRangeForElementContent:(id)a3 textInputTarget:(id)a4 strokeSliceIdentifiers:(id)a5;
- (_NSRange)_substringReferenceRangeForStrokeCoveredRange:(_NSRange)a3 contentLength:(int64_t)a4 selectedRange:(_NSRange)a5;
- (id)_closestInputElementForStrokeIdentifiers:(id)a3;
- (id)_contentInfoFromElementContent:(id)a3 textInputTarget:(id)a4 strokeIdentifiers:(id)a5;
- (id)_protectedCharacterIndexesInRange:(_NSRange)a3 forElementContent:(id)a4;
- (id)_textContentSubstringInRange:(_NSRange)a3 forElementContent:(id)a4;
- (id)recognitionManager:(id)a3 textInputTargetForItemStableIdentifier:(id)a4 strokeIdentifiers:(id)a5 simultaneousItemStableIdentifiers:(id)a6;
- (id)submittedTargetContentInfoForRecognitionIdentifier:(id)a3;
- (id)textInputElementContentForRecognitionIdentifier:(id)a3;
- (id)textInputElementForRecognitionIdentifier:(id)a3;
- (int)_autoCapitalizationModeForTextInputTraits:(id)a3;
- (int)_autoCorrectionModeForTextInputTraits:(id)a3;
- (int)_contentTypeForElementContent:(id)a3;
- (int)chWritingDirectionFrom:(int64_t)a3 useDefault:(BOOL)a4;
- (void)_evaluateSubmissionReadyness;
- (void)_fetchTextInputElementsIfNeededWithReferenceHitPoint:(CGPoint)a3 referenceSearchArea:(CGRect)a4 referenceCoordSpace:(id)a5;
- (void)_loadAndSaveContentFocusingIfNeededForElement:(id)a3 referenceCanvasPoint:(CGPoint)a4 strokesBounds:(CGRect)a5 completion:(id)a6;
- (void)_saveSubmittedTargetContentInfo:(id)a3;
- (void)_setDidRequestTextInputElements:(BOOL)a3;
- (void)_setInputElementsByRecognitionID:(id)a3;
- (void)_setShotState:(int64_t)a3;
- (void)_setupStrokeProvider;
- (void)beginRecognitionWithRecognitionManager:(id)a3;
- (void)recognitionManager:(id)a3 fetchContentInfoForTextInputTarget:(id)a4 strokeIdentifiers:(id)a5 completion:(id)a6;
- (void)recognitionManager:(id)a3 recognitionDidFinishWithQueryItems:(id)a4 duration:(double)a5;
- (void)reportDebugStateDescription:(id)a3;
- (void)setInputDrawing:(id)a3 inputInProgressStroke:(id)a4;
@end

@implementation PKTextInputHandwritingShot

- (PKTextInputHandwritingShot)initWithCanvasController:(id)a3 elementsController:(id)a4 languageSpec:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PKTextInputHandwritingShot;
  v12 = [(PKTextInputHandwritingShot *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_canvasController, a3);
    objc_storeStrong(&v13->_elementsController, a4);
    objc_storeStrong(&v13->_languageSpec, a5);
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    inputElementsContentByRecognitionID = v13->__inputElementsContentByRecognitionID;
    v13->__inputElementsContentByRecognitionID = v14;
  }

  return v13;
}

- (NSString)description
{
  v3 = [PKTextInputDebugStateIntrospector debugStateLineDescriptionForIntrospectable:self];
  v7.receiver = self;
  v7.super_class = PKTextInputHandwritingShot;
  v4 = [(PKTextInputHandwritingShot *)&v7 description];
  v5 = [v4 stringByAppendingFormat:@" %@", v3];

  return v5;
}

- (void)setInputDrawing:(id)a3 inputInProgressStroke:(id)a4
{
  v37 = a3;
  v6 = a4;
  if (*&self->_inputDrawing != __PAIR128__(v6, v37))
  {
    [(PKTextInputHandwritingShot *)self shotState];
    if (!v6 || !self->_inputInProgressStroke)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      [(PKTextInputHandwritingShot *)self set_lastDrawingUpdateTimestamp:?];
    }

    v7 = [v37 copy];
    inputDrawing = self->_inputDrawing;
    self->_inputDrawing = v7;

    v9 = [v6 copy];
    inputInProgressStroke = self->_inputInProgressStroke;
    self->_inputInProgressStroke = v9;

    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    if (v37 | v6)
    {
      if (v6)
      {
        [v6 _bounds];
      }

      else
      {
        [v37 bounds];
      }

      v22 = v15;
      v23 = v16;
      v24 = v17;
      v25 = v18;
      MidX = CGRectGetMidX(*&v15);
      v39.origin.x = v22;
      v39.origin.y = v23;
      v39.size.width = v24;
      v39.size.height = v25;
      MidY = CGRectGetMidY(v39);
      if (v37)
      {
        [v37 bounds];
        x = v26;
        y = v27;
        width = v28;
        height = v29;
      }

      if (v6)
      {
        [v6 _bounds];
        v42.origin.x = v30;
        v42.origin.y = v31;
        v42.size.width = v32;
        v42.size.height = v33;
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        v41 = CGRectUnion(v40, v42);
        x = v41.origin.x;
        y = v41.origin.y;
        width = v41.size.width;
        height = v41.size.height;
      }

      v34 = [(PKTextInputHandwritingShot *)self canvasController];
      v19 = [(PKTextInputCanvasController *)v34 canvasCoordinateSpace];

      v20 = v36;
    }

    else
    {
      v19 = 0;
      v20 = *MEMORY[0x1E695EFF8];
      MidY = *(MEMORY[0x1E695EFF8] + 8);
    }

    [(PKTextInputHandwritingShot *)self _fetchTextInputElementsIfNeededWithReferenceHitPoint:v19 referenceSearchArea:v20 referenceCoordSpace:MidY, x, y, width, height];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    [(PKTextInputHandwritingShot *)self _evaluateSubmissionReadyness];
  }
}

- (void)_setInputElementsByRecognitionID:(id)a3
{
  v5 = a3;
  if (self->__inputElementsByRecognitionID != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__inputElementsByRecognitionID, a3);
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    [(PKTextInputHandwritingShot *)self _evaluateSubmissionReadyness];
    v5 = v6;
  }
}

- (void)_setShotState:(int64_t)a3
{
  self->_shotState = a3;
  v4 = [(PKTextInputHandwritingShot *)self delegate];
  [v4 handwritingShotDidChangeState:self];

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
}

- (void)_setDidRequestTextInputElements:(BOOL)a3
{
  if (self->__didRequestTextInputElements != a3)
  {
    self->__didRequestTextInputElements = a3;
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (void)_fetchTextInputElementsIfNeededWithReferenceHitPoint:(CGPoint)a3 referenceSearchArea:(CGRect)a4 referenceCoordSpace:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = a5;
  v13 = [(PKTextInputHandwritingShot *)self _inputElementsByRecognitionID];
  if (v13)
  {
  }

  else if (![(PKTextInputHandwritingShot *)self _didRequestTextInputElements])
  {
    [(PKTextInputHandwritingShot *)self _setDidRequestTextInputElements:1];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v15 = v14;
    v16 = [(PKTextInputHandwritingShot *)self elementsController];
    if (v16)
    {
      v17 = v16[6];
    }

    else
    {
      v17 = 0.0;
    }

    v18 = v15 - v17;

    if (v18 <= 1.0 && (([(PKTextInputHandwritingShot *)self elementsController], v19 = objc_claimAutoreleasedReturnValue(), (v20 = v19) == 0) ? (v21 = 0) : (v21 = *(v19 + 40)), v22 = v21, v20, v22))
    {
      [(PKTextInputHandwritingShot *)self _setInputElementsByRecognitionID:v22];
    }

    else
    {
      v23 = [(PKTextInputHandwritingShot *)self elementsController];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __123__PKTextInputHandwritingShot__fetchTextInputElementsIfNeededWithReferenceHitPoint_referenceSearchArea_referenceCoordSpace___block_invoke;
      v24[3] = &unk_1E82D7148;
      v24[4] = self;
      [(PKTextInputElementsController *)v23 updateTextInputElementsWithReferenceHitPoint:v12 referenceSearchArea:v24 referenceCoordSpace:v10 completion:v9, x, y, width, height];
    }
  }
}

void __123__PKTextInputHandwritingShot__fetchTextInputElementsIfNeededWithReferenceHitPoint_referenceSearchArea_referenceCoordSpace___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) elementsController];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 40);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [*(a1 + 32) _setInputElementsByRecognitionID:v5];
}

- (void)beginRecognitionWithRecognitionManager:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(PKTextInputHandwritingShot *)self _setShotState:3];
  [(PKTextInputHandwritingShot *)self _setupStrokeProvider];
  v6 = [(PKTextInputHandwritingShot *)self languageSpec];
  v7 = v6;
  if (v6)
  {
    [(PKTextInputRecognitionManager *)v5 setRecognitionLocales:?];
  }

  v8 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [(PKTextInputHandwritingShot *)self strokeProvider];
    v15 = 134218754;
    v16 = self;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = self;
    _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "HWShot %p %@, will begin recognition request, strokeProvider: %@, shot: <%@>", &v15, 0x2Au);
  }

  v11 = _PKSignpostLog();
  v12 = _PKSignpostLog();
  v13 = os_signpost_id_make_with_pointer(v12, self);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "HandwritingShot", "", &v15, 2u);
  }

  v14 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_INFO, "BEGIN HandwritingShot", &v15, 2u);
  }

  [(PKTextInputRecognitionManager *)v5 beginRecognitionRequestWithDataSource:?];
}

- (void)recognitionManager:(id)a3 recognitionDidFinishWithQueryItems:(id)a4 duration:(double)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = [a4 copy];
  [(PKTextInputHandwritingShot *)self _setResultQueryItems:v8];

  [(PKTextInputHandwritingShot *)self setRecognitionDuration:a5];
  v9 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    [(PKTextInputHandwritingShot *)self recognitionDuration];
    v18 = 134218754;
    v19 = self;
    v20 = 2112;
    v21 = v10;
    v22 = 2048;
    v23 = v11;
    v24 = 2112;
    v25 = self;
    _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "HWShot %p %@, finished recognition request in %0.3fs. Shot: <%@>", &v18, 0x2Au);
  }

  v12 = _PKSignpostLog();
  v13 = _PKSignpostLog();
  v14 = os_signpost_id_make_with_pointer(v13, self);

  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v12, OS_SIGNPOST_INTERVAL_END, v14, "HandwritingShot", "", &v18, 2u);
  }

  v15 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_INFO, "END HandwritingShot", &v18, 2u);
  }

  [(PKTextInputHandwritingShot *)self _setShotState:4];
  v16 = os_log_create("com.apple.pencilkit", "Latency");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    [(PKTextInputHandwritingShot *)self recognitionDuration];
    v18 = 134217984;
    v19 = v17;
    _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEFAULT, "Last recognition duration: %g", &v18, 0xCu);
  }
}

- (void)_evaluateSubmissionReadyness
{
  if (([(PKTextInputHandwritingShot *)self shotState]- 2) >= 3)
  {
    v3 = [(PKTextInputHandwritingShot *)self _inputElementsByRecognitionID];

    if (v3)
    {
      v4 = [(PKTextInputHandwritingShot *)self inputDrawing];
      if (v4)
      {
      }

      else
      {
        v5 = [(PKTextInputHandwritingShot *)self inputInProgressStroke];

        if (!v5)
        {
          return;
        }
      }

      if (![(PKTextInputHandwritingShot *)self shotState])
      {
        [(PKTextInputHandwritingShot *)self _setShotState:1];
      }

      v6 = +[PKTextInputSettings sharedSettings];
      v7 = [v6 continuousRecognition];

      v8 = 0.0;
      if ((v7 & 1) == 0)
      {
        v9 = +[PKTextInputSettings sharedSettings];
        [v9 recognitionCoalescingDelay];
        v8 = v10;
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v12 = v11;
      [(PKTextInputHandwritingShot *)self _lastDrawingUpdateTimestamp];
      v14 = v12 - v13;
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__evaluateSubmissionReadyness object:0];
      if (v14 >= v8)
      {

        [(PKTextInputHandwritingShot *)self _setShotState:2];
      }

      else
      {

        [(PKTextInputHandwritingShot *)self performSelector:sel__evaluateSubmissionReadyness withObject:0 afterDelay:v8 - v14];
      }
    }
  }
}

- (id)textInputElementForRecognitionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKTextInputHandwritingShot *)self _inputElementsByRecognitionID];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(PKTextInputHandwritingShot *)self elementsController];
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 40);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v6 = [v10 objectForKeyedSubscript:v4];
  }

  return v6;
}

- (id)textInputElementContentForRecognitionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKTextInputHandwritingShot *)self _inputElementsContentByRecognitionID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)isPotentiallyTargetingElement:(id)a3
{
  v4 = a3;
  v5 = [(PKTextInputHandwritingShot *)self _potentiallyTargetedElementRecognitionIDs];

  if (v5)
  {
    if (v4)
    {
      v6 = v4[14];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = [(PKTextInputHandwritingShot *)self _potentiallyTargetedElementRecognitionIDs];
      if (v4)
      {
        v9 = v4[14];
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      LOBYTE(v7) = [v8 containsIndex:{objc_msgSend(v10, "unsignedIntegerValue")}];
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (id)_closestInputElementForStrokeIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PKTextInputHandwritingShot *)self _inputElementsByRecognitionID];
  v6 = [(PKTextInputHandwritingShot *)self strokeProvider];
  [v6 centroidForSlicesWithIdentifiers:v4];
  v8 = v7;
  v10 = v9;
  [v6 boundsForSliceIdentifiers:v4];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0x7FEFFFFFFFFFFFFFLL;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__PKTextInputHandwritingShot__closestInputElementForStrokeIdentifiers___block_invoke;
  v17[3] = &unk_1E82D80A8;
  v17[7] = v8;
  v17[8] = v10;
  v17[9] = v11;
  v17[10] = v12;
  v17[11] = v13;
  v17[12] = v14;
  v17[4] = self;
  v17[5] = &v19;
  v17[6] = v18;
  [v5 enumerateKeysAndObjectsUsingBlock:v17];
  v15 = v20[5];
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v19, 8);

  return v15;
}

void __71__PKTextInputHandwritingShot__closestInputElementForStrokeIdentifiers___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = a3;
  v5 = [(PKTextInputElement *)v42 coordinateSpace];

  if (v5)
  {
    v6 = [*(a1 + 32) canvasController];
    v7 = [(PKTextInputElement *)v42 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(PKTextInputElement *)v42 coordinateSpace];
    v15 = [(PKTextInputCanvasController *)v6 convertRect:v14 toCanvasFromCoordinateSpace:v7, v9, v11, v13];
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v44.origin.x = v15;
    v44.origin.y = v17;
    v44.size.width = v19;
    v44.size.height = v21;
    v22 = 0.0;
    if (!CGRectContainsPoint(v44, *(a1 + 56)))
    {
      v23 = [(PKTextInputElement *)v42 hitToleranceFrameFromElementFrame:v15, v17, v19, v21];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      if (([(PKTextInputElement *)v42 isFocused]& 1) != 0 || (v45.origin.x = v23, v45.origin.y = v25, v45.size.width = v27, v45.size.height = v29, CGRectIntersectsRect(v45, *(a1 + 72))))
      {
        v30 = *(a1 + 56);
        v31 = *(a1 + 64);
        if (v30 >= v15)
        {
          v32 = v15 + v19;
          v33 = v30 <= v15 + v19;
          v15 = *(a1 + 56);
          if (!v33)
          {
            v15 = v32;
          }
        }

        if (v31 >= v17)
        {
          v34 = v17 + v21;
          v33 = v31 <= v17 + v21;
          v17 = *(a1 + 64);
          if (!v33)
          {
            v17 = v34;
          }
        }

        v22 = (v31 - v17) * (v31 - v17) + (v30 - v15) * (v30 - v15);
      }

      else
      {
        v22 = 1.79769313e308;
      }
    }

    v35 = *(*(a1 + 40) + 8);
    v38 = *(v35 + 40);
    v36 = (v35 + 40);
    v37 = v38;
    if (v38)
    {
      v39 = a1 + 48;
      if (vabdd_f64(v22, *(*(*(a1 + 48) + 8) + 24)) < 0.00999999978)
      {
        if (![(PKTextInputElement *)v42 isInFrontOfElement:v37])
        {
          goto LABEL_21;
        }

        v36 = (*(*(a1 + 40) + 8) + 40);
        goto LABEL_20;
      }
    }

    if (v22 != 1.79769313e308)
    {
      v41 = *(a1 + 48);
      v40 = a1 + 48;
      if (v22 <= *(*(v41 + 8) + 24))
      {
        v39 = v40;
LABEL_20:
        objc_storeStrong(v36, a3);
        *(*(*v39 + 8) + 24) = v22;
      }
    }
  }

LABEL_21:
}

- (void)_loadAndSaveContentFocusingIfNeededForElement:(id)a3 referenceCanvasPoint:(CGPoint)a4 strokesBounds:(CGRect)a5 completion:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4.y;
  v12 = a4.x;
  v14 = a3;
  v15 = a6;
  v16 = [(PKTextInputHandwritingShot *)self _inputElementsContentByRecognitionID];
  if (v14)
  {
    v17 = v14[14];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [v16 objectForKeyedSubscript:v18];

  if (v19)
  {
    v15[2](v15, v19);
  }

  else
  {
    v20 = [(PKTextInputElement *)v14 coordinateSpace];

    if (v20)
    {
      v21 = [(PKTextInputHandwritingShot *)self delegate];
      [v21 handwritingShot:self willFocusAndLoadDataForTargetElement:v14];

      v22 = [(PKTextInputHandwritingShot *)self canvasController];
      v23 = [(PKTextInputCanvasController *)v22 canvasCoordinateSpace];
      v24 = [(PKTextInputElement *)v14 coordinateSpace];
      v25 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v23, v24, v12, v11, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));

      v26 = [(PKTextInputElement *)v14 clampedReferencePoint:v25];
      v28 = v27;
      v29 = [(PKTextInputHandwritingShot *)self canvasController];
      v30 = [(PKTextInputCanvasController *)v29 canvasCoordinateSpace];
      v31 = [(PKTextInputElement *)v14 coordinateSpace];
      v32 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v30, v31, x, y, width, height);
      v34 = v33;
      v36 = v35;
      v38 = v37;

      if ([(PKTextInputHandwritingShot *)self cursorIsWeakAtStart])
      {
        v39 = ![(PKTextInputHandwritingShot *)self writingIsActiveAtStart];
      }

      else
      {
        v39 = 0;
      }

      v41 = [(PKTextInputElement *)v14 isFocused];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __122__PKTextInputHandwritingShot__loadAndSaveContentFocusingIfNeededForElement_referenceCanvasPoint_strokesBounds_completion___block_invoke;
      v42[3] = &unk_1E82D80F8;
      v49 = v41;
      v50 = v39;
      v42[4] = self;
      v45 = v12;
      v46 = v11;
      v43 = v14;
      v47 = v26;
      v48 = v28;
      v44 = v15;
      [(PKTextInputElement *)v43 loadContentFocusingIfNeededWithReferencePoint:v39 alwaysSetSelectionFromReferencePoint:v42 rectOfInterest:v26 completion:v28, v32, v34, v36, v38];
    }

    else
    {
      v40 = [[PKTextInputElementContent alloc] initWithElement:v14];
      v15[2](v15, v40);
    }
  }
}

void __122__PKTextInputHandwritingShot__loadAndSaveContentFocusingIfNeededForElement_referenceCanvasPoint_strokesBounds_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 88) != 1)
  {
LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  if (*(a1 + 89))
  {
LABEL_3:
    v5 = 1;
    goto LABEL_15;
  }

  v6 = [(PKTextInputElementContent *)v3 selectedRange];
  v8 = v7;
  v5 = 0;
  if (![*(a1 + 32) writingIsActiveAtStart] && !v8 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (([*(a1 + 32) cursorIsForcedStrongAtStart] & 1) == 0)
    {
      v9 = [*(a1 + 32) canvasController];
      v10 = [(PKTextInputCanvasController *)v9 canvasCoordinateSpace];
      v11 = [(PKTextInputElementContent *)v4 caretRectInCoordinateSpace:v10];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v31.origin.x = v11;
      v31.origin.y = v13;
      v31.size.width = v15;
      v31.size.height = v17;
      if (!CGRectIsNull(v31))
      {
        v32.origin.x = v11;
        v32.origin.y = v13;
        v32.size.width = v15;
        v32.size.height = v17;
        v18 = CGRectGetMidY(v32) - *(a1 + 64);
        v19 = v18 >= 0.0 ? v18 : -v18;
        v20 = +[PKTextInputSettings sharedSettings];
        [v20 strongCursorMaximumYDistance];
        v22 = v21;

        if (v19 > v22)
        {
          v23 = [*(a1 + 32) delegate];
          [v23 handwritingShotDidOverrideStrongCursor:*(a1 + 32)];

          goto LABEL_3;
        }
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  v24 = [*(a1 + 32) _inputElementsContentByRecognitionID];
  v25 = *(a1 + 40);
  if (v25)
  {
    v25 = v25[14];
  }

  v26 = v25;
  [v24 setObject:v4 forKeyedSubscript:v26];

  if (v5)
  {
    objc_initWeak(&location, v4);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __122__PKTextInputHandwritingShot__loadAndSaveContentFocusingIfNeededForElement_referenceCanvasPoint_strokesBounds_completion___block_invoke_2;
    v27[3] = &unk_1E82D80D0;
    v28 = *(a1 + 48);
    objc_copyWeak(&v29, &location);
    [(PKTextInputElementContent *)v4 setSelectionWithReferencePoint:v27 completionHandler:*(a1 + 72), *(a1 + 80)];
    objc_destroyWeak(&v29);

    objc_destroyWeak(&location);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __122__PKTextInputHandwritingShot__loadAndSaveContentFocusingIfNeededForElement_referenceCanvasPoint_strokesBounds_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained);
}

- (void)_setupStrokeProvider
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(PKTextInputHandwritingShot *)self inputDrawing];
  v16 = [(PKTextInputHandwritingShot *)self inputInProgressStroke];
  v4 = [(PKTextInputHandwritingShot *)self delegate];
  v5 = [v4 handwritingShotStrokeIdentifiersToExcludeFromRecognition:self];

  v6 = objc_alloc_init(PKDrawing);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = v3;
  v7 = [v3 strokes];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 _strokeUUID];
        v14 = [v5 containsObject:v13];

        if ((v14 & 1) == 0)
        {
          [(PKDrawing *)v6 addNewStroke:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if (v16)
  {
    [(PKDrawing *)v6 addNewStroke:v16];
  }

  v15 = [[PKTextInputStrokeProvider alloc] initWithDrawing:v6];
  [(PKTextInputHandwritingShot *)self setStrokeProvider:v15];
}

- (NSArray)textInputTargets
{
  v3 = [(PKTextInputHandwritingShot *)self _submittedTextInputTargets];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [(PKTextInputHandwritingShot *)self _inputElementsByRecognitionID];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __46__PKTextInputHandwritingShot_textInputTargets__block_invoke;
    v12 = &unk_1E82D68E0;
    v13 = self;
    v14 = v4;
    v6 = v4;
    [v5 enumerateKeysAndObjectsUsingBlock:&v9];
    [(PKTextInputHandwritingShot *)self set_submittedTextInputTargets:v6, v9, v10, v11, v12, v13];
  }

  v7 = [(PKTextInputHandwritingShot *)self _submittedTextInputTargets];

  return v7;
}

void __46__PKTextInputHandwritingShot_textInputTargets__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  v6 = [(PKTextInputElement *)v5 coordinateSpace];
  if (v6)
  {
    v7 = [*(a1 + 32) canvasController];
    v8 = [(PKTextInputElement *)v5 frame];
    v12 = [(PKTextInputCanvasController *)v7 convertRect:v6 toCanvasFromCoordinateSpace:v8, v9, v10, v11];
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [objc_alloc(MEMORY[0x1E6997BD0]) initWithIdentifier:v20 frame:{v12, v14, v16, v18}];
    [*(a1 + 40) addObject:v19];
  }
}

- (id)recognitionManager:(id)a3 textInputTargetForItemStableIdentifier:(id)a4 strokeIdentifiers:(id)a5 simultaneousItemStableIdentifiers:(id)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([v10 count])
  {
    v12 = v10;
    [(PKTextInputHandwritingShot *)self _inputElementsByRecognitionID];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = v55 = 0u;
    v13 = [v51 allValues];
    v14 = [v13 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v53;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v52 + 1) + 8 * v17);
        if (([(PKTextInputElement *)v18 isFocused]& 1) != 0)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v19 = v18;

      if (v19)
      {
        v20 = [v12 allObjects];
        v21 = [(PKTextInputHandwritingShot *)self _shouldTargetFirstResponderElement:v19 strokeIdentifiers:v20];

        if (v21)
        {
          v19 = v19;
          v22 = v19;
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_10:

      v19 = 0;
    }

    v23 = [v12 allObjects];
    v22 = [(PKTextInputHandwritingShot *)self _closestInputElementForStrokeIdentifiers:v23];

LABEL_15:
    v24 = [(PKTextInputHandwritingShot *)self delegate];

    if (v24)
    {
      v25 = [(PKTextInputHandwritingShot *)self delegate];
      v26 = [v25 handwritingShot:self preferredTargetElementForQueryItemStableIdentifier:v9 simultaneousItemStableIdentifiers:v11 proposedTargetElement:v22];

      v22 = v26;
    }

    if (v22)
    {
      v27 = [(PKTextInputElement *)v22 coordinateSpace];

      if (v27)
      {
        v28 = [(PKTextInputHandwritingShot *)self canvasController];
        v29 = [(PKTextInputElement *)v22 frame];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v36 = [(PKTextInputElement *)v22 coordinateSpace];
        v37 = [(PKTextInputCanvasController *)v28 convertRect:v36 toCanvasFromCoordinateSpace:v29, v31, v33, v35];
        v39 = v38;
        v41 = v40;
        v43 = v42;

        v44 = objc_alloc(MEMORY[0x1E6997BD0]);
        v45 = v22[14];
        v27 = [v44 initWithIdentifier:v45 frame:{v37, v39, v41, v43}];

        v46 = [(PKTextInputHandwritingShot *)self _potentiallyTargetedElementRecognitionIDs];

        if (!v46)
        {
          v47 = objc_alloc_init(MEMORY[0x1E696AD50]);
          [(PKTextInputHandwritingShot *)self set_potentiallyTargetedElementRecognitionIDs:v47];
        }

        v48 = [(PKTextInputHandwritingShot *)self _potentiallyTargetedElementRecognitionIDs];
        v49 = v22[14];
        [v48 addIndex:{objc_msgSend(v49, "unsignedIntegerValue")}];
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)_shouldTargetFirstResponderElement:(id)a3 strokeIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v8 = [(PKTextInputHandwritingShot *)self strokeProvider];
  [v8 boundsForSliceIdentifiers:v7];
  if (v29[3] & 1) != 0 || (v13 = v9, v14 = v10, v15 = v11, v16 = v12, -[PKTextInputHandwritingShot _inputElementsByRecognitionID](self, "_inputElementsByRecognitionID"), v17 = objc_claimAutoreleasedReturnValue(), v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v20[2] = __83__PKTextInputHandwritingShot__shouldTargetFirstResponderElement_strokeIdentifiers___block_invoke, v20[3] = &unk_1E82D8120, v22 = self, v23 = &v28, v21 = v6, v24 = v13, v25 = v14, v26 = v15, v27 = v16, [v17 enumerateKeysAndObjectsUsingBlock:v20], v21, v17, (v29[3]))
  {
    if ([(PKTextInputHandwritingShot *)self cursorIsWeakAtStart])
    {
      v18 = 0;
      *(v29 + 24) = 0;
    }

    else
    {
      v18 = *(v29 + 24);
    }
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v28, 8);
  return v18 & 1;
}

void __83__PKTextInputHandwritingShot__shouldTargetFirstResponderElement_strokeIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  if (v7)
  {
    v9 = *(v7 + 112);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v8 isEqualToNumber:v10];

  if (v11)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v12 = v31;
  }

  else
  {
    v13 = [(PKTextInputElement *)v31 coordinateSpace];

    v12 = v31;
    if (v13)
    {
      v14 = [*(a1 + 40) canvasController];
      v15 = [(PKTextInputElement *)v31 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [(PKTextInputElement *)v31 coordinateSpace];
      v23 = [(PKTextInputCanvasController *)v14 convertRect:v22 toCanvasFromCoordinateSpace:v15, v17, v19, v21];
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v33.origin.x = v23;
      v33.origin.y = v25;
      v33.size.width = v27;
      v33.size.height = v29;
      v34 = CGRectIntersection(v33, *(a1 + 56));
      IsNull = CGRectIsNull(v34);
      v12 = v31;
      if (!IsNull)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        *a4 = 1;
      }
    }
  }
}

- (void)recognitionManager:(id)a3 fetchContentInfoForTextInputTarget:(id)a4 strokeIdentifiers:(id)a5 completion:(id)a6
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(PKTextInputHandwritingShot *)self _submittedTargetContentInfoByTargetID];
  v14 = [v10 inputTargetIdentifier];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v15)
  {
    v12[2](v12, v15);
  }

  else
  {
    v16 = [v10 inputTargetIdentifier];
    v17 = [(PKTextInputHandwritingShot *)self textInputElementForRecognitionIdentifier:v16];

    if (v17 && ([(PKTextInputElement *)v17 coordinateSpace], v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
    {
      v19 = [v11 allObjects];
      v20 = [(PKTextInputHandwritingShot *)self strokeProvider];
      [v20 startingPointForSlicesWithIdentifiers:v19];
      v22 = v21;
      v24 = v23;

      v25 = [(PKTextInputHandwritingShot *)self strokeProvider];
      [v25 boundsForSliceIdentifiers:v19];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __113__PKTextInputHandwritingShot_recognitionManager_fetchContentInfoForTextInputTarget_strokeIdentifiers_completion___block_invoke;
      v36[3] = &unk_1E82D8148;
      v36[4] = self;
      v37 = v10;
      v38 = v11;
      v39 = v12;
      [(PKTextInputHandwritingShot *)self _loadAndSaveContentFocusingIfNeededForElement:v17 referenceCanvasPoint:v36 strokesBounds:v22 completion:v24, v27, v29, v31, v33];
    }

    else
    {
      v34 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = NSStringFromSelector(a2);
        *buf = 134218754;
        v41 = self;
        v42 = 2112;
        v43 = v35;
        v44 = 2112;
        v45 = v10;
        v46 = 2112;
        v47 = self;
        _os_log_error_impl(&dword_1C7CCA000, v34, OS_LOG_TYPE_ERROR, "HWShot %p %@, no element found for text input target %@. Returning nil content info. Shot: %@", buf, 0x2Au);
      }

      v12[2](v12, 0);
    }
  }
}

void __113__PKTextInputHandwritingShot_recognitionManager_fetchContentInfoForTextInputTarget_strokeIdentifiers_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _contentInfoFromElementContent:a2 textInputTarget:*(a1 + 40) strokeIdentifiers:*(a1 + 48)];
  [*(a1 + 32) _saveSubmittedTargetContentInfo:v3];
  (*(*(a1 + 56) + 16))();
}

- (id)submittedTargetContentInfoForRecognitionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKTextInputHandwritingShot *)self _submittedTargetContentInfoByTargetID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)_saveSubmittedTargetContentInfo:(id)a3
{
  v4 = a3;
  v5 = [(PKTextInputHandwritingShot *)self _submittedTargetContentInfoByTargetID];
  v8 = [v5 mutableCopy];

  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = [v4 textInputTarget];
  v7 = [v6 inputTargetIdentifier];
  [v8 setObject:v4 forKeyedSubscript:v7];

  [(PKTextInputHandwritingShot *)self set_submittedTargetContentInfoByTargetID:v8];
}

- (_NSRange)_selectedTextRangeForElementContent:(id)a3 textInputTarget:(id)a4 strokeSliceIdentifiers:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [(PKTextInputElementContent *)v9 selectedRange];
  v14 = v13;
  v15 = [(PKTextInputHandwritingShot *)self delegate];
  v16 = [v11 inputTargetIdentifier];

  v17 = [v15 handwritingShot:self inProgressGestureInitialSelectedRangeForElementRecognitionIdentifier:v16];
  v19 = v18;

  if (v17 == 0x7FFFFFFFFFFFFFFFLL || v17 + v19 > [(PKTextInputElementContent *)v9 contentLength])
  {
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v9)
      {
        v20 = v9[1];
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v22 = [(PKTextInputElement *)v21 isFocused];

      if (v22)
      {
        goto LABEL_14;
      }

      v23 = [(PKTextInputHandwritingShot *)self strokeProvider];
      [v23 centroidForSlicesWithIdentifiers:v10];
      v25 = v24;
      v27 = v26;

      v28 = [(PKTextInputHandwritingShot *)self canvasController];
      v29 = [(PKTextInputCanvasController *)v28 canvasCoordinateSpace];
      v30 = v29;
      if (v9)
      {
        v17 = [(PKTextInputElementContent *)v9 characterIndexClosestToPoint:v29 inCoordinateSpace:1 forInsertingText:1 adjustForLastCharacter:v25, v27];

        v19 = 0;
        v31 = 0x7FFFFFFFFFFFFFFFLL;
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_16;
        }
      }

      else
      {

        v17 = 0;
        v19 = 0;
      }
    }

    else
    {
      v17 = v12;
      v19 = v14;
    }
  }

  if (v19 + v17 <= [(PKTextInputElementContent *)v9 contentLength])
  {
    v31 = v17;
    goto LABEL_16;
  }

  v32 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v35 = NSStringFromSelector(a2);
    v53.location = v17;
    v53.length = v19;
    v36 = NSStringFromRange(v53);
    v37 = [(PKTextInputElementContent *)v9 contentLength];
    if (v9)
    {
      v38 = v9[1];
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    v40 = 134219266;
    v41 = self;
    v42 = 2112;
    v43 = v35;
    v44 = 2112;
    v45 = v36;
    v46 = 2048;
    v47 = v37;
    v48 = 2112;
    v49 = v39;
    v50 = 2112;
    v51 = self;
    _os_log_error_impl(&dword_1C7CCA000, v32, OS_LOG_TYPE_ERROR, "HWShot %p %@, Invalid selected range %@ for content length %ld. Reverting to undefined. Element: %@. Shot: %@.", &v40, 0x3Eu);
  }

LABEL_14:
  v19 = 0;
  v31 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_16:

  v33 = v31;
  v34 = v19;
  result.length = v34;
  result.location = v33;
  return result;
}

- (id)_contentInfoFromElementContent:(id)a3 textInputTarget:(id)a4 strokeIdentifiers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E6997B68]);
  [v11 setTextInputTarget:v9];
  [v11 setTextContentLength:-[PKTextInputElementContent contentLength](v8)];
  [v11 setActivePreviewRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
  [v11 setContentType:{-[PKTextInputHandwritingShot _contentTypeForElementContent:](self, "_contentTypeForElementContent:", v8)}];
  v12 = [(PKTextInputHandwritingShot *)self delegate];
  v13 = [v9 inputTargetIdentifier];
  [v11 setLastCharacterLevelPosition:{objc_msgSend(v12, "handwritingShot:lastCharacterLevelPositionForElementRecognitionIdentifier:", self, v13)}];

  v14 = [(PKTextInputElementContent *)v8 isSingleLineDocumentContent];
  [v11 setIsSingleLine:v14];
  if (objc_opt_respondsToSelector())
  {
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = [(PKTextInputElementContent *)v8 supportsAutoLineBreaks];
    }

    [v11 setSupportsAutoLineBreaks:v15];
  }

  [v11 setIsCursorStrong:{-[PKTextInputHandwritingShot cursorIsWeakAtStart](self, "cursorIsWeakAtStart") ^ 1}];
  if (v8)
  {
    v16 = v8[2];
    [v11 setAutoCapitalizationMode:{-[PKTextInputHandwritingShot _autoCapitalizationModeForTextInputTraits:](self, "_autoCapitalizationModeForTextInputTraits:", v16)}];

    v17 = v8[2];
  }

  else
  {
    [v11 setAutoCapitalizationMode:{-[PKTextInputHandwritingShot _autoCapitalizationModeForTextInputTraits:](self, "_autoCapitalizationModeForTextInputTraits:", 0)}];
    v17 = 0;
  }

  v18 = v17;
  [v11 setAutoCorrectionMode:{-[PKTextInputHandwritingShot _autoCorrectionModeForTextInputTraits:](self, "_autoCorrectionModeForTextInputTraits:", v18)}];

  v70 = [v10 allObjects];
  v19 = [(PKTextInputHandwritingShot *)self _selectedTextRangeForElementContent:v8 textInputTarget:v9 strokeSliceIdentifiers:?];
  [v11 setSelectedTextRange:{v19, v20}];
  v21 = [v9 inputTargetIdentifier];
  v22 = [(PKTextInputHandwritingShot *)self textInputElementForRecognitionIdentifier:v21];

  v69 = v10;
  v66 = v22;
  if (v22)
  {
    WeakRetained = objc_loadWeakRetained((v22 + 104));
  }

  else
  {
    WeakRetained = 0;
  }

  v24 = MEMORY[0x1E69DB7D0];
  v25 = [MEMORY[0x1E695DF58] currentLocale];
  v26 = [v25 languageIdentifier];
  v27 = [v24 defaultWritingDirectionForLanguage:v26];

  if (v8)
  {
    v28 = v8[1];
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v30 = [v29 activeAffectedRange];

  v65 = WeakRetained;
  if (v30 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8)
    {
      v31 = v8[9];
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    v33 = [v32 contextBefore];

    v34 = [v33 length];
    if (v34)
    {
      v27 = [v33 _isNaturallyRTL];
    }

    [v11 setBaseWritingDirection:{-[PKTextInputHandwritingShot chWritingDirectionFrom:useDefault:](self, "chWritingDirectionFrom:useDefault:", v27, v34 == 0)}];
  }

  else
  {
    v35 = [WeakRetained beginningOfDocument];
    v33 = [WeakRetained positionFromPosition:v35 offset:v30];

    v36 = [WeakRetained tokenizer];
    v37 = [v36 rangeEnclosingPosition:v33 withGranularity:4 inDirection:v27];
    v38 = [WeakRetained textInRange:v37];
    v39 = [v38 length];
    if (v39)
    {
      v27 = [v38 _isNaturallyRTL];
    }

    [v11 setBaseWritingDirection:{-[PKTextInputHandwritingShot chWritingDirectionFrom:useDefault:](self, "chWritingDirectionFrom:useDefault:", v27, v39 == 0)}];
  }

  v40 = [(PKTextInputHandwritingShot *)self strokeProvider];
  [v9 frame];
  v41 = [v40 slicesWithIdentifiers:v70 significantlyOverlapRect:?];

  [v11 setStrokeCoveredTextRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
  if (v41)
  {
    v42 = [(PKTextInputHandwritingShot *)self _correctableTextRangeIntersectingStrokesWithIdentifiers:v69 inInputTarget:v9 elementContent:v8];
    [v11 setStrokeCoveredTextRange:{v42, v43}];
  }

  v67 = v9;
  v44 = [v11 strokeCoveredTextRange];
  v46 = v45;
  v47 = [v11 textContentLength];
  v48 = [v11 selectedTextRange];
  v50 = [(PKTextInputHandwritingShot *)self _substringReferenceRangeForStrokeCoveredRange:v44 contentLength:v46 selectedRange:v47, v48, v49];
  v52 = v51;
  v53 = [(PKTextInputHandwritingShot *)self _textContentSubstringInRange:v50 forElementContent:v51, v8];
  if (v52 == [(__CFString *)v53 length])
  {
    v54 = 0;
  }

  else
  {
    v54 = [MEMORY[0x1E696AD60] string];
  }

  v55 = malloc_type_calloc(v52, 0x20uLL, 0x1000040E0EAB150uLL);
  v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 65532];
  if (v50 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v80[0] = 0;
    v80[1] = v80;
    v80[2] = 0x2020000000;
    v80[3] = 0;
    v56 = [(PKTextInputHandwritingShot *)self canvasController];
    v57 = [(PKTextInputCanvasController *)v56 canvasCoordinateSpace];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __95__PKTextInputHandwritingShot__contentInfoFromElementContent_textInputTarget_strokeIdentifiers___block_invoke;
    v71[3] = &unk_1E82D8170;
    v76 = v50;
    v77 = v52;
    v75 = v80;
    v71[4] = self;
    v78 = a2;
    v79 = v55;
    v72 = v54;
    v73 = v8;
    v74 = v68;
    [(PKTextInputElementContent *)v73 enumerateBoundsForCharactersInRange:v50 inCoordinateSpace:v52 reverse:v57 block:0, v71];

    _Block_object_dispose(v80, 8);
  }

  if (v54)
  {
    v58 = v54;
  }

  else if (v53)
  {
    v58 = v53;
  }

  else
  {
    v58 = &stru_1F476BD20;
  }

  [v11 setReferenceSubstring:v58 range:v50 characterRects:{v52, v55}];
  free(v55);
  v59 = [(PKTextInputHandwritingShot *)self _protectedCharacterIndexesInRange:v50 forElementContent:v52, v8];
  [v11 setProtectedCharacterIndexes:v59];

  v60 = [(PKTextInputHandwritingShot *)self delegate];
  v61 = [v67 inputTargetIdentifier];
  [v11 setContainsCommittedStrokes:{objc_msgSend(v60, "handwritingShot:hasCommittedResultsInSessionToElementRecognitionIdentifier:", self, v61)}];

  v62 = [v11 copy];

  return v62;
}

void __95__PKTextInputHandwritingShot__contentInfoFromElementContent_textInputTarget_strokeIdentifiers___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = *(*(*(a1 + 64) + 8) + 24);
  if (v8 >= *(a1 + 80))
  {
    v13 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = NSStringFromSelector(*(a1 + 88));
      v16 = *(*(*(a1 + 64) + 8) + 24);
      v17 = NSStringFromRange(*(a1 + 72));
      v18 = *(a1 + 32);
      v19 = 134219010;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2048;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "HWShot %p %@, character offset %ld beyond range %@ when enumerating char bounds. Shot: %@", &v19, 0x34u);
    }

    *a3 = 1;
  }

  else
  {
    v9 = (*(a1 + 96) + 32 * v8);
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    if (*(a1 + 40))
    {
      v10 = [*(a1 + 32) _textContentSubstringInRange:a2 forElementContent:{1, *(a1 + 48)}];
      v11 = v10;
      if ([v10 length] != 1)
      {
        v11 = *(a1 + 56);
      }

      [*(a1 + 40) appendString:v11];
    }

    ++*(*(*(a1 + 64) + 8) + 24);
  }
}

- (int)chWritingDirectionFrom:(int64_t)a3 useDefault:(BOOL)a4
{
  v4 = 254;
  v5 = 255;
  if (!a4)
  {
    v5 = 1;
  }

  v6 = 254;
  if (!a4)
  {
    v6 = 0;
  }

  if (!a3)
  {
    v4 = v6;
  }

  if (a3 == 1)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (_NSRange)_substringReferenceRangeForStrokeCoveredRange:(_NSRange)a3 contentLength:(int64_t)a4 selectedRange:(_NSRange)a5
{
  v8 = a3.location == 0x7FFFFFFFFFFFFFFFLL || a3.length == 0 || a3.location + a3.length > a4;
  if (v8)
  {
    length = 0;
  }

  else
  {
    length = a3.length;
  }

  if (v8)
  {
    location = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    location = a3.location;
  }

  if (a5.location == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_21:
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
    }

    else
    {
      v11 = length;
    }

    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      a5.location = a4;
    }

    else
    {
      a5.location = location;
    }

    goto LABEL_27;
  }

  v11 = 2000;
  if (a5.length < 0x7D0)
  {
    v11 = a5.length;
  }

  if (!v8)
  {
    v18.location = a5.location;
    v18.length = v11;
    v12 = NSUnionRange(a3, v18);
    length = v12.length;
    location = v12.location;
    goto LABEL_21;
  }

LABEL_27:
  v13 = 60;
  if (a5.location < 0x3C)
  {
    v13 = a5.location;
  }

  v14 = a5.location - v13;
  v15 = v11 + v13 + 60 - ((v11 + 60 - a4 + a5.location) & ~((v11 + 60 - a4 + a5.location) >> 63));
  result.length = v15;
  result.location = v14;
  return result;
}

- (int)_contentTypeForElementContent:(id)a3
{
  v3 = a3;
  v4 = [(PKTextInputElementContent *)v3 textContentType];
  if (v4)
  {
    v5 = [objc_opt_class() _contentTypeFromTextContentType:v4];
  }

  else
  {
    if (v3)
    {
      v6 = [v3[2] keyboardType];
    }

    else
    {
      v6 = 0;
    }

    v5 = [objc_opt_class() _contentTypeFromKeyboardType:v6];
  }

  v7 = v5;

  return v7;
}

- (int)_autoCapitalizationModeForTextInputTraits:(id)a3
{
  v3 = [a3 autocapitalizationType];
  if (v3 > 3)
  {
    return 3;
  }

  else
  {
    return dword_1C801CB30[v3];
  }
}

- (int)_autoCorrectionModeForTextInputTraits:(id)a3
{
  if ([a3 autocorrectionType] == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)_textContentSubstringInRange:(_NSRange)a3 forElementContent:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = v6;
  if (location == 0x7FFFFFFFFFFFFFFFLL || !length || ([(PKTextInputElementContent *)v6 stringInRange:length], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = &stru_1F476BD20;
  }

  return v8;
}

- (id)_protectedCharacterIndexesInRange:(_NSRange)a3 forElementContent:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = v6;
  if (location == 0x7FFFFFFFFFFFFFFFLL || !length || ([(PKTextInputElementContent *)v6 protectedCharacterIndexesInRange:length], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [MEMORY[0x1E696AC90] indexSet];
  }

  return v8;
}

- (_NSRange)_correctableTextRangeIntersectingStrokesWithIdentifiers:(id)a3 inInputTarget:(id)a4 elementContent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKTextInputHandwritingShot *)self delegate];
  v12 = [v9 inputTargetIdentifier];
  v13 = [v11 handwritingShot:self activePreviewRangeForElementRecognitionIdentifier:v12 queryItemStableIdentifier:0];
  v15 = v14;

  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v13 == 0x7FFFFFFFFFFFFFFFLL || !v15) && [(PKTextInputElementContent *)v10 contentLength])
  {
    v17 = [(PKTextInputHandwritingShot *)self strokeProvider];
    v18 = [v8 allObjects];
    [v17 boundsForSliceIdentifiers:v18];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = [(PKTextInputHandwritingShot *)self canvasController];
    v28 = [(PKTextInputCanvasController *)v27 canvasCoordinateSpace];

    v29 = [(PKTextInputHandwritingShot *)self delegate];
    v30 = [v29 handwritingShot:self shouldSuppressGesturesForStrokesBounds:v28 coordinateSpace:{v20, v22, v24, v26}];

    if ((v30 & 1) != 0 || (!v10 ? (v31 = 0) : (v31 = v10[1]), v32 = v31, [(PKTextInputElement *)v32 coordinateSpace], v33 = objc_claimAutoreleasedReturnValue(), v33, v32, !v33))
    {
      v35 = 0;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = [(PKTextInputHandwritingShot *)self _editingGestureCorrectableRangeForStrokeBounds:v9 InInputTarget:v10 elementContent:v20, v22, v24, v26];
      v35 = v34;
    }
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {
    v36 = v16;
  }

  else
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v37 = v36;
  v38 = v35;
  result.length = v38;
  result.location = v37;
  return result;
}

- (_NSRange)_editingGestureCorrectableRangeForStrokeBounds:(CGRect)a3 InInputTarget:(id)a4 elementContent:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v104 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v12)
  {
    v14 = v12[1];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [(PKTextInputElement *)v15 coordinateSpace];

  if (v16)
  {
    v17 = [(PKTextInputHandwritingShot *)self canvasController];
    v18 = [(PKTextInputCanvasController *)v17 canvasCoordinateSpace];

    v19 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v18, v16, x, y, width, height);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v69 = width;
    v70 = height;
    if (v13)
    {
      v26 = *(v13 + 8);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = [(PKTextInputElement *)v27 frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v106.origin.x = v19;
    v106.origin.y = v21;
    v106.size.width = v23;
    v106.size.height = v25;
    v112.origin.x = v28;
    v112.origin.y = v30;
    v112.size.width = v32;
    v112.size.height = v34;
    v107 = CGRectIntersection(v106, v112);
    v35 = v107.origin.x;
    v36 = v107.origin.y;
    v37 = v107.size.width;
    v38 = v107.size.height;
    v39 = [(PKTextInputElementContent *)v13 contentLength];
    if (v13)
    {
      v40 = [(PKTextInputElementContent *)v13 characterIndexClosestToPoint:v16 inCoordinateSpace:0 forInsertingText:1 adjustForLastCharacter:v35, v36];
    }

    else
    {
      v40 = 0;
    }

    v71 = v18;
    v108.origin.x = v35;
    v108.origin.y = v36;
    v108.size.width = v37;
    v108.size.height = v38;
    MaxX = CGRectGetMaxX(v108);
    if (v13)
    {
      v42 = [(PKTextInputElementContent *)v13 characterIndexClosestToPoint:v16 inCoordinateSpace:0 forInsertingText:1 adjustForLastCharacter:MaxX, v36];
    }

    else
    {
      v42 = 0;
    }

    v97 = 0;
    v98 = &v97;
    v99 = 0x2020000000;
    if (v40 >= v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = v40;
    }

    v100 = v43;
    v109.origin.x = v35;
    v109.origin.y = v36;
    v109.size.width = v37;
    v109.size.height = v38;
    MaxY = CGRectGetMaxY(v109);
    if (v13)
    {
      v45 = [(PKTextInputElementContent *)v13 characterIndexClosestToPoint:v16 inCoordinateSpace:0 forInsertingText:1 adjustForLastCharacter:v35, MaxY];
    }

    else
    {
      v45 = 0;
    }

    v110.origin.x = v35;
    v110.origin.y = v36;
    v110.size.width = v37;
    v110.size.height = v38;
    v46 = CGRectGetMaxX(v110);
    v111.origin.x = v35;
    v111.origin.y = v36;
    v111.size.width = v37;
    v111.size.height = v38;
    v47 = CGRectGetMaxY(v111);
    if (v13)
    {
      v48 = [(PKTextInputElementContent *)v13 characterIndexClosestToPoint:v16 inCoordinateSpace:0 forInsertingText:1 adjustForLastCharacter:v46, v47];
      v49 = v11;
    }

    else
    {
      v49 = v11;
      v48 = 0;
    }

    v93 = 0;
    v94 = &v93;
    v95 = 0x2020000000;
    if (v45 <= v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = v45;
    }

    v96 = v50;
    v51 = v39 - 1;
    v52 = 20;
    if (v40 == v39 - 1 && v42 == v51)
    {
      v53 = v71;
      if (v45 == v51)
      {
        v52 = 20;
        if (v39 - 2 <= 0x3E5 && v48 == v45)
        {
          v89 = 0;
          v90 = &v89;
          v91 = 0x2020000000;
          LOBYTE(v92) = 0;
          v84[0] = MEMORY[0x1E69E9820];
          v84[1] = 3221225472;
          v84[2] = __106__PKTextInputHandwritingShot__editingGestureCorrectableRangeForStrokeBounds_InInputTarget_elementContent___block_invoke;
          v84[3] = &unk_1E82D8198;
          v87 = &v89;
          v85 = v13;
          v86 = v16;
          v88 = v39;
          [(PKTextInputElementContent *)v85 enumerateBoundsForCharactersInRange:1 inCoordinateSpace:v86 reverse:0 block:v84];
          if (*(v90 + 24) == 1)
          {
            v54 = os_log_create("com.apple.pencilkit", "PencilTextInput");
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 134217984;
              *(&buf + 4) = self;
              _os_log_impl(&dword_1C7CCA000, v54, OS_LOG_TYPE_DEFAULT, "HWShot %p, detected buggy characterIndexClosestToPoint.", &buf, 0xCu);
            }

            v98[3] = 0;
            v94[3] = v45;
          }

          else
          {
            v45 = 20;
          }

          _Block_object_dispose(&v89, 8);
          v52 = v45;
        }
      }
    }

    else
    {
      v53 = v71;
    }

    v57 = v98[3];
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    if (v57 == 0x7FFFFFFFFFFFFFFFLL || v94[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v55 = 0;
      v11 = v49;
    }

    else
    {
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __106__PKTextInputHandwritingShot__editingGestureCorrectableRangeForStrokeBounds_InInputTarget_elementContent___block_invoke_52;
      v83[3] = &unk_1E82D81C0;
      v58 = (v57 - v52) & ~((v57 - v52) >> 63);
      if (v57 >= v52)
      {
        v57 = v52;
      }

      *&v83[5] = v35;
      *&v83[6] = v36;
      *&v83[7] = v37;
      *&v83[8] = v38;
      v83[4] = &v97;
      [(PKTextInputElementContent *)v13 enumerateBoundsForCharactersInRange:v58 inCoordinateSpace:v57 + 1 reverse:v16 block:1, v83];
      v59 = v94[3];
      v82[0] = MEMORY[0x1E69E9820];
      if (v52 >= (v39 - v59))
      {
        v60 = v39 - v59;
      }

      else
      {
        v60 = v52;
      }

      v82[1] = 3221225472;
      v82[2] = __106__PKTextInputHandwritingShot__editingGestureCorrectableRangeForStrokeBounds_InInputTarget_elementContent___block_invoke_2;
      v82[3] = &unk_1E82D81C0;
      *&v82[5] = v35;
      *&v82[6] = v36;
      *&v82[7] = v37;
      *&v82[8] = v38;
      v82[4] = &v93;
      [(PKTextInputElementContent *)v13 enumerateBoundsForCharactersInRange:v59 inCoordinateSpace:v60 reverse:v16 block:0, v82];
      v61 = v98[3];
      v62 = v94[3] - v61;
      v89 = 0;
      v90 = &v89;
      v91 = 0x2020000000;
      v92 = 0x7FFFFFFFFFFFFFFFLL;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v102 = 0x2020000000;
      v103 = 0;
      v78 = 0;
      v79 = &v78;
      v80 = 0x2020000000;
      v81 = 0x7FFFFFFFFFFFFFFFLL;
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __106__PKTextInputHandwritingShot__editingGestureCorrectableRangeForStrokeBounds_InInputTarget_elementContent___block_invoke_3;
      v77[3] = &unk_1E82D81E8;
      *&v77[7] = v35;
      *&v77[8] = v36;
      *&v77[9] = v37;
      *&v77[10] = v38;
      v77[4] = &buf;
      v77[5] = &v89;
      v77[6] = &v78;
      [(PKTextInputElementContent *)v13 enumerateBoundsForCharactersInRange:v61 inCoordinateSpace:v62 + 1 reverse:v16 block:0, v77];
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
      v76 = 0x7FFFFFFFFFFFFFFFLL;
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __106__PKTextInputHandwritingShot__editingGestureCorrectableRangeForStrokeBounds_InInputTarget_elementContent___block_invoke_4;
      v72[3] = &unk_1E82D81E8;
      *&v72[7] = v35;
      *&v72[8] = v36;
      *&v72[9] = v37;
      *&v72[10] = v38;
      v72[4] = &buf;
      v72[5] = &v89;
      v72[6] = &v73;
      [(PKTextInputElementContent *)v13 enumerateBoundsForCharactersInRange:v61 inCoordinateSpace:v62 + 1 reverse:v16 block:1, v72];
      v63 = v74[3];
      v11 = v49;
      v53 = v71;
      if (v63 == 0x7FFFFFFFFFFFFFFFLL || v79[3] == 0x7FFFFFFFFFFFFFFFLL || v63 >= [(PKTextInputElementContent *)v13 contentLength])
      {
        if (v69 >= v70)
        {
          v64 = v69;
        }

        else
        {
          v64 = v70;
        }

        v56 = 0x7FFFFFFFFFFFFFFFLL;
        v55 = 0;
        if (v64 <= 10.0)
        {
          v65 = v90[3];
          if (v65 != 0x7FFFFFFFFFFFFFFFLL && v65 < v39)
          {
            v56 = [(PKTextInputElementContent *)v13 rangeOfCharacterAtIndex:v65];
            v55 = v66;
          }
        }
      }

      else
      {
        v56 = v79[3];
        v55 = v74[3] - v56 + 1;
      }

      _Block_object_dispose(&v73, 8);
      _Block_object_dispose(&v78, 8);
      _Block_object_dispose(&buf, 8);
      _Block_object_dispose(&v89, 8);
    }

    _Block_object_dispose(&v93, 8);
    _Block_object_dispose(&v97, 8);
  }

  else
  {
    v55 = 0;
    v56 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v67 = v56;
  v68 = v55;
  result.length = v68;
  result.location = v67;
  return result;
}

id *__106__PKTextInputHandwritingShot__editingGestureCorrectableRangeForStrokeBounds_InInputTarget_elementContent___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MidX = CGRectGetMidX(*&a2);
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  MidY = CGRectGetMidY(v13);
  result = *(a1 + 32);
  if (result)
  {
    result = [(PKTextInputElementContent *)result characterIndexClosestToPoint:0 inCoordinateSpace:1 forInsertingText:MidX adjustForLastCharacter:MidY];
  }

  *(*(*(a1 + 48) + 8) + 24) = result == (*(a1 + 56) - 1);
  return result;
}

BOOL __106__PKTextInputHandwritingShot__editingGestureCorrectableRangeForStrokeBounds_InInputTarget_elementContent___block_invoke_52(uint64_t a1, uint64_t a2, _BYTE *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v11.size.height = a7;
  v11.size.width = a6;
  v11.origin.y = a5;
  v11.origin.x = a4;
  result = CGRectIntersectsRect(*(a1 + 40), v11);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

BOOL __106__PKTextInputHandwritingShot__editingGestureCorrectableRangeForStrokeBounds_InInputTarget_elementContent___block_invoke_2(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v9.size.height = a6;
  v9.size.width = a5;
  v9.origin.y = a4;
  v9.origin.x = a3;
  result = CGRectIntersectsRect(*(a1 + 40), v9);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return result;
}

void __106__PKTextInputHandwritingShot__editingGestureCorrectableRangeForStrokeBounds_InInputTarget_elementContent___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  v15 = CGRectIntersection(*&a4, *(a1 + 56));
  if (v15.size.width >= v15.size.height)
  {
    width = v15.size.width;
  }

  else
  {
    width = v15.size.height;
  }

  v13 = *(*(a1 + 32) + 8);
  if (width > *(v13 + 24))
  {
    *(v13 + 24) = width;
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  if (v15.size.width > a6 * 0.5 || v15.size.height > a7 * 0.5)
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
    *a3 = 1;
  }
}

void __106__PKTextInputHandwritingShot__editingGestureCorrectableRangeForStrokeBounds_InInputTarget_elementContent___block_invoke_4(uint64_t a1, uint64_t a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  v15 = CGRectIntersection(*&a4, *(a1 + 56));
  if (v15.size.width >= v15.size.height)
  {
    width = v15.size.width;
  }

  else
  {
    width = v15.size.height;
  }

  v13 = *(*(a1 + 32) + 8);
  if (width > *(v13 + 24))
  {
    *(v13 + 24) = width;
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  if (v15.size.width > a6 * 0.5 || v15.size.height > a7 * 0.5)
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
    *a3 = 1;
  }
}

+ (int)_contentTypeFromTextContentType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E69DE588]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69DE480]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69DE4A0]])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69DE580]])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69DE578]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69DE4A8]])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)_contentTypeFromKeyboardType:(int64_t)a3
{
  if ((a3 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_1C801CB40[a3 - 1];
  }
}

- (void)reportDebugStateDescription:(id)a3
{
  v20 = a3;
  v4 = [(PKTextInputHandwritingShot *)self shotState];
  if (v4 > 4)
  {
    v5 = &stru_1F476BD20;
  }

  else
  {
    v5 = off_1E82D8208[v4];
  }

  v20[2](v20, @"state", v5);
  v6 = [(PKTextInputHandwritingShot *)self _inputElementsByRecognitionID];
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(PKTextInputHandwritingShot *)self _inputElementsByRecognitionID];
    v9 = [v7 stringWithFormat:@"%ld", objc_msgSend(v8, "count")];
  }

  else
  {
    v9 = @"Not ready";
  }

  v20[2](v20, @"inputElements", v9);
  if ([(PKTextInputHandwritingShot *)self _didRequestTextInputElements])
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  v20[2](v20, @"requestedElements", v10);
  v11 = [(PKTextInputHandwritingShot *)self inputDrawing];
  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(PKTextInputHandwritingShot *)self inputDrawing];
    v14 = [v13 strokes];
    v15 = [v12 stringWithFormat:@"%ld visible strokes", objc_msgSend(v14, "count")];
    v20[2](v20, @"inputDrawing", v15);
  }

  else
  {
    v20[2](v20, @"inputDrawing", @"None");
  }

  v16 = [(PKTextInputHandwritingShot *)self inputInProgressStroke];
  if (v16)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [(PKTextInputHandwritingShot *)self inputInProgressStroke];
    v19 = [v17 stringWithFormat:@"%lu points", objc_msgSend(v18, "_pointsCount")];
    v20[2](v20, @"inProgressStroke", v19);
  }

  else
  {
    v20[2](v20, @"inProgressStroke", @"None");
  }
}

- (PKTextInputHandwritingShotDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end