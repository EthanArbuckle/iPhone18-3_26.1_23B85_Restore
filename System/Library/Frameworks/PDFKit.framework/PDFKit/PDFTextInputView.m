@interface PDFTextInputView
- (BOOL)interactionShouldBegin:(id)a3 atPoint:(CGPoint)a4;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)firstRectForRange:(id)a3;
- (PDFTextInputView)initWithDelegate:(id)a3;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (id)_closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4;
- (id)_selectionForTextRange:(id)a3;
- (id)_targetedPreviewForRange:(id)a3;
- (id)characterRangeAtPoint:(CGPoint)a3;
- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4;
- (id)editMenuForTextRange:(id)a3 suggestedActions:(id)a4;
- (id)linkRegionsConstrainedToLineAtPoint:(CGPoint)a3;
- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5;
- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4;
- (id)selectionRectsForRange:(id)a3;
- (id)textInRange:(id)a3;
- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4;
- (int64_t)compareFoundRange:(id)a3 toRange:(id)a4 inDocument:(id)a5;
- (int64_t)comparePosition:(id)a3 toPosition:(id)a4;
- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4;
- (void)_setDimmingViewVisible:(BOOL)a3;
- (void)clearAllDecoratedFoundText;
- (void)decorateFoundTextRange:(id)a3 inDocument:(id)a4 usingStyle:(int64_t)a5;
- (void)handleGesture:(unint64_t)a3 state:(int64_t)a4 location:(CGPoint)a5 locationOfFirstTouch:(CGPoint)a6 isIndirectTouch:(BOOL)a7;
- (void)layoutSubviews;
- (void)performTextSearchWithQueryString:(id)a3 usingOptions:(id)a4 resultAggregator:(id)a5;
- (void)setSelectedTextRange:(id)a3;
- (void)setSelection:(id)a3;
- (void)updateGestureRecognizerDependencies;
- (void)updateTextSelectionGraphics;
@end

@implementation PDFTextInputView

- (PDFTextInputView)initWithDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PDFTextInputView;
  v5 = [(PDFTextInputView *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [objc_alloc(MEMORY[0x1E69DD100]) initWithTextInput:v6];
    textInputTokenizer = v6->_textInputTokenizer;
    v6->_textInputTokenizer = v7;

    v9 = [MEMORY[0x1E69DD110] textInteractionsForSet:1];
    textInteraction = v6->_textInteraction;
    v6->_textInteraction = v9;

    [(UITextInteraction *)v6->_textInteraction setDelegate:v6];
    [(UITextInteraction *)v6->_textInteraction setTextInput:v6];
    [(PDFTextInputView *)v6 addInteraction:v6->_textInteraction];
  }

  return v6;
}

- (void)updateTextSelectionGraphics
{
  [(UITextInputDelegate *)self->_textInputDelegate selectionWillChange:self];
  textInputDelegate = self->_textInputDelegate;

  [(UITextInputDelegate *)textInputDelegate selectionDidChange:self];
}

- (void)setSelection:(id)a3
{
  if (a3)
  {
    v4 = [PDFTextRange textRangeFromSelection:?];
    textSelectionRange = self->_textSelectionRange;
    obj = v4;
    if (textSelectionRange)
    {
      v6 = [(UITextRange *)textSelectionRange isEmpty];
      v4 = obj;
      v7 = !v6;
      if (obj)
      {
LABEL_4:
        v8 = [v4 isEmpty] ^ 1;
LABEL_10:
        if ((v7 | v8))
        {
          [(UITextInputDelegate *)self->_textInputDelegate textWillChange:self];
          objc_storeStrong(&self->_textSelectionRange, obj);
          [(UITextInputDelegate *)self->_textInputDelegate textDidChange:self];
        }

        return;
      }
    }

    else
    {
      v7 = 0;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

  [(UITextInputDelegate *)self->_textInputDelegate textWillChange:self];
  v9 = self->_textSelectionRange;
  self->_textSelectionRange = 0;

  textInputDelegate = self->_textInputDelegate;

  [(UITextInputDelegate *)textInputDelegate textDidChange:self];
}

- (void)handleGesture:(unint64_t)a3 state:(int64_t)a4 location:(CGPoint)a5 locationOfFirstTouch:(CGPoint)a6 isIndirectTouch:(BOOL)a7
{
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        if (a7)
        {
          v7 = 3;
        }

        else
        {
          v7 = 4;
        }

        goto LABEL_13;
      }

LABEL_10:
      v7 = 0;
      goto LABEL_13;
    }

    v7 = 3;
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v7 = 2;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v7 = 1;
  }

LABEL_13:
  if (a7)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  [(UITextInteraction *)self->_textInteraction _performGestureType:v7 state:a4 location:v8 locationOfFirstTouch:a5.x forTouchType:a5.y, a6.x, a6.y];
}

- (void)updateGestureRecognizerDependencies
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(PDFTextInputView *)self gestureRecognizers];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained pdfView];
  v19 = [v5 gestureRecognizers];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = v19;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            v14 = 0;
            do
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * v14);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_17;
                }

LABEL_16:
                [v9 requireGestureRecognizerToFail:v15];
                goto LABEL_17;
              }

              v16 = [v9 numberOfTapsRequired];
              if (v16 == [v15 numberOfTapsRequired])
              {
                goto LABEL_16;
              }

LABEL_17:
              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }
}

- (id)_selectionForTextRange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained pdfView];

    v7 = [v6 document];
    v8 = v7;
    if (v7 && ([v7 isLocked] & 1) == 0)
    {
      v10 = [v4 start];
      v11 = [v4 end];
      v12 = [v10 page];
      v13 = [v10 offset];
      v14 = [v11 page];
      v15 = [v8 selectionFromPage:v12 atCharacterIndex:v13 toPage:v14 atCharacterIndex:{objc_msgSend(v11, "offset") - 1}];

      v9 = [v15 copyAsTextSelection];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)textInRange:(id)a3
{
  v3 = [(PDFTextInputView *)self _selectionForTextRange:a3];
  v4 = [v3 string];

  return v4;
}

- (void)setSelectedTextRange:(id)a3
{
  v28 = a3;
  v5 = [v28 start];
  v6 = [v5 page];
  v7 = [(UITextRange *)self->_textSelectionRange start];
  v8 = [v7 page];
  if (v6 == v8)
  {
    v9 = [v28 start];
    v10 = [v9 offset];
    v11 = [(UITextRange *)self->_textSelectionRange start];
    if (v10 == [v11 offset])
    {
      v27 = v9;
      v26 = [v28 end];
      v12 = [v26 page];
      v24 = [(UITextRange *)self->_textSelectionRange end];
      v13 = [v24 page];
      v14 = v13;
      v25 = v12;
      if (v12 == v13)
      {
        v21 = [v28 end];
        v22 = [v21 offset];
        v20 = [(UITextRange *)self->_textSelectionRange end];
        v23 = [v20 offset];

        if (v22 == v23)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }

      v9 = v27;
    }
  }

LABEL_7:
  objc_storeStrong(&self->_textSelectionRange, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [WeakRetained pdfView];

  v17 = [v16 document];
  v18 = v17;
  if (v17 && ([v17 isLocked] & 1) == 0)
  {
    v19 = [(PDFTextInputView *)self _selectionForTextRange:v28];
    [v16 setCurrentSelection:v19 updateTextInput:0];
  }

LABEL_11:
}

- (UITextPosition)beginningOfDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained pdfView];

  v4 = [v3 document];
  v5 = v4;
  if (!v4 || ([v4 isLocked] & 1) != 0)
  {
    goto LABEL_10;
  }

  v6 = [v5 pageCount];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = 0;
  while (1)
  {
    v8 = [v5 pageAtIndex:v7];
    v9 = [v8 selectionForAll];
    v10 = [v9 numberOfTextRangesOnPage:v8];

    if (v10)
    {
      break;
    }

    if (v6 == ++v7)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    v6 = [[PDFTextPosition alloc] initWithOffset:0 onPage:v8];
  }

  else
  {
LABEL_10:
    v6 = 0;
  }

LABEL_11:

  return v6;
}

- (UITextPosition)endOfDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained pdfView];

  v4 = [v3 document];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  if ([v4 isLocked])
  {
    goto LABEL_10;
  }

  v6 = [v5 pageCount];
  if (v6 < 1)
  {
    goto LABEL_10;
  }

  v7 = v6 + 1;
  while (1)
  {
    v8 = [v5 pageAtIndex:v7 - 2];
    v9 = [v8 selectionForAll];
    v10 = [v9 numberOfTextRangesOnPage:v8];

    if (v10)
    {
      break;
    }

    if (--v7 <= 1)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    v11 = [v8 selectionForAll];
    v12 = [v11 rangeAtIndex:objc_msgSend(v11 onPage:{"numberOfTextRangesOnPage:", v8) - 1, v8}];
    v14 = [[PDFTextPosition alloc] initWithOffset:v12 + v13 onPage:v8];
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  return v14;
}

- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PDFTextRange alloc] initFromPos:v6 toPos:v5];

  return v7;
}

- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5
{
  v7 = a3;
  if (a5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [WeakRetained pdfView];

    v10 = [v9 document];
    v11 = v10;
    if (v10 && ([v10 isLocked] & 1) == 0)
    {
      v15 = [v7 page];
      v16 = [v11 textPositionFromPage:v15 atCharacterIndex:objc_msgSend(v7 offset:{"offset"), a5}];

      if (v16)
      {
        v17 = [PDFTextPosition alloc];
        v18 = [v16 offset];
        v19 = [v16 page];
        v12 = [(PDFTextPosition *)v17 initWithOffset:v18 onPage:v19];
      }

      else
      {
        v19 = [v7 page];
        NSLog(&cfstr_ErrorFailedToC.isa, v19, [v7 offset], a5);
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = [PDFTextPosition alloc];
    v14 = [v7 offset];
    v9 = [v7 page];
    v12 = [(PDFTextPosition *)v13 initWithOffset:v14 onPage:v9];
  }

  return v12;
}

- (int64_t)comparePosition:(id)a3 toPosition:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = [v7 page];
  v9 = [v8 document];
  v10 = [v9 indexForPage:v8];

  v11 = v6;
  v12 = [v11 page];
  v13 = [v12 document];
  v14 = [v13 indexForPage:v12];

  if (v10 >= v14)
  {
    if (v10 > v14)
    {
      v15 = 1;
      goto LABEL_7;
    }

    v16 = [v7 offset];
    if (v16 >= [v11 offset])
    {
      v17 = [v7 offset];
      v15 = v17 > [v11 offset];
      goto LABEL_7;
    }
  }

  v15 = -1;
LABEL_7:

  return v15;
}

- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained pdfView];

  v10 = [v9 document];
  v11 = v10;
  if (v10 && ([v10 isLocked] & 1) == 0)
  {
    v13 = v6;
    if (v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = [(PDFTextInputView *)self endOfDocument];
    }

    v15 = v14;
    v16 = [v13 page];
    v17 = [v13 offset];
    v18 = [v15 page];
    v38 = v15;
    v19 = [v11 selectionFromPage:v16 atCharacterIndex:v17 toPage:v18 atCharacterIndex:{objc_msgSend(v15, "offset")}];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = [v19 pages];
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v34 = v13;
      v35 = v9;
      v36 = v7;
      v37 = v6;
      v23 = 0;
      v24 = *v40;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v39 + 1) + 8 * i);
          v27 = [v19 numberOfTextRangesOnPage:v26];
          if (v27)
          {
            v28 = v27;
            for (j = 0; j != v28; ++j)
            {
              [v19 rangeAtIndex:j onPage:v26];
              v23 += v30;
            }
          }

          v31 = [v19 pages];
          v32 = [v31 firstObject];

          if (v26 != v32)
          {
            ++v23;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v22);
      v12 = v23 - 1;
      v7 = v36;
      v6 = v37;
      v13 = v34;
      v9 = v35;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 3)
  {
    v7 = [v5 start];
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    v7 = [v5 end];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  v7 = [(PDFTextInputView *)self positionFromPosition:v6 inDirection:a4 offset:1];
  v8 = [(PDFTextInputView *)self textRangeFromPosition:v6 toPosition:v7];

  return v8;
}

- (CGRect)firstRectForRange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained pdfView];

  v7 = [v6 document];
  v8 = v7;
  if (v7 && ![v7 isLocked])
  {
    v13 = [(PDFTextInputView *)self _selectionForTextRange:v4];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 pages];
      v16 = [v15 firstObject];

      [v14 firstSpanBoundsForPage:v16];
      [v6 convertRect:v16 fromPage:?];
      [v6 convertRect:self toView:?];
      v9 = v17;
      v10 = v18;
      v11 = v19;
      v12 = v20;
    }

    else
    {
      v9 = *MEMORY[0x1E695F050];
      v10 = *(MEMORY[0x1E695F050] + 8);
      v11 = *(MEMORY[0x1E695F050] + 16);
      v12 = *(MEMORY[0x1E695F050] + 24);
    }
  }

  else
  {
    v9 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
  }

  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)caretRectForPosition:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained pdfView];

  v7 = [v6 document];
  v8 = v7;
  if (v7 && ![v7 isLocked])
  {
    v13 = v4;
    v14 = [v13 page];
    v15 = [v13 offset];

    v16 = [v8 selectionFromPage:v14 atCharacterIndex:v15 toPage:v14 atCharacterIndex:v15];
    [v16 boundsForPage:v14];
    [v6 convertRect:v14 fromPage:?];
    [v6 convertRect:self toView:?];
    v9 = v17;
    v10 = v18;
    v11 = v19;
    v12 = v20;
  }

  else
  {
    v9 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
  }

  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)selectionRectsForRange:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained pdfView];

  v7 = [v6 document];
  v8 = v7;
  if (v7 && ([v7 isLocked] & 1) == 0)
  {
    v10 = [(PDFTextInputView *)v31 _selectionForTextRange:v4];
    if (v10)
    {
      v29 = v8;
      v30 = v4;
      v28 = v10;
      v11 = [v10 selectionsByLine];
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v33;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v32 + 1) + 8 * i) copyAsTextSelection];
            v18 = [v17 pages];
            v19 = [v18 firstObject];

            [v17 boundsForPage:v19];
            [v6 convertRect:v19 fromPage:?];
            [v6 convertRect:v31 toView:?];
            v24 = [[PDFTextSelectionRect alloc] initWithRect:v19 onPage:v20, v21, v22, v23];
            v25 = [v12 firstObject];

            if (v17 == v25)
            {
              [(PDFTextSelectionRect *)v24 setIsStartingRect:1];
            }

            v26 = [v12 lastObject];

            if (v17 == v26)
            {
              [(PDFTextSelectionRect *)v24 setIsEndingRect:1];
            }

            [v9 addObject:v24];
          }

          v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v14);
      }

      v8 = v29;
      v4 = v30;
      v10 = v28;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained pdfView];

  v10 = [v9 document];
  v11 = v10;
  if (!v10 || ([v10 isLocked] & 1) != 0)
  {
    v12 = 0;
    goto LABEL_17;
  }

  [(PDFTextInputView *)self convertPoint:v9 toView:x, y];
  v14 = v13;
  v16 = v15;
  v17 = [v9 pageForPoint:1 nearest:?];
  if (v17)
  {
    v18 = [v7 start];
    v19 = [v7 end];
    if (v7)
    {
      v20 = [v18 page];
      v21 = [v11 indexForPage:v20];

      v22 = [v19 page];
      v23 = [v11 indexForPage:v22];

      v24 = [v11 indexForPage:v17];
      v12 = 0;
      if (v24 < v21 || v24 > v23)
      {
        goto LABEL_15;
      }
    }

    [v9 convertPoint:v17 toPage:{v14, v16}];
    v26 = v25;
    v28 = v27;
    v29 = [v17 selectionForCharacterAtPoint:?];
    v30 = v29;
    if (v29)
    {
      v31 = [v29 rangeAtIndex:0 onPage:v17];
    }

    else
    {
      v31 = [v17 characterIndexNearestPoint:{v26, v28}];
      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 0;
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }
    }

    v12 = [[PDFTextPosition alloc] initWithOffset:v31 onPage:v17];
    goto LABEL_14;
  }

  v12 = 0;
LABEL_16:

LABEL_17:

  return v12;
}

- (id)characterRangeAtPoint:(CGPoint)a3
{
  v4 = [(PDFTextInputView *)self _closestPositionToPoint:0 withinRange:a3.x, a3.y];
  v5 = [(PDFTextInputView *)self positionFromPosition:v4 offset:1];
  v6 = [[PDFTextRange alloc] initFromPos:v4 toPos:v5];

  return v6;
}

- (BOOL)interactionShouldBegin:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained pdfView];

  v9 = [v8 document];
  v10 = v9;
  if (!v9 || ([v9 isLocked] & 1) != 0 || objc_msgSend(v8, "isInMarkupMode") && !objc_msgSend(v8, "isTextSelectionEnabled"))
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    [(PDFTextInputView *)self convertPoint:v8 toView:x, y];
    v13 = v12;
    v15 = v14;
    v16 = [v8 pageForPoint:1 nearest:?];
    if (v16)
    {
      [v8 convertPoint:v16 toPage:{v13, v15}];
      v17 = [v16 annotationAtPoint:?];
      v18 = [v17 valueForAnnotationKey:@"/FT"];
      if ([v18 isEqualToString:@"/Tx"])
      {
        LOBYTE(v11) = 0;
      }

      else
      {
        v11 = [v18 isEqualToString:@"/Ch"] ^ 1;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (id)linkRegionsConstrainedToLineAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v45 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained pdfView];

  v38 = self;
  [(PDFTextInputView *)self convertPoint:v7 toView:x, y];
  v9 = v8;
  v11 = v10;
  v12 = [v7 pageForPoint:1 nearest:?];
  if (v12)
  {
    [v7 convertPoint:v12 toPage:{v9, v11}];
    v13 = [v12 selectionForLineAtPoint:?];
    if (v13)
    {
      v36 = v13;
      [v13 boundsForPage:v12];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v37 = v12;
      v22 = [v12 annotations];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v41;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v41 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v40 + 1) + 8 * i);
            v28 = [v27 valueForAnnotationKey:@"/Subtype"];
            v29 = [v28 isEqualToString:@"/Link"];

            if (v29)
            {
              [v27 bounds];
              v30 = v47.origin.x;
              v31 = v47.origin.y;
              width = v47.size.width;
              height = v47.size.height;
              v48.origin.x = v15;
              v48.origin.y = v17;
              v48.size.width = v19;
              v48.size.height = v21;
              if (PDFRectIntersectsRect(v47, v48))
              {
                [v7 convertRect:v37 fromPage:{v30, v31, width, height}];
                [v7 convertRect:v38 toView:?];
                v34 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:?];
                [v39 addObject:v34];
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v24);
      }

      v13 = v36;
      v12 = v37;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (void)_setDimmingViewVisible:(BOOL)a3
{
  v3 = a3;
  dimmingViewVisible = self->_dimmingViewVisible;
  self->_dimmingViewVisible = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained pdfView];
  v8 = [v7 documentView];

  if (!v3 || dimmingViewVisible)
  {
    if (!v3 && dimmingViewVisible)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __43__PDFTextInputView__setDimmingViewVisible___block_invoke_2;
      v15[3] = &unk_1E8150990;
      v15[4] = self;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __43__PDFTextInputView__setDimmingViewVisible___block_invoke_3;
      v14[3] = &unk_1E8150CD0;
      v14[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v15 animations:v14 completion:0.2];
    }
  }

  else
  {
    searchDimmingView = self->_searchDimmingView;
    if (!searchDimmingView)
    {
      v10 = objc_alloc(MEMORY[0x1E69DD138]);
      [v8 bounds];
      v11 = [v10 initWithFrame:?];
      v12 = self->_searchDimmingView;
      self->_searchDimmingView = v11;

      searchDimmingView = self->_searchDimmingView;
    }

    v13 = [(UITextSearchingDimmingView *)searchDimmingView superview];

    if (!v13)
    {
      [v8 addSubview:self->_searchDimmingView];
    }

    [(UITextSearchingDimmingView *)self->_searchDimmingView setAlpha:0.0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __43__PDFTextInputView__setDimmingViewVisible___block_invoke;
    v16[3] = &unk_1E8150990;
    v16[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v16 options:0 animations:0.2 completion:0.0];
  }

  if (v3)
  {
    [v8 bringSubviewToFront:self->_searchDimmingView];
  }
}

uint64_t __43__PDFTextInputView__setDimmingViewVisible___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 464) removeFromSuperview];
  }

  return result;
}

- (id)_targetedPreviewForRange:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained pdfView];

  v7 = [(PDFTextInputView *)self _selectionForTextRange:v4];
  v8 = [v7 pages];
  v9 = [v8 objectAtIndex:0];

  [v7 boundsForPage:v9];
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  v14 = 0;
  if (!CGRectIsNull(v56))
  {
    v40 = v6;
    [v6 convertRect:v9 fromPage:{x, y, width, height}];
    v41 = v15;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = PDFScreenGetBackingScaleFactor() * (v18 / width);
    v23 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v19, v21}];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __45__PDFTextInputView__targetedPreviewForRange___block_invoke;
    v46[3] = &unk_1E8150CF8;
    v47 = v9;
    v48 = x;
    v49 = y;
    v50 = width;
    v51 = height;
    v52 = v22;
    v39 = v23;
    v38 = [v23 imageWithActions:v46];
    v24 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v38];
    [v24 setFrame:{v41, v17, v19, v21}];
    [v24 setClipsToBounds:1];
    v25 = [(PDFTextInputView *)self selectionRectsForRange:v4];
    v26 = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v43;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = MEMORY[0x1E696B098];
          [*(*(&v42 + 1) + 8 * i) rect];
          v33 = [v32 valueWithCGRect:?];
          [v26 addObject:v33];
        }

        v29 = [v27 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v29);
    }

    v34 = [MEMORY[0x1E69DD0D0] preferredPreviewParametersForTextLineRects:v26];
    v35 = objc_alloc(MEMORY[0x1E69DCE38]);
    v6 = v40;
    [v40 frame];
    UIRectGetCenter();
    v36 = [v35 initWithContainer:v40 center:?];
    v14 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v24 parameters:v34 target:v36];
  }

  return v14;
}

uint64_t __45__PDFTextInputView__targetedPreviewForRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 boundsForBox:0];
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeTranslation(&v12, v5 - *(a1 + 40), v6 - *(a1 + 48));
  CGAffineTransformMakeScale(&t2, *(a1 + 72), *(a1 + 72));
  v9 = v12;
  CGAffineTransformConcat(&v11, &v9, &t2);
  v12 = v11;
  v7 = [v4 CGContext];

  v11 = v12;
  CGContextSetCTM();
  return [*(a1 + 32) drawWithBox:0 toContext:v7];
}

- (int64_t)compareFoundRange:(id)a3 toRange:(id)a4 inDocument:(id)a5
{
  v7 = a4;
  v8 = [(PDFTextInputView *)self _selectionForTextRange:a3];
  v9 = [(PDFTextInputView *)self _selectionForTextRange:v7];

  v10 = [v8 compare:v9];
  return v10;
}

- (void)performTextSearchWithQueryString:(id)a3 usingOptions:(id)a4 resultAggregator:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained pdfView];

  v13 = [v12 document];
  [(PDFTextSearchAggregator *)self->_activeSearch invalidate];
  v14 = [[PDFTextSearchAggregator alloc] initWithSearchString:v10 aggregator:v8];

  activeSearch = self->_activeSearch;
  self->_activeSearch = v14;

  v18[0] = v10;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v17 = [v9 stringCompareOptions];

  [v13 asyncFindStrings:v16 withOptions:v17 withDelegate:self->_activeSearch onQueue:MEMORY[0x1E69E96A0]];
}

- (void)decorateFoundTextRange:(id)a3 inDocument:(id)a4 usingStyle:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (a5 == 1)
  {
    foundTextRanges = self->_foundTextRanges;
    if (!foundTextRanges)
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = self->_foundTextRanges;
      self->_foundTextRanges = v22;

      foundTextRanges = self->_foundTextRanges;
    }

    [(NSMutableArray *)foundTextRanges addObject:v9];
  }

  else if (a5 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [WeakRetained pdfView];

    objc_storeStrong(&self->_highlightedTextRange, a3);
    v13 = [(PDFTextInputView *)self _selectionForTextRange:v9];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 pages];
      v16 = [v15 objectAtIndex:0];

      [v14 boundsForPage:v16];
      [v12 goToRect:v16 onPage:?];
    }

    searchHighlightView = self->_searchHighlightView;
    if (!searchHighlightView)
    {
      objc_initWeak(&location, self);
      v18 = objc_alloc(MEMORY[0x1E69DD0D0]);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __65__PDFTextInputView_decorateFoundTextRange_inDocument_usingStyle___block_invoke;
      v25[3] = &unk_1E8150D20;
      objc_copyWeak(&v26, &location);
      v19 = [v18 initWithPreviewProvider:v25];
      v20 = self->_searchHighlightView;
      self->_searchHighlightView = v19;

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      searchHighlightView = self->_searchHighlightView;
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__PDFTextInputView_decorateFoundTextRange_inDocument_usingStyle___block_invoke_2;
    v24[3] = &unk_1E8150990;
    v24[4] = self;
    [(UITextHighlightView *)searchHighlightView animateWithCompletion:v24];
  }

  [(PDFTextInputView *)self setNeedsLayout];
}

id __65__PDFTextInputView_decorateFoundTextRange_inDocument_usingStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _targetedPreviewForRange:WeakRetained[59]];

  return v2;
}

void __65__PDFTextInputView_decorateFoundTextRange_inDocument_usingStyle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 408));
  v3 = [WeakRetained pdfView];
  v4 = [v3 findInteraction];
  v5 = [v4 isFindNavigatorVisible];

  if ((v5 & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 456);

    [v6 fadeAwayWithCompletion:0];
  }
}

- (void)clearAllDecoratedFoundText
{
  highlightedTextRange = self->_highlightedTextRange;
  self->_highlightedTextRange = 0;

  [(NSMutableArray *)self->_foundTextRanges removeAllObjects];
  [(PDFTextInputView *)self _setDimmingViewVisible:0];

  [(PDFTextInputView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v81 = *MEMORY[0x1E69E9840];
  v77.receiver = self;
  v77.super_class = PDFTextInputView;
  [(PDFTextInputView *)&v77 layoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained pdfView];

  v5 = [v4 documentView];
  v6 = [v4 documentScrollView];
  v60 = v4;
  v7 = [v4 findInteraction];
  v8 = [v7 isFindNavigatorVisible];

  if ([(NSMutableArray *)self->_foundTextRanges count])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v61 = v6;
  if (v9)
  {
    [(PDFTextInputView *)self _setDimmingViewVisible:0];
  }

  else
  {
    [(PDFTextInputView *)self _setDimmingViewVisible:1];
    v10 = [MEMORY[0x1E695DF70] array];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = self->_foundTextRanges;
    v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v73 objects:v80 count:16];
    v64 = v11;
    if (v11)
    {
      v63 = *v74;
      do
      {
        v12 = 0;
        do
        {
          if (*v74 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [(PDFTextInputView *)self selectionRectsForRange:*(*(&v73 + 1) + 8 * v12)];
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v69 objects:v79 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v70;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v70 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [*(*(&v69 + 1) + 8 * i) rect];
                [v5 convertRect:self fromView:?];
                v18 = [MEMORY[0x1E696B098] valueWithCGRect:?];
                [v10 addObject:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v69 objects:v79 count:16];
            }

            while (v15);
          }

          ++v12;
        }

        while (v12 != v64);
        v64 = [(NSMutableArray *)obj countByEnumeratingWithState:&v73 objects:v80 count:16];
      }

      while (v64);
    }

    v6 = v61;
    [v61 contentSize];
    v20 = v19;
    [v5 bounds];
    if (v20 >= v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    [v61 contentSize];
    v24 = v23;
    [v5 bounds];
    if (v24 >= v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    [(UITextSearchingDimmingView *)self->_searchDimmingView setFrame:-800.0, -800.0, v22 + 1600.0, v26 + 1600.0];
    [(UITextSearchingDimmingView *)self->_searchDimmingView setTextRects:v10];
    [(UITextSearchingDimmingView *)self->_searchDimmingView setContentInset:-800.0, -800.0, -800.0, -800.0];
  }

  searchHighlightView = self->_searchHighlightView;
  if (self->_highlightedTextRange)
  {
    v28 = [(UITextHighlightView *)searchHighlightView superview];

    if (!v28)
    {
      [v5 addSubview:self->_searchHighlightView];
    }

    v29 = [(PDFTextInputView *)self selectionRectsForRange:self->_highlightedTextRange];
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v34 = [MEMORY[0x1E695DF70] array];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v35 = v29;
    v36 = [v35 countByEnumeratingWithState:&v65 objects:v78 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v66;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v66 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v65 + 1) + 8 * j);
          [v40 rect];
          v84.origin.x = v41;
          v84.origin.y = v42;
          v84.size.width = v43;
          v84.size.height = v44;
          v82.origin.x = x;
          v82.origin.y = y;
          v82.size.width = width;
          v82.size.height = height;
          v83 = CGRectUnion(v82, v84);
          x = v83.origin.x;
          y = v83.origin.y;
          width = v83.size.width;
          height = v83.size.height;
          v45 = MEMORY[0x1E696B098];
          [v40 rect];
          v46 = [v45 valueWithCGRect:?];
          [v34 addObject:v46];
        }

        v37 = [v35 countByEnumeratingWithState:&v65 objects:v78 count:16];
      }

      while (v37);
    }

    v47 = [MEMORY[0x1E69DD0D0] preferredPreviewParametersForTextLineRects:v34];
    [v47 _textPathInsets];
    [v5 convertRect:self fromView:{x + v51, y + v48, width - (v51 + v49), height - (v48 + v50)}];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    if (PDFRectValid(v52, v54, v56, v58))
    {
      [(UITextHighlightView *)self->_searchHighlightView setFrame:v53, v55, v57, v59];
      [(UITextHighlightView *)self->_searchHighlightView invalidateContentView];
    }

    [v5 bringSubviewToFront:self->_searchHighlightView];

    v4 = v60;
    v6 = v61;
  }

  else
  {
    [(UITextHighlightView *)searchHighlightView removeFromSuperview];
  }
}

- (id)editMenuForTextRange:(id)a3 suggestedActions:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained pdfView];

  v10 = [(PDFTextInputView *)self _selectionForTextRange:v6];
  v11 = [v9 renderingProperties];
  v12 = [v11 isUsingPDFExtensionView];

  if (v12)
  {
    if (v10 && ([v10 isEmpty] & 1) == 0)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v13 = [v10 pages];
      v14 = [v13 countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v51;
LABEL_6:
        v17 = 0;
        while (1)
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v50 + 1) + 8 * v17);
          v19 = [v9 document];
          v20 = [v19 indexForPage:v18];

          v21 = [v9 pageViewForPageAtIndex:v20];
          if ([v21 isVisible])
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v50 objects:v56 count:16];
            if (v15)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }

        if (!v21)
        {
          goto LABEL_21;
        }

        v28 = [v21 page];
        [v10 boundsForPage:v28];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v37 = [v21 page];
        [v9 convertRect:v37 fromPage:{v30, v32, v34, v36}];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;

        v46 = [MEMORY[0x1E696AD88] defaultCenter];
        v54[0] = @"visible";
        v54[1] = @"selectionRect";
        v55[0] = MEMORY[0x1E695E118];
        v47 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v39, v41, v43, v45}];
        v55[1] = v47;
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
        [v46 postNotificationName:@"PDFTextSelectionShowTextSelectionMenu" object:v9 userInfo:v48];
      }

      else
      {
LABEL_12:
        v21 = v13;
      }
    }

LABEL_21:
    v27 = [MEMORY[0x1E69DCC60] menuWithChildren:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v22 = [v9 controller];
    v23 = [MEMORY[0x1E695DF70] arrayWithArray:v7];
    v24 = [v22 additionalEditMenuElementsForSelection:v10];
    if ([v24 count])
    {
      v25 = [v7 indexOfObjectPassingTest:&__block_literal_global_3];
      if (v25 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = [v7 count] - 1;
      }

      v26 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v25 + 1, objc_msgSend(v24, "count")}];
      [v23 insertObjects:v24 atIndexes:v26];
    }

    v27 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F416DF70 image:0 identifier:0 options:0 children:v23];
  }

  return v27;
}

uint64_t __58__PDFTextInputView_editMenuForTextRange_suggestedActions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 identifier];
    v7 = [v6 isEqual:*MEMORY[0x1E69DE1D0]];
    if (v7)
    {
      *a4 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end