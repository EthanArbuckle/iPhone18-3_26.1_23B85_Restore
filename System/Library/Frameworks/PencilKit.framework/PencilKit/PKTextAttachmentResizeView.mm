@interface PKTextAttachmentResizeView
- (CGRect)originalDrawingBounds;
- (CGRect)originalViewBounds;
- (PKTextAttachmentResizeViewDelegate)delegate;
- (UIEdgeInsets)originalContentInset;
- (id)initAtTop:(BOOL)top delegate:(id)delegate;
- (void)didMoveToWindow;
- (void)drawingScrollViewDidScroll:(id)scroll;
- (void)handleGesture:(id)gesture;
- (void)layoutInsideSuperview;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)show:(BOOL)show enabled:(BOOL)enabled animated:(BOOL)animated;
@end

@implementation PKTextAttachmentResizeView

- (id)initAtTop:(BOOL)top delegate:(id)delegate
{
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v16.receiver = self;
  v16.super_class = PKTextAttachmentResizeView;
  delegateCopy = delegate;
  v8 = [(PKTextAttachmentResizeView *)&v16 initWithFrame:v5, v6, 1024.0, 100.0];
  [(PKTextAttachmentResizeView *)v8 setUserInteractionEnabled:0, v16.receiver, v16.super_class];
  objc_storeWeak(&v8->_delegate, delegateCopy);

  v9 = objc_alloc_init(PKDrawingAdjustmentKnob);
  knobView = v8->_knobView;
  v8->_knobView = v9;

  v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
  separatorView = v8->_separatorView;
  v8->_separatorView = v11;

  v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
  separatorHighlightedView = v8->_separatorHighlightedView;
  v8->_separatorHighlightedView = v13;

  v8->_top = top;
  v8->_enabled = 1;
  [(PKTextAttachmentResizeView *)v8 addSubview:v8->_separatorView];
  [(PKTextAttachmentResizeView *)v8 addSubview:v8->_separatorHighlightedView];
  [(PKTextAttachmentResizeView *)v8 addSubview:v8->_knobView];
  [(UIView *)v8->_separatorHighlightedView _setCornerRadius:0.75];
  [(UIView *)v8->_separatorHighlightedView setAlpha:0.0];
  return v8;
}

- (void)didMoveToWindow
{
  tintColor = [(PKTextAttachmentResizeView *)self tintColor];
  [(UIView *)self->_separatorView setBackgroundColor:tintColor];

  tintColor2 = [(PKTextAttachmentResizeView *)self tintColor];
  [(UIView *)self->_separatorHighlightedView setBackgroundColor:tintColor2];
}

- (void)layoutSubviews
{
  [(PKTextAttachmentResizeView *)self bounds];
  v5 = v4;
  if (self->_top)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3 + -16.0;
  }

  +[PKDrawingAdjustmentKnob leftMargin];
  v8 = v7;
  v9 = v7 + 7.5;
  v10 = v5 - v7 + -28.0;
  if ([(PKTextAttachmentResizeView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v14.size.width = 15.0;
    v14.size.height = 16.0;
    v14.origin.x = v8;
    v14.origin.y = v6;
    v8 = v5 - CGRectGetMaxX(v14);
    v15.size.height = 0.5;
    v15.origin.x = v9;
    v15.origin.y = v6 + 7.75;
    v15.size.width = v10;
    v11 = v5 - CGRectGetMaxX(v15);
    v16.size.height = 1.5;
    v16.origin.x = v9;
    v16.origin.y = v6 + 7.25;
    v16.size.width = v10;
    v9 = v5 - CGRectGetMaxX(v16);
  }

  else
  {
    v11 = v9;
  }

  [(PKDrawingAdjustmentKnob *)self->_knobView setFrame:v8, v6, 15.0, 16.0];
  [(UIView *)self->_separatorView setFrame:v11, v6 + 7.75, v10, 0.5];
  separatorHighlightedView = self->_separatorHighlightedView;

  [(UIView *)separatorHighlightedView setFrame:v9, v6 + 7.25, v10, 1.5];
}

- (void)show:(BOOL)show enabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  showCopy = show;
  if ([(PKTextAttachmentResizeView *)self shown]!= show)
  {
    [(PKTextAttachmentResizeView *)self setEnabled:enabledCopy];
    if (animatedCopy)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52__PKTextAttachmentResizeView_show_enabled_animated___block_invoke;
      v11[3] = &unk_1E82D90B8;
      v11[4] = self;
      v12 = showCopy;
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v11 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      v9 = 0.0;
      if (showCopy)
      {
        enabled = [(PKTextAttachmentResizeView *)self enabled];
        v9 = 0.4;
        if (enabled)
        {
          v9 = 1.0;
        }
      }

      [(PKTextAttachmentResizeView *)self setAlpha:v9];
    }
  }
}

uint64_t __52__PKTextAttachmentResizeView_show_enabled_animated___block_invoke(uint64_t a1)
{
  v2 = 0.0;
  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) enabled];
    v2 = 0.4;
    if (v3)
    {
      v2 = 1.0;
    }
  }

  v4 = *(a1 + 32);

  return [v4 setAlpha:v2];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_highlighted = highlighted;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__PKTextAttachmentResizeView_setHighlighted___block_invoke;
    v5[3] = &unk_1E82D7148;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.2];
  }
}

uint64_t __45__PKTextAttachmentResizeView_setHighlighted___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0.0;
  if (*(v1 + 409))
  {
    v2 = 1.0;
  }

  return [*(v1 + 432) setAlpha:v2];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_enabled = enabled;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__PKTextAttachmentResizeView_setEnabled___block_invoke;
    v5[3] = &unk_1E82D7148;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v5 options:0 animations:0.2 completion:0.0];
  }
}

uint64_t __41__PKTextAttachmentResizeView_setEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shown];
  v3 = 0.0;
  if (v2)
  {
    v4 = [*(a1 + 32) enabled];
    v3 = 0.4;
    if (v4)
    {
      v3 = 1.0;
    }
  }

  v5 = *(a1 + 32);

  return [v5 setAlpha:v3];
}

- (void)layoutInsideSuperview
{
  superview = [(PKTextAttachmentResizeView *)self superview];
  [superview bounds];
  v5 = v4;
  v7 = v6;

  superview2 = [(PKTextAttachmentResizeView *)self superview];
  [superview2 safeAreaInsets];
  v10 = v9;
  v12 = v11;

  v13 = 28.0;
  v14 = 28.0;
  if ([(PKTextAttachmentResizeView *)self effectiveUserInterfaceLayoutDirection]!= 1)
  {
    +[PKDrawingAdjustmentKnob leftMargin];
    v14 = v15;
  }

  if ([(PKTextAttachmentResizeView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    +[PKDrawingAdjustmentKnob leftMargin];
    v13 = v16;
  }

  v17 = 0.0;
  if (![(PKTextAttachmentResizeView *)self top])
  {
    [(PKTextAttachmentResizeView *)self bounds];
    v17 = v7 - CGRectGetHeight(v24) + 0.0;
  }

  if (v12 >= v13)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  v19 = v18 - v13;
  if (v10 >= v14)
  {
    v20 = v10;
  }

  else
  {
    v20 = v14;
  }

  v21 = v20 - v14;
  [(PKTextAttachmentResizeView *)self bounds];
  Height = CGRectGetHeight(v25);

  [(PKTextAttachmentResizeView *)self setFrame:v21 + 0.0, v17, v5 - (v21 + v19), Height];
}

- (void)handleGesture:(id)gesture
{
  gestureCopy = gesture;
  delegate = [(PKTextAttachmentResizeView *)self delegate];
  v6 = [delegate resizeViewTextView:self];

  delegate2 = [(PKTextAttachmentResizeView *)self delegate];
  [delegate2 resizeViewDrawingBounds:self];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  state = [gestureCopy state];
  if ((state - 2) < 2)
  {
    [gestureCopy translationInView:self];
    v18 = v17;
    v19 = [(PKTextAttachmentResizeView *)self top];
    v20 = fmin(v18, 20.0);
    v21 = -20.0;
    if (v18 >= -20.0)
    {
      v21 = v18;
    }

    if (v19)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    v76.origin.x = v9;
    v76.origin.y = v11;
    v76.size.width = v13;
    v76.size.height = v15;
    if (CGRectIsEmpty(v76) && ([(PKTextAttachmentResizeView *)self top]&& v22 >= 20.0 || ![(PKTextAttachmentResizeView *)self top]&& v22 <= -20.0))
    {
      if ([gestureCopy state] == 3)
      {
        delegate3 = [(PKTextAttachmentResizeView *)self delegate];
        [delegate3 resizeViewRemoveAttachment:self];
      }

      else
      {
        [(PKTextAttachmentResizeView *)self frame];
        [(PKTextAttachmentResizeView *)self setFrame:?];
        delegate3 = [(PKTextAttachmentResizeView *)self delegate];
        [delegate3 resizeViewLayoutAttachment:self];
      }
    }

    else
    {
      delegate4 = [(PKTextAttachmentResizeView *)self delegate];
      v38 = [(PKTextAttachmentResizeView *)self top];
      v39 = fabs(v22);
      v40 = 0.0;
      if (v22 >= 0.0)
      {
        v40 = v22;
      }

      if (v38)
      {
        v41 = v39;
      }

      else
      {
        v41 = v40;
      }

      [delegate4 resizeView:self setDrawingHeight:-[PKTextAttachmentResizeView top](self originalHeight:"top") growFromTop:{v41, self->_originalViewBounds.size.height}];

      if ([gestureCopy state] != 3)
      {
        goto LABEL_28;
      }

      delegate3 = [(PKTextAttachmentResizeView *)self delegate];
      [delegate3 resizeView:self finishedWithOriginalDrawingBounds:self->_originalDrawingBounds.origin.x originalViewBounds:{self->_originalDrawingBounds.origin.y, self->_originalDrawingBounds.size.width, self->_originalDrawingBounds.size.height, self->_originalViewBounds.origin.x, self->_originalViewBounds.origin.y, self->_originalViewBounds.size.width, self->_originalViewBounds.size.height}];
    }

LABEL_28:
    delegate5 = [(PKTextAttachmentResizeView *)self delegate];
    [delegate5 resizeViewDidUpdate:self];

    goto LABEL_29;
  }

  if (state == 1)
  {
    self->_originalDrawingBounds.origin.x = v9;
    self->_originalDrawingBounds.origin.y = v11;
    self->_originalDrawingBounds.size.width = v13;
    self->_originalDrawingBounds.size.height = v15;
    superview = [(PKTextAttachmentResizeView *)self superview];
    [superview bounds];
    self->_originalViewBounds.origin.x = v25;
    self->_originalViewBounds.origin.y = v26;
    self->_originalViewBounds.size.width = v27;
    self->_originalViewBounds.size.height = v28;

    origin = self->_originalViewBounds.origin;
    width = self->_originalViewBounds.size.width;
    height = self->_originalViewBounds.size.height;
    if ([(PKTextAttachmentResizeView *)self top])
    {
      v30 = -height;
    }

    else
    {
      v30 = height;
    }

    [gestureCopy setTranslation:self inView:{0.0, v30}];
    [v6 contentInset];
    self->_originalContentInset.top = v31;
    self->_originalContentInset.left = v32;
    self->_originalContentInset.bottom = v33;
    self->_originalContentInset.right = v34;
    [(PKTextAttachmentResizeView *)self top];
    UIEdgeInsetsAdd();
    [v6 setContentInset:?];
    v35 = MEMORY[0x1E695DFF0];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __44__PKTextAttachmentResizeView_handleGesture___block_invoke;
    v69[3] = &unk_1E82D90E0;
    v70 = gestureCopy;
    v75 = height;
    v71 = v6;
    selfCopy = self;
    v36 = [v35 scheduledTimerWithTimeInterval:1 repeats:v69 block:0.0166666667];
  }

LABEL_29:
  if ([gestureCopy state] >= 3)
  {
    if (-[PKTextAttachmentResizeView top](self, "top") && ([v6 contentOffset], v44 = v43, v45 = self->_originalContentInset.top, objc_msgSend(v6, "_contentScrollInset"), v44 < -(v45 + v46)))
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_drawingScrollViewDidScroll_ name:@"_UIScrollViewAnimationEndedNotification" object:0];

      top = self->_originalContentInset.top;
      v49 = -self->_originalContentInset.left;
      [v6 _contentScrollInset];
      v51 = -(top + v50);
    }

    else
    {
      if (-[PKTextAttachmentResizeView top](self, "top") || ([v6 contentOffset], v53 = v52, objc_msgSend(v6, "bounds"), v55 = v53 + v54, objc_msgSend(v6, "contentSize"), v57 = v56 + self->_originalContentInset.bottom, objc_msgSend(v6, "_contentScrollInset"), v55 <= v57 + v58))
      {
        [v6 setContentInset:{self->_originalContentInset.top, self->_originalContentInset.left, self->_originalContentInset.bottom, self->_originalContentInset.right}];
        goto LABEL_40;
      }

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_drawingScrollViewDidScroll_ name:@"_UIScrollViewAnimationEndedNotification" object:0];

      v49 = -self->_originalContentInset.left;
      [v6 contentSize];
      v61 = v60 + self->_originalContentInset.bottom;
      [v6 _contentScrollInset];
      v63 = v61 + v62;
      [v6 bounds];
      v65 = v63 - v64;
      v66 = self->_originalContentInset.top;
      [v6 _contentScrollInset];
      v68 = -(v66 + v67);
      if (v65 >= v68)
      {
        v51 = v65;
      }

      else
      {
        v51 = v68;
      }
    }

    [v6 setContentOffset:1 animated:{v49, v51}];
  }

LABEL_40:
}

void __44__PKTextAttachmentResizeView_handleGesture___block_invoke(uint64_t a1, void *a2)
{
  v30 = a2;
  if ([*(a1 + 32) state] != 1 && objc_msgSend(*(a1 + 32), "state") != 2)
  {
    [v30 invalidate];
    goto LABEL_17;
  }

  [*(a1 + 40) bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*(a1 + 32) locationInView:*(a1 + 40)];
  v12 = v11;
  [*(a1 + 40) bounds];
  if (-(*(a1 + 80) - v13 * 0.75) >= 0.0)
  {
    v14 = -(*(a1 + 80) - v13 * 0.75);
  }

  else
  {
    v14 = 0.0;
  }

  if ([*(a1 + 48) top])
  {
    v32.origin.x = v4;
    v32.origin.y = v6;
    v32.size.width = v8;
    v32.size.height = v10;
    if (v12 <= CGRectGetMinY(v32) + 40.0)
    {
      v15 = -6.0;
      if (v14 > 6.0)
      {
LABEL_16:
        [*(a1 + 40) contentOffset];
        v17 = v16;
        v19 = v18;
        [*(a1 + 32) translationInView:*(a1 + 48)];
        v21 = v20;
        v23 = v22;
        [*(a1 + 40) setContentOffset:{v17, v15 + v19}];
        [*(a1 + 40) contentOffset];
        v25 = v24;
        v26 = v24 - v19;
        v27 = [*(a1 + 48) delegate];
        v28 = *(a1 + 48);
        [v28 frame];
        [v27 resizeView:v28 setDrawingHeight:objc_msgSend(*(a1 + 48) originalHeight:"top") growFromTop:{vabdd_f64(v25, v19) + v29, *(*(a1 + 48) + 504)}];

        [*(a1 + 32) setTranslation:*(a1 + 48) inView:{v21, v23 + v26}];
        goto LABEL_17;
      }

      v14 = -v14;
LABEL_15:
      v15 = v14;
      if (v14 == 0.0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  if (([*(a1 + 48) top] & 1) == 0)
  {
    v33.origin.x = v4;
    v33.origin.y = v6;
    v33.size.width = v8;
    v33.size.height = v10;
    if (v12 >= CGRectGetMaxY(v33) + -40.0)
    {
      v15 = 6.0;
      if (v14 > 6.0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

LABEL_17:
}

- (void)drawingScrollViewDidScroll:(id)scroll
{
  delegate = [(PKTextAttachmentResizeView *)self delegate];
  v6 = [delegate resizeViewTextView:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIScrollViewAnimationEndedNotification" object:0];

  [v6 setContentInset:{self->_originalContentInset.top, self->_originalContentInset.left, self->_originalContentInset.bottom, self->_originalContentInset.right}];
}

- (CGRect)originalDrawingBounds
{
  x = self->_originalDrawingBounds.origin.x;
  y = self->_originalDrawingBounds.origin.y;
  width = self->_originalDrawingBounds.size.width;
  height = self->_originalDrawingBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PKTextAttachmentResizeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)originalViewBounds
{
  x = self->_originalViewBounds.origin.x;
  y = self->_originalViewBounds.origin.y;
  width = self->_originalViewBounds.size.width;
  height = self->_originalViewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)originalContentInset
{
  top = self->_originalContentInset.top;
  left = self->_originalContentInset.left;
  bottom = self->_originalContentInset.bottom;
  right = self->_originalContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end