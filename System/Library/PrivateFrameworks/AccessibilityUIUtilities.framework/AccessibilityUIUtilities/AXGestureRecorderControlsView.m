@interface AXGestureRecorderControlsView
- (AXGestureRecorderControlsView)initWithFrame:(CGRect)a3;
- (AXGestureRecorderControlsViewDelegate)delegate;
- (BOOL)isLeftButtonEnabled;
- (BOOL)isRightButtonEnabled;
- (id)makeButton;
- (void)_buttonTapped:(id)a3;
- (void)layoutSubviews;
- (void)setLeftButtonColor:(int)a3 title:(id)a4 enabled:(BOOL)a5 rightButtonColor:(int)a6 title:(id)a7 enabled:(BOOL)a8 animationDuration:(double)a9 completion:(id)a10;
- (void)setLeftButtonEnabled:(BOOL)a3;
- (void)setMiddleButton:(id)a3;
- (void)setProgress:(float)a3;
- (void)setRightButtonEnabled:(BOOL)a3;
@end

@implementation AXGestureRecorderControlsView

- (AXGestureRecorderControlsView)initWithFrame:(CGRect)a3
{
  width = a3.size.width;
  v20.receiver = self;
  v20.super_class = AXGestureRecorderControlsView;
  v4 = [(AXGestureRecorderControlsView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(AXGestureRecorderControlsView *)v4 setBackgroundColor:v5];

    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 scale];
    v9 = [v6 initWithFrame:{0.0, 0.0, width, 1.0 / v8}];

    v10 = [MEMORY[0x1E69DC888] separatorColor];
    [v9 setBackgroundColor:v10];

    [v9 setAutoresizingMask:2];
    [(AXGestureRecorderControlsView *)v4 addSubview:v9];
    v11 = objc_alloc(MEMORY[0x1E69DD250]);
    v12 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v12 scale];
    v14 = [v11 initWithFrame:{0.0, 45.0, width, 1.0 / v13}];

    v15 = [MEMORY[0x1E69DC888] separatorColor];
    [v14 setBackgroundColor:v15];

    [v14 setAutoresizingMask:2];
    [(AXGestureRecorderControlsView *)v4 addSubview:v14];
    v16 = [[ASTBiggerProgressView alloc] initWithProgressViewStyle:0];
    progressView = v4->_progressView;
    v4->_progressView = v16;

    [(ASTBiggerProgressView *)v4->_progressView setAutoresizingMask:2];
    v18 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    [(ASTBiggerProgressView *)v4->_progressView setTrackTintColor:v18];

    [(ASTBiggerProgressView *)v4->_progressView setProgress:0.0];
    [(AXGestureRecorderControlsView *)v4 addSubview:v4->_progressView];
  }

  return v4;
}

- (void)setProgress:(float)a3
{
  progressView = self->_progressView;
  if (fabsf(a3) >= 2.2204e-16)
  {
    v13 = [(ASTBiggerProgressView *)progressView safeValueForKeyPath:@"_progressView.image"];
    [v13 capInsets];
    v7 = v6;
    [v13 capInsets];
    v9 = v8;
    [(ASTBiggerProgressView *)self->_progressView bounds];
    v11 = v10;
    v12 = 0.0;
    if (v11 > 0.0)
    {
      v12 = v7 + v9;
      *&v12 = v7 + v9;
      *&v12 = *&v12 / v11;
    }

    *&v12 = *&v12 + ((1.0 - *&v12) * a3);
    [(ASTBiggerProgressView *)self->_progressView setProgress:1 animated:v12];
  }

  else
  {

    [(ASTBiggerProgressView *)progressView setProgress:0.0];
  }
}

- (void)layoutSubviews
{
  v3 = [(AXGestureRecorderControlsView *)self effectiveUserInterfaceLayoutDirection];
  if (v3 == 1)
  {
    v4 = &OBJC_IVAR___AXGestureRecorderControlsView__rightButton;
  }

  else
  {
    v4 = &OBJC_IVAR___AXGestureRecorderControlsView__leftButton;
  }

  v5 = *(&self->super.super.super.isa + *v4);
  if (v3 == 1)
  {
    v6 = &OBJC_IVAR___AXGestureRecorderControlsView__leftButton;
  }

  else
  {
    v6 = &OBJC_IVAR___AXGestureRecorderControlsView__rightButton;
  }

  v43 = v5;
  v7 = *(&self->super.super.super.isa + *v6);
  [v43 setFrame:{30.0, 45.0, 125.0, 45.0}];
  [v43 sizeToFit];
  [v43 frame];
  v9 = v8;
  v11 = v10;
  [v43 setFrame:30.0];
  [v7 setFrame:{0.0, 45.0, 125.0, 45.0}];
  [v7 sizeToFit];
  [v7 frame];
  v41 = v12;
  v14 = v13;
  [(AXGestureRecorderControlsView *)self frame];
  v42 = v15 - (v14 + 30.0);
  [v7 setFrame:?];
  [(UIButton *)self->_middleButton sizeToFit];
  [(UIButton *)self->_middleButton frame];
  [(UIButton *)self->_middleButton setFrame:0.0, 45.0];
  [(UIButton *)self->_middleButton frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(AXGestureRecorderControlsView *)self bounds];
  Width = CGRectGetWidth(v45);
  v46.origin.x = v17;
  v46.origin.y = v19;
  v46.size.width = v21;
  v46.size.height = 45.0;
  v23 = (Width - CGRectGetWidth(v46)) * 0.5;
  [(AXGestureRecorderControlsView *)self bounds];
  v24 = CGRectGetWidth(v47);
  v48.origin.x = 30.0;
  v48.origin.y = v9;
  v39 = v11;
  v48.size.width = v11;
  v48.size.height = 45.0;
  v25 = CGRectGetWidth(v48);
  v49.origin.y = v41;
  v49.origin.x = v42;
  rect = v14;
  v49.size.width = v14;
  v26 = v21;
  v27 = v19;
  v49.size.height = 45.0;
  v28 = v25 + CGRectGetWidth(v49);
  v50.origin.x = v23;
  v50.origin.y = v19;
  v50.size.width = v26;
  v50.size.height = 45.0;
  if (v24 >= v28 + CGRectGetWidth(v50))
  {
    v32 = v9;
    v54.origin.x = v23;
    v54.origin.y = v19;
    v54.size.width = v26;
    v54.size.height = 45.0;
    MaxX = CGRectGetMaxX(v54);
    v31 = v19;
    v55.origin.x = v42;
    v55.origin.y = v41;
    v30 = v26;
    v55.size.width = rect;
    v55.size.height = 45.0;
    if (MaxX <= CGRectGetMinX(v55))
    {
      v58.origin.x = 30.0;
      v58.origin.y = v32;
      v58.size.width = v39;
      v58.size.height = 45.0;
      v35 = CGRectGetMaxX(v58);
      v59.origin.x = v23;
      v59.origin.y = v31;
      v59.size.width = v26;
      v59.size.height = 45.0;
      if (v35 > CGRectGetMinX(v59))
      {
        v60.origin.x = 30.0;
        v60.origin.y = v32;
        v60.size.width = v39;
        v60.size.height = 45.0;
        v23 = CGRectGetMaxX(v60);
      }
    }

    else
    {
      v56.origin.x = v42;
      v56.origin.y = v41;
      v56.size.width = rect;
      v56.size.height = 45.0;
      MinX = CGRectGetMinX(v56);
      v57.origin.x = v23;
      v57.origin.y = v31;
      v57.size.width = v26;
      v57.size.height = 45.0;
      v23 = MinX - CGRectGetWidth(v57);
    }
  }

  else
  {
    v51.origin.x = 30.0;
    v51.origin.y = v9;
    v51.size.width = v39;
    v51.size.height = 45.0;
    v23 = CGRectGetMaxX(v51);
    v52.origin.y = v41;
    v52.origin.x = v42;
    v52.size.width = rect;
    v52.size.height = 45.0;
    v29 = CGRectGetMinX(v52);
    v53.origin.x = 30.0;
    v53.origin.y = v9;
    v53.size.width = v39;
    v53.size.height = 45.0;
    v30 = v29 - CGRectGetMaxX(v53);
    v31 = v27;
  }

  [(UIButton *)self->_middleButton setFrame:v23, v31, v30, 45.0];
  [(ASTBiggerProgressView *)self->_progressView frame];
  v37 = v36;
  [(AXGestureRecorderControlsView *)self frame];
  [(ASTBiggerProgressView *)self->_progressView setFrame:22.0, v37, v38 + -44.0, 14.0];
  [(ASTBiggerProgressView *)self->_progressView frame];
  [(ASTBiggerProgressView *)self->_progressView setFrame:?];
}

- (id)makeButton
{
  v2 = [MEMORY[0x1E69DB878] fontWithName:@"HelveticaNeue Thin" size:18.0];
  if (_AXSEnhanceTextLegibilityEnabled())
  {
    v3 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0];

    v2 = v3;
  }

  v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
  v5 = [v4 titleLabel];
  [v5 setFont:v2];

  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v6];

  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v4 setTitleColor:v7 forState:2];

  v8 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v4 setTitleColor:v8 forState:0];

  return v4;
}

- (void)setLeftButtonColor:(int)a3 title:(id)a4 enabled:(BOOL)a5 rightButtonColor:(int)a6 title:(id)a7 enabled:(BOOL)a8 animationDuration:(double)a9 completion:(id)a10
{
  v10 = a8;
  v12 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a7;
  v16 = a10;
  v17 = [(AXGestureRecorderControlsView *)self leftButton];
  v18 = [(AXGestureRecorderControlsView *)self rightButton];
  if (!v17)
  {
    v26 = v12;
    v27 = v10;
    v28 = v15;
    v17 = [(AXGestureRecorderControlsView *)self makeButton];
    v19 = [(AXGestureRecorderControlsView *)self makeButton];

    [(AXGestureRecorderControlsView *)self setRightButton:v19];
    [(AXGestureRecorderControlsView *)self setLeftButton:v17];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v33[0] = v17;
    v33[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v29 + 1) + 8 * i);
          [v25 addTarget:self action:sel__buttonTapped_ forControlEvents:64];
          [(AXGestureRecorderControlsView *)self addSubview:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v22);
    }

    v18 = v19;
    v15 = v28;
    v12 = v26;
    v10 = v27;
  }

  [v17 setTitle:v14 forState:0];
  [v18 setTitle:v15 forState:0];
  [v17 setEnabled:v12];
  [v18 setEnabled:v10];
  UIAccessibilityPostNotification(*MEMORY[0x1E69DD8E8], 0);
  if (v16)
  {
    v16[2](v16, 1);
  }

  [(AXGestureRecorderControlsView *)self layoutSubviews];
}

- (BOOL)isLeftButtonEnabled
{
  v2 = [(AXGestureRecorderControlsView *)self leftButton];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)setLeftButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(AXGestureRecorderControlsView *)self leftButton];
  [v4 setEnabled:v3];

  v5 = *MEMORY[0x1E69DD8E8];

  UIAccessibilityPostNotification(v5, 0);
}

- (BOOL)isRightButtonEnabled
{
  v2 = [(AXGestureRecorderControlsView *)self rightButton];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)setRightButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(AXGestureRecorderControlsView *)self rightButton];
  [v4 setEnabled:v3];

  v5 = *MEMORY[0x1E69DD8E8];

  UIAccessibilityPostNotification(v5, 0);
}

- (void)setMiddleButton:(id)a3
{
  v5 = a3;
  middleButton = self->_middleButton;
  if (middleButton != v5)
  {
    v7 = v5;
    [(UIButton *)middleButton removeFromSuperview];
    objc_storeStrong(&self->_middleButton, a3);
    if (v7)
    {
      [(AXGestureRecorderControlsView *)self addSubview:v7];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_buttonTapped:(id)a3
{
  v8 = a3;
  v4 = [(AXGestureRecorderControlsView *)self leftButton];

  if (v4 == v8)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(AXGestureRecorderControlsView *)self rightButton];

    if (v5 == v8)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v7 = [(AXGestureRecorderControlsView *)self delegate];
  [v7 gestureRecorderControlsView:self buttonTappedAtIndex:v6];
}

- (AXGestureRecorderControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end