@interface AXGestureRecorderControlsView
- (AXGestureRecorderControlsView)initWithFrame:(CGRect)frame;
- (AXGestureRecorderControlsViewDelegate)delegate;
- (BOOL)isLeftButtonEnabled;
- (BOOL)isRightButtonEnabled;
- (id)makeButton;
- (void)_buttonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setLeftButtonColor:(int)color title:(id)title enabled:(BOOL)enabled rightButtonColor:(int)buttonColor title:(id)a7 enabled:(BOOL)a8 animationDuration:(double)duration completion:(id)self0;
- (void)setLeftButtonEnabled:(BOOL)enabled;
- (void)setMiddleButton:(id)button;
- (void)setProgress:(float)progress;
- (void)setRightButtonEnabled:(BOOL)enabled;
@end

@implementation AXGestureRecorderControlsView

- (AXGestureRecorderControlsView)initWithFrame:(CGRect)frame
{
  width = frame.size.width;
  v20.receiver = self;
  v20.super_class = AXGestureRecorderControlsView;
  v4 = [(AXGestureRecorderControlsView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(AXGestureRecorderControlsView *)v4 setBackgroundColor:secondarySystemGroupedBackgroundColor];

    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v9 = [v6 initWithFrame:{0.0, 0.0, width, 1.0 / v8}];

    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [v9 setBackgroundColor:separatorColor];

    [v9 setAutoresizingMask:2];
    [(AXGestureRecorderControlsView *)v4 addSubview:v9];
    v11 = objc_alloc(MEMORY[0x1E69DD250]);
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    v14 = [v11 initWithFrame:{0.0, 45.0, width, 1.0 / v13}];

    separatorColor2 = [MEMORY[0x1E69DC888] separatorColor];
    [v14 setBackgroundColor:separatorColor2];

    [v14 setAutoresizingMask:2];
    [(AXGestureRecorderControlsView *)v4 addSubview:v14];
    v16 = [[ASTBiggerProgressView alloc] initWithProgressViewStyle:0];
    progressView = v4->_progressView;
    v4->_progressView = v16;

    [(ASTBiggerProgressView *)v4->_progressView setAutoresizingMask:2];
    quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    [(ASTBiggerProgressView *)v4->_progressView setTrackTintColor:quaternaryLabelColor];

    [(ASTBiggerProgressView *)v4->_progressView setProgress:0.0];
    [(AXGestureRecorderControlsView *)v4 addSubview:v4->_progressView];
  }

  return v4;
}

- (void)setProgress:(float)progress
{
  progressView = self->_progressView;
  if (fabsf(progress) >= 2.2204e-16)
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

    *&v12 = *&v12 + ((1.0 - *&v12) * progress);
    [(ASTBiggerProgressView *)self->_progressView setProgress:1 animated:v12];
  }

  else
  {

    [(ASTBiggerProgressView *)progressView setProgress:0.0];
  }
}

- (void)layoutSubviews
{
  effectiveUserInterfaceLayoutDirection = [(AXGestureRecorderControlsView *)self effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v4 = &OBJC_IVAR___AXGestureRecorderControlsView__rightButton;
  }

  else
  {
    v4 = &OBJC_IVAR___AXGestureRecorderControlsView__leftButton;
  }

  v5 = *(&self->super.super.super.isa + *v4);
  if (effectiveUserInterfaceLayoutDirection == 1)
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
  titleLabel = [v4 titleLabel];
  [titleLabel setFont:v2];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:clearColor];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v4 setTitleColor:secondaryLabelColor forState:2];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [v4 setTitleColor:systemBlueColor forState:0];

  return v4;
}

- (void)setLeftButtonColor:(int)color title:(id)title enabled:(BOOL)enabled rightButtonColor:(int)buttonColor title:(id)a7 enabled:(BOOL)a8 animationDuration:(double)duration completion:(id)self0
{
  v10 = a8;
  enabledCopy = enabled;
  v35 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v15 = a7;
  completionCopy = completion;
  leftButton = [(AXGestureRecorderControlsView *)self leftButton];
  rightButton = [(AXGestureRecorderControlsView *)self rightButton];
  if (!leftButton)
  {
    v26 = enabledCopy;
    v27 = v10;
    v28 = v15;
    leftButton = [(AXGestureRecorderControlsView *)self makeButton];
    makeButton = [(AXGestureRecorderControlsView *)self makeButton];

    [(AXGestureRecorderControlsView *)self setRightButton:makeButton];
    [(AXGestureRecorderControlsView *)self setLeftButton:leftButton];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v33[0] = leftButton;
    v33[1] = makeButton;
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

    rightButton = makeButton;
    v15 = v28;
    enabledCopy = v26;
    v10 = v27;
  }

  [leftButton setTitle:titleCopy forState:0];
  [rightButton setTitle:v15 forState:0];
  [leftButton setEnabled:enabledCopy];
  [rightButton setEnabled:v10];
  UIAccessibilityPostNotification(*MEMORY[0x1E69DD8E8], 0);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }

  [(AXGestureRecorderControlsView *)self layoutSubviews];
}

- (BOOL)isLeftButtonEnabled
{
  leftButton = [(AXGestureRecorderControlsView *)self leftButton];
  isEnabled = [leftButton isEnabled];

  return isEnabled;
}

- (void)setLeftButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  leftButton = [(AXGestureRecorderControlsView *)self leftButton];
  [leftButton setEnabled:enabledCopy];

  v5 = *MEMORY[0x1E69DD8E8];

  UIAccessibilityPostNotification(v5, 0);
}

- (BOOL)isRightButtonEnabled
{
  rightButton = [(AXGestureRecorderControlsView *)self rightButton];
  isEnabled = [rightButton isEnabled];

  return isEnabled;
}

- (void)setRightButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  rightButton = [(AXGestureRecorderControlsView *)self rightButton];
  [rightButton setEnabled:enabledCopy];

  v5 = *MEMORY[0x1E69DD8E8];

  UIAccessibilityPostNotification(v5, 0);
}

- (void)setMiddleButton:(id)button
{
  buttonCopy = button;
  middleButton = self->_middleButton;
  if (middleButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(UIButton *)middleButton removeFromSuperview];
    objc_storeStrong(&self->_middleButton, button);
    if (v7)
    {
      [(AXGestureRecorderControlsView *)self addSubview:v7];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  leftButton = [(AXGestureRecorderControlsView *)self leftButton];

  if (leftButton == tappedCopy)
  {
    v6 = 0;
  }

  else
  {
    rightButton = [(AXGestureRecorderControlsView *)self rightButton];

    if (rightButton == tappedCopy)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  delegate = [(AXGestureRecorderControlsView *)self delegate];
  [delegate gestureRecorderControlsView:self buttonTappedAtIndex:v6];
}

- (AXGestureRecorderControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end