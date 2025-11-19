@interface PKTextInputElementContent
- (BOOL)_webInsertTextsToCommitPhase2:(void *)a3 withAlternatives:(void *)a4 activePreviewText:(uint64_t)a5 replacingRange:(uint64_t)a6 committedLength:(void *)a7;
- (BOOL)configureSelectionStyleForDeletionPreview;
- (BOOL)configureSelectionStyleForHighlight;
- (BOOL)configureSelectionStyleForNormalSelection;
- (BOOL)isValidRange:(uint64_t)a3;
- (double)caretRectForCharacterIndex:(void *)a3 inCoordinateSpace:;
- (double)caretRectForStartOfLineFromCharacterIndex:(void *)a3 coordinateSpace:(uint64_t *)a4 outCharacterIndex:;
- (double)caretRectInCoordinateSpace:(uint64_t)a1;
- (double)frameForTextPlaceholder:(void *)a3 inCoordinateSpace:;
- (id)description;
- (id)initWithElement:(id *)a1;
- (id)protectedCharacterIndexesInRange:(uint64_t)a3;
- (id)rectValuesForSelectionRects:(void *)a3 inCoordinateSpace:(int)a4 visibleOnly:;
- (id)selectionRectsForRange:(uint64_t)a3 inCoordinateSpace:(void *)a4 visibleOnly:(int)a5;
- (id)stringInRange:(uint64_t)a3;
- (id)textContentType;
- (uint64_t)_isLastCharacterNewline;
- (uint64_t)characterIndexClosestToPoint:(uint64_t)a3 inCoordinateSpace:(uint64_t)a4 forInsertingText:(double)a5 adjustForLastCharacter:(double)a6;
- (uint64_t)contentLength;
- (uint64_t)hasLinkAtCharacterIndex:(void *)a3 location:(double)a4 coordinateSpace:(double)a5;
- (uint64_t)indexOfLastNonWhitespaceCharacter;
- (uint64_t)isSingleLineDocumentContent;
- (uint64_t)rangeOfCharacterAtIndex:(uint64_t)a1;
- (uint64_t)selectedRange;
- (uint64_t)supportsAutoLineBreaks;
- (void)_insertTextPlaceholderWithSize:(double)a3 completionHandler:(double)a4;
- (void)_removeTextPlaceholder:(uint64_t)a3 willInsertText:(void *)a4 completionHandler:;
- (void)_textInput_enumerateBoundsForCharactersInRange:(uint64_t)a3 inCoordinateSpace:(void *)a4 reverse:(char)a5 block:(void *)a6;
- (void)_webDocumentContext_enumerateBoundsForCharactersInRange:(uint64_t)a3 inCoordinateSpace:(void *)a4 reverse:(int)a5 block:(void *)a6;
- (void)_webInsertCommittedTextPhase3:(void *)a3 withAlternatives:(uint64_t)a4 activePreviewText:(uint64_t)a5 replacingRange:(void *)a6 webTextInput:;
- (void)deleteTextInRange:(uint64_t)a3 completion:(void *)a4;
- (void)enumerateBoundsForCharactersInRange:(uint64_t)a3 inCoordinateSpace:(void *)a4 reverse:(int)a5 block:(void *)a6;
- (void)firstRectForRange:(unint64_t)a3 inCoordinateSpace:(void *)a4;
- (void)insertTextsToCommit:(void *)a3 withAlternatives:(void *)a4 activePreviewText:(uint64_t)a5 replacingRange:(uint64_t)a6 completion:(void *)a7;
- (void)loadDataIfNeededWithTextInput:(uint64_t)a1;
- (void)loadDataIfNeededWithWebDocumentSourceView:(void *)a3 textInput:(void *)a4 rectOfInterest:(CGFloat)a5 completion:(CGFloat)a6;
- (void)requestUpdatedApproximateCaretRectInCoordinateSpace:(void *)a3 completion:;
- (void)requestUpdatedLastSelectionRectForCommittedTextLength:(void *)a3 targetCoordinateSpace:(void *)a4 completion:;
- (void)selectTextInRange:(uint64_t)a3 completion:(void *)a4;
- (void)setSelectionWithReferencePoint:(double)a3 completionHandler:(double)a4;
@end

@implementation PKTextInputElementContent

- (id)initWithElement:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PKTextInputElementContent;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

- (id)description
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->__textInput);

    if (WeakRetained)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = objc_loadWeakRetained(&self->__textInput);
      v6 = PKDebugStringRepresentation(v5);
      [v4 stringWithFormat:@"type: UITextInput, textInput: %@", v6, v18];
      v9 = LABEL_6:;

      goto LABEL_7;
    }

    v7 = objc_loadWeakRetained(&self->__webDocumentSourceView);

    if (v7)
    {
      v8 = MEMORY[0x1E696AEC0];
      v6 = self->__webDocumentContext;
      v21.location = [(UIWKDocumentContext *)v6 selectedTextRange];
      v5 = NSStringFromRange(v21);
      [v8 stringWithFormat:@"type: WebInput, selectedRange: %@, webDocumentContext: (%@)", v5, self->__webDocumentContext];
      goto LABEL_6;
    }
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type: NoData"];
  if (!self)
  {
LABEL_18:
    v11 = @"None";
    goto LABEL_19;
  }

LABEL_7:
  dataLoadedState = self->_dataLoadedState;
  if (dataLoadedState <= 1)
  {
    if (dataLoadedState)
    {
      if (dataLoadedState == 1)
      {
        v11 = @"Requesting";
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v12 = @"Failed";
  if (dataLoadedState != 3)
  {
    v12 = 0;
  }

  if (dataLoadedState == 2)
  {
    v11 = @"Ready";
  }

  else
  {
    v11 = v12;
  }

LABEL_19:
  v19.receiver = self;
  v19.super_class = PKTextInputElementContent;
  v13 = [(PKTextInputElementContent *)&v19 description];
  v14 = v13;
  if (self)
  {
    element = self->_element;
  }

  else
  {
    element = 0;
  }

  v16 = [v13 stringByAppendingFormat:@" %@, loadedState: %@, element: (%@)", v9, v11, element];

  return v16;
}

- (void)loadDataIfNeededWithTextInput:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4 == 3 || v4 == 0)
    {
      v9 = v3;
      v6 = objc_storeWeak((a1 + 32), v3);
      v7 = [PKTextInputUtilities textInputTraitsFromTextInput:v9];
      v8 = *(a1 + 16);
      *(a1 + 16) = v7;

      v3 = v9;
      *(a1 + 24) = 2;
    }
  }
}

- (void)loadDataIfNeededWithWebDocumentSourceView:(void *)a3 textInput:(void *)a4 rectOfInterest:(CGFloat)a5 completion:(CGFloat)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  if (a1)
  {
    v18 = objc_alloc_init(MEMORY[0x1E69DD2A8]);
    [v18 setSurroundingGranularity:4];
    [v18 setGranularityCount:1];
    [v18 setFlags:1];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __107__PKTextInputElementContent_loadDataIfNeededWithWebDocumentSourceView_textInput_rectOfInterest_completion___block_invoke;
    v31[3] = &unk_1E82D8A78;
    v31[4] = a1;
    [PKTextInputUtilities requestDocumentContext:v18 forWebDocumentSourceView:v15 completionHandler:v31];
    v19 = *(a1 + 24);
    if (v19 && v19 != 3)
    {
      v17[2](v17, 1);
    }

    else
    {
      v20 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 8);
        *buf = 134218242;
        v33 = a1;
        v34 = 2112;
        v35 = v21;
        _os_log_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_DEFAULT, "ElementContent %p: Will load content for web element %@", buf, 0x16u);
      }

      objc_storeWeak((a1 + 56), v15);
      objc_storeWeak((a1 + 40), v16);
      *(a1 + 24) = 1;
      v22 = objc_alloc_init(MEMORY[0x1E69DD2A8]);
      [v22 setSurroundingGranularity:0];
      [v22 setGranularityCount:200];
      v37.origin.x = a5;
      v37.origin.y = a6;
      v37.size.width = a7;
      v37.size.height = a8;
      if (CGRectIsNull(v37))
      {
        v23 = 5;
      }

      else
      {
        [v22 setDocumentRect:{a5, a6, a7, a8}];
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = v24[15];
        }

        v25 = v24;
        [v22 setInputElementIdentifier:v25];

        v23 = 69;
      }

      [v22 setFlags:v23];
      v26 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v33 = a1;
        v34 = 2112;
        v35 = v15;
        _os_log_impl(&dword_1C7CCA000, v26, OS_LOG_TYPE_DEFAULT, "ElementContent %p: Sending web document context request to view %@", buf, 0x16u);
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __107__PKTextInputElementContent_loadDataIfNeededWithWebDocumentSourceView_textInput_rectOfInterest_completion___block_invoke_19;
      v28[3] = &unk_1E82D8AC8;
      v30 = v27;
      v28[4] = a1;
      v29 = v17;
      [PKTextInputUtilities requestDocumentContext:v22 forWebDocumentSourceView:v15 completionHandler:v28];
    }
  }
}

void __107__PKTextInputElementContent_loadDataIfNeededWithWebDocumentSourceView_textInput_rectOfInterest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __107__PKTextInputElementContent_loadDataIfNeededWithWebDocumentSourceView_textInput_rectOfInterest_completion___block_invoke_2;
  v5[3] = &unk_1E82D6E70;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __107__PKTextInputElementContent_loadDataIfNeededWithWebDocumentSourceView_textInput_rectOfInterest_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    objc_storeStrong((v1 + 72), *(a1 + 40));
  }
}

void __107__PKTextInputElementContent_loadDataIfNeededWithWebDocumentSourceView_textInput_rectOfInterest_completion___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 sortTextRectsByCharacterRange];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4 - *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __107__PKTextInputElementContent_loadDataIfNeededWithWebDocumentSourceView_textInput_rectOfInterest_completion___block_invoke_2_20;
  v8[3] = &unk_1E82D8AA0;
  v11 = v5;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __107__PKTextInputElementContent_loadDataIfNeededWithWebDocumentSourceView_textInput_rectOfInterest_completion___block_invoke_2_20(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56) * 1000.0;
    if (v3)
    {
      v5 = *(v3 + 8);
    }

    else
    {
      v5 = 0;
    }

    *buf = 134218498;
    v26 = v3;
    v27 = 2048;
    v28 = v4;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "ElementContent %p: Web document context request finished after %0.2fms for element %@", buf, 0x20u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v6 && (objc_storeStrong((v6 + 64), *(a1 + 40)), (v8 = *(a1 + 32)) != 0))
  {
    WeakRetained = objc_loadWeakRetained((v8 + 40));
    v10 = [PKTextInputUtilities textInputTraitsFromTextInput:WeakRetained];
    v11 = *(v8 + 16);
    *(v8 + 16) = v10;
  }

  else
  {
    WeakRetained = 0;
  }

  v12 = [*(a1 + 40) contextBefore];
  v13 = [*(a1 + 40) selectedText];
  v14 = [*(a1 + 40) contextAfter];
  v15 = &stru_1F476BD20;
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = &stru_1F476BD20;
  }

  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = &stru_1F476BD20;
  }

  if (v14)
  {
    v15 = v14;
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v16, v17, v15];
  v19 = *(a1 + 32);
  if (v19)
  {
    objc_storeStrong((v19 + 48), v18);
  }

  if (v7)
  {
    v20 = *(a1 + 32);
    if (v20)
    {
      v21 = 2;
LABEL_24:
      *(v20 + 24) = v21;
    }
  }

  else
  {
    v22 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      if (v23)
      {
        v24 = *(v23 + 8);
      }

      else
      {
        v24 = 0.0;
      }

      *buf = 134218242;
      v26 = v23;
      v27 = 2112;
      v28 = v24;
      _os_log_error_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_ERROR, "ElementContent %p: Failed to load web document context for element %@", buf, 0x16u);
    }

    v20 = *(a1 + 32);
    if (v20)
    {
      v21 = 3;
      goto LABEL_24;
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (id)textContentType
{
  if (a1)
  {
    a1 = [a1[2] textContentType];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)contentLength
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 64);
    WeakRetained = objc_loadWeakRetained((v1 + 32));

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained((v1 + 32));
      v1 = [PKTextInputUITextInputInterface contentLengthForTextInput:v4];
    }

    else if (v2)
    {
      v1 = [*(v1 + 48) length];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)stringInRange:(uint64_t)a3
{
  if (!a1)
  {
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [PKTextInputUITextInputInterface stringInRange:a2 inTextInput:a3, v7];

    goto LABEL_7;
  }

  if (*(a1 + 64))
  {
    v8 = [*(a1 + 48) substringWithRange:{a2, a3}];
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (id)protectedCharacterIndexesInRange:(uint64_t)a3
{
  if (a1 && (v6 = objc_loadWeakRetained((a1 + 32))) != 0 && (v7 = v6, v8 = [(PKTextInputElementContent *)a1 isSingleLineDocumentContent], v7, (v8 & 1) == 0))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = [PKTextInputUITextInputInterface protectedCharacterIndexesInRange:a2 inTextInput:a3, WeakRetained];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)isSingleLineDocumentContent
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = WeakRetained;
    }

    else
    {
      v6 = objc_loadWeakRetained((a1 + 40));
    }

    v7 = v6;

    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 isSingleLineDocument];
    }

    else
    {
      v8 = 1;
    }

    return v8;
  }

  return [v2 isSingleLineDocument];
}

- (uint64_t)rangeOfCharacterAtIndex:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    a2 = [PKTextInputUITextInputInterface rangeOfCharacterAtIndex:a2 inTextInput:v5];
  }

  else if (*(a1 + 64))
  {
    return [*(a1 + 48) rangeOfComposedCharacterSequenceAtIndex:a2];
  }

  return a2;
}

- (BOOL)isValidRange:(uint64_t)a3
{
  if (result)
  {
    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v5 = result;
    WeakRetained = objc_loadWeakRetained((result + 32));

    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained((v5 + 32));
      v8 = [PKTextInputUITextInputInterface isValidRange:a2 inTextInput:a3, v7];

      return v8;
    }

    else
    {
      if (!*(v5 + 64))
      {
        return 0;
      }

      return a2 + a3 <= [(PKTextInputElementContent *)v5 contentLength];
    }
  }

  return result;
}

- (uint64_t)supportsAutoLineBreaks
{
  if (result)
  {
    v1 = result;
    if (([(PKTextInputElementContent *)result isSingleLineDocumentContent]& 1) != 0)
    {
      return 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((v1 + 32));
      v3 = [WeakRetained textInputView];

      if (v3)
      {
        v4 = *(v1 + 8);
        v5 = objc_loadWeakRetained((v1 + 32));
        v6 = [v5 textInputView];
        v7 = [(PKTextInputElement *)v4 containsView:v6];

        return v7;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)enumerateBoundsForCharactersInRange:(uint64_t)a3 inCoordinateSpace:(void *)a4 reverse:(int)a5 block:(void *)a6
{
  v13 = a4;
  v11 = a6;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));

    if (WeakRetained)
    {
      [(PKTextInputElementContent *)a1 _textInput_enumerateBoundsForCharactersInRange:a2 inCoordinateSpace:a3 reverse:v13 block:a5, v11];
    }

    else if (*(a1 + 64) && a3)
    {
      [(PKTextInputElementContent *)a1 _webDocumentContext_enumerateBoundsForCharactersInRange:a2 inCoordinateSpace:a3 reverse:v13 block:a5, v11];
    }
  }
}

- (void)_textInput_enumerateBoundsForCharactersInRange:(uint64_t)a3 inCoordinateSpace:(void *)a4 reverse:(char)a5 block:(void *)a6
{
  v11 = a4;
  v12 = a6;
  if (a1)
  {
    if (a5)
    {
      v13 = a2 + a3 - 1;
      do
      {
        if (v13 < a2)
        {
          break;
        }

        [(PKTextInputElementContent *)a1 firstRectForRange:v13 inCoordinateSpace:1uLL, v11];
        v17 = 0;
        v12[2](v12, v13--, &v17);
      }

      while ((v17 & 1) == 0);
    }

    else if (a2 < (a2 + a3))
    {
      v14 = a3 - 1;
      do
      {
        v15 = v14;
        [(PKTextInputElementContent *)a1 firstRectForRange:a2 inCoordinateSpace:1uLL, v11];
        v16 = 0;
        v12[2](v12, a2, &v16);
        if (v16)
        {
          break;
        }

        ++a2;
        v14 = v15 - 1;
      }

      while (v15);
    }
  }
}

- (void)_webDocumentContext_enumerateBoundsForCharactersInRange:(uint64_t)a3 inCoordinateSpace:(void *)a4 reverse:(int)a5 block:(void *)a6
{
  v11 = a4;
  v12 = a6;
  if (a1)
  {
    if (a5)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a1 + 64);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __117__PKTextInputElementContent__webDocumentContext_enumerateBoundsForCharactersInRange_inCoordinateSpace_reverse_block___block_invoke;
    v15[3] = &unk_1E82D8AF0;
    v16 = v11;
    v17 = a1;
    v18 = v12;
    [v14 enumerateLayoutRectsWithOptions:v13 characterRange:a2 block:{a3, v15}];
  }
}

- (void)firstRectForRange:(unint64_t)a3 inCoordinateSpace:(void *)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!a1)
  {
    memset(&r1, 0, sizeof(r1));
    goto LABEL_26;
  }

  v8 = *(MEMORY[0x1E695F050] + 16);
  r1.origin = *MEMORY[0x1E695F050];
  r1.size = v8;
  WeakRetained = objc_loadWeakRetained(a1 + 4);

  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained(a1 + 4);
    [PKTextInputUITextInputInterface firstRectForRange:a2 inCoordinateSpace:a3 inTextInput:v7, v10];
    r1.origin.x = v11;
    r1.origin.y = v12;
    r1.size.width = v13;
    r1.size.height = v14;

    goto LABEL_26;
  }

  v15 = a1[8];
  if (v15 && a3)
  {
    v16 = [v15 characterRectsForCharacterRange:{a2, 1}];
    v17 = [v16 firstObject];

    if (!v17)
    {
      goto LABEL_25;
    }

    [v17 getValue:&r1 size:32];
    if (a3 < 2)
    {
      goto LABEL_24;
    }

    v18 = [a1[8] characterRectsForCharacterRange:{a2, a3}];
    Height = CGRectGetHeight(r1);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (!v21)
    {
      goto LABEL_23;
    }

    v22 = v21;
    v23 = Height * 0.2;
    v24 = *v44;
    while (1)
    {
      v25 = 0;
      do
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v43 + 1) + 8 * v25);
        memset(&rect, 0, sizeof(rect));
        [v26 getValue:&rect size:32];
        y = rect.origin.y;
        v28 = r1.origin.y;
        v29 = rect.origin.y - r1.origin.y;
        if (rect.origin.y - r1.origin.y < 0.0)
        {
          v29 = -(rect.origin.y - r1.origin.y);
        }

        if (v29 <= v23)
        {
          goto LABEL_20;
        }

        MaxY = CGRectGetMaxY(rect);
        v31 = MaxY - CGRectGetMaxY(rect);
        if (v31 < 0.0)
        {
          v31 = -v31;
        }

        if (v31 <= v23)
        {
          v28 = r1.origin.y;
          y = rect.origin.y;
LABEL_20:
          x = r1.origin.x;
          width = r1.size.width;
          v34 = r1.size.height;
          v35 = rect.origin.x;
          v36 = rect.size.width;
          v37 = rect.size.height;
          r1 = CGRectUnion(*(&v28 - 1), *(&y - 1));
        }

        ++v25;
      }

      while (v22 != v25);
      v22 = [v20 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (!v22)
      {
LABEL_23:

LABEL_24:
        v38 = objc_loadWeakRetained(a1 + 7);
        r1.origin.x = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v38, v7, r1.origin.x, r1.origin.y, r1.size.width, r1.size.height);
        r1.origin.y = v39;
        r1.size.width = v40;
        r1.size.height = v41;

LABEL_25:
        break;
      }
    }
  }

LABEL_26:
}

uint64_t __117__PKTextInputElementContent__webDocumentContext_enumerateBoundsForCharactersInRange_inCoordinateSpace_reverse_block___block_invoke(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = a1[4];
  v10 = a1[5];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained((v10 + 56));
  }

  else
  {
    WeakRetained = 0;
  }

  v13 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(WeakRetained, v11, a2, a3, a4, a5);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = *(a1[6] + 16);
  v21.n128_f64[0] = v13;
  v22.n128_u64[0] = v15;
  v23.n128_u64[0] = v17;
  v24.n128_u64[0] = v19;

  return v20(v21, v22, v23, v24);
}

- (uint64_t)characterIndexClosestToPoint:(uint64_t)a3 inCoordinateSpace:(uint64_t)a4 forInsertingText:(double)a5 adjustForLastCharacter:(double)a6
{
  v11 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 4);

    if (WeakRetained)
    {
      v13 = objc_loadWeakRetained(a1 + 4);
      v14 = [PKTextInputUITextInputInterface characterIndexClosestToPoint:v11 inCoordinateSpace:v13 inTextInput:a3 forInsertingText:a4 adjustForLastCharacter:a5, a6];
    }

    else if (a1[8])
    {
      v16 = objc_loadWeakRetained(a1 + 7);
      v17 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v11, v16, a5, a6, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
      v19 = v18;

      v20 = [a1[8] closestCharacterIndexForPoint:{v17, v19}];
      v14 = v20;
      if (a3)
      {
        if (v20 + 1 == [(PKTextInputElementContent *)a1 contentLength])
        {
          if ([(PKTextInputElementContent *)a1 _isLastCharacterNewline])
          {
            v21.origin.x = [(PKTextInputElementContent *)a1 caretRectForCharacterIndex:v14 inCoordinateSpace:v11];
            if (a6 > CGRectGetMaxY(v21))
            {
              ++v14;
            }
          }
        }
      }
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)_isLastCharacterNewline
{
  if ([(PKTextInputElementContent *)a1 contentLength]< 1)
  {
    return 0;
  }

  v2 = [(PKTextInputElementContent *)a1 contentLength];
  v3 = [(PKTextInputElementContent *)a1 stringInRange:1];
  if ([v3 length] == 1)
  {
    v4 = [v3 characterAtIndex:0];
    v5 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v6 = [v5 characterIsMember:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)caretRectForCharacterIndex:(void *)a3 inCoordinateSpace:
{
  v5 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));

    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      [PKTextInputUITextInputInterface caretRectForCharacterIndex:a2 inCoordinateSpace:v5 inTextInput:v7];
      x = v8;
    }

    else if (*(a1 + 64))
    {
      [(PKTextInputElementContent *)a1 firstRectForRange:a2 inCoordinateSpace:1uLL, v5];
      x = v15.origin.x;
      y = v15.origin.y;
      width = v15.size.width;
      height = v15.size.height;
      IsNull = CGRectIsNull(v15);
      if (a2 >= 1 && IsNull)
      {
        [(PKTextInputElementContent *)a1 firstRectForRange:1uLL inCoordinateSpace:v5];
        x = v16.origin.x;
        if (!CGRectIsNull(v16) && [(PKTextInputElementContent *)a1 contentLength]== a2)
        {
          [(PKTextInputElementContent *)a1 _isLastCharacterNewline];
        }
      }

      else
      {
        v17.origin.x = x;
        v17.origin.y = y;
        v17.size.width = width;
        v17.size.height = height;
        CGRectIsNull(v17);
      }
    }

    else
    {
      x = *MEMORY[0x1E695F050];
    }
  }

  else
  {
    x = 0.0;
  }

  return x;
}

- (double)caretRectInCoordinateSpace:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    v4 = 0.0;
    goto LABEL_13;
  }

  v4 = *MEMORY[0x1E695F050];
  if (*(a1 + 64))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = objc_loadWeakRetained((a1 + 56));
    v7 = [WeakRetained selectedTextRange];
    v8 = v7;
    if (WeakRetained)
    {
      if (v6)
      {
        v9 = [v7 start];
        if (v9)
        {
          v10 = v9;
          v11 = [v8 isEmpty];

          if (v11)
          {
            v12 = [v8 start];
            [WeakRetained caretRectForPosition:v12];
            v4 = v13;
            v15 = v14;
            v17 = v16;
            v19 = v18;

            v24.origin.x = v4;
            v24.origin.y = v15;
            v24.size.width = v17;
            v24.size.height = v19;
            if (!CGRectIsNull(v24))
            {
              [v6 PK_convertRect:v3 toCoordinateSpace:{v4, v15, v17, v19}];
              v4 = v20;
            }
          }
        }
      }
    }

    goto LABEL_12;
  }

  v21 = objc_loadWeakRetained((a1 + 32));

  if (v21)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [PKTextInputUITextInputInterface caretRectInCoordinateSpace:v3 inTextInput:WeakRetained];
    v4 = v22;
LABEL_12:
  }

LABEL_13:

  return v4;
}

- (double)caretRectForStartOfLineFromCharacterIndex:(void *)a3 coordinateSpace:(uint64_t *)a4 outCharacterIndex:
{
  v7 = a3;
  if (a1)
  {
    v8 = [(PKTextInputElementContent *)a1 caretRectForCharacterIndex:a2 inCoordinateSpace:v7];
    v12 = v11;
    do
    {
      v13 = v8;
      v14 = v9;
      v15 = a2;
      if (a2-- < 1)
      {
        break;
      }

      v17 = v12;
      if (CGRectIsEmpty(*&v8))
      {
        break;
      }

      v8 = [(PKTextInputElementContent *)a1 caretRectForCharacterIndex:a2 inCoordinateSpace:v7];
      v19 = v12 * 0.5;
      v20 = v9 - v14;
      if (v9 - v14 < 0.0)
      {
        v20 = -(v9 - v14);
      }

      v12 = v18;
    }

    while (v20 <= v19);
    if (a4)
    {
      *a4 = v15;
    }
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (void)setSelectionWithReferencePoint:(double)a3 completionHandler:(double)a4
{
  v7 = a2;
  if (a1)
  {
    v14 = v7;
    v8 = a1[8];
    if (v8 && (v9 = v8, v10 = objc_loadWeakRetained(a1 + 7), v10, v9, v10))
    {
      WeakRetained = objc_loadWeakRetained(a1 + 7);
      [WeakRetained selectPositionAtPoint:v14 completionHandler:{a3, a4}];
    }

    else
    {
      v12 = objc_loadWeakRetained(a1 + 4);

      if (v12)
      {
        v13 = objc_loadWeakRetained(a1 + 4);
        [PKTextInputUITextInputInterface setSelectionWithReferencePoint:v13 inTextInput:a3, a4];
      }

      v14[2]();
    }

    v7 = v14;
  }
}

- (void)requestUpdatedApproximateCaretRectInCoordinateSpace:(void *)a3 completion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));

    if (WeakRetained)
    {
      v8.n128_f64[0] = [(PKTextInputElementContent *)a1 caretRectInCoordinateSpace:v5];
      v6[2](v6, v8);
    }

    else
    {
      v9 = objc_loadWeakRetained((a1 + 56));

      if (v9)
      {
        v11 = objc_alloc_init(MEMORY[0x1E69DD2A8]);
        [v11 setFlags:5];
        [v11 setSurroundingGranularity:0];
        [v11 setGranularityCount:2];
        v12 = objc_loadWeakRetained((a1 + 56));
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __92__PKTextInputElementContent_requestUpdatedApproximateCaretRectInCoordinateSpace_completion___block_invoke;
        v13[3] = &unk_1E82D8B68;
        v14 = v5;
        v15 = a1;
        v16 = v6;
        [PKTextInputUtilities requestDocumentContext:v11 forWebDocumentSourceView:v12 completionHandler:v13];
      }

      else
      {
        v10.n128_u64[0] = *MEMORY[0x1E695F050];
        v6[2](v6, v10);
      }
    }
  }
}

void __92__PKTextInputElementContent_requestUpdatedApproximateCaretRectInCoordinateSpace_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__PKTextInputElementContent_requestUpdatedApproximateCaretRectInCoordinateSpace_completion___block_invoke_2;
  v8[3] = &unk_1E82D8B40;
  v9 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __92__PKTextInputElementContent_requestUpdatedApproximateCaretRectInCoordinateSpace_completion___block_invoke_2(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v19 = "";
  v18 = 0x4010000000;
  v2 = *(MEMORY[0x1E695F050] + 16);
  v20 = *MEMORY[0x1E695F050];
  v21 = v2;
  v3 = [*(a1 + 32) selectedTextRange];
  v4 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__PKTextInputElementContent_requestUpdatedApproximateCaretRectInCoordinateSpace_completion___block_invoke_3;
  v15[3] = &unk_1E82D8B18;
  v15[5] = v3;
  v15[6] = v5;
  v15[4] = &v16;
  [v4 enumerateLayoutRects:v15];
  if (!CGRectIsNull(v17[1]))
  {
    p_x = &v17->origin.x;
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained((v7 + 56));
    }

    else
    {
      WeakRetained = 0;
    }

    v10 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(WeakRetained, v8, p_x[4], p_x[5], p_x[6], p_x[7]);
    v11 = &v17->origin.x;
    v17[1].origin.x = v10;
    v11[5] = v12;
    v11[6] = v13;
    v11[7] = v14;
  }

  (*(*(a1 + 56) + 16))(v17[1].origin.x, v17[1].origin.y, v17[1].size.width, v17[1].size.height);
  _Block_object_dispose(&v16, 8);
}

void __92__PKTextInputElementContent_requestUpdatedApproximateCaretRectInCoordinateSpace_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, double a5, double a6, double a7, double a8)
{
  v8 = *(a1 + 40);
  v9 = a2 + a3;
  if (a2 == v8 || v9 == v8)
  {
    if (!CGRectIsNull(*&a5))
    {
      v17 = *(*(a1 + 32) + 8);
      v17[4] = a5;
      v17[5] = a6;
      v17[6] = a7;
      v17[7] = a8;
      v18 = a5;
      v19 = a6;
      v20 = a7;
      v21 = a8;
      if (v9 == v8)
      {
        MaxX = CGRectGetMaxX(*&v18);
      }

      else
      {
        MaxX = CGRectGetMinX(*&v18);
      }

      *(*(*(a1 + 32) + 8) + 32) = MaxX;
      *(*(*(a1 + 32) + 8) + 48) = 0x4000000000000000;
    }

    *a4 = 1;
  }
}

- (void)requestUpdatedLastSelectionRectForCommittedTextLength:(void *)a3 targetCoordinateSpace:(void *)a4 completion:
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!a1)
  {
    goto LABEL_18;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (!WeakRetained)
  {
    v24 = objc_loadWeakRetained((a1 + 56));

    if (v24)
    {
      v25 = objc_alloc_init(MEMORY[0x1E69DD2A8]);
      [v25 setFlags:5];
      [v25 setSurroundingGranularity:0];
      [v25 setGranularityCount:2 * a2];
      v26 = objc_loadWeakRetained((a1 + 56));
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __116__PKTextInputElementContent_requestUpdatedLastSelectionRectForCommittedTextLength_targetCoordinateSpace_completion___block_invoke;
      v27[3] = &unk_1E82D8BE0;
      v30 = a2;
      v27[4] = a1;
      v28 = v7;
      v29 = v8;
      [PKTextInputUtilities requestDocumentContext:v25 forWebDocumentSourceView:v26 completionHandler:v27];

      goto LABEL_18;
    }

LABEL_15:
    (*(v8 + 2))(v8, v11, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    goto LABEL_18;
  }

  v10 = [(PKTextInputElementContent *)a1 selectedRange];
  v11 = v10 - a2;
  if (v10 < a2)
  {
    goto LABEL_15;
  }

  v12 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 8);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v14 = *(MEMORY[0x1E695F050] + 24);
  v16 = [(PKTextInputElementContent *)a1 selectionRectsForRange:v11 inCoordinateSpace:a2 visibleOnly:v7, 0];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = [v16 reverseObjectEnumerator];
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v33 + 1) + 8 * v21);
        v31 = 0u;
        v32 = 0u;
        [v22 getValue:&v31 size:32];
        v23 = *&v32;
        if (*&v32 > 0.0)
        {
          v13 = *(&v31 + 1);
          v12 = *&v31;
          v14 = *(&v32 + 1);
          goto LABEL_17;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v23 = v15;
LABEL_17:

  (*(v8 + 2))(v8, v12, v13, v23, v14);
LABEL_18:
}

- (uint64_t)selectedRange
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (!WeakRetained)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      return [v5 selectedTextRange];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (![(PKTextInputElement *)*(a1 + 8) isFocused])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [PKTextInputUITextInputInterface selectedRangeInTextInput:v3];

  return v4;
}

- (id)selectionRectsForRange:(uint64_t)a3 inCoordinateSpace:(void *)a4 visibleOnly:(int)a5
{
  v9 = a4;
  if (a1 && (v10 = objc_loadWeakRetained((a1 + 32)), v10, v10))
  {
    if (a5)
    {
      v11 = *(a1 + 8);
      v12 = [(PKTextInputElement *)v11 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [(PKTextInputElement *)*(a1 + 8) coordinateSpace];
      v20 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v19, v9, v12, v14, v16, v18);
      v22 = v21;
      v24 = v23;
      v26 = v25;
    }

    else
    {
      v20 = *MEMORY[0x1E695F050];
      v22 = *(MEMORY[0x1E695F050] + 8);
      v24 = *(MEMORY[0x1E695F050] + 16);
      v26 = *(MEMORY[0x1E695F050] + 24);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v27 = [PKTextInputUITextInputInterface selectionRectsForRange:a2 inCoordinateSpace:a3 inTextInput:v9 intersectingRect:WeakRetained, v20, v22, v24, v26];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void __116__PKTextInputElementContent_requestUpdatedLastSelectionRectForCommittedTextLength_targetCoordinateSpace_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 sortTextRectsByCharacterRange];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __116__PKTextInputElementContent_requestUpdatedLastSelectionRectForCommittedTextLength_targetCoordinateSpace_completion___block_invoke_2;
  block[3] = &unk_1E82D8BB8;
  v12 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __116__PKTextInputElementContent_requestUpdatedLastSelectionRectForCommittedTextLength_targetCoordinateSpace_completion___block_invoke_2(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v20 = "";
  v19 = 0x4010000000;
  v2 = *(MEMORY[0x1E695F050] + 16);
  v21 = *MEMORY[0x1E695F050];
  v22 = v2;
  v3 = [*(a1 + 32) selectedTextRange];
  v4 = *(a1 + 64);
  if (v3 >= v4)
  {
    v5 = v3 - v4;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v6 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __116__PKTextInputElementContent_requestUpdatedLastSelectionRectForCommittedTextLength_targetCoordinateSpace_completion___block_invoke_3;
    v15[3] = &unk_1E82D8B90;
    v15[4] = &v17;
    v15[5] = v16;
    [v6 enumerateLayoutRectsWithOptions:2 characterRange:v5 block:{v4, v15}];
    _Block_object_dispose(v16, 8);
  }

  if (!CGRectIsNull(v18[1]))
  {
    p_x = &v18->origin.x;
    v8 = *(a1 + 40);
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained((v8 + 56));
    }

    else
    {
      WeakRetained = 0;
    }

    v10 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(WeakRetained, *(a1 + 48), p_x[4], p_x[5], p_x[6], p_x[7]);
    v11 = &v18->origin.x;
    v18[1].origin.x = v10;
    v11[5] = v12;
    v11[6] = v13;
    v11[7] = v14;
  }

  (*(*(a1 + 56) + 16))(v18[1].origin.x, v18[1].origin.y, v18[1].size.width, v18[1].size.height);
  _Block_object_dispose(&v17, 8);
}

void __116__PKTextInputElementContent_requestUpdatedLastSelectionRectForCommittedTextLength_targetCoordinateSpace_completion___block_invoke_3(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  if (CGRectIsNull(*(*(*(a1 + 32) + 8) + 32)))
  {
    v14 = *(*(a1 + 32) + 8);
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a4;
    v14[7] = a5;
    *(*(*(a1 + 40) + 8) + 24) = CGRectGetHeight(*(*(*(a1 + 32) + 8) + 32)) * 0.2;
    return;
  }

  v15 = *(*(a1 + 32) + 8);
  v16 = *(v15 + 40);
  v17 = a3 - v16;
  if (a3 - v16 < 0.0)
  {
    v17 = -(a3 - v16);
  }

  if (v17 > *(*(*(a1 + 40) + 8) + 24))
  {
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = a2;
    v24.origin.y = a3;
    v24.size.width = a4;
    v24.size.height = a5;
    v19 = MaxY - CGRectGetMaxY(v24);
    if (v19 < 0.0)
    {
      v19 = -v19;
    }

    if (v19 > *(*(*(a1 + 40) + 8) + 24))
    {
      *a8 = 1;
      return;
    }

    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 40);
  }

  v20 = *(v15 + 32);
  v21 = *(v15 + 48);
  v22 = *(v15 + 56);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(&v16 - 1), v25);
}

- (id)rectValuesForSelectionRects:(void *)a3 inCoordinateSpace:(int)a4 visibleOnly:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (a4)
    {
      v9 = a1[1];
      v10 = [(PKTextInputElement *)v9 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [(PKTextInputElement *)a1[1] coordinateSpace];
      v18 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v17, v8, v10, v12, v14, v16);
      v20 = v19;
      v22 = v21;
      v24 = v23;
    }

    else
    {
      v18 = *MEMORY[0x1E695F050];
      v20 = *(MEMORY[0x1E695F050] + 8);
      v22 = *(MEMORY[0x1E695F050] + 16);
      v24 = *(MEMORY[0x1E695F050] + 24);
    }

    v25 = a1 + 4;
    WeakRetained = objc_loadWeakRetained(a1 + 4);

    if (WeakRetained || (v25 = a1 + 5, a1 = objc_loadWeakRetained(a1 + 5), a1, a1))
    {
      v27 = objc_loadWeakRetained(v25);
      a1 = [PKTextInputUITextInputInterface rectValuesForSelectionRects:v7 inCoordinateSpace:v8 inTextInput:v27 intersectingRect:v18, v20, v22, v24];
    }
  }

  return a1;
}

- (uint64_t)hasLinkAtCharacterIndex:(void *)a3 location:(double)a4 coordinateSpace:(double)a5
{
  v9 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(PKTextInputElement *)*(a1 + 8) coordinateSpace];
      v13 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v9, v12, a4, a5, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
      v15 = v14;

      v16 = objc_loadWeakRetained((a1 + 32));
      v17 = [v16 _anyTextItemConstrainedToLineAtPoint:{v13, v15}];

      a1 = v17 != 0;
    }

    else
    {
      v18 = objc_loadWeakRetained((a1 + 32));
      v17 = [v18 textInputView];

      if (objc_opt_respondsToSelector() & 1) != 0 && (v19 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v9, v17, a4, a5, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)), v27 = 0, v28 = &v27, v29 = 0x2020000000, v30 = 0, v26[0] = MEMORY[0x1E69E9820], v26[1] = 3221225472, v26[2] = __78__PKTextInputElementContent_hasLinkAtCharacterIndex_location_coordinateSpace___block_invoke, v26[3] = &unk_1E82D8C08, v26[4] = &v27, [v17 _requestTextItemConstrainedToLineAtPoint:v26 resultHandler:v19], v20 = *(v28 + 24), _Block_object_dispose(&v27, 8), (v20))
      {
        a1 = 1;
      }

      else
      {
        v21 = objc_loadWeakRetained((a1 + 32));

        if (v21)
        {
          v22 = objc_loadWeakRetained((a1 + 32));
          v23 = [PKTextInputUITextInputInterface attributesAtCharacterIndex:a2 inTextInput:v22];
        }

        else
        {
          v23 = 0;
        }

        v24 = [v23 objectForKeyedSubscript:*MEMORY[0x1E69DB670]];
        a1 = v24 != 0;
      }
    }
  }

  return a1;
}

BOOL __78__PKTextInputElementContent_hasLinkAtCharacterIndex_location_coordinateSpace___block_invoke(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  result = CGRectIsEmpty(*&a3);
  if (!result)
  {
    if (a2)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

- (uint64_t)indexOfLastNonWhitespaceCharacter
{
  if (!a1)
  {
    return 0;
  }

  v2 = [(PKTextInputElementContent *)a1 contentLength];
  v3 = [(PKTextInputElementContent *)a1 stringInRange:v2];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v5 = [v4 invertedSet];
    v6 = [v3 rangeOfCharacterFromSet:v5 options:4 range:{0, v2}];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)insertTextsToCommit:(void *)a3 withAlternatives:(void *)a4 activePreviewText:(uint64_t)a5 replacingRange:(uint64_t)a6 completion:(void *)a7
{
  v13 = a2;
  v49 = a3;
  v14 = a4;
  v15 = v13;
  v45 = v14;
  v16 = a7;
  if (!a1)
  {
    goto LABEL_41;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 4);

  if (WeakRetained)
  {
    if ([v13 count])
    {
      if ([v13 count])
      {
        v46 = a1;
        v47 = a6;
        v44 = v16;
        v48 = 0;
        v18 = 0;
        do
        {
          v19 = [v15 objectAtIndexedSubscript:{v18, v44}];
          v20 = [v49 objectAtIndexedSubscript:v18];
          if (v18)
          {
            v21 = 0;
          }

          else
          {
            v21 = a6;
          }

          v22 = a5;
          if (v18)
          {
            v23 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = a5;
          }

          v24 = v15;
          v25 = [v15 count];
          v26 = 0;
          if (v18 == v25 - 1)
          {
            v26 = v45;
          }

          v27 = objc_loadWeakRetained(v46 + 4);
          v28 = [PKTextInputUITextInputInterface insertCommittedText:v19 withAlternatives:v20 activePreviewText:v26 replacingRange:v23 inTextInput:v21, v27];

          if (v28)
          {
            v48 += [v19 length];
          }

          ++v18;
          v15 = v24;
          a6 = v47;
          a5 = v22;
        }

        while (v18 < [v24 count] && v28);
        if (v28)
        {
          v16 = v44;
          v29 = v48;
          goto LABEL_30;
        }

        v36 = 0;
        v16 = v44;
        v29 = v48;
        if (!v44)
        {
          goto LABEL_41;
        }

LABEL_40:
        v16[2](v16, v36, v29);
        goto LABEL_41;
      }

      goto LABEL_29;
    }

    if (!v45 && !a6)
    {
LABEL_29:
      v29 = 0;
      goto LABEL_30;
    }

    v37 = objc_loadWeakRetained(a1 + 4);
    v38 = [PKTextInputUITextInputInterface insertCommittedText:&stru_1F476BD20 withAlternatives:MEMORY[0x1E695E0F0] activePreviewText:v45 replacingRange:a5 inTextInput:a6, v37];

    v29 = 0;
    if (v38)
    {
      v15 = v13;
LABEL_30:
      +[PKTextInputUtilities markAnalyticsForInsertionWithTexts:rangeToReplace:withAlternatives:](PKTextInputUtilities, "markAnalyticsForInsertionWithTexts:rangeToReplace:withAlternatives:", v15, a5, a6, [v49 count]);
      v36 = 1;
      if (!v16)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    v36 = 0;
    v15 = v13;
    if (v16)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v30 = a1[8];
    if (v30)
    {
      v31 = v30;
      v32 = objc_loadWeakRetained(a1 + 7);
      if (v32)
      {
        v33 = v32;
        v34 = objc_loadWeakRetained(a1 + 5);

        v15 = v13;
        if (v34)
        {
          if (a5 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v50 = 0;
            v35 = [(PKTextInputElementContent *)a1 _webInsertTextsToCommitPhase2:v13 withAlternatives:v49 activePreviewText:v45 replacingRange:0x7FFFFFFFFFFFFFFFLL committedLength:a6, &v50];
            if (v35)
            {
              v15 = v13;
              +[PKTextInputUtilities markAnalyticsForInsertionWithTexts:rangeToReplace:withAlternatives:](PKTextInputUtilities, "markAnalyticsForInsertionWithTexts:rangeToReplace:withAlternatives:", v13, 0x7FFFFFFFFFFFFFFFLL, a6, [v49 count]);
            }

            if (v16)
            {
              v16[2](v16, v35, v50);
            }
          }

          else
          {
            if ([v13 count] || objc_msgSend(v45, "length"))
            {
              v39 = [a1[8] deltaForSelectionRange:{a5, a6}];
              v41 = v40;
              v42 = objc_loadWeakRetained(a1 + 7);
              v51[0] = MEMORY[0x1E69E9820];
              v51[1] = 3221225472;
              v51[2] = __110__PKTextInputElementContent_insertTextsToCommit_withAlternatives_activePreviewText_replacingRange_completion___block_invoke_2;
              v51[3] = &unk_1E82D8C58;
              v51[4] = a1;
              v52 = v13;
              v53 = v49;
              v54 = v45;
              v56 = a5;
              v57 = a6;
              v55 = v16;
              [PKTextInputUtilities adjustSelectionWithDelta:v39 forWebDocumentSourceView:v41 completionHandler:v42, v51];

              v43 = v52;
            }

            else
            {
              v58[0] = MEMORY[0x1E69E9820];
              v58[1] = 3221225472;
              v58[2] = __110__PKTextInputElementContent_insertTextsToCommit_withAlternatives_activePreviewText_replacingRange_completion___block_invoke;
              v58[3] = &unk_1E82D8C30;
              v59 = v16;
              [(PKTextInputElementContent *)a1 deleteTextInRange:a5 completion:a6, v58];
              v43 = v59;
            }
          }

          goto LABEL_41;
        }
      }

      else
      {
      }
    }

    if (v16)
    {
      v16[2](v16, 0, 0);
    }
  }

LABEL_41:
}

uint64_t __110__PKTextInputElementContent_insertTextsToCommit_withAlternatives_activePreviewText_replacingRange_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)deleteTextInRange:(uint64_t)a3 completion:(void *)a4
{
  v7 = a4;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));

    if (WeakRetained)
    {
      if (a3)
      {
        if (*(a1 + 16))
        {
          v9 = [MEMORY[0x1E69D96E0] traitsForUITextInputTraits:?];
        }

        else
        {
          v9 = objc_alloc_init(MEMORY[0x1E69D96E0]);
        }

        v19 = v9;
        v20 = [objc_alloc(MEMORY[0x1E69D9698]) initWithTextInputTraits:v9];
        v21 = MEMORY[0x1E69D9590];
        v22 = objc_loadWeakRetained((a1 + 32));
        v23 = [v21 documentStateOfDocumentWithParagraph:v22];

        v34 = 0;
        v35 = 0;
        [v20 smartDeleteForDocumentState:v23 outBeforeLength:&v35 outAfterLength:&v34];
        a2 -= v35;
        a3 += v35 + v34;
      }

      if (qword_1ED6A50D8 != -1)
      {
        dispatch_once(&qword_1ED6A50D8, &__block_literal_global_36);
      }

      v24 = _MergedGlobals_136;
      if (a2)
      {
        v25 = [(PKTextInputElementContent *)a1 stringInRange:1];
        if ([v25 length] == 1)
        {
          v26 = [v24 characterIsMember:{objc_msgSend(v25, "characterAtIndex:", 0)}];
          a3 += v26;
          if (v26)
          {
            --a2;
          }
        }
      }

      if (a2 + a3 < [(PKTextInputElementContent *)a1 contentLength])
      {
        v27 = [(PKTextInputElementContent *)a1 stringInRange:1];
        if ([v27 length] == 1)
        {
          a3 += [v24 characterIsMember:{objc_msgSend(v27, "characterAtIndex:", 0)}];
        }
      }

      v28 = objc_loadWeakRetained((a1 + 32));
      v29 = [PKTextInputUITextInputInterface deleteTextInRange:a2 inTextInput:a3, v28];

      if (v29)
      {
        [PKTextInputUtilities markAnalyticsForDeletionCount:a3 rangeToReplace:a2, a3];
      }

      if (v7)
      {
        v7[2](v7, v29);
      }
    }

    else
    {
      v10 = *(a1 + 64);
      if (v10)
      {
        v11 = v10;
        v12 = objc_loadWeakRetained((a1 + 56));
        if (v12)
        {
          v13 = v12;
          v14 = objc_loadWeakRetained((a1 + 40));

          if (v14)
          {
            v15 = [*(a1 + 64) deltaForSelectionRange:{a2, a3}];
            v17 = v16;
            v18 = objc_loadWeakRetained((a1 + 56));
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __58__PKTextInputElementContent_deleteTextInRange_completion___block_invoke;
            v30[3] = &unk_1E82D8C80;
            v30[4] = a1;
            v32 = a2;
            v33 = a3;
            v31 = v7;
            [PKTextInputUtilities adjustSelectionWithDelta:v15 forWebDocumentSourceView:v17 completionHandler:v18, v30];

            goto LABEL_31;
          }
        }

        else
        {
        }
      }

      if (v7)
      {
        v7[2](v7, 0);
      }
    }
  }

LABEL_31:
}

uint64_t __110__PKTextInputElementContent_insertTextsToCommit_withAlternatives_activePreviewText_replacingRange_completion___block_invoke_2(uint64_t a1)
{
  v4 = 0;
  v2 = [(PKTextInputElementContent *)*(a1 + 32) _webInsertTextsToCommitPhase2:*(a1 + 48) withAlternatives:*(a1 + 56) activePreviewText:*(a1 + 72) replacingRange:*(a1 + 80) committedLength:&v4];
  if (v2)
  {
    +[PKTextInputUtilities markAnalyticsForInsertionWithTexts:rangeToReplace:withAlternatives:](PKTextInputUtilities, "markAnalyticsForInsertionWithTexts:rangeToReplace:withAlternatives:", *(a1 + 40), *(a1 + 72), *(a1 + 80), [*(a1 + 48) count]);
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, v2, v4);
  }

  return result;
}

- (BOOL)_webInsertTextsToCommitPhase2:(void *)a3 withAlternatives:(void *)a4 activePreviewText:(uint64_t)a5 replacingRange:(uint64_t)a6 committedLength:(void *)a7
{
  v12 = a2;
  v25 = a3;
  v23 = a4;
  if (!a1)
  {
    goto LABEL_21;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v22 = a7;
  if (WeakRetained)
  {
    if ([v12 count])
    {
      if ([v12 count])
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = [v12 objectAtIndexedSubscript:v15];
          v17 = [v25 objectAtIndexedSubscript:v15];
          if (v15)
          {
            v18 = 0;
          }

          else
          {
            v18 = a6;
          }

          if (v15)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = a5;
          }

          v20 = 0;
          if (v15 == [v12 count] - 1)
          {
            v20 = v23;
          }

          [(PKTextInputElementContent *)v16 _webInsertCommittedTextPhase3:v17 withAlternatives:v20 activePreviewText:v19 replacingRange:v18 webTextInput:WeakRetained];
          v14 += [v16 length];

          ++v15;
        }

        while (v15 < [v12 count]);
        goto LABEL_18;
      }
    }

    else
    {
      [(PKTextInputElementContent *)&stru_1F476BD20 _webInsertCommittedTextPhase3:v23 withAlternatives:a5 activePreviewText:a6 replacingRange:WeakRetained webTextInput:?];
    }
  }

  v14 = 0;
LABEL_18:
  if (v22)
  {
    *v22 = v14;
  }

  a1 = WeakRetained != 0;
LABEL_21:

  return a1;
}

- (void)_webInsertCommittedTextPhase3:(void *)a3 withAlternatives:(uint64_t)a4 activePreviewText:(uint64_t)a5 replacingRange:(void *)a6 webTextInput:
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a6;
  if ([v10 length] | a5)
  {
    if (objc_opt_respondsToSelector())
    {
      [v13 insertText:v10 alternatives:v11 style:1];
    }

    else
    {
      v14 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 134218754;
        v30 = v13;
        v31 = 2112;
        v32 = v16;
        v33 = 2048;
        v34 = [v10 length];
        v35 = 2048;
        v36 = [v11 count];
        _os_log_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEFAULT, "Text input <%p %@> does not support insertText:alternatives:style:. Inserting text of %ld length and ignoring %ld alternatives.", buf, 0x2Au);
      }

      [v13 insertText:v10];
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v17 = [v13 markedTextRange];
    if (v17)
    {
      v18 = [v13 markedTextRange];
      v19 = [v18 isEmpty] ^ 1;
    }

    else
    {
      v19 = 0;
    }

    if ([(__CFString *)v12 length]|| v19)
    {
      if (!v12)
      {
        v12 = &stru_1F476BD20;
      }

      v20 = [(__CFString *)v12 length];
      v21 = +[PKTextInputSettings sharedSettings];
      if ([v21 styledActivePreview])
      {
        v22 = objc_opt_respondsToSelector();

        if (v22)
        {
          v23 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:{0.3, *MEMORY[0x1E69DB650]}];
          v28[0] = v23;
          v27[1] = *MEMORY[0x1E69DB600];
          v24 = [MEMORY[0x1E69DC888] clearColor];
          v28[1] = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

          v26 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v12 attributes:v25];
          [v13 setAttributedMarkedText:v26 selectedRange:{v20, 0}];

          goto LABEL_21;
        }
      }

      else
      {
      }

      [v13 setMarkedText:v12 selectedRange:{v20, 0}];
    }
  }

LABEL_21:
}

void __68__PKTextInputElementContent_controlCharacterSetUsedByEducationPanel__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithRange:{17, 4}];
  v1 = _MergedGlobals_136;
  _MergedGlobals_136 = v0;
}

void __58__PKTextInputElementContent_deleteTextInRange_completion___block_invoke(void *a1)
{
  v8 = [MEMORY[0x1E69DCBE0] activeInstance];
  v2 = [v8 delegate];
  if (v2 && (v3 = v2, v4 = objc_opt_respondsToSelector(), v3, (v4 & 1) != 0))
  {
    [v8 performDelete];
  }

  else
  {
    v5 = a1[4];
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained((v5 + 40));
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained deleteBackward];
  }

  [PKTextInputUtilities markAnalyticsForDeletionCount:a1[7] rangeToReplace:a1[6], a1[7]];
  v7 = a1[5];
  if (v7)
  {
    (*(v7 + 16))(v7, 1);
  }
}

- (void)selectTextInRange:(uint64_t)a3 completion:(void *)a4
{
  v7 = a4;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 4);

    if (WeakRetained)
    {
      v9 = objc_loadWeakRetained(a1 + 4);
      v10 = [PKTextInputUITextInputInterface selectedRangeInTextInput:v9];
      v12 = v11;

      v13 = objc_loadWeakRetained(a1 + 4);
      v14 = [PKTextInputUITextInputInterface selectTextInRange:a2 inTextInput:a3, v13];

      [PKTextInputUtilities markAnalyticsForSelectionChange:a2 relativeRangeBefore:a3, v10, v12];
      if (v7)
      {
        v7[2](v7, v14);
      }
    }

    else
    {
      v15 = a1[8];
      if (v15 && (v16 = v15, v17 = objc_loadWeakRetained(a1 + 7), v17, v16, v17))
      {
        v18 = [a1[8] selectedTextRange];
        v20 = v19;
        v21 = [a1[8] deltaForSelectionRange:{a2, a3}];
        v23 = v22;
        v24 = objc_loadWeakRetained(a1 + 7);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __58__PKTextInputElementContent_selectTextInRange_completion___block_invoke;
        v25[3] = &unk_1E82D8CA8;
        v27 = a2;
        v28 = a3;
        v29 = v18;
        v30 = v20;
        v26 = v7;
        [PKTextInputUtilities adjustSelectionWithDelta:v21 forWebDocumentSourceView:v23 completionHandler:v24, v25];
      }

      else if (v7)
      {
        v7[2](v7, 0);
      }
    }
  }
}

uint64_t __58__PKTextInputElementContent_selectTextInRange_completion___block_invoke(void *a1)
{
  [PKTextInputUtilities markAnalyticsForSelectionChange:a1[5] relativeRangeBefore:a1[6], a1[7], a1[8]];
  result = a1[4];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)configureSelectionStyleForHighlight
{
  if (!a1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v2;
  }

  else
  {
    v4 = (a1 + 40);
  }

  v5 = objc_loadWeakRetained(v4);

  if (v5)
  {
    v6 = [PKTextInputUITextInputInterface configureSelectionStyleForHighlightInTextInput:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)configureSelectionStyleForDeletionPreview
{
  if (!a1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v2;
  }

  else
  {
    v4 = (a1 + 40);
  }

  v5 = objc_loadWeakRetained(v4);

  if (v5)
  {
    v6 = [PKTextInputUITextInputInterface configureSelectionStyleForDeletionPreviewInTextInput:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)configureSelectionStyleForNormalSelection
{
  if (!a1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v2;
  }

  else
  {
    v4 = (a1 + 40);
  }

  v5 = objc_loadWeakRetained(v4);

  if (v5)
  {
    v6 = [PKTextInputUITextInputInterface configureSelectionStyleForNormalSelectionInTextInput:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_insertTextPlaceholderWithSize:(double)a3 completionHandler:(double)a4
{
  v7 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));

    if (WeakRetained)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [PKTextInputUITextInputInterface insertTextPlaceholderWithSize:v9 inTextInput:a3, a4];

      v7[2](v7, v10);
    }

    else
    {
      v11 = objc_loadWeakRetained((a1 + 56));

      if (v11)
      {
        v12 = objc_loadWeakRetained((a1 + 56));
        if (objc_opt_respondsToSelector())
        {
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __78__PKTextInputElementContent__insertTextPlaceholderWithSize_completionHandler___block_invoke;
          v19[3] = &unk_1E82D8CD0;
          v20 = v7;
          [v12 insertTextPlaceholderWithSize:v19 completionHandler:{a3, a4}];
        }

        else if (objc_opt_respondsToSelector())
        {
          v13 = [v12 insertDictationResultPlaceholder];
          if (v13)
          {
            if (objc_opt_respondsToSelector())
            {
              [v12 frameForDictationResultPlaceholder:v13];
            }

            else
            {
              v14 = *MEMORY[0x1E695F050];
              v15 = *(MEMORY[0x1E695F050] + 8);
              v16 = *(MEMORY[0x1E695F050] + 16);
              v17 = *(MEMORY[0x1E695F050] + 24);
            }

            v18 = [PKTextInputTextPlaceholder placeholderWithToken:v13 frame:v14, v15, v16, v17];
            v7[2](v7, v18);
          }

          else
          {
            v7[2](v7, 0);
          }
        }

        else
        {
          v7[2](v7, 0);
        }
      }

      else if (v7)
      {
        v7[2](v7, 0);
      }
    }
  }
}

void __78__PKTextInputElementContent__insertTextPlaceholderWithSize_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [PKTextInputTextPlaceholder placeholderWithWebTextPlaceholder:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)_removeTextPlaceholder:(uint64_t)a3 willInsertText:(void *)a4 completionHandler:
{
  v14 = a2;
  v7 = a4;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));

    if (WeakRetained)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      [PKTextInputUITextInputInterface removeTextPlaceholder:v14 inTextInput:v9];

LABEL_4:
      v7[2](v7);
      goto LABEL_12;
    }

    v10 = objc_loadWeakRetained((a1 + 56));

    if (!v10)
    {
      goto LABEL_4;
    }

    v11 = objc_loadWeakRetained((a1 + 56));
    if (objc_opt_respondsToSelector())
    {
      v12 = [v14 placeholder];
      [v11 removeTextPlaceholder:v12 willInsertText:a3 completionHandler:v7];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [v14 placeholder];
        [v11 removeDictationResultPlaceholder:v13 willInsertResult:a3];
      }

      v7[2](v7);
    }
  }

LABEL_12:
}

- (double)frameForTextPlaceholder:(void *)a3 inCoordinateSpace:
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v20 = 0.0;
    goto LABEL_7;
  }

  v7 = [v5 rects];
  v8 = [v7 firstObject];
  [v8 rect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v18 = objc_loadWeakRetained((a1 + 32));
    v19 = [v18 textInputView];
    v20 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v19, v6, v10, v12, v14, v16);
  }

  else
  {
    v21 = objc_loadWeakRetained((a1 + 56));

    if (!v21)
    {
      v20 = *MEMORY[0x1E695F050];
      goto LABEL_7;
    }

    v18 = objc_loadWeakRetained((a1 + 56));
    v20 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v18, v6, v10, v12, v14, v16);
  }

LABEL_7:
  return v20;
}

@end