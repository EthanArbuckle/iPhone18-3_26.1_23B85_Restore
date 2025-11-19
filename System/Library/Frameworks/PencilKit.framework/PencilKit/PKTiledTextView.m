@interface PKTiledTextView
- (BOOL)_didHitNestedTiledView:(id)a3;
- (BOOL)_shouldExpandBottomAttachmentForDragAndDrop;
- (BOOL)canAddStroke;
- (BOOL)hasEndAttachment;
- (BOOL)insertAttachmentIfInBlankSpace:(CGPoint)a3;
- (BOOL)interactionShouldBegin:(id)a3 atPoint:(CGPoint)a4;
- (CGRect)frameOfEndAttachment;
- (id)_textView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)initInScrollView:(id)a3 sixChannelBlending:(BOOL)a4 defaultDrawingClass:(Class)a5;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)saveTempData:(id)a3 name:(id)a4;
- (id)standInAttachmentView;
- (id)viewForAttachmentAtBlankSpace;
- (id)viewToMakeFirstResponderWhenHoveringOverAttachment:(id)a3;
- (void)_canvasViewWillCreateSnapshot;
- (void)_layoutSubviews;
- (void)_scrollViewDidScroll;
- (void)_setupTapToRadarButton;
- (void)_tapToRadarButtonTapped:(id)a3;
- (void)appendPath:(id)a3 attachmentString:(id)a4;
- (void)canvasViewDidEndDrawing:(id)a3;
- (void)canvasViewWillBeginNewStroke:(id)a3 withTouch:(id)a4 location:(CGPoint)a5;
- (void)dealloc;
- (void)handwritingFeedback:(id)a3;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setDefaultDrawingClass:(Class)a3;
- (void)setLinedPaper:(id)a3;
- (void)textDidBeginEditing:(id)a3;
- (void)textDidChange:(id)a3;
- (void)textDidEndEditing:(id)a3;
- (void)updateEndAttachment;
@end

@implementation PKTiledTextView

- (id)_textView
{
  v3 = objc_opt_class();
  v4 = [(PKTiledView *)self scrollView];
  v5 = PKDynamicCast(v3, v4);

  return v5;
}

- (void)_layoutSubviews
{
  v3 = [(PKTiledTextView *)self _textView];
  v4 = [v3 _freezeTextContainerSize];

  if ((v4 & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = PKTiledTextView;
    [(PKTiledView *)&v5 _layoutSubviews];
    [(PKTiledTextView *)self updateEndAttachment];
  }
}

- (void)_scrollViewDidScroll
{
  v2.receiver = self;
  v2.super_class = PKTiledTextView;
  [(PKTiledView *)&v2 _scrollViewDidScroll];
}

- (void)updateEndAttachment
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __38__PKTiledTextView_updateEndAttachment__block_invoke;
  v2[3] = &unk_1E82D7148;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

void __38__PKTiledTextView_updateEndAttachment__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasEndAttachment];
  v3 = [*(a1 + 32) standInEndAttachmentView];
  v21 = v3;
  if (v2)
  {
    [v3 setHidden:1];
  }

  else
  {
    [v3 setHidden:0];

    v4 = [*(a1 + 32) canvasView];
    v5 = [v4 isDrawing];

    if (v5)
    {
      return;
    }

    [*(a1 + 32) frameOfEndAttachment];
    if (v9 <= 0.0)
    {
      return;
    }

    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = [*(a1 + 32) standInEndAttachmentView];
    [v14 frame];
    if (vabdd_f64(v18, v10) >= 0.01 || vabdd_f64(v15, v11) >= 0.01)
    {
    }

    else
    {
      v19 = v17;
      v20 = vabdd_f64(v16, v12);

      if (v20 < 0.01 && vabdd_f64(v19, v13) < 0.01)
      {
        return;
      }
    }

    v21 = [*(a1 + 32) standInEndAttachmentView];
    [v21 setFrame:{v10, v11, v12, v13}];
  }
}

- (BOOL)hasEndAttachment
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(PKTiledView *)self attachmentViews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isAtEndOfDocument])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (CGRect)frameOfEndAttachment
{
  v2 = [(PKTiledTextView *)self _textView];
  [v2 bounds];
  v4 = v3;
  [v2 bounds];
  v6 = v5;
  if (_UISolariumEnabled())
  {
    [v2 bounds];
    v8 = v7;
    v10 = v9;
    [v2 safeAreaInsets];
    v4 = v8 + v11;
    v6 = v10 - (v11 + v12);
  }

  v13 = [v2 textContainer];
  [v13 textContainerOrigin];
  v15 = v14;

  v16 = [v2 textStorage];
  v17 = [v16 length];

  if (v17)
  {
    [v2 _frameOfTrailingWhitespace];
    v19 = v18;
    if (v20 <= 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = 200.0;
    }
  }

  else
  {
    [v2 contentOffset];
    v23 = v15 + v22;
    [v2 adjustedContentInset];
    v19 = v23 + v24;
    v21 = 200.0;
  }

  v25 = v4;
  v26 = v19;
  v27 = v6;
  v28 = v21;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PKTiledTextView;
  [(PKTiledView *)&v11 layoutSubviews];
  v3 = [(PKTiledTextView *)self tapToRadarButton];

  if (v3)
  {
    v4 = [(PKTiledTextView *)self tapToRadarButton];
    [v4 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v6 = v5;
    v8 = v7;

    [(PKTiledTextView *)self bounds];
    v9 = CGRectGetWidth(v12) - v6 + -30.0;
    v10 = [(PKTiledTextView *)self tapToRadarButton];
    [v10 setFrame:{v9, 70.0, v6, v8}];
  }
}

- (id)initInScrollView:(id)a3 sixChannelBlending:(BOOL)a4 defaultDrawingClass:(Class)a5
{
  v6 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v34.receiver = self;
  v34.super_class = PKTiledTextView;
  v9 = [(PKTiledView *)&v34 initInScrollView:v8 sixChannelBlending:v6 defaultDrawingClass:a5];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = PKCheckedDynamicCast(v10, v8);
    [v9 setInsertSpaceEnabled:1];
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *MEMORY[0x1E69DB738];
    v14 = [v11 textStorage];
    [v12 addObserver:v9 selector:sel_textDidChange_ name:v13 object:v14];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v9 selector:sel_textDidChange_ name:*MEMORY[0x1E69DE750] object:v11];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v9 selector:sel_textDidBeginEditing_ name:*MEMORY[0x1E69DE748] object:v11];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v9 selector:sel_textDidEndEditing_ name:*MEMORY[0x1E69DE758] object:v11];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v9 selector:sel_handwritingFeedback_ name:@"PKPaletteTapToRadarCommandTriggeredNotification" object:0];

    NSClassFromString(&cfstr_Uitextcontaine.isa);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = [v8 subviews];
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v30 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            [v9 setAttachmentContainerView:v24];
            goto LABEL_12;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    [v9 setSupportsCopyAsText:1];
    v25 = [MEMORY[0x1E695E000] standardUserDefaults];
    v26 = [v25 BOOLForKey:@"PKTapToRadarButtonEnabled"];

    if (v26)
    {
      [v9 _setupTapToRadarButton];
    }

    [v8 addObserver:v9 forKeyPath:@"backgroundColor" options:0 context:kScrollViewBackgroundColorObserverContext];
    v27 = [v9 _textView];
    [v27 _updateDrawingBackgroundColor];

    v28 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v9];
    [v9 addInteraction:v28];
  }

  return v9;
}

- (void)dealloc
{
  [(PKTextAttachmentDrawingViewProviderView *)self->_standInEndAttachmentView removeFromSuperview];
  v3 = [(PKTiledView *)self scrollView];
  [v3 removeObserver:self forKeyPath:@"backgroundColor" context:kScrollViewBackgroundColorObserverContext];

  v4.receiver = self;
  v4.super_class = PKTiledTextView;
  [(PKTiledView *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (kScrollViewBackgroundColorObserverContext == a6)
  {
    v6 = [(PKTiledTextView *)self _textView:a3];
    [v6 _updateDrawingBackgroundColor];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKTiledTextView;
    [(PKTiledView *)&v7 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)setDefaultDrawingClass:(Class)a3
{
  if ([(PKTiledView *)self defaultDrawingClass]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PKTiledTextView;
    [(PKTiledView *)&v5 setDefaultDrawingClass:a3];
    [(PKTextAttachmentDrawingViewProviderView *)self->_standInEndAttachmentView removeFromSuperview];
  }
}

- (BOOL)_shouldExpandBottomAttachmentForDragAndDrop
{
  v2 = [(PKTiledTextView *)self _textView];
  v3 = [v2 isPaperEnabled];

  return v3;
}

- (void)textDidChange:(id)a3
{
  v4 = dispatch_time(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PKTiledTextView_textDidChange___block_invoke;
  block[3] = &unk_1E82D7148;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

uint64_t __33__PKTiledTextView_textDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateTilesForVisibleRect];
  v2 = *(a1 + 32);

  return [v2 updateEndAttachment];
}

- (void)textDidBeginEditing:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__PKTiledTextView_textDidBeginEditing___block_invoke;
  v3[3] = &unk_1E82D7148;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.25];
}

void __39__PKTiledTextView_textDidBeginEditing___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) standInEndAttachmentView];
  [v1 setAlpha:0.0];
}

- (void)textDidEndEditing:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__PKTiledTextView_textDidEndEditing___block_invoke;
  v3[3] = &unk_1E82D7148;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.25];
}

void __37__PKTiledTextView_textDidEndEditing___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) standInEndAttachmentView];
  [v1 setAlpha:1.0];
}

- (id)standInAttachmentView
{
  standInEndAttachmentView = self->_standInEndAttachmentView;
  if (!standInEndAttachmentView)
  {
    v4 = [PKTextAttachmentDrawingViewProvider drawingViewClassForDrawingClass:[(PKTiledView *)self defaultDrawingClass]];
    v5 = [(objc_class *)[(PKTiledView *)self defaultDrawingClass] fileType];
    v6 = [MEMORY[0x1E69DB7F0] textAttachmentClassForFileType:v5];
    if (!v6)
    {
      v6 = objc_opt_class();
    }

    v7 = [v6 alloc];
    v8 = [MEMORY[0x1E695DEF0] data];
    v9 = [v7 initWithData:v8 ofType:v5];

    v10 = [[v4 alloc] initWithAttachment:v9 drawingClass:-[PKTiledView defaultDrawingClass](self inserted:{"defaultDrawingClass"), 0}];
    v11 = self->_standInEndAttachmentView;
    self->_standInEndAttachmentView = v10;

    [(PKTextAttachmentDrawingViewProviderView *)self->_standInEndAttachmentView setFrame:0.0, 0.0, 1000.0, 200.0];
    [(PKTextAttachmentDrawingViewProviderView *)self->_standInEndAttachmentView setUserInteractionEnabled:0];
    v12 = [(PKTiledTextView *)self _textView];
    [v12 addSubview:self->_standInEndAttachmentView];

    standInEndAttachmentView = self->_standInEndAttachmentView;
  }

  return [(PKTextAttachmentDrawingViewProviderView *)standInEndAttachmentView topLevelAttachmentView];
}

- (BOOL)canAddStroke
{
  v2 = [(PKTiledTextView *)self _textView];
  v3 = [v2 _canAddStroke];

  return v3;
}

- (void)_canvasViewWillCreateSnapshot
{
  v4.receiver = self;
  v4.super_class = PKTiledTextView;
  [(PKTiledView *)&v4 _canvasViewWillCreateSnapshot];
  v3 = [(PKTiledTextView *)self _textView];
  [v3 _canvasViewWillCreateSnapshot];
}

- (void)canvasViewWillBeginNewStroke:(id)a3 withTouch:(id)a4 location:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v12.receiver = self;
  v12.super_class = PKTiledTextView;
  [(PKTiledView *)&v12 canvasViewWillBeginNewStroke:a3 withTouch:v9 location:x, y];
  v10 = [(PKTiledView *)self drawingTouchThatHitNothing];

  if (v9 && !v10)
  {
    v11 = [(PKTiledTextView *)self _textView];
    [v11 _willBeginNewStrokeForTouch:v9];
  }
}

- (void)canvasViewDidEndDrawing:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKTiledTextView;
  [(PKTiledView *)&v5 canvasViewDidEndDrawing:a3];
  v4 = [(PKTiledTextView *)self _textView];
  [v4 _didEndStroke];
}

- (void)setLinedPaper:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKTiledTextView;
  [(PKTiledView *)&v5 setLinedPaper:a3];
  v4 = [(PKTiledTextView *)self standInEndAttachmentView];
  [v4 setNeedsLayout];
}

- (id)viewToMakeFirstResponderWhenHoveringOverAttachment:(id)a3
{
  v4 = a3;
  v5 = [(PKTiledTextView *)self standInAttachmentView];

  if (v5 != v4)
  {
    v6 = [v4 attachmentContainerView];
    if (![v6 isFirstResponder])
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (BOOL)insertAttachmentIfInBlankSpace:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(PKTiledTextView *)self _textView];
  v6 = v5;
  v7 = 0;
  if (v5 && y > 0.0)
  {
    v8 = [v5 textStorage];

    if (v8)
    {
      v8 = [v6 closestPositionToPoint:{x, y}];
      v9 = [v6 endOfDocument];
      if (![v8 isEqual:v9])
      {
        v21 = [v6 drawingDelegate];
        if (objc_opt_respondsToSelector())
        {
          v22 = [v6 drawingDelegate];
          v23 = [v22 textView:v6 isEndOfDocument:v8];

          if (v23)
          {
            goto LABEL_6;
          }
        }

        else
        {
        }

        v24 = [v6 beginningOfDocument];
        v25 = [v6 offsetFromPosition:v24 toPosition:v8];

        v26 = [v6 textStorage];
        v27 = [v26 length] - 1;

        if (v25 == v27)
        {
          v28 = [v6 textStorage];
          v18 = [v28 attribute:*MEMORY[0x1E69DB5F8] atIndex:v25 effectiveRange:0];

          if (PKIsInlineDrawingOrPaperAttachment(v18))
          {
            goto LABEL_20;
          }
        }

        v18 = 0;
        goto LABEL_20;
      }
    }

LABEL_6:
    v10 = [v6 textStorage];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [v6 textStorage];
      v13 = [v12 string];
      v14 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v15 = [v14 invertedSet];
      v16 = [v13 rangeOfCharacterFromSet:v15 options:4];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [v6 textStorage];
        v18 = [v17 attribute:*MEMORY[0x1E69DB5F8] atIndex:v16 effectiveRange:0];

        if (v18)
        {
          if (PKIsInlineDrawingOrPaperAttachment(v18))
          {
LABEL_20:

            v7 = v18 != 0;
            goto LABEL_21;
          }
        }
      }
    }

    v19 = [v6 textStorage];
    v20 = [v19 length];

    v18 = [v6 _insertEmptyDrawingAttachmentAtLocation:v20];
    goto LABEL_20;
  }

LABEL_21:

  return v7;
}

- (id)viewForAttachmentAtBlankSpace
{
  v2 = [(PKTiledTextView *)self _textView];
  v3 = [v2 textStorage];
  v4 = [v3 string];
  v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [v5 invertedSet];
  v7 = [v4 rangeOfCharacterFromSet:v6 options:4];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v2 textStorage];
    v10 = [v9 attribute:*MEMORY[0x1E69DB5F8] atIndex:v7 effectiveRange:0];

    if (v10 && PKIsInlineDrawingOrPaperAttachment(v10))
    {
      v11 = [v2 _pk_viewProviderForAttachment:v10 atCharacterIndex:v7 createIfNeeded:1];
      v12 = [v11 view];
      if (objc_opt_respondsToSelector())
      {
        v8 = [v12 topLevelAttachmentView];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)_didHitNestedTiledView:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  do
  {
    v6 = [(PKTiledView *)self scrollView];

    if (v5 == v6)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      v7 = [v5 subviews];
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {

              v13 = 1;
              goto LABEL_17;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    v12 = [v5 superview];

    v5 = v12;
  }

  while (v12);
  v13 = 0;
LABEL_17:

  return v13;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (v7 && [v7 _hidEvent])
  {
    v9 = [(PKTiledTextView *)self _textView];
    [v9 convertPoint:self fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    v14 = [(PKTiledTextView *)self _textView];
    v15 = [v14 hitTest:0 withEvent:{v11, v13}];

    if (v15 && [(PKTiledTextView *)self _didHitNestedTiledView:v15])
    {
      v16 = 0;
    }

    else
    {
      v17 = [(PKTiledView *)self scrollView];
      v18 = [v17 _textInteraction];
      [v18 setDelegate:self];

      v19 = [(PKTiledTextView *)self tapToRadarButton];

      if (v19 && (-[PKTiledTextView tapToRadarButton](self, "tapToRadarButton"), v20 = objc_claimAutoreleasedReturnValue(), -[PKTiledTextView tapToRadarButton](self, "tapToRadarButton"), v21 = objc_claimAutoreleasedReturnValue(), [v21 convertPoint:self fromView:{x, y}], objc_msgSend(v20, "hitTest:withEvent:", v8), v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v20, v22))
      {
        v23 = [(PKTiledTextView *)self tapToRadarButton];
      }

      else
      {
        v25.receiver = self;
        v25.super_class = PKTiledTextView;
        v23 = [(PKTiledView *)&v25 hitTest:v8 withEvent:x, y];
      }

      v16 = v23;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)interactionShouldBegin:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(PKTiledTextView *)self window];
  v8 = [PKToolPicker activeToolPickerForWindow:v7];

  v9 = [(PKTiledTextView *)self _textView];
  v10 = [v9 ink];
  v11 = [v10 _isHandwritingInk];

  v12 = [(PKTiledView *)self scrollView];
  [(PKTiledTextView *)self convertPoint:v12 fromView:x, y];
  v14 = v13;
  v16 = v15;

  if (![v8 isVisible] || v11)
  {
    v18 = [(PKTiledTextView *)self _textView];
    if ([v18 isEditing])
    {
      v17 = 1;
    }

    else
    {
      v19 = [(PKTiledView *)self hitAttachment:v14, v16];
      v17 = v19 == 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_setupTapToRadarButton
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [(PKTiledTextView *)self setTapToRadarButton:v3];

  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = *MEMORY[0x1E69DB648];
  v5 = [MEMORY[0x1E69DB878] fontWithName:@"Apple Color Emoji" size:30.0];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [v4 initWithString:@"🐜" attributes:v6];

  v8 = [(PKTiledTextView *)self tapToRadarButton];
  [v8 setAttributedTitle:v7 forState:0];

  v9 = [(PKTiledTextView *)self tapToRadarButton];
  [v9 addTarget:self action:sel__tapToRadarButtonTapped_ forControlEvents:64];

  v10 = [(PKTiledTextView *)self tapToRadarButton];
  [(PKTiledTextView *)self addSubview:v10];
}

- (void)_tapToRadarButtonTapped:(id)a3
{
  v102 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E69DCA78]);
  v5 = [(PKTiledTextView *)self window];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v10 = [MEMORY[0x1E69DCA80] defaultFormat];
  v11 = [v4 initWithSize:v10 format:{v7, v9}];

  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = __43__PKTiledTextView__tapToRadarButtonTapped___block_invoke;
  v98[3] = &unk_1E82DA3A8;
  v98[4] = self;
  v77 = v11;
  v12 = [v11 imageWithActions:v98];
  v13 = MEMORY[0x1E695DFF8];
  v14 = NSTemporaryDirectory();
  v15 = [v14 stringByAppendingPathComponent:@"screenshot.png"];
  v16 = [v13 fileURLWithPath:v15];

  v76 = v12;
  v17 = UIImagePNGRepresentation(v12);
  v97 = 0;
  v78 = v16;
  [v17 writeToURL:v16 options:1 error:&v97];
  v75 = v97;

  v18 = [MEMORY[0x1E695DF70] array];
  v80 = [MEMORY[0x1E695DF70] array];
  v81 = [MEMORY[0x1E695DF70] array];
  v19 = [(PKTiledView *)self attachmentViews];
  v82 = v19;
  if ([v19 count])
  {
    v20 = 0;
    v21 = 0x1E696A000uLL;
    v79 = v18;
    do
    {
      v22 = [v19 objectAtIndexedSubscript:v20];
      v23 = [v22 drawing];
      v24 = [v23 copy];

      v25 = [v24 serialize];
      v26 = [*(v21 + 3776) stringWithFormat:@"%d_drawing.drawing", v20];
      v27 = [(PKTiledTextView *)self saveTempData:v25 name:v26];

      v28 = [v27 path];
      [v18 addObject:v28];

      if ([v24 recognitionEnabled])
      {
        v29 = [v24 recognitionSession];

        if (v29)
        {
          v30 = objc_alloc(MEMORY[0x1E6997B60]);
          v31 = [v24 recognitionSession];
          v32 = [v30 initWithRecognitionSession:v31];

          [v32 start];
          [v32 waitForPendingUpdates];
          v33 = [v32 indexableContent];
          [v33 indexableTextRepresentation];
          v35 = v34 = v21;
          v83 = [v35 dataUsingEncoding:4];

          v36 = [*(v34 + 3776) stringWithFormat:@"%d_indexableText.txt", v20];
          v37 = [(PKTiledTextView *)self saveTempData:v83 name:v36];

          v38 = [v37 path];
          [v80 addObject:v38];

          v39 = [v32 indexableContent];
          v40 = [v39 presentableTextRepresentation];
          v41 = [v40 dataUsingEncoding:4];

          v42 = [*(v34 + 3776) stringWithFormat:@"%d_presentableText.txt", v20];
          v43 = [(PKTiledTextView *)self saveTempData:v41 name:v42];

          v44 = [v43 path];
          [v81 addObject:v44];

          v19 = v82;
          v21 = v34;

          v18 = v79;
        }
      }

      ++v20;
    }

    while (v20 < [v19 count]);
  }

  v45 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v45 setScheme:@"tap-to-radar"];
  v84 = v45;
  [v45 setHost:@"new"];
  v46 = [MEMORY[0x1E695DF70] array];
  v47 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentName" value:@"Handwriting"];
  [v46 addObject:v47];

  v48 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentVersion" value:@"iOS"];
  [v46 addObject:v48];

  v49 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentID" value:@"391023"];
  [v46 addObject:v49];

  v50 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Keywords" value:@"834455"];
  [v46 addObject:v50];

  v51 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Classification" value:@"Other Bug"];
  [v46 addObject:v51];

  v52 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Reproducibility" value:@"Not Applicable"];
  [v46 addObject:v52];

  v53 = [MEMORY[0x1E696AD60] string];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v54 = v18;
  v55 = [v54 countByEnumeratingWithState:&v93 objects:v101 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v94;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v94 != v57)
        {
          objc_enumerationMutation(v54);
        }

        [(PKTiledTextView *)self appendPath:*(*(&v93 + 1) + 8 * i) attachmentString:v53];
      }

      v56 = [v54 countByEnumeratingWithState:&v93 objects:v101 count:16];
    }

    while (v56);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v59 = v80;
  v60 = [v59 countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v90;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v90 != v62)
        {
          objc_enumerationMutation(v59);
        }

        [(PKTiledTextView *)self appendPath:*(*(&v89 + 1) + 8 * j) attachmentString:v53];
      }

      v61 = [v59 countByEnumeratingWithState:&v89 objects:v100 count:16];
    }

    while (v61);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v64 = v81;
  v65 = [v64 countByEnumeratingWithState:&v85 objects:v99 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v86;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v86 != v67)
        {
          objc_enumerationMutation(v64);
        }

        [(PKTiledTextView *)self appendPath:*(*(&v85 + 1) + 8 * k) attachmentString:v53];
      }

      v66 = [v64 countByEnumeratingWithState:&v85 objects:v99 count:16];
    }

    while (v66);
  }

  v69 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Attachments" value:v53];
  [v46 addObject:v69];

  v70 = [MEMORY[0x1E696AD60] string];
  if (!v75)
  {
    v71 = [v78 path];
    [(PKTiledTextView *)self appendPath:v71 attachmentString:v70];
  }

  v72 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Screenshot" value:v70];
  [v46 addObject:v72];

  [v84 setQueryItems:v46];
  v73 = [v84 URL];
  v74 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v74 openURL:v73 withOptions:0];
}

void __43__PKTiledTextView__tapToRadarButtonTapped___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) window];
  v2 = [*(a1 + 32) window];
  [v2 bounds];
  [v3 drawViewHierarchyInRect:?];
}

- (void)appendPath:(id)a3 attachmentString:(id)a4
{
  v7 = a4;
  v5 = a3;
  if ([v7 length])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v5];

    v5 = v6;
  }

  [v7 appendString:v5];
}

- (id)saveTempData:(id)a3 name:(id)a4
{
  v5 = MEMORY[0x1E695DFF8];
  v6 = a4;
  v7 = a3;
  v8 = NSTemporaryDirectory();
  v9 = [v8 stringByAppendingPathComponent:v6];

  v10 = [v5 fileURLWithPath:v9];

  v13 = 0;
  [v7 writeToURL:v10 options:1 error:&v13];

  v11 = 0;
  if (!v13)
  {
    v11 = v10;
  }

  return v11;
}

- (void)handwritingFeedback:(id)a3
{
  v14 = [(PKTiledView *)self attachmentViews];
  v4 = objc_opt_new();
  v5 = [v14 count];
  v6 = v14;
  if (v5)
  {
    for (i = 0; i < v11; ++i)
    {
      v8 = [v6 objectAtIndexedSubscript:i];
      v9 = [v8 drawing];
      v10 = [v9 copy];

      if (v10)
      {
        [v4 addObject:v10];
      }

      v11 = [v14 count];
      v6 = v14;
    }
  }

  if ([v4 count])
  {
    v12 = [(PKTiledTextView *)self window];
    v13 = [v12 rootViewController];
    [PKHandwritingDebugUtility presentHandwritingDebugViewFromViewController:v13 allDrawings:v4 tiledView:self];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a5;
  [a4 location];
  v8 = [(PKTiledView *)self hitAttachment:?];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

@end