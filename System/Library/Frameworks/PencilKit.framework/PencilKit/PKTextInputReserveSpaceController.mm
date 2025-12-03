@interface PKTextInputReserveSpaceController
- (BOOL)tapPointIsInPlaceholder:(CGPoint)placeholder;
- (CGPoint)_targetPointInElement;
- (CGRect)placeholderFrameInCoordinateSpace:(id)space;
- (PKTextInputReserveSpaceController)initWithFeedbackController:(id)controller;
- (PKTextInputReserveSpaceControllerDelegate)delegate;
- (int64_t)_preferredInsertionLocation;
- (void)_finishAndResetStateInsertingWhitespace:(BOOL)whitespace;
- (void)_insertWhitespaceWithElement:(id)element atReferencePoint:(CGPoint)point completion:(id)completion;
- (void)_moveToContentLoadedIfReady;
- (void)_moveToInsertingPlaceholderIfReady;
- (void)_moveToShowingIntroIfReady;
- (void)_moveToShowingPlaceholderIfReady;
- (void)_setReserveSpaceState:(int64_t)state;
- (void)_startDismissTimerWithDelay:(double)delay;
- (void)_updateReserveSpaceState;
- (void)beginIfPossibleWithElement:(id)element atLocation:(CGPoint)location coordinateSpace:(id)space;
- (void)cancelReserveSpaceIntro;
- (void)finishReserveSpaceAndInsertWhitespace:(BOOL)whitespace;
- (void)reportDebugStateDescription:(id)description;
- (void)reserveSpaceWhenReady;
- (void)setCanvasControllerIsDrawing:(BOOL)drawing;
@end

@implementation PKTextInputReserveSpaceController

- (PKTextInputReserveSpaceController)initWithFeedbackController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PKTextInputReserveSpaceController;
  v6 = [(PKTextInputReserveSpaceController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedbackController, controller);
    v7->__wasAskedToReserveSpace = 0;
    v7->__insertionCharacterLocation = 0x7FFFFFFFFFFFFFFFLL;
    v7->__reserveSpaceState = 0;
  }

  return v7;
}

- (void)beginIfPossibleWithElement:(id)element atLocation:(CGPoint)location coordinateSpace:(id)space
{
  y = location.y;
  x = location.x;
  v24 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  spaceCopy = space;
  isReserveSpaceActive = [(PKTextInputReserveSpaceController *)self isReserveSpaceActive];
  if (elementCopy)
  {
    if (!isReserveSpaceActive)
    {
      coordinateSpace = [(PKTextInputElement *)elementCopy coordinateSpace];
      if (coordinateSpace)
      {
        v13 = coordinateSpace;
        isEditableElement = [(PKTextInputElement *)elementCopy isEditableElement];

        if (isEditableElement)
        {
          if (([(PKTextInputElement *)elementCopy isFocused]& 1) != 0 || ([(PKTextInputElement *)elementCopy shouldPostponeFocusing]& 1) == 0)
          {
            v15 = os_log_create("com.apple.pencilkit", "PencilTextInput");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v23 = elementCopy;
              _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "ReserveSpace: beginIfPossibleWithElement, element: %@", buf, 0xCu);
            }

            coordinateSpace2 = [(PKTextInputElement *)elementCopy coordinateSpace];
            v17 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(spaceCopy, coordinateSpace2, x, y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
            v19 = v18;

            v26.origin.x = [(PKTextInputElement *)elementCopy frame];
            v25.x = v17;
            v25.y = v19;
            if (CGRectContainsPoint(v26, v25))
            {
              [(PKTextInputReserveSpaceController *)self _setReserveSpaceState:1];
              delegate = [(PKTextInputReserveSpaceController *)self delegate];
              [delegate reserveSpaceController:self willFocusElement:elementCopy];

              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 3221225472;
              v21[2] = __91__PKTextInputReserveSpaceController_beginIfPossibleWithElement_atLocation_coordinateSpace___block_invoke;
              v21[3] = &unk_1E82DB3D8;
              v21[4] = self;
              *&v21[5] = v17;
              *&v21[6] = v19;
              [(PKTextInputElement *)elementCopy loadContentFocusingIfNeededWithReferencePoint:v21 alwaysSetSelectionFromReferencePoint:v17 rectOfInterest:v19 completion:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
            }
          }
        }
      }
    }
  }
}

void __91__PKTextInputReserveSpaceController_beginIfPossibleWithElement_atLocation_coordinateSpace___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) _reserveSpaceState];
  v4 = v8;
  if (v3 == 1)
  {
    if (v8)
    {
      v5 = *(v8 + 3);
      v6 = *(a1 + 32);
      if (v5)
      {
        v7 = v5 == 3;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        [v6 _setTargetElementContent:v8];
        [*(a1 + 32) set_targetPointInElement:{*(a1 + 40), *(a1 + 48)}];
        [*(a1 + 32) _updateReserveSpaceState];
LABEL_9:
        v4 = v8;
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *(a1 + 32);
    }

    [v6 _finishAndResetStateInsertingWhitespace:0];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)reserveSpaceWhenReady
{
  v3 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "ReserveSpace: reserveSpaceWhenReady", v4, 2u);
  }

  if ([(PKTextInputReserveSpaceController *)self isReserveSpaceActive])
  {
    [(PKTextInputReserveSpaceController *)self set_wasAskedToReserveSpace:1];
    [(PKTextInputReserveSpaceController *)self _updateReserveSpaceState];
  }
}

- (void)cancelReserveSpaceIntro
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PKTextInputReserveSpaceController *)self _reserveSpaceState]- 1;
  v4 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 >= 4)
    {
      v5 = @"N";
    }

    else
    {
      v5 = @"Y";
    }

    _targetElementContent = [(PKTextInputReserveSpaceController *)self _targetElementContent];
    v7 = _targetElementContent;
    if (_targetElementContent)
    {
      v8 = *(_targetElementContent + 8);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = 138412546;
    v11 = v5;
    v12 = 2048;
    v13 = v9;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "ReserveSpace: cancelIntro, canCancel: %@, element: %p", &v10, 0x16u);
  }

  if (v3 <= 3)
  {
    [(PKTextInputReserveSpaceController *)self _finishAndResetStateInsertingWhitespace:0];
  }
}

- (void)finishReserveSpaceAndInsertWhitespace:(BOOL)whitespace
{
  whitespaceCopy = whitespace;
  v16 = *MEMORY[0x1E69E9840];
  _reserveSpaceState = [(PKTextInputReserveSpaceController *)self _reserveSpaceState];
  v6 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (_reserveSpaceState)
    {
      v7 = @"Y";
    }

    else
    {
      v7 = @"N";
    }

    _targetElementContent = [(PKTextInputReserveSpaceController *)self _targetElementContent];
    v9 = _targetElementContent;
    if (_targetElementContent)
    {
      v10 = *(_targetElementContent + 8);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = 138412546;
    v13 = v7;
    v14 = 2048;
    v15 = v11;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "ReserveSpace: finish. Can finish and remove placeholder: %@, element: %p", &v12, 0x16u);
  }

  if (_reserveSpaceState)
  {
    [(PKTextInputReserveSpaceController *)self _finishAndResetStateInsertingWhitespace:whitespaceCopy];
  }
}

- (void)_updateReserveSpaceState
{
  _reserveSpaceState = [(PKTextInputReserveSpaceController *)self _reserveSpaceState];
  if (_reserveSpaceState > 2)
  {
    if (_reserveSpaceState == 3)
    {

      [(PKTextInputReserveSpaceController *)self _moveToInsertingPlaceholderIfReady];
    }

    else if (_reserveSpaceState == 4)
    {

      [(PKTextInputReserveSpaceController *)self _moveToShowingPlaceholderIfReady];
    }
  }

  else if (_reserveSpaceState == 1)
  {

    [(PKTextInputReserveSpaceController *)self _moveToContentLoadedIfReady];
  }

  else if (_reserveSpaceState == 2)
  {

    [(PKTextInputReserveSpaceController *)self _moveToShowingIntroIfReady];
  }
}

- (void)_moveToContentLoadedIfReady
{
  _targetElementContent = [(PKTextInputReserveSpaceController *)self _targetElementContent];

  if (_targetElementContent)
  {

    [(PKTextInputReserveSpaceController *)self _setReserveSpaceState:2];
  }
}

- (void)_moveToShowingIntroIfReady
{
  _targetElementContent = [(PKTextInputReserveSpaceController *)self _targetElementContent];
  _preferredInsertionLocation = [(PKTextInputReserveSpaceController *)self _preferredInsertionLocation];
  if (_preferredInsertionLocation == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PKTextInputReserveSpaceController *)self _finishAndResetStateInsertingWhitespace:0];
  }

  else
  {
    v4 = _preferredInsertionLocation;
    [(PKTextInputReserveSpaceController *)self set_insertionCharacterLocation:_preferredInsertionLocation];
    [(PKTextInputReserveSpaceController *)self _setReserveSpaceState:3];
    feedbackController = [(PKTextInputReserveSpaceController *)self feedbackController];
    [feedbackController setReferenceElementContent:_targetElementContent referenceRange:v4 feedbackType:{0, 3}];
  }
}

- (void)_moveToInsertingPlaceholderIfReady
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(PKTextInputReserveSpaceController *)self _wasAskedToReserveSpace]&& [(PKTextInputReserveSpaceController *)self _reserveSpaceState]== 3)
  {
    _targetElementContent = [(PKTextInputReserveSpaceController *)self _targetElementContent];
    isSingleLineDocumentContent = [(PKTextInputElementContent *)_targetElementContent isSingleLineDocumentContent];
    if (isSingleLineDocumentContent)
    {
      v5 = 100.0;
    }

    else
    {
      v5 = 0.0;
    }

    if (isSingleLineDocumentContent)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 30.0;
    }

    [(PKTextInputReserveSpaceController *)self _setReserveSpaceState:4];
    v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v27.width = v5;
      v27.height = v6;
      v8 = NSStringFromCGSize(v27);
      _insertionCharacterLocation = [(PKTextInputReserveSpaceController *)self _insertionCharacterLocation];
      _targetElementContent2 = [(PKTextInputReserveSpaceController *)self _targetElementContent];
      v11 = _targetElementContent2;
      if (_targetElementContent2)
      {
        v12 = *(_targetElementContent2 + 8);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      *buf = 138412802;
      v21 = v8;
      v22 = 2048;
      v23 = _insertionCharacterLocation;
      v24 = 2048;
      v25 = v13;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "ReserveSpace: ready, insert placeholder of size: %@, location: %ld, element: %p", buf, 0x20u);
    }

    _insertionCharacterLocation2 = [(PKTextInputReserveSpaceController *)self _insertionCharacterLocation];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__PKTextInputReserveSpaceController__moveToInsertingPlaceholderIfReady__block_invoke;
    v16[3] = &unk_1E82DB428;
    v16[4] = self;
    v17 = _targetElementContent;
    v18 = v5;
    v19 = v6;
    v15 = _targetElementContent;
    [(PKTextInputElementContent *)v15 selectTextInRange:_insertionCharacterLocation2 completion:0, v16];
  }
}

void __71__PKTextInputReserveSpaceController__moveToInsertingPlaceholderIfReady__block_invoke(uint64_t a1, int a2)
{
  if ([*(a1 + 32) _reserveSpaceState] == 4)
  {
    if (a2)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __71__PKTextInputReserveSpaceController__moveToInsertingPlaceholderIfReady__block_invoke_2;
      v6[3] = &unk_1E82DB400;
      v4 = *(a1 + 40);
      v6[4] = *(a1 + 32);
      v7 = v4;
      [(PKTextInputElementContent *)v7 _insertTextPlaceholderWithSize:v6 completionHandler:*(a1 + 48), *(a1 + 56)];
    }

    else
    {
      v5 = *(a1 + 32);

      [v5 _finishAndResetStateInsertingWhitespace:0];
    }
  }
}

void __71__PKTextInputReserveSpaceController__moveToInsertingPlaceholderIfReady__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(a1 + 32) _reserveSpaceState] == 4)
  {
    v3 = *(a1 + 32);
    if (v6)
    {
      [v3 set_textPlaceholder:?];
      v4 = [*(a1 + 32) feedbackController];
      v5 = [*(a1 + 32) _textPlaceholder];
      [v4 beginDisplayForReserveSpacePlaceholder:v5];

      [*(a1 + 32) _updateReserveSpaceState];
    }

    else
    {
      [v3 _finishAndResetStateInsertingWhitespace:?];
    }
  }

  else
  {
    [(PKTextInputElementContent *)*(a1 + 40) _removeTextPlaceholder:v6 willInsertText:0 completionHandler:&__block_literal_global_70];
  }
}

- (void)_moveToShowingPlaceholderIfReady
{
  _textPlaceholder = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
  if (_textPlaceholder)
  {
    v4 = _textPlaceholder;
    _reserveSpaceState = [(PKTextInputReserveSpaceController *)self _reserveSpaceState];

    if (_reserveSpaceState == 4)
    {
      [(PKTextInputReserveSpaceController *)self _startDismissTimerWithDelay:5.0];

      [(PKTextInputReserveSpaceController *)self _setReserveSpaceState:5];
    }
  }
}

- (void)_finishAndResetStateInsertingWhitespace:(BOOL)whitespace
{
  feedbackController = [(PKTextInputReserveSpaceController *)self feedbackController];
  [feedbackController cancelShowingReserveSpaceIntro];

  _targetElementContent = [(PKTextInputReserveSpaceController *)self _targetElementContent];
  _textPlaceholder = [(PKTextInputReserveSpaceController *)self _textPlaceholder];

  if (_textPlaceholder && _targetElementContent)
  {
    feedbackController2 = [(PKTextInputReserveSpaceController *)self feedbackController];
    _textPlaceholder2 = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
    [feedbackController2 endDisplayForReserveSpacePlaceholder:_textPlaceholder2];

    _textPlaceholder3 = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
    rects = [_textPlaceholder3 rects];
    firstObject = [rects firstObject];
    [firstObject rect];
    v14 = v13;
    v16 = v15;

    _textPlaceholder4 = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__PKTextInputReserveSpaceController__finishAndResetStateInsertingWhitespace___block_invoke;
    v19[3] = &unk_1E82DB450;
    whitespaceCopy = whitespace;
    v19[4] = self;
    v20 = _targetElementContent;
    v21 = v14;
    v22 = v16;
    [(PKTextInputElementContent *)v20 _removeTextPlaceholder:_textPlaceholder4 willInsertText:0 completionHandler:v19];
  }

  [(PKTextInputReserveSpaceController *)self _setTargetElementContent:0];
  [(PKTextInputReserveSpaceController *)self set_targetPointInElement:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(PKTextInputReserveSpaceController *)self set_textPlaceholder:0];
  [(PKTextInputReserveSpaceController *)self set_insertionCharacterLocation:0x7FFFFFFFFFFFFFFFLL];
  [(PKTextInputReserveSpaceController *)self set_wasAskedToReserveSpace:0];
  _dismissTimer = [(PKTextInputReserveSpaceController *)self _dismissTimer];
  [_dismissTimer invalidate];

  [(PKTextInputReserveSpaceController *)self set_dismissTimer:0];
  [(PKTextInputReserveSpaceController *)self _setReserveSpaceState:0];
}

void __77__PKTextInputReserveSpaceController__finishAndResetStateInsertingWhitespace___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (v3)
    {
      v3 = v3[1];
    }

    v5 = v3;
    [v4 _insertWhitespaceWithElement:v5 atReferencePoint:&__block_literal_global_32 completion:{*(a1 + 48), *(a1 + 56)}];
  }
}

- (void)_setReserveSpaceState:(int64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PKTextInputDescriptionForReserveSpaceState(self->__reserveSpaceState);
    v7 = PKTextInputDescriptionForReserveSpaceState(state);
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "ReserveSpace: state changed %@ -> %@", &v12, 0x16u);
  }

  isReserveSpaceActive = [(PKTextInputReserveSpaceController *)self isReserveSpaceActive];
  isReserveSpacePlaceholderVisible = [(PKTextInputReserveSpaceController *)self isReserveSpacePlaceholderVisible];
  self->__reserveSpaceState = state;
  if (isReserveSpaceActive != [(PKTextInputReserveSpaceController *)self isReserveSpaceActive])
  {
    delegate = [(PKTextInputReserveSpaceController *)self delegate];
    [delegate reserveSpaceControllerIsActiveChanged:self];
  }

  if (isReserveSpacePlaceholderVisible != [(PKTextInputReserveSpaceController *)self isReserveSpacePlaceholderVisible])
  {
    delegate2 = [(PKTextInputReserveSpaceController *)self delegate];
    [delegate2 reserveSpaceControllerIsPlaceholderVisibleChanged:self];
  }

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
  [(PKTextInputReserveSpaceController *)self _updateReserveSpaceState];
}

- (void)setCanvasControllerIsDrawing:(BOOL)drawing
{
  drawingCopy = drawing;
  if ([(PKTextInputReserveSpaceController *)self _canvasControllerIsDrawing]!= drawing)
  {
    [(PKTextInputReserveSpaceController *)self set_canvasControllerIsDrawing:drawingCopy];
    if (drawingCopy)
    {
      _dismissTimer = [(PKTextInputReserveSpaceController *)self _dismissTimer];
      [_dismissTimer invalidate];

      [(PKTextInputReserveSpaceController *)self set_dismissTimer:0];
    }

    else if ([(PKTextInputReserveSpaceController *)self isReserveSpaceActive])
    {

      [(PKTextInputReserveSpaceController *)self _startDismissTimerWithDelay:2.0];
    }
  }
}

- (void)_startDismissTimerWithDelay:(double)delay
{
  _dismissTimer = [(PKTextInputReserveSpaceController *)self _dismissTimer];
  [_dismissTimer invalidate];

  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__handleAutodismissTimer selector:0 userInfo:0 repeats:delay];
  [(PKTextInputReserveSpaceController *)self set_dismissTimer:v6];
}

- (int64_t)_preferredInsertionLocation
{
  _targetElementContent = [(PKTextInputReserveSpaceController *)self _targetElementContent];
  v4 = _targetElementContent;
  if (_targetElementContent)
  {
    v5 = *(_targetElementContent + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  coordinateSpace = [(PKTextInputElement *)v6 coordinateSpace];

  if (!coordinateSpace)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_19;
  }

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  [(PKTextInputReserveSpaceController *)self _targetPointInElement];
  if (v4)
  {
    v11 = [(PKTextInputElementContent *)v4 characterIndexClosestToPoint:coordinateSpace inCoordinateSpace:0 forInsertingText:1 adjustForLastCharacter:v9, v10];
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11 < [(PKTextInputElementContent *)v4 contentLength])
  {
    v13 = 15;
    if (v11 > 15)
    {
      v13 = v11;
    }

    v14 = v13 - 15;
    contentLength = [(PKTextInputElementContent *)v4 contentLength];
    v16 = v11 + 15 >= contentLength ? contentLength : v11 + 15;
    [(PKTextInputReserveSpaceController *)self _targetPointInElement];
    if (v14 < v16)
    {
      v19 = v17;
      v20 = v18;
      v21 = 0;
      v22 = v14;
      while (1)
      {
        [(PKTextInputElementContent *)v4 firstRectForRange:v22 inCoordinateSpace:1uLL, coordinateSpace];
        x = v43.origin.x;
        y = v43.origin.y;
        width = v43.size.width;
        height = v43.size.height;
        v42.x = v19;
        v42.y = v20;
        if (CGRectContainsPoint(v43, v42))
        {
          break;
        }

        v21 |= width == 0.0;
        if (v16 == ++v22)
        {
          goto LABEL_16;
        }
      }

      v28 = [(PKTextInputElementContent *)v4 rangeOfCharacterAtIndex:v22];
      v30 = v28 + v29;
      if ((v28 + v29) >= v16 - 1)
      {
        v32 = 0;
      }

      else
      {
        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = width;
        v44.size.height = height;
        MidX = CGRectGetMidX(v44);
        v32 = v19 >= MidX;
        if (v19 >= MidX)
        {
          v22 = v30;
        }
      }

      v40 = v30;
      v41 = v32;
      if (v4 && v22 >= 1 && *(v4 + 64))
      {
        v33 = [(PKTextInputElementContent *)v4 stringInRange:1];
        if ([v33 length] == 1)
        {
          v34 = [whitespaceCharacterSet characterIsMember:{objc_msgSend(v33, "characterAtIndex:", 0)}];
          v41 &= v34 ^ 1;
          if (v34)
          {
            --v22;
          }
        }
      }

      v35 = [(PKTextInputElementContent *)v4 stringInRange:v22, 1];
      IntPropertyValue = u_getIntPropertyValue([v35 characterAtIndex:0], UCHAR_GRAPHEME_CLUSTER_BREAK);

      v37 = v41;
      if (v41 && IntPropertyValue == 10 && v22 > v14)
      {
        v22 = v28;
      }

      else
      {
        if (IntPropertyValue != 10)
        {
          v37 = 1;
        }

        if (((v37 ^ 1) & v21) == 1 && v28 > v14)
        {
          v28 = [(PKTextInputElementContent *)v4 rangeOfCharacterAtIndex:?];
          v22 = v28;
        }

        else
        {
          if (v22 >= v16)
          {
            LOBYTE(v37) = 1;
          }

          v38 = IntPropertyValue == 10;
          if (v37)
          {
            goto LABEL_46;
          }

          v22 = v40;
          v28 = v40;
        }
      }

      v39 = [(PKTextInputElementContent *)v4 stringInRange:v28, 1];
      v38 = u_getIntPropertyValue([v39 characterAtIndex:0], UCHAR_GRAPHEME_CLUSTER_BREAK) == 10;

LABEL_46:
      if (v38)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v22;
      }

      goto LABEL_17;
    }
  }

LABEL_16:
  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_17:

LABEL_19:
  return v12;
}

- (void)_insertWhitespaceWithElement:(id)element atReferencePoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  elementCopy = element;
  delegate = [(PKTextInputReserveSpaceController *)self delegate];
  [delegate reserveSpaceController:self willFocusElement:elementCopy];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__PKTextInputReserveSpaceController__insertWhitespaceWithElement_atReferencePoint_completion___block_invoke;
  v17[3] = &unk_1E82DB4A0;
  v18 = completionCopy;
  v12 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 8);
  v14 = *(MEMORY[0x1E695F050] + 16);
  v15 = *(MEMORY[0x1E695F050] + 24);
  v16 = completionCopy;
  [(PKTextInputElement *)elementCopy loadContentFocusingIfNeededWithReferencePoint:v17 alwaysSetSelectionFromReferencePoint:x rectOfInterest:y completion:v12, v13, v14, v15];
}

void __94__PKTextInputReserveSpaceController__insertWhitespaceWithElement_atReferencePoint_completion___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(PKTextInputElementContent *)v3 isSingleLineDocumentContent];
  v5 = @"\n\n";
  if (v4)
  {
    v5 = @"  ";
  }

  v13[0] = v5;
  v6 = MEMORY[0x1E695DEC8];
  v7 = v5;
  v8 = [v6 arrayWithObjects:v13 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__PKTextInputReserveSpaceController__insertWhitespaceWithElement_atReferencePoint_completion___block_invoke_2;
  v10[3] = &unk_1E82DB478;
  v11 = v3;
  v12 = *(a1 + 32);
  v9 = v3;
  [(PKTextInputElementContent *)v9 insertTextsToCommit:v8 withAlternatives:&unk_1F47C1DA8 activePreviewText:0 replacingRange:0x7FFFFFFFFFFFFFFFLL completion:0, v10];
}

void __94__PKTextInputReserveSpaceController__insertWhitespaceWithElement_atReferencePoint_completion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [(PKTextInputElementContent *)*(a1 + 32) selectedRange];
    v5 = v4;
    if (v3)
    {
      v6 = v3 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 - 1;
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);

    [(PKTextInputElementContent *)v8 selectTextInRange:v7 completion:v5, v9];
  }
}

- (CGRect)placeholderFrameInCoordinateSpace:(id)space
{
  spaceCopy = space;
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  if ([(PKTextInputReserveSpaceController *)self isReserveSpacePlaceholderVisible])
  {
    _textPlaceholder = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
    if (_textPlaceholder)
    {
      v10 = _textPlaceholder;
      _targetElementContent = [(PKTextInputReserveSpaceController *)self _targetElementContent];

      if (_targetElementContent)
      {
        _targetElementContent2 = [(PKTextInputReserveSpaceController *)self _targetElementContent];
        _textPlaceholder2 = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
        v5 = [(PKTextInputElementContent *)_targetElementContent2 frameForTextPlaceholder:_textPlaceholder2 inCoordinateSpace:spaceCopy];
        v6 = v14;
        v7 = v15;
        v8 = v16;
      }
    }
  }

  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)tapPointIsInPlaceholder:(CGPoint)placeholder
{
  y = placeholder.y;
  x = placeholder.x;
  if ([(PKTextInputReserveSpaceController *)self isReserveSpacePlaceholderVisible])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    _textPlaceholder = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
    rects = [_textPlaceholder rects];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PKTextInputReserveSpaceController_tapPointIsInPlaceholder___block_invoke;
    v10[3] = &unk_1E82DB4C8;
    v10[4] = &v11;
    *&v10[5] = x;
    *&v10[6] = y;
    [rects enumerateObjectsUsingBlock:v10];

    v8 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL __61__PKTextInputReserveSpaceController_tapPointIsInPlaceholder___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 24))
  {
    result = 1;
  }

  else
  {
    [a2 rect];
    result = CGRectContainsPoint(v8, *(a1 + 40));
    v6 = *(*(a1 + 32) + 8);
  }

  *(v6 + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (void)reportDebugStateDescription:(id)description
{
  descriptionCopy = description;
  if ([(PKTextInputReserveSpaceController *)self isReserveSpaceActive])
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  v8 = *(description + 2);
  v7 = (description + 16);
  v8(descriptionCopy, @"Reserve space active", v6);
  if ([(PKTextInputReserveSpaceController *)self isReserveSpacePlaceholderVisible])
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  (*v7)(descriptionCopy, @"Placeholder visible", v9);
  v10 = PKTextInputDescriptionForReserveSpaceState([(PKTextInputReserveSpaceController *)self _reserveSpaceState]);
  (*v7)(descriptionCopy, @"State", v10);
}

- (PKTextInputReserveSpaceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)_targetPointInElement
{
  x = self->__targetPointInElement.x;
  y = self->__targetPointInElement.y;
  result.y = y;
  result.x = x;
  return result;
}

@end