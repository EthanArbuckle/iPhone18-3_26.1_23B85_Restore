@interface MFAtomTextView
- (BOOL)_hasContent;
- (BOOL)_showViewWithMode:(int64_t)a3 alwaysDefinition:(BOOL)a4;
- (BOOL)_showsClearButton;
- (BOOL)_showsLeadingView;
- (BOOL)_showsTrailingView;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (CGPoint)_firstGlyphBaselineLeftPointWithLayoutManager:(id)a3;
- (CGRect)_rectForBounds:(CGRect)a3 sizingView:(id)a4 isLeft:(BOOL)a5;
- (CGRect)_usedRectWithLayoutManager:(id)a3 textContainer:(id)a4;
- (CGRect)_visibleAtomsRect;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)clearButtonFrameForBounds:(CGRect)a3;
- (CGRect)firstRectForRange:(id)a3;
- (CGRect)leadingViewFrameForBounds:(CGRect)a3;
- (CGRect)placeholderFrameForBounds:(CGRect)a3;
- (CGRect)trailingViewFrameForBounds:(CGRect)a3;
- (CGSize)_clearButtonSize;
- (MFAtomTextView)initWithFrame:(CGRect)a3;
- (MFAtomTextViewDelegate)delegate;
- (NSArray)representedObjects;
- (NSArray)selectedRepresentedObjects;
- (NSDirectionalEdgeInsets)clearButtonInsets;
- (NSDirectionalEdgeInsets)leadingViewInsets;
- (NSDirectionalEdgeInsets)placeholderInsets;
- (NSDirectionalEdgeInsets)textInsets;
- (NSDirectionalEdgeInsets)trailingViewInsets;
- (UIButton)clearButton;
- (UIEdgeInsets)_edgeInsetsForDirectionalInsets:(NSDirectionalEdgeInsets)a3;
- (UIEdgeInsets)edgeInsets;
- (UILabel)placeholderLabel;
- (_NSRange)_characterRangeForAtomView:(id)a3;
- (_NSRange)selectionRange;
- (id)_atomLayoutViewForRepresentedObject:(id)a3;
- (id)_attachmentAtCharacterIndex:(unint64_t)a3;
- (id)_baseAttributedStringWithRepresentedObject:(id)a3;
- (id)_clearButtonImageForState:(unint64_t)a3;
- (id)_representedObjectsFromPasteboard:(id)a3;
- (id)_representedObjectsInRange:(_NSRange)a3 ranges:(id *)a4;
- (id)_supportedPasteboardTypes;
- (id)baseAttributesWithRepresentedObject:(id)a3;
- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4;
- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4;
- (id)currentEditingString:(_NSRange *)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)keyCommands;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)paragraphStyle;
- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5;
- (id)positionFromPosition:(id)a3 offset:(int64_t)a4;
- (id)positionFromPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5;
- (id)positionWithinRange:(id)a3 atCharacterOffset:(int64_t)a4;
- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4;
- (id)rangeEnclosingPosition:(id)a3 withGranularity:(int64_t)a4 inDirection:(int64_t)a5;
- (id)selectionRectsForRange:(id)a3;
- (id)textInRange:(id)a3;
- (id)textInputTraits;
- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4;
- (id)viewForLastBaselineLayout;
- (void)_clearButtonTapped:(id)a3;
- (void)_createBaselineLayoutStrutIfNecessary;
- (void)_deleteCharactersInStorage:(id)a3 ranges:(id)a4 rangeToAdjust:(_NSRange *)a5;
- (void)_insertRepresentedObjects:(id)a3 atCharacterRange:(_NSRange)a4;
- (void)_layoutButtons;
- (void)_layoutPlaceholder;
- (void)_removeRepresentedObjectsInCharacterRange:(_NSRange)a3;
- (void)_scrollToSelectionIfNeeded;
- (void)_setDrawsDebugBaselines:(BOOL)a3;
- (void)_setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)_storeRepresentedObjects:(id)a3 onPasteboard:(id)a4;
- (void)_tapRecognized:(id)a3;
- (void)_textStorageDidProcessEditing:(id)a3;
- (void)_updateAtomMasksInRect:(CGRect)a3;
- (void)_updateBaselineConstraintIfNecessaryUsingTextViewFrame:(CGRect)a3;
- (void)addRepresentedObject:(id)a3;
- (void)dealloc;
- (void)escKeyPressed:(id)a3;
- (void)insertRepresentedObject:(id)a3 atIndex:(unint64_t)a4;
- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5;
- (void)layoutSubviews;
- (void)removeRepresentedObject:(id)a3;
- (void)removeRepresentedObjectAtIndex:(unint64_t)a3;
- (void)removeRepresentedObjects:(id)a3;
- (void)removeRepresentedObjectsAtIndexes:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setClearButtonInsets:(NSDirectionalEdgeInsets)a3;
- (void)setDelegate:(id)a3;
- (void)setFont:(id)a3;
- (void)setLeadingViewInsets:(NSDirectionalEdgeInsets)a3;
- (void)setPlaceholder:(id)a3;
- (void)setPlaceholderColor:(id)a3;
- (void)setPlaceholderInsets:(NSDirectionalEdgeInsets)a3;
- (void)setRepresentedObjects:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTextInsets:(NSDirectionalEdgeInsets)a3;
- (void)setTrailingViewInsets:(NSDirectionalEdgeInsets)a3;
- (void)takeTraitsFrom:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation MFAtomTextView

- (MFAtomTextView)initWithFrame:(CGRect)a3
{
  v32.receiver = self;
  v32.super_class = MFAtomTextView;
  v3 = [(MFAtomTextView *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFAtomTextView *)v3 _setHostsLayoutEngine:1];
    v5 = [objc_opt_class() defaultFont];
    font = v4->_font;
    v4->_font = v5;

    v7 = [objc_opt_class() defaultTextColor];
    textColor = v4->_textColor;
    v4->_textColor = v7;

    v9 = [objc_opt_class() defaultPlaceholderColor];
    placeholderColor = v4->_placeholderColor;
    v4->_placeholderColor = v9;

    v11 = objc_alloc([objc_opt_class() _backgroundViewClass]);
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    v16 = [v11 initWithFrame:1 active:{*MEMORY[0x1E695F058], v13, v14, v15}];
    background = v4->_background;
    v4->_background = v16;

    [(_UITextFieldRoundedRectBackgroundViewNeue *)v4->_background setAutoresizingMask:0];
    v18 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{v12, v13, v14, v15}];
    scrollView = v4->_scrollView;
    v4->_scrollView = v18;

    [(UIScrollView *)v4->_scrollView setDelegate:v4];
    [(UIScrollView *)v4->_scrollView setScrollsToTop:0];
    [(UIScrollView *)v4->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v4->_scrollView setShowsVerticalScrollIndicator:0];
    v20 = [objc_alloc(objc_msgSend(objc_opt_class() "_fieldEditorClass"))];
    textView = v4->_textView;
    v4->_textView = v20;

    [(_MFAtomFieldEditor *)v4->_textView setAutoresizingMask:0];
    [(_MFAtomFieldEditor *)v4->_textView setBackgroundColor:0];
    v22 = [(MFAtomTextView *)v4 font];
    [(_MFAtomFieldEditor *)v4->_textView setFont:v22];

    [(_MFAtomFieldEditor *)v4->_textView setScrollEnabled:0];
    [(_MFAtomFieldEditor *)v4->_textView setScrollsToTop:0];
    [(_MFAtomFieldEditor *)v4->_textView setTextAlignment:4];
    v23 = [(MFAtomTextView *)v4 baseAttributes];
    [(_MFAtomFieldEditor *)v4->_textView setTypingAttributes:v23];

    v24 = [(_MFAtomFieldEditor *)v4->_textView layoutManager];
    [v24 setAllowsNonContiguousLayout:1];

    [(_MFAtomFieldEditor *)v4->_textView setDelegate:v4];
    v25 = [(_MFAtomFieldEditor *)v4->_textView layoutManager];
    [v25 setDelegate:v4];

    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    v27 = [(_MFAtomFieldEditor *)v4->_textView textStorage];
    [v26 addObserver:v4 selector:sel__textStorageDidProcessEditing_ name:*MEMORY[0x1E69DB738] object:v27];

    if (v4->_background)
    {
      [(MFAtomTextView *)v4 addSubview:?];
    }

    [(MFAtomTextView *)v4 addSubview:v4->_scrollView];
    [(UIScrollView *)v4->_scrollView addSubview:v4->_textView];
    v28 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__tapRecognized_];
    [v28 setCancelsTouchesInView:0];
    [(MFAtomTextView *)v4 addGestureRecognizer:v28];
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    atomViews = v4->_atomViews;
    v4->_atomViews = v29;
  }

  return v4;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  [(UIScrollView *)self->_scrollView setDelegate:0];
  [(_MFAtomFieldEditor *)self->_textView setDelegate:0];
  v3 = [(_MFAtomFieldEditor *)self->_textView layoutManager];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = MFAtomTextView;
  [(MFAtomTextView *)&v4 dealloc];
}

- (void)_setDrawsDebugBaselines:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_drawsDebugBaselines != a3)
  {
    v3 = a3;
    self->_drawsDebugBaselines = a3;
    [(_MFAtomFieldEditor *)self->_textView _setDrawsDebugBaselines:?];
    [(UILabel *)self->_placeholderLabel _setDrawsDebugBaselines:v3];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_atomViews;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v10 + 1) + 8 * v8) viewForLastBaselineLayout];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 _setDrawsDebugBaselines:v3];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(MFAtomTextView *)self setNeedsLayout];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_flags = *&self->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_flags = *&self->_flags & 0xF7 | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&self->_flags = *&self->_flags & 0xEF | v9;
    v5 = obj;
  }
}

- (void)setFont:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [objc_opt_class() defaultFont];
  }

  obj = v4;
  if (self->_font != v4)
  {
    objc_storeStrong(&self->_font, v4);
    [(_MFAtomFieldEditor *)self->_textView setFont:obj];
    [(UILabel *)self->_placeholderLabel setFont:obj];
    [(_MFAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setFont:obj];
    [(MFAtomTextView *)self setNeedsLayout];
  }
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [objc_opt_class() defaultTextColor];
  }

  if (self->_textColor != v4)
  {
    objc_storeStrong(&self->_textColor, v4);
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __31__MFAtomTextView_setTextColor___block_invoke;
    v9 = &unk_1E806C520;
    v10 = self;
    v11 = v4;
    v5 = _Block_copy(&v6);
    if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
    {
      [MEMORY[0x1E69DD250] transitionWithView:self->_textView duration:5242880 options:v5 animations:0 completion:0.35];
    }

    else
    {
      v5[2](v5);
    }
  }
}

void __31__MFAtomTextView_setTextColor___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 488) setTextColor:*(a1 + 40)];
  v2 = [*(a1 + 32) baseAttributes];
  [*(*(a1 + 32) + 488) setTypingAttributes:?];
}

- (void)_setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = MFAtomTextView;
  [(MFAtomTextView *)&v16 setEnabled:?];
  [(_UITextFieldRoundedRectBackgroundViewNeue *)self->_background setEnabled:v5 animated:v4];
  v7 = [(MFAtomTextView *)self clearButton];
  [v7 setEnabled:v5];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = self->_atomViews;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11++) setEnabled:v5 animated:{v4, v12}];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)paragraphStyle
{
  if (paragraphStyle_onceToken != -1)
  {
    [MFAtomTextView paragraphStyle];
  }

  v3 = paragraphStyle_sParagraphStyle;

  return v3;
}

void __32__MFAtomTextView_paragraphStyle__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v2 setLineBreakMode:2];
  v0 = [v2 copy];
  v1 = paragraphStyle_sParagraphStyle;
  paragraphStyle_sParagraphStyle = v0;
}

- (id)baseAttributesWithRepresentedObject:(id)a3
{
  v17[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16[0] = *MEMORY[0x1E69DB648];
  v5 = [(MFAtomTextView *)self font];
  v17[0] = v5;
  v16[1] = *MEMORY[0x1E69DB650];
  v6 = [(MFAtomTextView *)self textColor];
  v17[1] = v6;
  v7 = *MEMORY[0x1E69DB688];
  v16[2] = *MEMORY[0x1E69DB688];
  v8 = [(MFAtomTextView *)self paragraphStyle];
  v17[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = [(MFAtomTextView *)self _atomLayoutViewForRepresentedObject:v4];
    v12 = [_MFAtomAttachment attachmentWithAtomLayoutView:v11 representedObject:v4];
    v10 = [v9 mutableCopy];
    [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69DB5F8]];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v9 objectForKeyedSubscript:v7];
      v14 = [v13 mutableCopy];

      [v14 setBaseWritingDirection:{objc_msgSend(v11, "baseWritingDirection")}];
      [v10 setObject:v14 forKeyedSubscript:v7];
    }
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (id)_baseAttributedStringWithRepresentedObject:(id)a3
{
  v4 = a3;
  v5 = [(MFAtomTextView *)self baseAttributesWithRepresentedObject:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v5];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = -4;
    v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v10 length:1];
    v6 = [v7 initWithString:v8 attributes:v5];
  }

  return v6;
}

- (BOOL)_hasContent
{
  v2 = [(_MFAtomFieldEditor *)self->_textView textStorage];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)_representedObjectsInRange:(_NSRange)a3 ranges:(id *)a4
{
  length = a3.length;
  location = a3.location;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [(_MFAtomFieldEditor *)self->_textView textStorage];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3010000000;
  v32[3] = "";
  v33 = xmmword_1BE985670;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__MFAtomTextView__representedObjectsInRange_ranges___block_invoke;
  aBlock[3] = &unk_1E806C748;
  v31 = v32;
  v11 = v8;
  v28 = v11;
  v12 = v10;
  v29 = v12;
  v13 = v9;
  v30 = v13;
  v14 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __52__MFAtomTextView__representedObjectsInRange_ranges___block_invoke_2;
  v22[3] = &unk_1E806C770;
  v15 = v14;
  v25 = v15;
  v16 = v11;
  v23 = v16;
  v17 = v13;
  v24 = v17;
  v26 = v32;
  [v12 enumerateAttributesInRange:location options:length usingBlock:{0, v22}];
  v15[2](v15);
  if (a4)
  {
    v18 = v17;
    *a4 = v17;
  }

  v19 = v24;
  v20 = v16;

  _Block_object_dispose(v32, 8);

  return v20;
}

double __52__MFAtomTextView__representedObjectsInRange_ranges___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 32) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) string];
    v4 = [v3 substringWithRange:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}];
    [v2 addObject:v4];

    v5 = *(a1 + 48);
    v6 = [MEMORY[0x1E696B098] valueWithRange:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}];
    [v5 addObject:v6];

    result = NAN;
    *(*(*(a1 + 56) + 8) + 32) = xmmword_1BE985670;
  }

  return result;
}

void __52__MFAtomTextView__representedObjectsInRange_ranges___block_invoke_2(void *a1, void *a2, NSUInteger location, NSUInteger length)
{
  v15 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(a1[6] + 16))();
    v7 = a1[4];
    v8 = [v15 representedObject];
    [v7 addObject:v8];

    v9 = a1[5];
    v10 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
    [v9 addObject:v10];
  }

  else if (!v15)
  {
    v11 = *(a1[7] + 8);
    v12.location = *(v11 + 32);
    if (v12.location == 0x7FFFFFFFFFFFFFFFLL || (v12.length = *(v11 + 40), v12.length + v12.location != location))
    {
      (*(a1[6] + 16))();
    }

    else
    {
      v17.location = location;
      v17.length = length;
      v13 = NSUnionRange(v12, v17);
      location = v13.location;
      length = v13.length;
    }

    v14 = *(a1[7] + 8);
    *(v14 + 32) = location;
    *(v14 + 40) = length;
  }
}

- (id)currentEditingString:(_NSRange *)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = xmmword_1BE985670;
  }

  v5 = [(_MFAtomFieldEditor *)self->_textView textStorage];
  v6 = [(_MFAtomFieldEditor *)self->_textView selectedRange];
  v8 = v7;
  v33 = 0;
  v9 = -[MFAtomTextView _representedObjectsInRange:ranges:](self, "_representedObjectsInRange:ranges:", 0, [v5 length], &v33);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = v33;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v27 = v9;
    v28 = v5;
    v12 = 0;
    v13 = v6 + v8;
    v14 = *v30;
LABEL_5:
    v15 = 0;
    v16 = v12;
    v12 += v11;
    while (1)
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v17 = [*(*(&v29 + 1) + 8 * v15) rangeValue];
      v19 = v17;
      v20 = v18;
      v21 = v13 - v17 < v18 && v13 >= v17;
      if (v21 || v13 == v17 + v18)
      {
        break;
      }

      ++v16;
      if (v11 == ++v15)
      {
        v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        v23 = 0;
        v9 = v27;
        v5 = v28;
        goto LABEL_22;
      }
    }

    v9 = v27;
    v5 = v28;
    v24 = [v27 objectAtIndexedSubscript:v16];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_21;
    }

    v23 = [v27 objectAtIndexedSubscript:v16];
    if (a3)
    {
      a3->location = v19;
      a3->length = v20;
    }
  }

  else
  {
LABEL_21:
    v23 = 0;
  }

LABEL_22:

  return v23;
}

- (NSArray)representedObjects
{
  v3 = [(_MFAtomFieldEditor *)self->_textView textStorage];
  v4 = -[MFAtomTextView _representedObjectsInRange:ranges:](self, "_representedObjectsInRange:ranges:", 0, [v3 length], 0);

  return v4;
}

- (NSArray)selectedRepresentedObjects
{
  v4 = [(_MFAtomFieldEditor *)self->_textView selectedRange];

  return [(MFAtomTextView *)self _representedObjectsInRange:v4 ranges:v3, 0];
}

- (void)insertRepresentedObject:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_MFAtomFieldEditor *)self->_textView textStorage];
  [v7 beginEditing];
  v14 = 0;
  v8 = -[MFAtomTextView _representedObjectsInRange:ranges:](self, "_representedObjectsInRange:ranges:", 0, [v7 length], &v14);
  v9 = v14;

  if (v8)
  {
    v10 = [v9 objectAtIndexedSubscript:a4];
    v11 = [v10 rangeValue];

    v12 = [(MFAtomTextView *)self _baseAttributedStringWithRepresentedObject:v6];
    [v7 insertAttributedString:v12 atIndex:v11];
    v8 = [v12 length];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v7 endEditing];
  if (v8)
  {
    v13 = [(_MFAtomFieldEditor *)self->_textView layoutManager];
    [v13 invalidateLayoutForCharacterRange:v11 actualCharacterRange:{v8, 0}];
  }

  [(MFAtomTextView *)self setNeedsLayout];
  [(MFAtomTextView *)self sendActionsForControlEvents:0x20000];
  [(_MFAtomFieldEditor *)self->_textView setSelectedRange:&v8[v11], 0];
}

- (void)_deleteCharactersInStorage:(id)a3 ranges:(id)a4 rangeToAdjust:(_NSRange *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [a4 reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v19 + 1) + 8 * v11) rangeValue];
        v14 = v13;
        [v7 deleteCharactersInRange:{v12, v13}];
        location = a5->location;
        length = a5->length;
        if (v12 < length + a5->location)
        {
          if (location >= v12 + v14)
          {
            a5->location = location - v14;
          }

          else
          {
            if (v12 <= location)
            {
              v18 = location - (v12 + v14) + length;
              a5->location = v12;
            }

            else
            {
              v17 = length >= v14;
              v18 = length - v14;
              if (!v17)
              {
                v18 = 0;
              }
            }

            a5->length = v18;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)removeRepresentedObjectsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(_MFAtomFieldEditor *)self->_textView textStorage];
  [v5 beginEditing];
  v11 = [(_MFAtomFieldEditor *)self->_textView selectedRange];
  v12 = v6;
  v10 = 0;
  v7 = -[MFAtomTextView _representedObjectsInRange:ranges:](self, "_representedObjectsInRange:ranges:", 0, [v5 length], &v10);
  v8 = v10;

  if (v7)
  {
    v9 = [v8 objectsAtIndexes:v4];
    [(MFAtomTextView *)self _deleteCharactersInStorage:v5 ranges:v9 rangeToAdjust:&v11];
  }

  [v5 endEditing];
  [(MFAtomTextView *)self setNeedsLayout];
  [(MFAtomTextView *)self sendActionsForControlEvents:0x20000];
  [(_MFAtomFieldEditor *)self->_textView setSelectedRange:v11, v12];
}

- (void)removeRepresentedObjects:(id)a3
{
  v4 = a3;
  v5 = [(_MFAtomFieldEditor *)self->_textView textStorage];
  [v5 beginEditing];
  v18 = [(_MFAtomFieldEditor *)self->_textView selectedRange];
  v19 = v6;
  v17 = 0;
  v7 = -[MFAtomTextView _representedObjectsInRange:ranges:](self, "_representedObjectsInRange:ranges:", 0, [v5 length], &v17);
  v8 = v17;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __43__MFAtomTextView_removeRepresentedObjects___block_invoke;
  v15 = &unk_1E806C798;
  v9 = v4;
  v16 = v9;
  v10 = [v7 indexesOfObjectsPassingTest:&v12];
  v11 = [v8 objectsAtIndexes:{v10, v12, v13, v14, v15}];
  [(MFAtomTextView *)self _deleteCharactersInStorage:v5 ranges:v11 rangeToAdjust:&v18];

  [v5 endEditing];
  [(MFAtomTextView *)self setNeedsLayout];
  [(MFAtomTextView *)self sendActionsForControlEvents:0x20000];
  [(_MFAtomFieldEditor *)self->_textView setSelectedRange:v18, v19];
}

- (void)removeRepresentedObjectAtIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  [(MFAtomTextView *)self removeRepresentedObjectsAtIndexes:?];
}

- (void)removeRepresentedObject:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(MFAtomTextView *)self removeRepresentedObjects:v6];
  }
}

- (void)setRepresentedObjects:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MFAtomFieldEditor *)self->_textView textStorage];
  [v5 beginEditing];
  [v5 deleteCharactersInRange:{0, objc_msgSend(v5, "length")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(MFAtomTextView *)self _baseAttributedStringWithRepresentedObject:*(*(&v12 + 1) + 8 * v9), v12];
        [v5 appendAttributedString:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v5 endEditing];
  v11 = [(_MFAtomFieldEditor *)self->_textView layoutManager];
  [v11 invalidateLayoutForCharacterRange:0 actualCharacterRange:{objc_msgSend(v5, "length"), 0}];

  [(MFAtomTextView *)self setNeedsLayout];
  [(MFAtomTextView *)self sendActionsForControlEvents:0x20000];
  -[_MFAtomFieldEditor setSelectedRange:](self->_textView, "setSelectedRange:", [v5 length], 0);
}

- (void)addRepresentedObject:(id)a3
{
  v9 = a3;
  v4 = [(_MFAtomFieldEditor *)self->_textView textStorage];
  [v4 beginEditing];
  v5 = [(MFAtomTextView *)self _baseAttributedStringWithRepresentedObject:v9];
  v6 = [v4 length];
  v7 = [v5 length];
  [v4 appendAttributedString:v5];
  [v4 endEditing];
  if (v7)
  {
    v8 = [(_MFAtomFieldEditor *)self->_textView layoutManager];
    [v8 invalidateLayoutForCharacterRange:v6 actualCharacterRange:{v7, 0}];
  }

  [(MFAtomTextView *)self setNeedsLayout];
  [(MFAtomTextView *)self sendActionsForControlEvents:0x20000];
  -[_MFAtomFieldEditor setSelectedRange:](self->_textView, "setSelectedRange:", [v4 length], 0);
}

- (id)_atomLayoutViewForRepresentedObject:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained atomTextView:self atomViewForRepresentedObject:v4];

  [v6 setEnabled:{-[MFAtomTextView isEnabled](self, "isEnabled")}];
  v7 = [v6 viewForLastBaselineLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 _setDrawsDebugBaselines:{-[MFAtomTextView _drawsDebugBaselines](self, "_drawsDebugBaselines")}];
  }

  v8 = [_MFAtomLayoutView layoutViewWithDelegateView:v6];

  return v8;
}

- (id)_supportedPasteboardTypes
{
  if ((*&self->_flags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained supportedPasteboardTypesForAtomTextView:self];

    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  if ([v2 count])
  {
    v6 = v2;
  }

  else
  {
    v6 = *MEMORY[0x1E69DE2A8];
  }

  v7 = v6;

  return v6;
}

- (id)_representedObjectsFromPasteboard:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*&self->_flags & 4) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), [WeakRetained atomTextView:self representedObjectsFromPasteboard:v4], v6 = objc_claimAutoreleasedReturnValue(), WeakRetained, !v6))
  {
    v7 = [v4 string];
    v8 = v7;
    if (v7)
    {
      v10[0] = v7;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  return v6;
}

- (void)_storeRepresentedObjects:(id)a3 onPasteboard:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v15 = a4;
  if ((*&self->_flags & 8) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v7 = [WeakRetained atomTextView:self storeRepresentedObjects:v16 onPasteboard:v15], WeakRetained, (v7 & 1) == 0))
  {
    v8 = [MEMORY[0x1E696AD60] string];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v16;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v8 length])
            {
              v14 = @" ";
            }

            else
            {
              v14 = &stru_1F3CF3758;
            }

            [v8 appendFormat:@"%@%@", v14, v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [v15 setString:v8];
  }
}

- (void)_insertRepresentedObjects:(id)a3 atCharacterRange:(_NSRange)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v49 = a4;
  v37 = a3;
  v4 = [(_MFAtomFieldEditor *)self->_textView textStorage];
  v38 = v4;
  [v4 beginEditing];
  if (v49.length)
  {
    v5 = [MEMORY[0x1E696B098] valueWithRange:v49.location];
    v52[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
    [(MFAtomTextView *)self _deleteCharactersInStorage:v4 ranges:v6 rangeToAdjust:&v49];
  }

  v7 = [v37 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v48 = 0;
    v9 = -[MFAtomTextView _representedObjectsInRange:ranges:](self, "_representedObjectsInRange:ranges:", 0, [v4 length], &v48);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = v48;
    v11 = [v10 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v11)
    {
      v12 = 0;
      v13 = *v45;
      do
      {
        v14 = 0;
        v15 = v12;
        v12 += v11;
        do
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = [*(*(&v44 + 1) + 8 * v14) rangeValue];
          if (v49.location >= v16 && v49.location - v16 < v17)
          {
            v11 = [v9 objectAtIndexedSubscript:v15];
            goto LABEL_18;
          }

          ++v15;
          ++v14;
        }

        while (v11 != v14);
        v11 = [v10 countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v11);
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

LABEL_18:

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v10 objectAtIndexedSubscript:v15];
      v20 = [v19 rangeValue];
      v22 = v21;

      if (v49.location != v20)
      {
        v49.location = v20 + v22;
        v49.length = 0;
      }
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = v37;
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v50 count:16];
  length = 0;
  if (v24)
  {
    v26 = *v41;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = [(MFAtomTextView *)self _baseAttributedStringWithRepresentedObject:*(*(&v40 + 1) + 8 * i)];
        [v38 insertAttributedString:v29 atIndex:v49.location];
        location = v49.location;
        v31 = [v29 length];
        v32 = v31;
        if (v27 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = location;
          length = v31;
        }

        else
        {
          v53.location = location;
          v53.length = v32;
          v54.location = v27;
          v54.length = length;
          v33 = NSUnionRange(v53, v54);
          v27 = v33.location;
          length = v33.length;
        }

        v49.location = v32 + location;
        v49.length = 0;
      }

      v24 = [v23 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v24);
    v34 = length == 0;
  }

  else
  {
    v34 = 1;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v35 = v38;
  [v38 endEditing];
  if (!v34)
  {
    v36 = [(_MFAtomFieldEditor *)self->_textView layoutManager];
    [v36 invalidateLayoutForCharacterRange:v27 actualCharacterRange:{length, 0}];

    v35 = v38;
  }

  [(MFAtomTextView *)self setNeedsLayout];
  [(MFAtomTextView *)self sendActionsForControlEvents:0x20000];
  [(_MFAtomFieldEditor *)self->_textView setSelectedRange:v49.location, v49.length];
}

- (void)_removeRepresentedObjectsInCharacterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = [(_MFAtomFieldEditor *)self->_textView textStorage];
  [v6 beginEditing];
  v10 = [(_MFAtomFieldEditor *)self->_textView selectedRange];
  v11 = v7;
  v8 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [(MFAtomTextView *)self _deleteCharactersInStorage:v6 ranges:v9 rangeToAdjust:&v10];

  [v6 endEditing];
  [(MFAtomTextView *)self setNeedsLayout];
  [(MFAtomTextView *)self sendActionsForControlEvents:0x20000];
  [(_MFAtomFieldEditor *)self->_textView setSelectedRange:v10, v11];
}

- (UIEdgeInsets)_edgeInsetsForDirectionalInsets:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v7 = [(MFAtomTextView *)self _shouldReverseLayoutDirection];
  if (v7)
  {
    v8 = trailing;
  }

  else
  {
    v8 = leading;
  }

  if (v7)
  {
    v9 = leading;
  }

  else
  {
    v9 = trailing;
  }

  v10 = top;
  v11 = bottom;
  result.right = v9;
  result.bottom = v11;
  result.left = v8;
  result.top = v10;
  return result;
}

- (CGRect)_visibleAtomsRect
{
  [(UIScrollView *)self->_scrollView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self->_scrollView contentInset];
  scrollView = self->_scrollView;

  [(MFAtomTextView *)self convertRect:scrollView fromView:v4 + v12, v6 + v11, v8 - (v12 + v14), v10 - (v11 + v13)];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_clearButtonImageForState:(unint64_t)a3
{
  v6 = [MEMORY[0x1E69DCAB8] kitImageNamed:@"UITextFieldClearButton"];
  v7 = [(MFAtomTextView *)self tintColor];
  if (!v7 || ([MEMORY[0x1E69DC888] systemBlueColor], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "isEqual:", v3)))
  {
    v8 = [MEMORY[0x1E69DC888] colorWithRed:0.047 green:0.455 blue:0.867 alpha:1.0];
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = v7;
  }

LABEL_6:
  if (a3 == 1)
  {
    v9 = v8;
  }

  else
  {
    if (a3 == 2)
    {
      [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    }

    else
    {
      [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.275];
    }
    v9 = ;
  }

  v10 = v9;
  v11 = MEMORY[0x1E69DCAB8];
  [v6 size];
  v12 = [v11 _tintedImageForSize:v10 withTint:0 effectsImage:v6 maskImage:0 style:?];

  return v12;
}

- (UIButton)clearButton
{
  clearButton = self->_clearButton;
  if (!clearButton)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC738]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_clearButton;
    self->_clearButton = v5;

    [(UIButton *)self->_clearButton addTarget:self action:sel__clearButtonTapped_ forControlEvents:64];
    v7 = self->_clearButton;
    v8 = [(MFAtomTextView *)self _clearButtonImageForState:0];
    [(UIButton *)v7 setImage:v8 forState:0];

    v9 = self->_clearButton;
    v10 = [(MFAtomTextView *)self _clearButtonImageForState:1];
    [(UIButton *)v9 setImage:v10 forState:1];

    v11 = self->_clearButton;
    v12 = [(MFAtomTextView *)self _clearButtonImageForState:2];
    [(UIButton *)v11 setImage:v12 forState:2];

    [(UIButton *)self->_clearButton setOpaque:0];
    [(UIButton *)self->_clearButton setBackgroundColor:0];
    [(UIButton *)self->_clearButton _setTouchInsets:-12.5, -12.5, -12.5, -12.5];
    clearButton = self->_clearButton;
  }

  return clearButton;
}

- (CGSize)_clearButtonSize
{
  v2 = 19.0;
  v3 = 19.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)clearButtonFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = MEMORY[0x1E695F058];
  rect = *(MEMORY[0x1E695F058] + 8);
  [(MFAtomTextView *)self _clearButtonSize];
  v10 = v9;
  v12 = v11;
  [(UIView *)self mf_currentScreenScale];
  if ([(MFAtomTextView *)self _shouldReverseLayoutDirection])
  {
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    CGRectGetMinX(v31);
  }

  else
  {
    v29 = v10;
    v13 = v12;
    v14 = *v8;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    CGRectGetMaxX(v32);
    v33.origin.x = v14;
    v12 = v13;
    v10 = v29;
    v33.origin.y = rect;
    v33.size.width = v29;
    v33.size.height = v12;
    CGRectGetWidth(v33);
  }

  UIRoundToViewScale();
  v16 = v15;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  CGRectGetMidY(v34);
  v35.origin.x = v16;
  v35.origin.y = rect;
  v35.size.width = v10;
  v35.size.height = v12;
  CGRectGetHeight(v35);
  UIRoundToViewScale();
  v18 = v17;
  [(MFAtomTextView *)self clearButtonInsets];
  [(MFAtomTextView *)self _edgeInsetsForDirectionalInsets:?];
  v20 = v18 + v19;
  v23 = v10 - (v21 + v22);
  v25 = v12 - (v19 + v24);
  v26 = v16 + v21;
  v27 = v20;
  v28 = v23;
  result.size.height = v25;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)_rectForBounds:(CGRect)a3 sizingView:(id)a4 isLeft:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  [a4 systemLayoutSizeFittingSize:{a3.size.width, a3.size.height}];
  v13 = v12;
  v15 = v14;
  if (v5)
  {
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    CGRectGetMinX(v25);
  }

  else
  {
    v24 = v11;
    v16 = *v10;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    CGRectGetMaxX(v26);
    v27.origin.x = v16;
    v11 = v24;
    v27.origin.y = v24;
    v27.size.width = v13;
    v27.size.height = v15;
    CGRectGetWidth(v27);
  }

  UIRoundToViewScale();
  v18 = v17;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  CGRectGetMidY(v28);
  v29.origin.x = v18;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  CGRectGetHeight(v29);
  UIRoundToViewScale();
  v20 = v19;
  v21 = v18;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v20;
  result.origin.x = v21;
  return result;
}

- (CGRect)leadingViewFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(MFAtomTextView *)self _shouldReverseLayoutDirection];
  v9 = [(MFAtomTextView *)self leadingView];
  [(MFAtomTextView *)self _rectForBounds:v9 sizingView:v8 ^ 1u isLeft:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(MFAtomTextView *)self leadingViewInsets];
  [(MFAtomTextView *)self _edgeInsetsForDirectionalInsets:?];
  v19 = v13 + v18;
  v22 = v15 - (v20 + v21);
  v24 = v17 - (v18 + v23);
  v25 = v11 + v20;
  v26 = v19;
  v27 = v22;
  result.size.height = v24;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)trailingViewFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(MFAtomTextView *)self trailingView];
  [(MFAtomTextView *)self _rectForBounds:v8 sizingView:[(MFAtomTextView *)self _shouldReverseLayoutDirection] isLeft:x, y, width, height];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(MFAtomTextView *)self trailingViewInsets];
  [(MFAtomTextView *)self _edgeInsetsForDirectionalInsets:?];
  v18 = v12 + v17;
  v21 = v14 - (v19 + v20);
  v23 = v16 - (v17 + v22);
  v24 = v10 + v19;
  v25 = v18;
  v26 = v21;
  result.size.height = v23;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (BOOL)_showViewWithMode:(int64_t)a3 alwaysDefinition:(BOOL)a4
{
  v7 = [(MFAtomTextView *)self isFirstResponder];
  v8 = v7 & [(MFAtomTextView *)self _hasContent];
  v9 = !v8;
  v10 = a3 == 3 && a4;
  if (a3 != 2)
  {
    v9 = v10;
  }

  if (a3 == 1)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

- (BOOL)_showsClearButton
{
  v3 = [(MFAtomTextView *)self clearButtonMode];
  v4 = [(MFAtomTextView *)self _hasContent];

  return [(MFAtomTextView *)self _showViewWithMode:v3 alwaysDefinition:v4];
}

- (BOOL)_showsLeadingView
{
  v3 = [(MFAtomTextView *)self leadingView];
  if (v3)
  {
    v4 = [(MFAtomTextView *)self _showViewWithMode:[(MFAtomTextView *)self leadingViewMode] alwaysDefinition:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_showsTrailingView
{
  v3 = [(MFAtomTextView *)self trailingView];
  v4 = v3 && ![(MFAtomTextView *)self _showsClearButton]&& [(MFAtomTextView *)self _showViewWithMode:[(MFAtomTextView *)self trailingViewMode] alwaysDefinition:1];

  return v4;
}

- (void)_layoutButtons
{
  [(MFAtomTextView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(MFAtomTextView *)self _showsClearButton])
  {
    v14 = [(MFAtomTextView *)self clearButton];
    [(MFAtomTextView *)self clearButtonFrameForBounds:v4, v6, v8, v10];
    [v14 setFrame:?];
    [(MFAtomTextView *)self addSubview:v14];
  }

  else
  {
    clearButton = self->_clearButton;
    if (clearButton)
    {
      [(UIButton *)clearButton removeFromSuperview];
    }
  }

  if ([(MFAtomTextView *)self _showsLeadingView])
  {
    v15 = [(MFAtomTextView *)self leadingView];
    [(MFAtomTextView *)self leadingViewFrameForBounds:v4, v6, v8, v10];
    [v15 setFrame:?];
    [(MFAtomTextView *)self addSubview:v15];
  }

  else
  {
    leadingView = self->_leadingView;
    if (leadingView)
    {
      [(UIView *)leadingView removeFromSuperview];
    }
  }

  if ([(MFAtomTextView *)self _showsTrailingView])
  {
    v16 = [(MFAtomTextView *)self trailingView];
    [(MFAtomTextView *)self trailingViewFrameForBounds:v4, v6, v8, v10];
    [v16 setFrame:?];
    [(MFAtomTextView *)self addSubview:v16];
  }

  else
  {
    trailingView = self->_trailingView;
    if (trailingView)
    {

      [(UIView *)trailingView removeFromSuperview];
    }
  }
}

- (void)setPlaceholderColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [objc_opt_class() defaultPlaceholderColor];
  }

  if (self->_placeholderColor != v4)
  {
    objc_storeStrong(&self->_placeholderColor, v4);
    if (self->_placeholderLabel)
    {
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __38__MFAtomTextView_setPlaceholderColor___block_invoke;
      v9 = &unk_1E806C520;
      v10 = self;
      v11 = v4;
      v5 = _Block_copy(&v6);
      if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
      {
        [MEMORY[0x1E69DD250] transitionWithView:self->_placeholderLabel duration:5242880 options:v5 animations:0 completion:0.35];
      }

      else
      {
        v5[2](v5);
      }
    }
  }
}

- (UILabel)placeholderLabel
{
  placeholderLabel = self->_placeholderLabel;
  if (!placeholderLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_placeholderLabel;
    self->_placeholderLabel = v5;

    [(UILabel *)self->_placeholderLabel _setDrawsDebugBaselines:[(MFAtomTextView *)self _drawsDebugBaselines]];
    v7 = [(MFAtomTextView *)self font];
    [(UILabel *)self->_placeholderLabel setFont:v7];

    v8 = [(MFAtomTextView *)self placeholderColor];
    [(UILabel *)self->_placeholderLabel setTextColor:v8];

    v9 = [(MFAtomTextView *)self placeholder];
    [(UILabel *)self->_placeholderLabel setText:v9];

    placeholderLabel = self->_placeholderLabel;
  }

  return placeholderLabel;
}

- (void)setPlaceholder:(id)a3
{
  v6 = a3;
  if (self->_placeholder != v6)
  {
    v4 = [(NSString *)v6 copy];
    placeholder = self->_placeholder;
    self->_placeholder = v4;

    [(UILabel *)self->_placeholderLabel setText:self->_placeholder];
    [(MFAtomTextView *)self setNeedsLayout];
  }
}

- (CGRect)placeholderFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UILabel *)self->_placeholderLabel sizeThatFits:a3.size.width, a3.size.height];
  [(UIView *)self mf_currentScreenScale];
  v37 = v8;
  UIRectCenteredYInRectScale();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v38 = v15;
  v16 = [(MFAtomTextView *)self _shouldReverseLayoutDirection];
  v17 = [(MFAtomTextView *)self _showsLeadingView];
  v18 = [(MFAtomTextView *)self _showsTrailingView];
  v19 = [(MFAtomTextView *)self _showsClearButton];
  v20 = v18 || v19;
  if ((v16 & 1) == 0 && v17)
  {
    [(MFAtomTextView *)self leadingViewFrameForBounds:x, y, width, height];
    v22 = v21 + 16.0;
    v23 = v14 - (v21 + 16.0);
    if (!v20)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if ((v16 & 1) == 0)
  {
    v23 = v14 + -8.0;
    v22 = 8.0;
    if (v20)
    {
LABEL_10:
      if (v19)
      {
        [(MFAtomTextView *)self clearButtonFrameForBounds:x, y, width, height];
      }

      else
      {
        [(MFAtomTextView *)self trailingViewFrameForBounds:x, y, width, height];
      }

      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (v20)
  {
    if (v19)
    {
      [(MFAtomTextView *)self clearButtonFrameForBounds:x, y, width, height];
    }

    else
    {
      [(MFAtomTextView *)self trailingViewFrameForBounds:x, y, width, height];
    }

    v22 = v24 + 16.0;
    v23 = v14 - (v24 + 16.0);
    if (!v17)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v23 = v14 + -8.0;
  v22 = 8.0;
  if (!v17)
  {
LABEL_18:
    v26 = v23 + -8.0;
    goto LABEL_19;
  }

LABEL_14:
  [(MFAtomTextView *)self leadingViewFrameForBounds:x, y, width, height];
LABEL_15:
  v26 = v23 - (v25 + 16.0);
LABEL_19:
  [(MFAtomTextView *)self placeholderInsets];
  [(MFAtomTextView *)self _edgeInsetsForDirectionalInsets:?];
  v28 = v12 + v27;
  v31 = v26 - (v29 + v30);
  v33 = v38 - (v27 + v32);
  v34 = v10 + v22 + v29;
  v35 = v28;
  v36 = v31;
  result.size.height = v33;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (void)_layoutPlaceholder
{
  if ([(MFAtomTextView *)self _showsPlaceholder])
  {
    v4 = [(MFAtomTextView *)self placeholderLabel];
    [(MFAtomTextView *)self bounds];
    [(MFAtomTextView *)self placeholderFrameForBounds:?];
    [v4 setFrame:?];
    [(MFAtomTextView *)self addSubview:v4];
  }

  else
  {
    placeholderLabel = self->_placeholderLabel;
    if (placeholderLabel)
    {

      [(UILabel *)placeholderLabel removeFromSuperview];
    }
  }
}

- (UIEdgeInsets)edgeInsets
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x4010000000;
  v32 = "";
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  v33 = *MEMORY[0x1E69DDCE0];
  v34 = v3;
  [(MFAtomTextView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MFAtomTextView *)self _shouldReverseLayoutDirection];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __28__MFAtomTextView_edgeInsets__block_invoke;
  aBlock[3] = &unk_1E806C7C0;
  aBlock[4] = &v29;
  *&aBlock[5] = v5;
  *&aBlock[6] = v7;
  *&aBlock[7] = v9;
  *&aBlock[8] = v11;
  v13 = _Block_copy(aBlock);
  if ([(MFAtomTextView *)self _showsClearButton])
  {
    [(MFAtomTextView *)self clearButtonFrameForBounds:v5, v7, v9, v11];
    v13[2](v13, v12);
    v14 = 7;
    if (v12)
    {
      v14 = 5;
    }

    v30[v14] = v30[v14] + 7.0;
  }

  if ([(MFAtomTextView *)self _showsLeadingView])
  {
    [(MFAtomTextView *)self leadingViewFrameForBounds:v5, v7, v9, v11];
    v13[2](v13, v12 ^ 1);
  }

  if ([(MFAtomTextView *)self _showsTrailingView])
  {
    [(MFAtomTextView *)self trailingViewFrameForBounds:v5, v7, v9, v11];
    v13[2](v13, v12);
  }

  [(MFAtomTextView *)self textInsets];
  [(MFAtomTextView *)self _edgeInsetsForDirectionalInsets:?];
  UIEdgeInsetsAdd();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v30;
  v30[4] = v15;
  v23[5] = v17;
  v23[6] = v19;
  v23[7] = v21;

  _Block_object_dispose(&v29, 8);
  v24 = v16;
  v25 = v18;
  v26 = v20;
  v27 = v22;
  result.right = v27;
  result.bottom = v26;
  result.left = v25;
  result.top = v24;
  return result;
}

double __28__MFAtomTextView_edgeInsets__block_invoke(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2)
  {
    MaxX = CGRectGetMaxX(*&a3);
    v12 = 40;
  }

  else
  {
    v13 = CGRectGetMaxX(*(a1 + 40));
    v16.origin.x = a3;
    v16.origin.y = a4;
    v16.size.width = a5;
    v16.size.height = a6;
    MaxX = v13 - CGRectGetMinX(v16);
    v12 = 56;
  }

  v14 = *(*(a1 + 32) + 8);
  result = MaxX + *(v14 + v12);
  *(v14 + v12) = result;
  return result;
}

- (void)layoutSubviews
{
  [(MFAtomTextView *)self _layoutPlaceholder];
  [(MFAtomTextView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MFAtomTextView *)self edgeInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(_UITextFieldRoundedRectBackgroundViewNeue *)self->_background setFrame:v4, v6, v8, v10];
  v19 = v4 + v14;
  v20 = v6 + v12;
  v21 = v8 - (v14 + v18);
  v22 = v10 - (v12 + v16);
  v23 = v19;
  [(UIScrollView *)self->_scrollView setFrame:v19, v6 + v12, v21, v22];
  v24 = *MEMORY[0x1E695F058];
  v25 = *(MEMORY[0x1E695F058] + 8);
  *&self->_flags |= 0x20u;
  v39.origin.x = v23;
  v39.origin.y = v20;
  v39.size.width = v21;
  v39.size.height = v22;
  [(_MFAtomFieldEditor *)self->_textView sizeThatFits:1.79769313e308, CGRectGetHeight(v39)];
  v40.size.width = v26;
  v40.size.height = v27;
  *&self->_flags &= ~0x20u;
  v40.origin.x = v24;
  v40.origin.y = v25;
  CGRectGetWidth(v40);
  v41.origin.x = v23;
  v41.origin.y = v20;
  v41.size.width = v21;
  v41.size.height = v22;
  CGRectGetWidth(v41);
  [(UILabel *)self->_placeholderLabel bounds];
  CGRectGetHeight(v42);
  [(UIView *)self mf_currentScreenScale];
  v37 = v28;
  UIRectCenteredYInRectScale();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [(_MFAtomFieldEditor *)self->_textView frame];
  v44.origin.x = v30;
  v44.origin.y = v32;
  v44.size.width = v34;
  v44.size.height = v36;
  if (!CGRectEqualToRect(v43, v44))
  {
    [(_MFAtomFieldEditor *)self->_textView setFrame:v30, v32, v34, v36];
  }

  [(MFAtomTextView *)self _layoutButtons];
  [(MFAtomTextView *)self _updateBaselineConstraintIfNecessaryUsingTextViewFrame:v30, v32, v34, v36];

  [(MFAtomTextView *)self _scrollToSelectionIfNeeded];
}

- (void)setTextInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_textInsets.top, v3), vceqq_f64(*&self->_textInsets.bottom, v4)))) & 1) == 0)
  {
    self->_textInsets = a3;
    [(MFAtomTextView *)self setNeedsLayout];
  }
}

- (void)setPlaceholderInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_placeholderInsets.top, v3), vceqq_f64(*&self->_placeholderInsets.bottom, v4)))) & 1) == 0)
  {
    self->_placeholderInsets = a3;
    [(MFAtomTextView *)self setNeedsLayout];
  }
}

- (void)setLeadingViewInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_leadingViewInsets.top, v3), vceqq_f64(*&self->_leadingViewInsets.bottom, v4)))) & 1) == 0)
  {
    self->_leadingViewInsets = a3;
    [(MFAtomTextView *)self setNeedsLayout];
  }
}

- (void)setTrailingViewInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_trailingViewInsets.top, v3), vceqq_f64(*&self->_trailingViewInsets.bottom, v4)))) & 1) == 0)
  {
    self->_trailingViewInsets = a3;
    [(MFAtomTextView *)self setNeedsLayout];
  }
}

- (void)setClearButtonInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_clearButtonInsets.top, v3), vceqq_f64(*&self->_clearButtonInsets.bottom, v4)))) & 1) == 0)
  {
    self->_clearButtonInsets = a3;
    [(MFAtomTextView *)self setNeedsLayout];
  }
}

- (CGPoint)_firstGlyphBaselineLeftPointWithLayoutManager:(id)a3
{
  v4 = a3;
  v5 = [v4 textStorage];
  v6 = [v5 length];
  if (!v6)
  {
    v7 = [(MFAtomTextView *)self _baseAttributedStringWithRepresentedObject:@"X"];
    [v5 appendAttributedString:v7];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x4010000000;
  v30 = "";
  *&v8 = -1;
  *(&v8 + 1) = -1;
  v31 = v8;
  v32 = v8;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __64__MFAtomTextView__firstGlyphBaselineLeftPointWithLayoutManager___block_invoke;
  v26[3] = &unk_1E806C7E8;
  v26[4] = &v27;
  v26[5] = &v33;
  [v4 enumerateLineFragmentsForGlyphRange:0 usingBlock:{1, v26}];
  v20 = 0;
  v21 = &v20;
  v22 = 0x4010000000;
  v23 = "";
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v24 = v9;
  v25 = v9;
  v10 = v34[5];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__MFAtomTextView__firstGlyphBaselineLeftPointWithLayoutManager___block_invoke_2;
  v19[3] = &unk_1E806C810;
  v19[4] = &v20;
  [v4 enumerateEnclosingRectsForGlyphRange:0 withinSelectedGlyphRange:1 inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, v10, v19}];
  [v4 baselineOffsetForGlyphAtIndex:0];
  v12 = v11;
  MinX = CGRectGetMinX(v21[1]);
  v14 = v28[5];
  [(_MFAtomFieldEditor *)self->_textView textContainerInset];
  v16 = v15;
  if (!v6)
  {
    [v5 deleteCharactersInRange:{0, objc_msgSend(v5, "length")}];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  v17 = MinX;
  v18 = v12 + v14 + v16;
  result.y = v18;
  result.x = v17;
  return result;
}

void __64__MFAtomTextView__firstGlyphBaselineLeftPointWithLayoutManager___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, _BYTE *a13)
{
  v14 = *(*(a1 + 32) + 8);
  v14[4] = a7;
  v14[5] = a8;
  v14[6] = a9;
  v14[7] = a10;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  *a13 = 1;
}

uint64_t __64__MFAtomTextView__firstGlyphBaselineLeftPointWithLayoutManager___block_invoke_2(uint64_t result, _BYTE *a2, double a3, double a4, double a5, double a6)
{
  v6 = *(*(result + 32) + 8);
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  *a2 = 1;
  return result;
}

- (void)_createBaselineLayoutStrutIfNecessary
{
  if (!self->_baselineLayoutLabel)
  {
    v3 = [_MFAtomTextViewBaselineLayoutStrut alloc];
    v4 = [(_MFAtomTextViewBaselineLayoutStrut *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    baselineLayoutLabel = self->_baselineLayoutLabel;
    self->_baselineLayoutLabel = v4;

    v6 = [(MFAtomTextView *)self font];
    [(_MFAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setFont:v6];

    [(_MFAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MFAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setHidden:1];
    [(MFAtomTextView *)self addSubview:self->_baselineLayoutLabel];
    LODWORD(v7) = 1148846080;
    [(_MFAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setContentCompressionResistancePriority:1 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(_MFAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setContentHuggingPriority:1 forAxis:v8];
    v9 = MEMORY[0x1E696ACD8];
    v10 = _NSDictionaryOfVariableBindings(&cfstr_Baselinelayout.isa, self->_baselineLayoutLabel, 0);
    v11 = [v9 constraintsWithVisualFormat:@"H:|[_baselineLayoutLabel(0)]" options:0 metrics:0 views:v10];
    [v9 activateConstraints:v11];

    v12 = [(_MFAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel topAnchor];
    v13 = [(MFAtomTextView *)self topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    baselineLayoutConstraint = self->_baselineLayoutConstraint;
    self->_baselineLayoutConstraint = v14;

    v16 = self->_baselineLayoutConstraint;

    [(NSLayoutConstraint *)v16 setActive:1];
  }
}

- (void)_updateBaselineConstraintIfNecessaryUsingTextViewFrame:(CGRect)a3
{
  if (self->_baselineLayoutConstraint)
  {
    baselineLayoutLabel = self->_baselineLayoutLabel;
    if (baselineLayoutLabel)
    {
      height = a3.size.height;
      width = a3.size.width;
      y = a3.origin.y;
      x = a3.origin.x;
      [(_MFAtomTextViewBaselineLayoutStrut *)baselineLayoutLabel frame];
      v10 = v9;
      v12 = v11;
      [(_MFAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel intrinsicContentSize];
      [(_MFAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setFrame:v10, v12, v13, v14];
      v15 = [(_MFAtomFieldEditor *)self->_textView layoutManager];
      [(MFAtomTextView *)self _firstGlyphBaselineLeftPointWithLayoutManager:v15];

      UIRoundToViewScale();
      v17 = v16;
      v18 = [(_MFAtomFieldEditor *)self->_textView superview];
      [(MFAtomTextView *)self convertRect:v18 fromView:x, y, width, height];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v32.origin.x = v20;
      v32.origin.y = v22;
      v32.size.width = v24;
      v32.size.height = v26;
      v27 = v17 + CGRectGetMinY(v32);
      [(_MFAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel _firstLineBaselineOffsetFromBoundsTop];
      v29 = v27 - v28;
      baselineLayoutConstraint = self->_baselineLayoutConstraint;

      [(NSLayoutConstraint *)baselineLayoutConstraint setConstant:v29];
    }
  }
}

- (id)viewForLastBaselineLayout
{
  [(MFAtomTextView *)self _createBaselineLayoutStrutIfNecessary];
  baselineLayoutLabel = self->_baselineLayoutLabel;

  return baselineLayoutLabel;
}

- (id)_attachmentAtCharacterIndex:(unint64_t)a3
{
  v4 = [(_MFAtomFieldEditor *)self->_textView textStorage];
  v5 = [v4 attribute:*MEMORY[0x1E69DB5F8] atIndex:a3 effectiveRange:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_NSRange)_characterRangeForAtomView:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3010000000;
  v18 = "";
  v19 = xmmword_1BE985670;
  if (v4)
  {
    v5 = [(_MFAtomFieldEditor *)self->_textView textStorage];
    v6 = [v5 length];
    v7 = *MEMORY[0x1E69DB5F8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__MFAtomTextView__characterRangeForAtomView___block_invoke;
    v12[3] = &unk_1E806C838;
    v13 = v4;
    v14 = &v15;
    [v5 enumerateAttribute:v7 inRange:0 options:v6 usingBlock:{0, v12}];

    v9 = v16[4];
    v8 = v16[5];
  }

  else
  {
    v8 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v15, 8);

  v10 = v9;
  v11 = v8;
  result.length = v11;
  result.location = v10;
  return result;
}

void __45__MFAtomTextView__characterRangeForAtomView___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v12 atomView];
    v10 = *(a1 + 32);

    if (v9 == v10)
    {
      v11 = *(*(a1 + 40) + 8);
      *(v11 + 32) = a3;
      *(v11 + 40) = a4;
      *a5 = 1;
    }
  }
}

- (void)_updateAtomMasksInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_atomViews;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        [v12 bounds];
        [(MFAtomTextView *)self convertRect:v12 fromView:?];
        v25.origin.x = v13;
        v25.origin.y = v14;
        v25.size.width = v15;
        v25.size.height = v16;
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = height;
        v24 = CGRectIntersection(v23, v25);
        [(MFAtomTextView *)self convertRect:v12 toView:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
        [v12 setMaskBounds:?];
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_tapRecognized:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 state] == 3)
  {
    [v4 locationInView:self];
    v6 = v5;
    v8 = v7;
    if (![(MFAtomTextView *)self isFirstResponder])
    {
      [(MFAtomTextView *)self becomeFirstResponder];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = self->_atomViews;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v13 delegateView];
          [v14 bounds];
          [(MFAtomTextView *)self convertRect:v14 fromView:?];
          v23.x = v6;
          v23.y = v8;
          if (CGRectContainsPoint(v24, v23))
          {
            v16 = [(MFAtomTextView *)self _characterRangeForAtomView:v13];
            if (v16 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [(_MFAtomFieldEditor *)self->_textView setSelectedRange:v16, v15];
            }

            goto LABEL_16;
          }
        }

        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }
}

- (void)_clearButtonTapped:(id)a3
{
  [(MFAtomTextView *)self setRepresentedObjects:0];

  [(MFAtomTextView *)self becomeFirstResponder];
}

- (void)escKeyPressed:(id)a3
{
  v4 = a3;
  if ([(MFAtomTextView *)self _showsClearButton])
  {
    [(MFAtomTextView *)self _clearButtonTapped:v4];
  }
}

- (CGRect)_usedRectWithLayoutManager:(id)a3 textContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 usedRectForTextContainer:v7];
  v9 = v8;
  v11 = v10;
  [(_MFAtomFieldEditor *)self->_textView textContainerInset];
  v13 = v12;
  [(_MFAtomFieldEditor *)self->_textView textContainerInset];
  v15 = v14;
  [(_MFAtomFieldEditor *)self->_textView textContainerInset];
  v17 = v16;
  [(_MFAtomFieldEditor *)self->_textView textContainerInset];
  v18 = *MEMORY[0x1E695EFF8];
  v19 = *(MEMORY[0x1E695EFF8] + 8);
  v21 = v9 - (v17 + v20);

  v22 = v18;
  v23 = v19;
  v24 = v21;
  v25 = v11 - (v13 + v15);
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5
{
  v5 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v5 && (*&self->_flags & 0x20) == 0)
  {
    v10 = [MEMORY[0x1E695DFA8] setWithArray:self->_atomViews];
    v29 = [v8 textStorage];
    v11 = [v29 length];
    v12 = *MEMORY[0x1E69DB5F8];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __72__MFAtomTextView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke;
    v34[3] = &unk_1E806C860;
    v13 = v10;
    v35 = v13;
    v36 = self;
    v14 = v8;
    v37 = v14;
    v15 = v9;
    v38 = v15;
    [v29 enumerateAttribute:v12 inRange:0 options:v11 usingBlock:{0, v34}];
    if ([v13 count])
    {
      atomViews = self->_atomViews;
      v17 = [v13 allObjects];
      [(NSMutableArray *)atomViews removeObjectsInArray:v17];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = v13;
      v19 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v19)
      {
        v20 = *v31;
        do
        {
          v21 = 0;
          do
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v30 + 1) + 8 * v21++) removeFromSuperview];
          }

          while (v19 != v21);
          v19 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v19);
      }
    }

    [(MFAtomTextView *)self _usedRectWithLayoutManager:v14 textContainer:v15];
    [(UIView *)self mf_currentScreenScale];
    UIRectIntegralWithScale();
    v23 = v22;
    v25 = v24;
    [(UIScrollView *)self->_scrollView contentSize];
    if (v27 != v23 || v26 != v25)
    {
      [(UIScrollView *)self->_scrollView setContentSize:v23, v25];
    }

    [(MFAtomTextView *)self _visibleAtomsRect];
    [(MFAtomTextView *)self _updateAtomMasksInRect:?];
  }
}

void __72__MFAtomTextView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v23 atomView];
    [*(a1 + 32) removeObject:v7];
    v8 = [v7 superview];

    if (!v8)
    {
      [*(*(a1 + 40) + 488) addSubview:v7];
      [*(*(a1 + 40) + 512) addObject:v7];
    }

    v9 = [*(a1 + 48) glyphRangeForCharacterRange:a3 actualCharacterRange:{a4, 0}];
    [*(a1 + 48) boundingRectForGlyphRange:v9 inTextContainer:{v10, *(a1 + 56)}];
    [*(*(a1 + 40) + 488) convertGlyphRect:?];
    [v7 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [*(a1 + 40) mf_currentScreenScale];
    UIRectIntegralWithScale();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v7 frame];
    if (v16 != v20 || v18 != v19)
    {
      [v7 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v16, v18}];
      [v7 layoutSubviews];
    }

    v21 = [v7 viewForLastBaselineLayout];
    [v21 frame];
    [v7 setFrame:{v12, v14 - v22, v16, v18}];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  if (self->_scrollView == a3)
  {
    [(MFAtomTextView *)self _visibleAtomsRect];

    [(MFAtomTextView *)self _updateAtomMasksInRect:?];
  }
}

- (void)_scrollToSelectionIfNeeded
{
  if ((*&self->_flags & 0x40) != 0)
  {
    textView = self->_textView;
    v4 = [(_MFAtomFieldEditor *)textView selectedRange];
    [(_MFAtomFieldEditor *)textView _rectForScrollToVisible:v4, v5];
    [(_MFAtomFieldEditor *)self->_textView scrollRectToVisible:1 animated:?];
    *&self->_flags &= ~0x40u;
  }
}

- (void)textViewDidEndEditing:(id)a3
{
  v5 = a3;
  v4 = [v5 textStorage];
  [v5 setSelectedRange:{objc_msgSend(v4, "length"), 0}];

  [(MFAtomTextView *)self sendActionsForControlEvents:0x40000];
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if (([v10 isEqualToString:@"\n"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"\t"))
  {
    v11 = [v9 textStorage];
    [v9 setSelectedRange:{objc_msgSend(v11, "length"), 0}];

    [(MFAtomTextView *)self sendActionsForControlEvents:0x80000];
    v12 = 0;
    goto LABEL_4;
  }

  v14 = [v10 isEqualToString:&stru_1F3CF3758];
  if (length == 1)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 1)
  {
    v16 = [(MFAtomTextView *)self _attachmentAtCharacterIndex:location];
    v17 = [v16 atomView];

    if (v17 && ![v17 selectionStyle])
    {
      [v9 setSelectedRange:{location, length}];
LABEL_19:
      v12 = 0;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v12 = 1;
  if ((*&self->_flags & 0x10) != 0 && length == 1)
  {
    v17 = [(MFAtomTextView *)self _attachmentAtCharacterIndex:location];
    v18 = [v17 atomView];
    if (![v18 selectionStyle])
    {

      goto LABEL_20;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v20 = [v17 representedObject];
    v21 = [WeakRetained _atomTextView:self shouldReplaceRepresentedObject:v20 replacementText:v10];

    if ((v21 & 1) == 0)
    {
      [v9 setSelectedRange:{location + 1, 0}];
      [v9 insertText:v10];
      goto LABEL_19;
    }

LABEL_16:
    v12 = 1;
LABEL_20:
  }

LABEL_4:

  return v12;
}

- (void)textViewDidChange:(id)a3
{
  [(MFAtomTextView *)self setNeedsLayout];

  [(MFAtomTextView *)self sendActionsForControlEvents:0x20000];
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  v18 = [v4 textStorage];
  v5 = [v4 layoutManager];
  v6 = [v4 selectedRange];
  v8 = v7;
  v9 = [v5 glyphRangeForCharacterRange:0 actualCharacterRange:{objc_msgSend(v18, "length"), 0}];
  v11 = v10;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __45__MFAtomTextView_textViewDidChangeSelection___block_invoke;
  v19[3] = &unk_1E806C8B0;
  v12 = v5;
  v20 = v12;
  v13 = v18;
  v21 = v13;
  v24 = v6;
  v25 = v8;
  v14 = v4;
  v22 = v14;
  v23 = &v26;
  [v12 enumerateLineFragmentsForGlyphRange:v9 usingBlock:{v11, v19}];
  v15 = v27[5];
  textView = self->_textView;
  if (v15)
  {
    [v15 bounds];
    [(_MFAtomFieldEditor *)textView convertRect:v27[5] fromView:?];
  }

  else
  {
    [(_MFAtomFieldEditor *)self->_textView _rectForScrollToVisible:v6, v8];
  }

  [(_MFAtomFieldEditor *)self->_textView scrollRectToVisible:1 animated:?];
  if (*&self->_flags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained atomTextViewDidChangeSelection:self];
  }

  _Block_object_dispose(&v26, 8);
}

void __45__MFAtomTextView_textViewDidChangeSelection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) characterRangeForGlyphRange:a3 actualGlyphRange:{a4, 0}];
  v7 = v6;
  v8 = *MEMORY[0x1E69DB5F8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__MFAtomTextView_textViewDidChangeSelection___block_invoke_2;
  v12[3] = &unk_1E806C888;
  v15 = *(a1 + 64);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13 = v10;
  v14 = v11;
  [v9 enumerateAttribute:v8 inRange:v5 options:v7 usingBlock:{0, v12}];
}

void __45__MFAtomTextView_textViewDidChangeSelection___block_invoke_2(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v24 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v24 atomView];
    v8 = 0;
    v9 = a1[6];
    if (a3 >= v9)
    {
      v10 = a1[7];
      if (a3 - v9 < v10)
      {
        v11 = a1[4];
        v12 = [v11 beginningOfDocument];
        v13 = [v11 positionFromPosition:v12 offset:a3];
        v14 = [v11 baseWritingDirectionForPosition:v13 inDirection:0];
        v15 = a3 + a4 == v10 + v9;
        v16 = a3 == v9;

        if (v14 == 1)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        if (v14 == 1)
        {
          v18 = v16;
        }

        else
        {
          v18 = v15;
        }

        v19 = v17 || v18;
        v20 = !v17;
        v21 = 4;
        if (v20)
        {
          v21 = 0;
        }

        v20 = !v18;
        v22 = 8;
        if (v20)
        {
          v22 = 0;
        }

        v23 = v21 | v22;
        if (v19)
        {
          v8 = v23;
        }

        else
        {
          v8 = 1;
        }

        objc_storeStrong((*(a1[5] + 8) + 40), v7);
      }
    }

    [v7 setSelectionStyle:v8 animated:0];
  }
}

- (void)_textStorageDidProcessEditing:(id)a3
{
  if ([(_MFAtomFieldEditor *)self->_textView isSelectable])
  {
    if ([(MFAtomTextView *)self isFirstResponder])
    {
      *&self->_flags |= 0x40u;
    }
  }
}

- (_NSRange)selectionRange
{
  v2 = [(_MFAtomFieldEditor *)self->_textView selectionRange];
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)rangeEnclosingPosition:(id)a3 withGranularity:(int64_t)a4 inDirection:(int64_t)a5
{
  v5 = [(_MFAtomFieldEditor *)self->_textView rangeEnclosingPosition:a3 withGranularity:a4 inDirection:a5];

  return v5;
}

- (id)positionFromPosition:(id)a3 toBoundary:(int64_t)a4 inDirection:(int64_t)a5
{
  v5 = [(_MFAtomFieldEditor *)self->_textView positionFromPosition:a3 toBoundary:a4 inDirection:a5];

  return v5;
}

- (CGRect)firstRectForRange:(id)a3
{
  [(_MFAtomFieldEditor *)self->_textView firstRectForRange:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)caretRectForPosition:(id)a3
{
  [(_MFAtomFieldEditor *)self->_textView caretRectForPosition:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)selectionRectsForRange:(id)a3
{
  v3 = [(_MFAtomFieldEditor *)self->_textView selectionRectsForRange:a3];

  return v3;
}

- (id)textInRange:(id)a3
{
  v3 = [(_MFAtomFieldEditor *)self->_textView textInRange:a3];

  return v3;
}

- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4
{
  v4 = [(_MFAtomFieldEditor *)self->_textView characterRangeByExtendingPosition:a3 inDirection:a4];

  return v4;
}

- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4
{
  v4 = [(_MFAtomFieldEditor *)self->_textView textRangeFromPosition:a3 toPosition:a4];

  return v4;
}

- (id)positionFromPosition:(id)a3 offset:(int64_t)a4
{
  v4 = [(_MFAtomFieldEditor *)self->_textView positionFromPosition:a3 offset:a4];

  return v4;
}

- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5
{
  v5 = [(_MFAtomFieldEditor *)self->_textView positionFromPosition:a3 inDirection:a4 offset:a5];

  return v5;
}

- (id)positionWithinRange:(id)a3 atCharacterOffset:(int64_t)a4
{
  v4 = [(_MFAtomFieldEditor *)self->_textView positionWithinRange:a3 atCharacterOffset:a4];

  return v4;
}

- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4
{
  v4 = [(_MFAtomFieldEditor *)self->_textView positionWithinRange:a3 farthestInDirection:a4];

  return v4;
}

- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4
{
  v4 = [(_MFAtomFieldEditor *)self->_textView closestPositionToPoint:a4 withinRange:a3.x, a3.y];

  return v4;
}

- (id)textInputTraits
{
  textInputTraits = self->_textInputTraits;
  if (!textInputTraits)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD108]);
    v5 = self->_textInputTraits;
    self->_textInputTraits = v4;

    textInputTraits = self->_textInputTraits;
  }

  return textInputTraits;
}

- (void)takeTraitsFrom:(id)a3
{
  v5 = a3;
  v4 = [(MFAtomTextView *)self textInputTraits];
  [v4 takeTraitsFrom:v5];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if ([objc_opt_class() instancesRespondToSelector:a3])
  {
    v5 = [(MFAtomTextView *)self textInputTraits];
  }

  else if ([objc_opt_class() instancesRespondToSelector:a3])
  {
    v5 = self->_textView;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MFAtomTextView;
    v5 = [(MFAtomTextView *)&v7 forwardingTargetForSelector:a3];
  }

  return v5;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
    }

    v6 = v9;
  }

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = MFAtomTextView;
  if ([(MFAtomTextView *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MFAtomTextView *)self textInputTraits];
    if (objc_opt_respondsToSelector())
    {
      v4 = 1;
    }

    else
    {
      v4 = objc_opt_respondsToSelector();
    }
  }

  return v4 & 1;
}

- (id)keyCommands
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = keyCommands_keyCommands;
  if (!keyCommands_keyCommands)
  {
    v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_escKeyPressed_];
    v7[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v5 = keyCommands_keyCommands;
    keyCommands_keyCommands = v4;

    v2 = keyCommands_keyCommands;
  }

  return v2;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = sel__clearButtonTapped_ == a3 || sel_escKeyPressed_ == a3 && [(MFAtomTextView *)self _showsClearButton]|| [(_MFAtomFieldEditor *)self->_textView canPerformAction:a3 withSender:v6];

  return v7;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = MFAtomTextView;
  v5 = [(MFAtomTextView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self || v5 == self->_textView)
  {
    v7 = [(UIButton *)self->_clearButton superview];
    if (v7 != self)
    {
      v8 = [(UIView *)self->_leadingView superview];
      if (v8 != self)
      {
        [(UIView *)self->_trailingView superview];
      }
    }
  }

  return v6;
}

- (MFAtomTextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSDirectionalEdgeInsets)textInsets
{
  top = self->_textInsets.top;
  leading = self->_textInsets.leading;
  bottom = self->_textInsets.bottom;
  trailing = self->_textInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)placeholderInsets
{
  top = self->_placeholderInsets.top;
  leading = self->_placeholderInsets.leading;
  bottom = self->_placeholderInsets.bottom;
  trailing = self->_placeholderInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)leadingViewInsets
{
  top = self->_leadingViewInsets.top;
  leading = self->_leadingViewInsets.leading;
  bottom = self->_leadingViewInsets.bottom;
  trailing = self->_leadingViewInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)trailingViewInsets
{
  top = self->_trailingViewInsets.top;
  leading = self->_trailingViewInsets.leading;
  bottom = self->_trailingViewInsets.bottom;
  trailing = self->_trailingViewInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)clearButtonInsets
{
  top = self->_clearButtonInsets.top;
  leading = self->_clearButtonInsets.leading;
  bottom = self->_clearButtonInsets.bottom;
  trailing = self->_clearButtonInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

void __60___MFAtomTextView_enumerateAtomsInCharacterRange_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKey:*MEMORY[0x1E69DB5F8]];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v6 atomView];

      if (v3)
      {
        v4 = *(a1 + 32);
        v5 = [v6 atomView];
        (*(v4 + 16))(v4, v5);
      }
    }
  }
}

void __44___MFAtomTextView_enumerateAtomAttachments___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*MEMORY[0x1E69DB5F8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __42___MFAtomTextView_selectionRectsForRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 objectForKey:*MEMORY[0x1E69DB5F8]];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v22 = *(a1 + 32);
    v23 = [v22 beginningOfDocument];
    v10 = [v22 positionFromPosition:v23 offset:a3];

    v21 = [*(a1 + 32) positionFromPosition:v10 offset:a4];
    v24 = [*(a1 + 32) textRangeFromPosition:v10 toPosition:v21];
    v25 = *(a1 + 40);
    v27.receiver = *(a1 + 32);
    v27.super_class = _MFAtomTextView;
    v26 = objc_msgSendSuper2(&v27, sel_selectionRectsForRange_, v24);
    [v25 addObjectsFromArray:v26];

    goto LABEL_8;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = [v7 atomView];
  v11 = *(a1 + 32);
  [v10 selectionFrame];
  [v11 convertRect:v10 fromView:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (a3 == v8)
  {
    v20 = objc_alloc_init(_MFAtomTextSelectionRect);
    [(_MFAtomTextSelectionRect *)v20 setRect:v13, v15, 0.0, v19];
    [(_MFAtomTextSelectionRect *)v20 setContainsStart:1];
    [*(a1 + 40) addObject:v20];
  }

  if (v9 + v8 == a3 + a4)
  {
    v21 = objc_alloc_init(_MFAtomTextSelectionRect);
    [(_MFAtomTextSelectionRect *)v21 setRect:v13 + v17, v15, 0.0, v19];
    [(_MFAtomTextSelectionRect *)v21 setContainsEnd:1];
    [*(a1 + 40) addObject:v21];
LABEL_8:
  }
}

@end