@interface PDFTextInputView
- (BOOL)interactionShouldBegin:(id)begin atPoint:(CGPoint)point;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)firstRectForRange:(id)range;
- (PDFTextInputView)initWithDelegate:(id)delegate;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (id)_closestPositionToPoint:(CGPoint)point withinRange:(id)range;
- (id)_selectionForTextRange:(id)range;
- (id)_targetedPreviewForRange:(id)range;
- (id)characterRangeAtPoint:(CGPoint)point;
- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction;
- (id)editMenuForTextRange:(id)range suggestedActions:(id)actions;
- (id)linkRegionsConstrainedToLineAtPoint:(CGPoint)point;
- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset;
- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction;
- (id)selectionRectsForRange:(id)range;
- (id)textInRange:(id)range;
- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition;
- (int64_t)compareFoundRange:(id)range toRange:(id)toRange inDocument:(id)document;
- (int64_t)comparePosition:(id)position toPosition:(id)toPosition;
- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition;
- (void)_setDimmingViewVisible:(BOOL)visible;
- (void)clearAllDecoratedFoundText;
- (void)decorateFoundTextRange:(id)range inDocument:(id)document usingStyle:(int64_t)style;
- (void)handleGesture:(unint64_t)gesture state:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch isIndirectTouch:(BOOL)indirectTouch;
- (void)layoutSubviews;
- (void)performTextSearchWithQueryString:(id)string usingOptions:(id)options resultAggregator:(id)aggregator;
- (void)setSelectedTextRange:(id)range;
- (void)setSelection:(id)selection;
- (void)updateGestureRecognizerDependencies;
- (void)updateTextSelectionGraphics;
@end

@implementation PDFTextInputView

- (PDFTextInputView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PDFTextInputView;
  v5 = [(PDFTextInputView *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
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

- (void)setSelection:(id)selection
{
  if (selection)
  {
    v4 = [PDFTextRange textRangeFromSelection:?];
    textSelectionRange = self->_textSelectionRange;
    obj = v4;
    if (textSelectionRange)
    {
      isEmpty = [(UITextRange *)textSelectionRange isEmpty];
      v4 = obj;
      v7 = !isEmpty;
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

- (void)handleGesture:(unint64_t)gesture state:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch isIndirectTouch:(BOOL)indirectTouch
{
  if (gesture > 1)
  {
    if (gesture != 2)
    {
      if (gesture == 3)
      {
        if (indirectTouch)
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
    if (gesture)
    {
      if (gesture == 1)
      {
        v7 = 2;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v7 = 1;
  }

LABEL_13:
  if (indirectTouch)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  [(UITextInteraction *)self->_textInteraction _performGestureType:v7 state:state location:v8 locationOfFirstTouch:location.x forTouchType:location.y, touch.x, touch.y];
}

- (void)updateGestureRecognizerDependencies
{
  v30 = *MEMORY[0x1E69E9840];
  gestureRecognizers = [(PDFTextInputView *)self gestureRecognizers];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];
  gestureRecognizers2 = [pdfView gestureRecognizers];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = gestureRecognizers;
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
        v10 = gestureRecognizers2;
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

              numberOfTapsRequired = [v9 numberOfTapsRequired];
              if (numberOfTapsRequired == [v15 numberOfTapsRequired])
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

- (id)_selectionForTextRange:(id)range
{
  rangeCopy = range;
  if (rangeCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    pdfView = [WeakRetained pdfView];

    document = [pdfView document];
    v8 = document;
    if (document && ([document isLocked] & 1) == 0)
    {
      start = [rangeCopy start];
      v11 = [rangeCopy end];
      page = [start page];
      offset = [start offset];
      page2 = [v11 page];
      v15 = [v8 selectionFromPage:page atCharacterIndex:offset toPage:page2 atCharacterIndex:{objc_msgSend(v11, "offset") - 1}];

      copyAsTextSelection = [v15 copyAsTextSelection];
    }

    else
    {
      copyAsTextSelection = 0;
    }
  }

  else
  {
    copyAsTextSelection = 0;
  }

  return copyAsTextSelection;
}

- (id)textInRange:(id)range
{
  v3 = [(PDFTextInputView *)self _selectionForTextRange:range];
  string = [v3 string];

  return string;
}

- (void)setSelectedTextRange:(id)range
{
  rangeCopy = range;
  start = [rangeCopy start];
  page = [start page];
  start2 = [(UITextRange *)self->_textSelectionRange start];
  page2 = [start2 page];
  if (page == page2)
  {
    start3 = [rangeCopy start];
    offset = [start3 offset];
    start4 = [(UITextRange *)self->_textSelectionRange start];
    if (offset == [start4 offset])
    {
      v27 = start3;
      v26 = [rangeCopy end];
      page3 = [v26 page];
      v24 = [(UITextRange *)self->_textSelectionRange end];
      page4 = [v24 page];
      v14 = page4;
      v25 = page3;
      if (page3 == page4)
      {
        v21 = [rangeCopy end];
        offset2 = [v21 offset];
        v20 = [(UITextRange *)self->_textSelectionRange end];
        offset3 = [v20 offset];

        if (offset2 == offset3)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }

      start3 = v27;
    }
  }

LABEL_7:
  objc_storeStrong(&self->_textSelectionRange, range);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  document = [pdfView document];
  v18 = document;
  if (document && ([document isLocked] & 1) == 0)
  {
    v19 = [(PDFTextInputView *)self _selectionForTextRange:rangeCopy];
    [pdfView setCurrentSelection:v19 updateTextInput:0];
  }

LABEL_11:
}

- (UITextPosition)beginningOfDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  document = [pdfView document];
  v5 = document;
  if (!document || ([document isLocked] & 1) != 0)
  {
    goto LABEL_10;
  }

  pageCount = [v5 pageCount];
  if (!pageCount)
  {
    goto LABEL_11;
  }

  v7 = 0;
  while (1)
  {
    v8 = [v5 pageAtIndex:v7];
    selectionForAll = [v8 selectionForAll];
    v10 = [selectionForAll numberOfTextRangesOnPage:v8];

    if (v10)
    {
      break;
    }

    if (pageCount == ++v7)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
    pageCount = [[PDFTextPosition alloc] initWithOffset:0 onPage:v8];
  }

  else
  {
LABEL_10:
    pageCount = 0;
  }

LABEL_11:

  return pageCount;
}

- (UITextPosition)endOfDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  document = [pdfView document];
  v5 = document;
  if (!document)
  {
    goto LABEL_10;
  }

  if ([document isLocked])
  {
    goto LABEL_10;
  }

  pageCount = [v5 pageCount];
  if (pageCount < 1)
  {
    goto LABEL_10;
  }

  v7 = pageCount + 1;
  while (1)
  {
    v8 = [v5 pageAtIndex:v7 - 2];
    selectionForAll = [v8 selectionForAll];
    v10 = [selectionForAll numberOfTextRangesOnPage:v8];

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
    selectionForAll2 = [v8 selectionForAll];
    v12 = [selectionForAll2 rangeAtIndex:objc_msgSend(selectionForAll2 onPage:{"numberOfTextRangesOnPage:", v8) - 1, v8}];
    v14 = [[PDFTextPosition alloc] initWithOffset:v12 + v13 onPage:v8];
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  return v14;
}

- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  positionCopy = position;
  v7 = [[PDFTextRange alloc] initFromPos:positionCopy toPos:toPositionCopy];

  return v7;
}

- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset
{
  positionCopy = position;
  if (offset)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    pdfView = [WeakRetained pdfView];

    document = [pdfView document];
    v11 = document;
    if (document && ([document isLocked] & 1) == 0)
    {
      page = [positionCopy page];
      v16 = [v11 textPositionFromPage:page atCharacterIndex:objc_msgSend(positionCopy offset:{"offset"), offset}];

      if (v16)
      {
        v17 = [PDFTextPosition alloc];
        offset = [v16 offset];
        page2 = [v16 page];
        v12 = [(PDFTextPosition *)v17 initWithOffset:offset onPage:page2];
      }

      else
      {
        page2 = [positionCopy page];
        NSLog(&cfstr_ErrorFailedToC.isa, page2, [positionCopy offset], offset);
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
    offset2 = [positionCopy offset];
    pdfView = [positionCopy page];
    v12 = [(PDFTextPosition *)v13 initWithOffset:offset2 onPage:pdfView];
  }

  return v12;
}

- (int64_t)comparePosition:(id)position toPosition:(id)toPosition
{
  positionCopy = position;
  toPositionCopy = toPosition;
  v7 = positionCopy;
  page = [v7 page];
  document = [page document];
  v10 = [document indexForPage:page];

  v11 = toPositionCopy;
  page2 = [v11 page];
  document2 = [page2 document];
  v14 = [document2 indexForPage:page2];

  if (v10 >= v14)
  {
    if (v10 > v14)
    {
      v15 = 1;
      goto LABEL_7;
    }

    offset = [v7 offset];
    if (offset >= [v11 offset])
    {
      offset2 = [v7 offset];
      v15 = offset2 > [v11 offset];
      goto LABEL_7;
    }
  }

  v15 = -1;
LABEL_7:

  return v15;
}

- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition
{
  v44 = *MEMORY[0x1E69E9840];
  positionCopy = position;
  toPositionCopy = toPosition;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  document = [pdfView document];
  v11 = document;
  if (document && ([document isLocked] & 1) == 0)
  {
    v13 = positionCopy;
    if (toPositionCopy)
    {
      endOfDocument = toPositionCopy;
    }

    else
    {
      endOfDocument = [(PDFTextInputView *)self endOfDocument];
    }

    v15 = endOfDocument;
    page = [v13 page];
    offset = [v13 offset];
    page2 = [v15 page];
    v38 = v15;
    v19 = [v11 selectionFromPage:page atCharacterIndex:offset toPage:page2 atCharacterIndex:{objc_msgSend(v15, "offset")}];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    pages = [v19 pages];
    v21 = [pages countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v34 = v13;
      v35 = pdfView;
      v36 = toPositionCopy;
      v37 = positionCopy;
      v23 = 0;
      v24 = *v40;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(pages);
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

          pages2 = [v19 pages];
          firstObject = [pages2 firstObject];

          if (v26 != firstObject)
          {
            ++v23;
          }
        }

        v22 = [pages countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v22);
      v12 = v23 - 1;
      toPositionCopy = v36;
      positionCopy = v37;
      v13 = v34;
      pdfView = v35;
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

- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction
{
  rangeCopy = range;
  v6 = rangeCopy;
  if (direction == 3)
  {
    start = [rangeCopy start];
    goto LABEL_5;
  }

  if (direction == 2)
  {
    start = [rangeCopy end];
LABEL_5:
    v8 = start;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  v7 = [(PDFTextInputView *)self positionFromPosition:positionCopy inDirection:direction offset:1];
  v8 = [(PDFTextInputView *)self textRangeFromPosition:positionCopy toPosition:v7];

  return v8;
}

- (CGRect)firstRectForRange:(id)range
{
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  document = [pdfView document];
  v8 = document;
  if (document && ![document isLocked])
  {
    v13 = [(PDFTextInputView *)self _selectionForTextRange:rangeCopy];
    v14 = v13;
    if (v13)
    {
      pages = [v13 pages];
      firstObject = [pages firstObject];

      [v14 firstSpanBoundsForPage:firstObject];
      [pdfView convertRect:firstObject fromPage:?];
      [pdfView convertRect:self toView:?];
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

- (CGRect)caretRectForPosition:(id)position
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  document = [pdfView document];
  v8 = document;
  if (document && ![document isLocked])
  {
    v13 = positionCopy;
    page = [v13 page];
    offset = [v13 offset];

    v16 = [v8 selectionFromPage:page atCharacterIndex:offset toPage:page atCharacterIndex:offset];
    [v16 boundsForPage:page];
    [pdfView convertRect:page fromPage:?];
    [pdfView convertRect:self toView:?];
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

- (id)selectionRectsForRange:(id)range
{
  v37 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  document = [pdfView document];
  v8 = document;
  if (document && ([document isLocked] & 1) == 0)
  {
    v10 = [(PDFTextInputView *)selfCopy _selectionForTextRange:rangeCopy];
    if (v10)
    {
      v29 = v8;
      v30 = rangeCopy;
      v28 = v10;
      selectionsByLine = [v10 selectionsByLine];
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = selectionsByLine;
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

            copyAsTextSelection = [*(*(&v32 + 1) + 8 * i) copyAsTextSelection];
            pages = [copyAsTextSelection pages];
            firstObject = [pages firstObject];

            [copyAsTextSelection boundsForPage:firstObject];
            [pdfView convertRect:firstObject fromPage:?];
            [pdfView convertRect:selfCopy toView:?];
            v24 = [[PDFTextSelectionRect alloc] initWithRect:firstObject onPage:v20, v21, v22, v23];
            firstObject2 = [v12 firstObject];

            if (copyAsTextSelection == firstObject2)
            {
              [(PDFTextSelectionRect *)v24 setIsStartingRect:1];
            }

            lastObject = [v12 lastObject];

            if (copyAsTextSelection == lastObject)
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
      rangeCopy = v30;
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

- (id)_closestPositionToPoint:(CGPoint)point withinRange:(id)range
{
  y = point.y;
  x = point.x;
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  document = [pdfView document];
  v11 = document;
  if (!document || ([document isLocked] & 1) != 0)
  {
    v12 = 0;
    goto LABEL_17;
  }

  [(PDFTextInputView *)self convertPoint:pdfView toView:x, y];
  v14 = v13;
  v16 = v15;
  v17 = [pdfView pageForPoint:1 nearest:?];
  if (v17)
  {
    start = [rangeCopy start];
    v19 = [rangeCopy end];
    if (rangeCopy)
    {
      page = [start page];
      v21 = [v11 indexForPage:page];

      page2 = [v19 page];
      v23 = [v11 indexForPage:page2];

      v24 = [v11 indexForPage:v17];
      v12 = 0;
      if (v24 < v21 || v24 > v23)
      {
        goto LABEL_15;
      }
    }

    [pdfView convertPoint:v17 toPage:{v14, v16}];
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

- (id)characterRangeAtPoint:(CGPoint)point
{
  v4 = [(PDFTextInputView *)self _closestPositionToPoint:0 withinRange:point.x, point.y];
  v5 = [(PDFTextInputView *)self positionFromPosition:v4 offset:1];
  v6 = [[PDFTextRange alloc] initFromPos:v4 toPos:v5];

  return v6;
}

- (BOOL)interactionShouldBegin:(id)begin atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  document = [pdfView document];
  v10 = document;
  if (!document || ([document isLocked] & 1) != 0 || objc_msgSend(pdfView, "isInMarkupMode") && !objc_msgSend(pdfView, "isTextSelectionEnabled"))
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    [(PDFTextInputView *)self convertPoint:pdfView toView:x, y];
    v13 = v12;
    v15 = v14;
    v16 = [pdfView pageForPoint:1 nearest:?];
    if (v16)
    {
      [pdfView convertPoint:v16 toPage:{v13, v15}];
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

- (id)linkRegionsConstrainedToLineAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v45 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  selfCopy = self;
  [(PDFTextInputView *)self convertPoint:pdfView toView:x, y];
  v9 = v8;
  v11 = v10;
  v12 = [pdfView pageForPoint:1 nearest:?];
  if (v12)
  {
    [pdfView convertPoint:v12 toPage:{v9, v11}];
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
      annotations = [v12 annotations];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v23 = [annotations countByEnumeratingWithState:&v40 objects:v44 count:16];
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
              objc_enumerationMutation(annotations);
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
                [pdfView convertRect:v37 fromPage:{v30, v31, width, height}];
                [pdfView convertRect:selfCopy toView:?];
                v34 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:?];
                [v39 addObject:v34];
              }
            }
          }

          v24 = [annotations countByEnumeratingWithState:&v40 objects:v44 count:16];
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

- (void)_setDimmingViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  dimmingViewVisible = self->_dimmingViewVisible;
  self->_dimmingViewVisible = visible;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];
  documentView = [pdfView documentView];

  if (!visibleCopy || dimmingViewVisible)
  {
    if (!visibleCopy && dimmingViewVisible)
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
      [documentView bounds];
      v11 = [v10 initWithFrame:?];
      v12 = self->_searchDimmingView;
      self->_searchDimmingView = v11;

      searchDimmingView = self->_searchDimmingView;
    }

    superview = [(UITextSearchingDimmingView *)searchDimmingView superview];

    if (!superview)
    {
      [documentView addSubview:self->_searchDimmingView];
    }

    [(UITextSearchingDimmingView *)self->_searchDimmingView setAlpha:0.0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __43__PDFTextInputView__setDimmingViewVisible___block_invoke;
    v16[3] = &unk_1E8150990;
    v16[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v16 options:0 animations:0.2 completion:0.0];
  }

  if (visibleCopy)
  {
    [documentView bringSubviewToFront:self->_searchDimmingView];
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

- (id)_targetedPreviewForRange:(id)range
{
  v54 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  v7 = [(PDFTextInputView *)self _selectionForTextRange:rangeCopy];
  pages = [v7 pages];
  v9 = [pages objectAtIndex:0];

  [v7 boundsForPage:v9];
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  v14 = 0;
  if (!CGRectIsNull(v56))
  {
    v40 = pdfView;
    [pdfView convertRect:v9 fromPage:{x, y, width, height}];
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
    v25 = [(PDFTextInputView *)self selectionRectsForRange:rangeCopy];
    array = [MEMORY[0x1E695DF70] array];
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
          [array addObject:v33];
        }

        v29 = [v27 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v29);
    }

    v34 = [MEMORY[0x1E69DD0D0] preferredPreviewParametersForTextLineRects:array];
    v35 = objc_alloc(MEMORY[0x1E69DCE38]);
    pdfView = v40;
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

- (int64_t)compareFoundRange:(id)range toRange:(id)toRange inDocument:(id)document
{
  toRangeCopy = toRange;
  v8 = [(PDFTextInputView *)self _selectionForTextRange:range];
  v9 = [(PDFTextInputView *)self _selectionForTextRange:toRangeCopy];

  v10 = [v8 compare:v9];
  return v10;
}

- (void)performTextSearchWithQueryString:(id)string usingOptions:(id)options resultAggregator:(id)aggregator
{
  v18[1] = *MEMORY[0x1E69E9840];
  aggregatorCopy = aggregator;
  optionsCopy = options;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  document = [pdfView document];
  [(PDFTextSearchAggregator *)self->_activeSearch invalidate];
  v14 = [[PDFTextSearchAggregator alloc] initWithSearchString:stringCopy aggregator:aggregatorCopy];

  activeSearch = self->_activeSearch;
  self->_activeSearch = v14;

  v18[0] = stringCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  stringCompareOptions = [optionsCopy stringCompareOptions];

  [document asyncFindStrings:v16 withOptions:stringCompareOptions withDelegate:self->_activeSearch onQueue:MEMORY[0x1E69E96A0]];
}

- (void)decorateFoundTextRange:(id)range inDocument:(id)document usingStyle:(int64_t)style
{
  rangeCopy = range;
  documentCopy = document;
  if (style == 1)
  {
    foundTextRanges = self->_foundTextRanges;
    if (!foundTextRanges)
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = self->_foundTextRanges;
      self->_foundTextRanges = v22;

      foundTextRanges = self->_foundTextRanges;
    }

    [(NSMutableArray *)foundTextRanges addObject:rangeCopy];
  }

  else if (style == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    pdfView = [WeakRetained pdfView];

    objc_storeStrong(&self->_highlightedTextRange, range);
    v13 = [(PDFTextInputView *)self _selectionForTextRange:rangeCopy];
    v14 = v13;
    if (v13)
    {
      pages = [v13 pages];
      v16 = [pages objectAtIndex:0];

      [v14 boundsForPage:v16];
      [pdfView goToRect:v16 onPage:?];
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
  pdfView = [WeakRetained pdfView];

  documentView = [pdfView documentView];
  documentScrollView = [pdfView documentScrollView];
  v60 = pdfView;
  findInteraction = [pdfView findInteraction];
  isFindNavigatorVisible = [findInteraction isFindNavigatorVisible];

  if ([(NSMutableArray *)self->_foundTextRanges count])
  {
    v9 = isFindNavigatorVisible == 0;
  }

  else
  {
    v9 = 1;
  }

  v61 = documentScrollView;
  if (v9)
  {
    [(PDFTextInputView *)self _setDimmingViewVisible:0];
  }

  else
  {
    [(PDFTextInputView *)self _setDimmingViewVisible:1];
    array = [MEMORY[0x1E695DF70] array];
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
                [documentView convertRect:self fromView:?];
                v18 = [MEMORY[0x1E696B098] valueWithCGRect:?];
                [array addObject:v18];
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

    documentScrollView = v61;
    [v61 contentSize];
    v20 = v19;
    [documentView bounds];
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
    [documentView bounds];
    if (v24 >= v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    [(UITextSearchingDimmingView *)self->_searchDimmingView setFrame:-800.0, -800.0, v22 + 1600.0, v26 + 1600.0];
    [(UITextSearchingDimmingView *)self->_searchDimmingView setTextRects:array];
    [(UITextSearchingDimmingView *)self->_searchDimmingView setContentInset:-800.0, -800.0, -800.0, -800.0];
  }

  searchHighlightView = self->_searchHighlightView;
  if (self->_highlightedTextRange)
  {
    superview = [(UITextHighlightView *)searchHighlightView superview];

    if (!superview)
    {
      [documentView addSubview:self->_searchHighlightView];
    }

    v29 = [(PDFTextInputView *)self selectionRectsForRange:self->_highlightedTextRange];
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    array2 = [MEMORY[0x1E695DF70] array];
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
          [array2 addObject:v46];
        }

        v37 = [v35 countByEnumeratingWithState:&v65 objects:v78 count:16];
      }

      while (v37);
    }

    v47 = [MEMORY[0x1E69DD0D0] preferredPreviewParametersForTextLineRects:array2];
    [v47 _textPathInsets];
    [documentView convertRect:self fromView:{x + v51, y + v48, width - (v51 + v49), height - (v48 + v50)}];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    if (PDFRectValid(v52, v54, v56, v58))
    {
      [(UITextHighlightView *)self->_searchHighlightView setFrame:v53, v55, v57, v59];
      [(UITextHighlightView *)self->_searchHighlightView invalidateContentView];
    }

    [documentView bringSubviewToFront:self->_searchHighlightView];

    pdfView = v60;
    documentScrollView = v61;
  }

  else
  {
    [(UITextHighlightView *)searchHighlightView removeFromSuperview];
  }
}

- (id)editMenuForTextRange:(id)range suggestedActions:(id)actions
{
  v57 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  actionsCopy = actions;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pdfView = [WeakRetained pdfView];

  v10 = [(PDFTextInputView *)self _selectionForTextRange:rangeCopy];
  renderingProperties = [pdfView renderingProperties];
  isUsingPDFExtensionView = [renderingProperties isUsingPDFExtensionView];

  if (isUsingPDFExtensionView)
  {
    if (v10 && ([v10 isEmpty] & 1) == 0)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      pages = [v10 pages];
      v14 = [pages countByEnumeratingWithState:&v50 objects:v56 count:16];
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
            objc_enumerationMutation(pages);
          }

          v18 = *(*(&v50 + 1) + 8 * v17);
          document = [pdfView document];
          v20 = [document indexForPage:v18];

          v21 = [pdfView pageViewForPageAtIndex:v20];
          if ([v21 isVisible])
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [pages countByEnumeratingWithState:&v50 objects:v56 count:16];
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

        page = [v21 page];
        [v10 boundsForPage:page];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        page2 = [v21 page];
        [pdfView convertRect:page2 fromPage:{v30, v32, v34, v36}];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v54[0] = @"visible";
        v54[1] = @"selectionRect";
        v55[0] = MEMORY[0x1E695E118];
        v47 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v39, v41, v43, v45}];
        v55[1] = v47;
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
        [defaultCenter postNotificationName:@"PDFTextSelectionShowTextSelectionMenu" object:pdfView userInfo:v48];
      }

      else
      {
LABEL_12:
        v21 = pages;
      }
    }

LABEL_21:
    v27 = [MEMORY[0x1E69DCC60] menuWithChildren:MEMORY[0x1E695E0F0]];
  }

  else
  {
    controller = [pdfView controller];
    v23 = [MEMORY[0x1E695DF70] arrayWithArray:actionsCopy];
    v24 = [controller additionalEditMenuElementsForSelection:v10];
    if ([v24 count])
    {
      v25 = [actionsCopy indexOfObjectPassingTest:&__block_literal_global_3];
      if (v25 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = [actionsCopy count] - 1;
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