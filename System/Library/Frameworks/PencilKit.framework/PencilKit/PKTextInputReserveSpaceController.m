@interface PKTextInputReserveSpaceController
- (BOOL)tapPointIsInPlaceholder:(CGPoint)a3;
- (CGPoint)_targetPointInElement;
- (CGRect)placeholderFrameInCoordinateSpace:(id)a3;
- (PKTextInputReserveSpaceController)initWithFeedbackController:(id)a3;
- (PKTextInputReserveSpaceControllerDelegate)delegate;
- (int64_t)_preferredInsertionLocation;
- (void)_finishAndResetStateInsertingWhitespace:(BOOL)a3;
- (void)_insertWhitespaceWithElement:(id)a3 atReferencePoint:(CGPoint)a4 completion:(id)a5;
- (void)_moveToContentLoadedIfReady;
- (void)_moveToInsertingPlaceholderIfReady;
- (void)_moveToShowingIntroIfReady;
- (void)_moveToShowingPlaceholderIfReady;
- (void)_setReserveSpaceState:(int64_t)a3;
- (void)_startDismissTimerWithDelay:(double)a3;
- (void)_updateReserveSpaceState;
- (void)beginIfPossibleWithElement:(id)a3 atLocation:(CGPoint)a4 coordinateSpace:(id)a5;
- (void)cancelReserveSpaceIntro;
- (void)finishReserveSpaceAndInsertWhitespace:(BOOL)a3;
- (void)reportDebugStateDescription:(id)a3;
- (void)reserveSpaceWhenReady;
- (void)setCanvasControllerIsDrawing:(BOOL)a3;
@end

@implementation PKTextInputReserveSpaceController

- (PKTextInputReserveSpaceController)initWithFeedbackController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKTextInputReserveSpaceController;
  v6 = [(PKTextInputReserveSpaceController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feedbackController, a3);
    v7->__wasAskedToReserveSpace = 0;
    v7->__insertionCharacterLocation = 0x7FFFFFFFFFFFFFFFLL;
    v7->__reserveSpaceState = 0;
  }

  return v7;
}

- (void)beginIfPossibleWithElement:(id)a3 atLocation:(CGPoint)a4 coordinateSpace:(id)a5
{
  y = a4.y;
  x = a4.x;
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = [(PKTextInputReserveSpaceController *)self isReserveSpaceActive];
  if (v9)
  {
    if (!v11)
    {
      v12 = [(PKTextInputElement *)v9 coordinateSpace];
      if (v12)
      {
        v13 = v12;
        v14 = [(PKTextInputElement *)v9 isEditableElement];

        if (v14)
        {
          if (([(PKTextInputElement *)v9 isFocused]& 1) != 0 || ([(PKTextInputElement *)v9 shouldPostponeFocusing]& 1) == 0)
          {
            v15 = os_log_create("com.apple.pencilkit", "PencilTextInput");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v23 = v9;
              _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "ReserveSpace: beginIfPossibleWithElement, element: %@", buf, 0xCu);
            }

            v16 = [(PKTextInputElement *)v9 coordinateSpace];
            v17 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v10, v16, x, y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
            v19 = v18;

            v26.origin.x = [(PKTextInputElement *)v9 frame];
            v25.x = v17;
            v25.y = v19;
            if (CGRectContainsPoint(v26, v25))
            {
              [(PKTextInputReserveSpaceController *)self _setReserveSpaceState:1];
              v20 = [(PKTextInputReserveSpaceController *)self delegate];
              [v20 reserveSpaceController:self willFocusElement:v9];

              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 3221225472;
              v21[2] = __91__PKTextInputReserveSpaceController_beginIfPossibleWithElement_atLocation_coordinateSpace___block_invoke;
              v21[3] = &unk_1E82DB3D8;
              v21[4] = self;
              *&v21[5] = v17;
              *&v21[6] = v19;
              [(PKTextInputElement *)v9 loadContentFocusingIfNeededWithReferencePoint:v21 alwaysSetSelectionFromReferencePoint:v17 rectOfInterest:v19 completion:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
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

    v6 = [(PKTextInputReserveSpaceController *)self _targetElementContent];
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 8);
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

- (void)finishReserveSpaceAndInsertWhitespace:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(PKTextInputReserveSpaceController *)self _reserveSpaceState];
  v6 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v7 = @"Y";
    }

    else
    {
      v7 = @"N";
    }

    v8 = [(PKTextInputReserveSpaceController *)self _targetElementContent];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 8);
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

  if (v5)
  {
    [(PKTextInputReserveSpaceController *)self _finishAndResetStateInsertingWhitespace:v3];
  }
}

- (void)_updateReserveSpaceState
{
  v3 = [(PKTextInputReserveSpaceController *)self _reserveSpaceState];
  if (v3 > 2)
  {
    if (v3 == 3)
    {

      [(PKTextInputReserveSpaceController *)self _moveToInsertingPlaceholderIfReady];
    }

    else if (v3 == 4)
    {

      [(PKTextInputReserveSpaceController *)self _moveToShowingPlaceholderIfReady];
    }
  }

  else if (v3 == 1)
  {

    [(PKTextInputReserveSpaceController *)self _moveToContentLoadedIfReady];
  }

  else if (v3 == 2)
  {

    [(PKTextInputReserveSpaceController *)self _moveToShowingIntroIfReady];
  }
}

- (void)_moveToContentLoadedIfReady
{
  v3 = [(PKTextInputReserveSpaceController *)self _targetElementContent];

  if (v3)
  {

    [(PKTextInputReserveSpaceController *)self _setReserveSpaceState:2];
  }
}

- (void)_moveToShowingIntroIfReady
{
  v6 = [(PKTextInputReserveSpaceController *)self _targetElementContent];
  v3 = [(PKTextInputReserveSpaceController *)self _preferredInsertionLocation];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PKTextInputReserveSpaceController *)self _finishAndResetStateInsertingWhitespace:0];
  }

  else
  {
    v4 = v3;
    [(PKTextInputReserveSpaceController *)self set_insertionCharacterLocation:v3];
    [(PKTextInputReserveSpaceController *)self _setReserveSpaceState:3];
    v5 = [(PKTextInputReserveSpaceController *)self feedbackController];
    [v5 setReferenceElementContent:v6 referenceRange:v4 feedbackType:{0, 3}];
  }
}

- (void)_moveToInsertingPlaceholderIfReady
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(PKTextInputReserveSpaceController *)self _wasAskedToReserveSpace]&& [(PKTextInputReserveSpaceController *)self _reserveSpaceState]== 3)
  {
    v3 = [(PKTextInputReserveSpaceController *)self _targetElementContent];
    v4 = [(PKTextInputElementContent *)v3 isSingleLineDocumentContent];
    if (v4)
    {
      v5 = 100.0;
    }

    else
    {
      v5 = 0.0;
    }

    if (v4)
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
      v9 = [(PKTextInputReserveSpaceController *)self _insertionCharacterLocation];
      v10 = [(PKTextInputReserveSpaceController *)self _targetElementContent];
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 8);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      *buf = 138412802;
      v21 = v8;
      v22 = 2048;
      v23 = v9;
      v24 = 2048;
      v25 = v13;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "ReserveSpace: ready, insert placeholder of size: %@, location: %ld, element: %p", buf, 0x20u);
    }

    v14 = [(PKTextInputReserveSpaceController *)self _insertionCharacterLocation];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__PKTextInputReserveSpaceController__moveToInsertingPlaceholderIfReady__block_invoke;
    v16[3] = &unk_1E82DB428;
    v16[4] = self;
    v17 = v3;
    v18 = v5;
    v19 = v6;
    v15 = v3;
    [(PKTextInputElementContent *)v15 selectTextInRange:v14 completion:0, v16];
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
  v3 = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
  if (v3)
  {
    v4 = v3;
    v5 = [(PKTextInputReserveSpaceController *)self _reserveSpaceState];

    if (v5 == 4)
    {
      [(PKTextInputReserveSpaceController *)self _startDismissTimerWithDelay:5.0];

      [(PKTextInputReserveSpaceController *)self _setReserveSpaceState:5];
    }
  }
}

- (void)_finishAndResetStateInsertingWhitespace:(BOOL)a3
{
  v5 = [(PKTextInputReserveSpaceController *)self feedbackController];
  [v5 cancelShowingReserveSpaceIntro];

  v6 = [(PKTextInputReserveSpaceController *)self _targetElementContent];
  v7 = [(PKTextInputReserveSpaceController *)self _textPlaceholder];

  if (v7 && v6)
  {
    v8 = [(PKTextInputReserveSpaceController *)self feedbackController];
    v9 = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
    [v8 endDisplayForReserveSpacePlaceholder:v9];

    v10 = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
    v11 = [v10 rects];
    v12 = [v11 firstObject];
    [v12 rect];
    v14 = v13;
    v16 = v15;

    v17 = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__PKTextInputReserveSpaceController__finishAndResetStateInsertingWhitespace___block_invoke;
    v19[3] = &unk_1E82DB450;
    v23 = a3;
    v19[4] = self;
    v20 = v6;
    v21 = v14;
    v22 = v16;
    [(PKTextInputElementContent *)v20 _removeTextPlaceholder:v17 willInsertText:0 completionHandler:v19];
  }

  [(PKTextInputReserveSpaceController *)self _setTargetElementContent:0];
  [(PKTextInputReserveSpaceController *)self set_targetPointInElement:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(PKTextInputReserveSpaceController *)self set_textPlaceholder:0];
  [(PKTextInputReserveSpaceController *)self set_insertionCharacterLocation:0x7FFFFFFFFFFFFFFFLL];
  [(PKTextInputReserveSpaceController *)self set_wasAskedToReserveSpace:0];
  v18 = [(PKTextInputReserveSpaceController *)self _dismissTimer];
  [v18 invalidate];

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

- (void)_setReserveSpaceState:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PKTextInputDescriptionForReserveSpaceState(self->__reserveSpaceState);
    v7 = PKTextInputDescriptionForReserveSpaceState(a3);
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "ReserveSpace: state changed %@ -> %@", &v12, 0x16u);
  }

  v8 = [(PKTextInputReserveSpaceController *)self isReserveSpaceActive];
  v9 = [(PKTextInputReserveSpaceController *)self isReserveSpacePlaceholderVisible];
  self->__reserveSpaceState = a3;
  if (v8 != [(PKTextInputReserveSpaceController *)self isReserveSpaceActive])
  {
    v10 = [(PKTextInputReserveSpaceController *)self delegate];
    [v10 reserveSpaceControllerIsActiveChanged:self];
  }

  if (v9 != [(PKTextInputReserveSpaceController *)self isReserveSpacePlaceholderVisible])
  {
    v11 = [(PKTextInputReserveSpaceController *)self delegate];
    [v11 reserveSpaceControllerIsPlaceholderVisibleChanged:self];
  }

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
  [(PKTextInputReserveSpaceController *)self _updateReserveSpaceState];
}

- (void)setCanvasControllerIsDrawing:(BOOL)a3
{
  v3 = a3;
  if ([(PKTextInputReserveSpaceController *)self _canvasControllerIsDrawing]!= a3)
  {
    [(PKTextInputReserveSpaceController *)self set_canvasControllerIsDrawing:v3];
    if (v3)
    {
      v5 = [(PKTextInputReserveSpaceController *)self _dismissTimer];
      [v5 invalidate];

      [(PKTextInputReserveSpaceController *)self set_dismissTimer:0];
    }

    else if ([(PKTextInputReserveSpaceController *)self isReserveSpaceActive])
    {

      [(PKTextInputReserveSpaceController *)self _startDismissTimerWithDelay:2.0];
    }
  }
}

- (void)_startDismissTimerWithDelay:(double)a3
{
  v5 = [(PKTextInputReserveSpaceController *)self _dismissTimer];
  [v5 invalidate];

  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__handleAutodismissTimer selector:0 userInfo:0 repeats:a3];
  [(PKTextInputReserveSpaceController *)self set_dismissTimer:v6];
}

- (int64_t)_preferredInsertionLocation
{
  v3 = [(PKTextInputReserveSpaceController *)self _targetElementContent];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [(PKTextInputElement *)v6 coordinateSpace];

  if (!v7)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_19;
  }

  v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  [(PKTextInputReserveSpaceController *)self _targetPointInElement];
  if (v4)
  {
    v11 = [(PKTextInputElementContent *)v4 characterIndexClosestToPoint:v7 inCoordinateSpace:0 forInsertingText:1 adjustForLastCharacter:v9, v10];
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
    v15 = [(PKTextInputElementContent *)v4 contentLength];
    v16 = v11 + 15 >= v15 ? v15 : v11 + 15;
    [(PKTextInputReserveSpaceController *)self _targetPointInElement];
    if (v14 < v16)
    {
      v19 = v17;
      v20 = v18;
      v21 = 0;
      v22 = v14;
      while (1)
      {
        [(PKTextInputElementContent *)v4 firstRectForRange:v22 inCoordinateSpace:1uLL, v7];
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
          v34 = [v8 characterIsMember:{objc_msgSend(v33, "characterAtIndex:", 0)}];
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

- (void)_insertWhitespaceWithElement:(id)a3 atReferencePoint:(CGPoint)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  v10 = a3;
  v11 = [(PKTextInputReserveSpaceController *)self delegate];
  [v11 reserveSpaceController:self willFocusElement:v10];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__PKTextInputReserveSpaceController__insertWhitespaceWithElement_atReferencePoint_completion___block_invoke;
  v17[3] = &unk_1E82DB4A0;
  v18 = v9;
  v12 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 8);
  v14 = *(MEMORY[0x1E695F050] + 16);
  v15 = *(MEMORY[0x1E695F050] + 24);
  v16 = v9;
  [(PKTextInputElement *)v10 loadContentFocusingIfNeededWithReferencePoint:v17 alwaysSetSelectionFromReferencePoint:x rectOfInterest:y completion:v12, v13, v14, v15];
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

- (CGRect)placeholderFrameInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  if ([(PKTextInputReserveSpaceController *)self isReserveSpacePlaceholderVisible])
  {
    v9 = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
    if (v9)
    {
      v10 = v9;
      v11 = [(PKTextInputReserveSpaceController *)self _targetElementContent];

      if (v11)
      {
        v12 = [(PKTextInputReserveSpaceController *)self _targetElementContent];
        v13 = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
        v5 = [(PKTextInputElementContent *)v12 frameForTextPlaceholder:v13 inCoordinateSpace:v4];
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

- (BOOL)tapPointIsInPlaceholder:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(PKTextInputReserveSpaceController *)self isReserveSpacePlaceholderVisible])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v6 = [(PKTextInputReserveSpaceController *)self _textPlaceholder];
    v7 = [v6 rects];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PKTextInputReserveSpaceController_tapPointIsInPlaceholder___block_invoke;
    v10[3] = &unk_1E82DB4C8;
    v10[4] = &v11;
    *&v10[5] = x;
    *&v10[6] = y;
    [v7 enumerateObjectsUsingBlock:v10];

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

- (void)reportDebugStateDescription:(id)a3
{
  v5 = a3;
  if ([(PKTextInputReserveSpaceController *)self isReserveSpaceActive])
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  v8 = *(a3 + 2);
  v7 = (a3 + 16);
  v8(v5, @"Reserve space active", v6);
  if ([(PKTextInputReserveSpaceController *)self isReserveSpacePlaceholderVisible])
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  (*v7)(v5, @"Placeholder visible", v9);
  v10 = PKTextInputDescriptionForReserveSpaceState([(PKTextInputReserveSpaceController *)self _reserveSpaceState]);
  (*v7)(v5, @"State", v10);
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