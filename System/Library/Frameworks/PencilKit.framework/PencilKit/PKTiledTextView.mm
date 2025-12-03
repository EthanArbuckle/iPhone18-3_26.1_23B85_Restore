@interface PKTiledTextView
- (BOOL)_didHitNestedTiledView:(id)view;
- (BOOL)_shouldExpandBottomAttachmentForDragAndDrop;
- (BOOL)canAddStroke;
- (BOOL)hasEndAttachment;
- (BOOL)insertAttachmentIfInBlankSpace:(CGPoint)space;
- (BOOL)interactionShouldBegin:(id)begin atPoint:(CGPoint)point;
- (CGRect)frameOfEndAttachment;
- (id)_textView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)initInScrollView:(id)view sixChannelBlending:(BOOL)blending defaultDrawingClass:(Class)class;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)saveTempData:(id)data name:(id)name;
- (id)standInAttachmentView;
- (id)viewForAttachmentAtBlankSpace;
- (id)viewToMakeFirstResponderWhenHoveringOverAttachment:(id)attachment;
- (void)_canvasViewWillCreateSnapshot;
- (void)_layoutSubviews;
- (void)_scrollViewDidScroll;
- (void)_setupTapToRadarButton;
- (void)_tapToRadarButtonTapped:(id)tapped;
- (void)appendPath:(id)path attachmentString:(id)string;
- (void)canvasViewDidEndDrawing:(id)drawing;
- (void)canvasViewWillBeginNewStroke:(id)stroke withTouch:(id)touch location:(CGPoint)location;
- (void)dealloc;
- (void)handwritingFeedback:(id)feedback;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setDefaultDrawingClass:(Class)class;
- (void)setLinedPaper:(id)paper;
- (void)textDidBeginEditing:(id)editing;
- (void)textDidChange:(id)change;
- (void)textDidEndEditing:(id)editing;
- (void)updateEndAttachment;
@end

@implementation PKTiledTextView

- (id)_textView
{
  v3 = objc_opt_class();
  scrollView = [(PKTiledView *)self scrollView];
  v5 = PKDynamicCast(v3, scrollView);

  return v5;
}

- (void)_layoutSubviews
{
  _textView = [(PKTiledTextView *)self _textView];
  _freezeTextContainerSize = [_textView _freezeTextContainerSize];

  if ((_freezeTextContainerSize & 1) == 0)
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
  attachmentViews = [(PKTiledView *)self attachmentViews];
  v3 = [attachmentViews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(attachmentViews);
        }

        if ([*(*(&v7 + 1) + 8 * i) isAtEndOfDocument])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [attachmentViews countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  _textView = [(PKTiledTextView *)self _textView];
  [_textView bounds];
  v4 = v3;
  [_textView bounds];
  v6 = v5;
  if (_UISolariumEnabled())
  {
    [_textView bounds];
    v8 = v7;
    v10 = v9;
    [_textView safeAreaInsets];
    v4 = v8 + v11;
    v6 = v10 - (v11 + v12);
  }

  textContainer = [_textView textContainer];
  [textContainer textContainerOrigin];
  v15 = v14;

  textStorage = [_textView textStorage];
  v17 = [textStorage length];

  if (v17)
  {
    [_textView _frameOfTrailingWhitespace];
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
    [_textView contentOffset];
    v23 = v15 + v22;
    [_textView adjustedContentInset];
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
  tapToRadarButton = [(PKTiledTextView *)self tapToRadarButton];

  if (tapToRadarButton)
  {
    tapToRadarButton2 = [(PKTiledTextView *)self tapToRadarButton];
    [tapToRadarButton2 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v6 = v5;
    v8 = v7;

    [(PKTiledTextView *)self bounds];
    v9 = CGRectGetWidth(v12) - v6 + -30.0;
    tapToRadarButton3 = [(PKTiledTextView *)self tapToRadarButton];
    [tapToRadarButton3 setFrame:{v9, 70.0, v6, v8}];
  }
}

- (id)initInScrollView:(id)view sixChannelBlending:(BOOL)blending defaultDrawingClass:(Class)class
{
  blendingCopy = blending;
  v36 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v34.receiver = self;
  v34.super_class = PKTiledTextView;
  v9 = [(PKTiledView *)&v34 initInScrollView:viewCopy sixChannelBlending:blendingCopy defaultDrawingClass:class];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = PKCheckedDynamicCast(v10, viewCopy);
    [v9 setInsertSpaceEnabled:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *MEMORY[0x1E69DB738];
    textStorage = [v11 textStorage];
    [defaultCenter addObserver:v9 selector:sel_textDidChange_ name:v13 object:textStorage];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel_textDidChange_ name:*MEMORY[0x1E69DE750] object:v11];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v9 selector:sel_textDidBeginEditing_ name:*MEMORY[0x1E69DE748] object:v11];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v9 selector:sel_textDidEndEditing_ name:*MEMORY[0x1E69DE758] object:v11];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v9 selector:sel_handwritingFeedback_ name:@"PKPaletteTapToRadarCommandTriggeredNotification" object:0];

    NSClassFromString(&cfstr_Uitextcontaine.isa);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    subviews = [viewCopy subviews];
    v20 = [subviews countByEnumeratingWithState:&v30 objects:v35 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v24 = *(*(&v30 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            [v9 setAttachmentContainerView:v24];
            goto LABEL_12;
          }
        }

        v21 = [subviews countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    [v9 setSupportsCopyAsText:1];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v26 = [standardUserDefaults BOOLForKey:@"PKTapToRadarButtonEnabled"];

    if (v26)
    {
      [v9 _setupTapToRadarButton];
    }

    [viewCopy addObserver:v9 forKeyPath:@"backgroundColor" options:0 context:kScrollViewBackgroundColorObserverContext];
    _textView = [v9 _textView];
    [_textView _updateDrawingBackgroundColor];

    v28 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v9];
    [v9 addInteraction:v28];
  }

  return v9;
}

- (void)dealloc
{
  [(PKTextAttachmentDrawingViewProviderView *)self->_standInEndAttachmentView removeFromSuperview];
  scrollView = [(PKTiledView *)self scrollView];
  [scrollView removeObserver:self forKeyPath:@"backgroundColor" context:kScrollViewBackgroundColorObserverContext];

  v4.receiver = self;
  v4.super_class = PKTiledTextView;
  [(PKTiledView *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (kScrollViewBackgroundColorObserverContext == context)
  {
    v6 = [(PKTiledTextView *)self _textView:path];
    [v6 _updateDrawingBackgroundColor];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKTiledTextView;
    [(PKTiledView *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)setDefaultDrawingClass:(Class)class
{
  if ([(PKTiledView *)self defaultDrawingClass]!= class)
  {
    v5.receiver = self;
    v5.super_class = PKTiledTextView;
    [(PKTiledView *)&v5 setDefaultDrawingClass:class];
    [(PKTextAttachmentDrawingViewProviderView *)self->_standInEndAttachmentView removeFromSuperview];
  }
}

- (BOOL)_shouldExpandBottomAttachmentForDragAndDrop
{
  _textView = [(PKTiledTextView *)self _textView];
  isPaperEnabled = [_textView isPaperEnabled];

  return isPaperEnabled;
}

- (void)textDidChange:(id)change
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

- (void)textDidBeginEditing:(id)editing
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

- (void)textDidEndEditing:(id)editing
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
    fileType = [(objc_class *)[(PKTiledView *)self defaultDrawingClass] fileType];
    v6 = [MEMORY[0x1E69DB7F0] textAttachmentClassForFileType:fileType];
    if (!v6)
    {
      v6 = objc_opt_class();
    }

    v7 = [v6 alloc];
    data = [MEMORY[0x1E695DEF0] data];
    v9 = [v7 initWithData:data ofType:fileType];

    v10 = [[v4 alloc] initWithAttachment:v9 drawingClass:-[PKTiledView defaultDrawingClass](self inserted:{"defaultDrawingClass"), 0}];
    v11 = self->_standInEndAttachmentView;
    self->_standInEndAttachmentView = v10;

    [(PKTextAttachmentDrawingViewProviderView *)self->_standInEndAttachmentView setFrame:0.0, 0.0, 1000.0, 200.0];
    [(PKTextAttachmentDrawingViewProviderView *)self->_standInEndAttachmentView setUserInteractionEnabled:0];
    _textView = [(PKTiledTextView *)self _textView];
    [_textView addSubview:self->_standInEndAttachmentView];

    standInEndAttachmentView = self->_standInEndAttachmentView;
  }

  return [(PKTextAttachmentDrawingViewProviderView *)standInEndAttachmentView topLevelAttachmentView];
}

- (BOOL)canAddStroke
{
  _textView = [(PKTiledTextView *)self _textView];
  _canAddStroke = [_textView _canAddStroke];

  return _canAddStroke;
}

- (void)_canvasViewWillCreateSnapshot
{
  v4.receiver = self;
  v4.super_class = PKTiledTextView;
  [(PKTiledView *)&v4 _canvasViewWillCreateSnapshot];
  _textView = [(PKTiledTextView *)self _textView];
  [_textView _canvasViewWillCreateSnapshot];
}

- (void)canvasViewWillBeginNewStroke:(id)stroke withTouch:(id)touch location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  touchCopy = touch;
  v12.receiver = self;
  v12.super_class = PKTiledTextView;
  [(PKTiledView *)&v12 canvasViewWillBeginNewStroke:stroke withTouch:touchCopy location:x, y];
  drawingTouchThatHitNothing = [(PKTiledView *)self drawingTouchThatHitNothing];

  if (touchCopy && !drawingTouchThatHitNothing)
  {
    _textView = [(PKTiledTextView *)self _textView];
    [_textView _willBeginNewStrokeForTouch:touchCopy];
  }
}

- (void)canvasViewDidEndDrawing:(id)drawing
{
  v5.receiver = self;
  v5.super_class = PKTiledTextView;
  [(PKTiledView *)&v5 canvasViewDidEndDrawing:drawing];
  _textView = [(PKTiledTextView *)self _textView];
  [_textView _didEndStroke];
}

- (void)setLinedPaper:(id)paper
{
  v5.receiver = self;
  v5.super_class = PKTiledTextView;
  [(PKTiledView *)&v5 setLinedPaper:paper];
  standInEndAttachmentView = [(PKTiledTextView *)self standInEndAttachmentView];
  [standInEndAttachmentView setNeedsLayout];
}

- (id)viewToMakeFirstResponderWhenHoveringOverAttachment:(id)attachment
{
  attachmentCopy = attachment;
  standInAttachmentView = [(PKTiledTextView *)self standInAttachmentView];

  if (standInAttachmentView != attachmentCopy)
  {
    attachmentContainerView = [attachmentCopy attachmentContainerView];
    if (![attachmentContainerView isFirstResponder])
    {
      goto LABEL_5;
    }
  }

  attachmentContainerView = 0;
LABEL_5:

  return attachmentContainerView;
}

- (BOOL)insertAttachmentIfInBlankSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  _textView = [(PKTiledTextView *)self _textView];
  v6 = _textView;
  v7 = 0;
  if (_textView && y > 0.0)
  {
    textStorage = [_textView textStorage];

    if (textStorage)
    {
      textStorage = [v6 closestPositionToPoint:{x, y}];
      endOfDocument = [v6 endOfDocument];
      if (![textStorage isEqual:endOfDocument])
      {
        drawingDelegate = [v6 drawingDelegate];
        if (objc_opt_respondsToSelector())
        {
          drawingDelegate2 = [v6 drawingDelegate];
          v23 = [drawingDelegate2 textView:v6 isEndOfDocument:textStorage];

          if (v23)
          {
            goto LABEL_6;
          }
        }

        else
        {
        }

        beginningOfDocument = [v6 beginningOfDocument];
        v25 = [v6 offsetFromPosition:beginningOfDocument toPosition:textStorage];

        textStorage2 = [v6 textStorage];
        v27 = [textStorage2 length] - 1;

        if (v25 == v27)
        {
          textStorage3 = [v6 textStorage];
          v18 = [textStorage3 attribute:*MEMORY[0x1E69DB5F8] atIndex:v25 effectiveRange:0];

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
    textStorage4 = [v6 textStorage];
    v11 = [textStorage4 length];

    if (v11)
    {
      textStorage5 = [v6 textStorage];
      string = [textStorage5 string];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      invertedSet = [whitespaceAndNewlineCharacterSet invertedSet];
      v16 = [string rangeOfCharacterFromSet:invertedSet options:4];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        textStorage6 = [v6 textStorage];
        v18 = [textStorage6 attribute:*MEMORY[0x1E69DB5F8] atIndex:v16 effectiveRange:0];

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

    textStorage7 = [v6 textStorage];
    v20 = [textStorage7 length];

    v18 = [v6 _insertEmptyDrawingAttachmentAtLocation:v20];
    goto LABEL_20;
  }

LABEL_21:

  return v7;
}

- (id)viewForAttachmentAtBlankSpace
{
  _textView = [(PKTiledTextView *)self _textView];
  textStorage = [_textView textStorage];
  string = [textStorage string];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  invertedSet = [whitespaceAndNewlineCharacterSet invertedSet];
  v7 = [string rangeOfCharacterFromSet:invertedSet options:4];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    topLevelAttachmentView = 0;
  }

  else
  {
    textStorage2 = [_textView textStorage];
    v10 = [textStorage2 attribute:*MEMORY[0x1E69DB5F8] atIndex:v7 effectiveRange:0];

    if (v10 && PKIsInlineDrawingOrPaperAttachment(v10))
    {
      v11 = [_textView _pk_viewProviderForAttachment:v10 atCharacterIndex:v7 createIfNeeded:1];
      view = [v11 view];
      if (objc_opt_respondsToSelector())
      {
        topLevelAttachmentView = [view topLevelAttachmentView];
      }

      else
      {
        topLevelAttachmentView = 0;
      }
    }

    else
    {
      topLevelAttachmentView = 0;
    }
  }

  return topLevelAttachmentView;
}

- (BOOL)_didHitNestedTiledView:(id)view
{
  v20 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (!viewCopy)
  {
    return 0;
  }

  v5 = viewCopy;
  do
  {
    scrollView = [(PKTiledView *)self scrollView];

    if (v5 == scrollView)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      subviews = [v5 subviews];
      v8 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(subviews);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {

              v13 = 1;
              goto LABEL_17;
            }
          }

          v9 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    superview = [v5 superview];

    v5 = superview;
  }

  while (superview);
  v13 = 0;
LABEL_17:

  return v13;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = eventCopy;
  if (eventCopy && [eventCopy _hidEvent])
  {
    _textView = [(PKTiledTextView *)self _textView];
    [_textView convertPoint:self fromView:{x, y}];
    v11 = v10;
    v13 = v12;

    _textView2 = [(PKTiledTextView *)self _textView];
    v15 = [_textView2 hitTest:0 withEvent:{v11, v13}];

    if (v15 && [(PKTiledTextView *)self _didHitNestedTiledView:v15])
    {
      v16 = 0;
    }

    else
    {
      scrollView = [(PKTiledView *)self scrollView];
      _textInteraction = [scrollView _textInteraction];
      [_textInteraction setDelegate:self];

      tapToRadarButton = [(PKTiledTextView *)self tapToRadarButton];

      if (tapToRadarButton && (-[PKTiledTextView tapToRadarButton](self, "tapToRadarButton"), v20 = objc_claimAutoreleasedReturnValue(), -[PKTiledTextView tapToRadarButton](self, "tapToRadarButton"), v21 = objc_claimAutoreleasedReturnValue(), [v21 convertPoint:self fromView:{x, y}], objc_msgSend(v20, "hitTest:withEvent:", v8), v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v20, v22))
      {
        tapToRadarButton2 = [(PKTiledTextView *)self tapToRadarButton];
      }

      else
      {
        v25.receiver = self;
        v25.super_class = PKTiledTextView;
        tapToRadarButton2 = [(PKTiledView *)&v25 hitTest:v8 withEvent:x, y];
      }

      v16 = tapToRadarButton2;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)interactionShouldBegin:(id)begin atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  window = [(PKTiledTextView *)self window];
  v8 = [PKToolPicker activeToolPickerForWindow:window];

  _textView = [(PKTiledTextView *)self _textView];
  v10 = [_textView ink];
  _isHandwritingInk = [v10 _isHandwritingInk];

  scrollView = [(PKTiledView *)self scrollView];
  [(PKTiledTextView *)self convertPoint:scrollView fromView:x, y];
  v14 = v13;
  v16 = v15;

  if (![v8 isVisible] || _isHandwritingInk)
  {
    _textView2 = [(PKTiledTextView *)self _textView];
    if ([_textView2 isEditing])
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

  tapToRadarButton = [(PKTiledTextView *)self tapToRadarButton];
  [tapToRadarButton setAttributedTitle:v7 forState:0];

  tapToRadarButton2 = [(PKTiledTextView *)self tapToRadarButton];
  [tapToRadarButton2 addTarget:self action:sel__tapToRadarButtonTapped_ forControlEvents:64];

  tapToRadarButton3 = [(PKTiledTextView *)self tapToRadarButton];
  [(PKTiledTextView *)self addSubview:tapToRadarButton3];
}

- (void)_tapToRadarButtonTapped:(id)tapped
{
  v102 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E69DCA78]);
  window = [(PKTiledTextView *)self window];
  [window bounds];
  v7 = v6;
  v9 = v8;
  defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
  v11 = [v4 initWithSize:defaultFormat format:{v7, v9}];

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

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  attachmentViews = [(PKTiledView *)self attachmentViews];
  v82 = attachmentViews;
  if ([attachmentViews count])
  {
    v20 = 0;
    v21 = 0x1E696A000uLL;
    v79 = array;
    do
    {
      v22 = [attachmentViews objectAtIndexedSubscript:v20];
      drawing = [v22 drawing];
      v24 = [drawing copy];

      serialize = [v24 serialize];
      v26 = [*(v21 + 3776) stringWithFormat:@"%d_drawing.drawing", v20];
      v27 = [(PKTiledTextView *)self saveTempData:serialize name:v26];

      path = [v27 path];
      [array addObject:path];

      if ([v24 recognitionEnabled])
      {
        recognitionSession = [v24 recognitionSession];

        if (recognitionSession)
        {
          v30 = objc_alloc(MEMORY[0x1E6997B60]);
          recognitionSession2 = [v24 recognitionSession];
          v32 = [v30 initWithRecognitionSession:recognitionSession2];

          [v32 start];
          [v32 waitForPendingUpdates];
          indexableContent = [v32 indexableContent];
          [indexableContent indexableTextRepresentation];
          v35 = v34 = v21;
          v83 = [v35 dataUsingEncoding:4];

          v36 = [*(v34 + 3776) stringWithFormat:@"%d_indexableText.txt", v20];
          v37 = [(PKTiledTextView *)self saveTempData:v83 name:v36];

          path2 = [v37 path];
          [array2 addObject:path2];

          indexableContent2 = [v32 indexableContent];
          presentableTextRepresentation = [indexableContent2 presentableTextRepresentation];
          v41 = [presentableTextRepresentation dataUsingEncoding:4];

          v42 = [*(v34 + 3776) stringWithFormat:@"%d_presentableText.txt", v20];
          v43 = [(PKTiledTextView *)self saveTempData:v41 name:v42];

          path3 = [v43 path];
          [array3 addObject:path3];

          attachmentViews = v82;
          v21 = v34;

          array = v79;
        }
      }

      ++v20;
    }

    while (v20 < [attachmentViews count]);
  }

  v45 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v45 setScheme:@"tap-to-radar"];
  v84 = v45;
  [v45 setHost:@"new"];
  array4 = [MEMORY[0x1E695DF70] array];
  v47 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentName" value:@"Handwriting"];
  [array4 addObject:v47];

  v48 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentVersion" value:@"iOS"];
  [array4 addObject:v48];

  v49 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentID" value:@"391023"];
  [array4 addObject:v49];

  v50 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Keywords" value:@"834455"];
  [array4 addObject:v50];

  v51 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Classification" value:@"Other Bug"];
  [array4 addObject:v51];

  v52 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Reproducibility" value:@"Not Applicable"];
  [array4 addObject:v52];

  string = [MEMORY[0x1E696AD60] string];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v54 = array;
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

        [(PKTiledTextView *)self appendPath:*(*(&v93 + 1) + 8 * i) attachmentString:string];
      }

      v56 = [v54 countByEnumeratingWithState:&v93 objects:v101 count:16];
    }

    while (v56);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v59 = array2;
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

        [(PKTiledTextView *)self appendPath:*(*(&v89 + 1) + 8 * j) attachmentString:string];
      }

      v61 = [v59 countByEnumeratingWithState:&v89 objects:v100 count:16];
    }

    while (v61);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v64 = array3;
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

        [(PKTiledTextView *)self appendPath:*(*(&v85 + 1) + 8 * k) attachmentString:string];
      }

      v66 = [v64 countByEnumeratingWithState:&v85 objects:v99 count:16];
    }

    while (v66);
  }

  v69 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Attachments" value:string];
  [array4 addObject:v69];

  string2 = [MEMORY[0x1E696AD60] string];
  if (!v75)
  {
    path4 = [v78 path];
    [(PKTiledTextView *)self appendPath:path4 attachmentString:string2];
  }

  v72 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Screenshot" value:string2];
  [array4 addObject:v72];

  [v84 setQueryItems:array4];
  v73 = [v84 URL];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace openURL:v73 withOptions:0];
}

void __43__PKTiledTextView__tapToRadarButtonTapped___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) window];
  v2 = [*(a1 + 32) window];
  [v2 bounds];
  [v3 drawViewHierarchyInRect:?];
}

- (void)appendPath:(id)path attachmentString:(id)string
{
  stringCopy = string;
  pathCopy = path;
  if ([stringCopy length])
  {
    pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", pathCopy];

    pathCopy = pathCopy;
  }

  [stringCopy appendString:pathCopy];
}

- (id)saveTempData:(id)data name:(id)name
{
  v5 = MEMORY[0x1E695DFF8];
  nameCopy = name;
  dataCopy = data;
  v8 = NSTemporaryDirectory();
  v9 = [v8 stringByAppendingPathComponent:nameCopy];

  v10 = [v5 fileURLWithPath:v9];

  v13 = 0;
  [dataCopy writeToURL:v10 options:1 error:&v13];

  v11 = 0;
  if (!v13)
  {
    v11 = v10;
  }

  return v11;
}

- (void)handwritingFeedback:(id)feedback
{
  attachmentViews = [(PKTiledView *)self attachmentViews];
  v4 = objc_opt_new();
  v5 = [attachmentViews count];
  v6 = attachmentViews;
  if (v5)
  {
    for (i = 0; i < v11; ++i)
    {
      v8 = [v6 objectAtIndexedSubscript:i];
      drawing = [v8 drawing];
      v10 = [drawing copy];

      if (v10)
      {
        [v4 addObject:v10];
      }

      v11 = [attachmentViews count];
      v6 = attachmentViews;
    }
  }

  if ([v4 count])
  {
    window = [(PKTiledTextView *)self window];
    rootViewController = [window rootViewController];
    [PKHandwritingDebugUtility presentHandwritingDebugViewFromViewController:rootViewController allDrawings:v4 tiledView:self];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  [request location];
  v8 = [(PKTiledView *)self hitAttachment:?];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = regionCopy;
  }

  return v9;
}

@end