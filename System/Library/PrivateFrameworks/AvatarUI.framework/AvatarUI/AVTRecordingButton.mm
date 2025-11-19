@interface AVTRecordingButton
- (AVTRecordingButton)initWithCoder:(id)a3;
- (AVTRecordingButton)initWithFrame:(CGRect)a3;
- (AVTRecordingButtonLongPressDelegate)longPressDelegate;
- (void)configure;
- (void)endLongPress:(BOOL)a3;
- (void)layoutSubviews;
- (void)sendHapticFeedbackIfNeeded;
- (void)setCenterCircleColor:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setForceUsePhoneStyle:(BOOL)a3;
- (void)setUIState:(unint64_t)a3;
- (void)startLongPress;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation AVTRecordingButton

- (AVTRecordingButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = AVTRecordingButton;
  v3 = [(AVTRecordingButton *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] redColor];
    centerCircleColor = v3->_centerCircleColor;
    v3->_centerCircleColor = v4;
  }

  [(AVTRecordingButton *)v3 configure];
  return v3;
}

- (AVTRecordingButton)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVTRecordingButton;
  v3 = [(AVTRecordingButton *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AVTRecordingButton *)v3 configure];
  }

  return v4;
}

- (void)configure
{
  [(AVTRecordingButton *)self setForceUsePhoneStyle:0];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [(AVTRecordingButton *)self setBackgroundColor:v4];

  v5 = objc_alloc_init(CAShapeLayerAnimated);
  outerCircle = self->_outerCircle;
  self->_outerCircle = v5;

  v7 = [MEMORY[0x1E69DC888] clearColor];
  -[CAShapeLayerAnimated setFillColor:](self->_outerCircle, "setFillColor:", [v7 CGColor]);

  v8 = [MEMORY[0x1E69DC938] currentDevice];
  v9 = [v8 userInterfaceIdiom];
  if (v9 != 1)
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom] != 5)
    {
      [(CAShapeLayerAnimated *)self->_outerCircle setLineWidth:4.0];
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [(AVTRecordingButton *)self forceUsePhoneStyle];
  v11 = 7.0;
  if (v10)
  {
    v11 = 4.0;
  }

  [(CAShapeLayerAnimated *)self->_outerCircle setLineWidth:v11];
  if (v9 != 1)
  {
    goto LABEL_8;
  }

LABEL_9:

  v12 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  -[CAShapeLayerAnimated setStrokeColor:](self->_outerCircle, "setStrokeColor:", [v12 CGColor]);

  v13 = [(AVTRecordingButton *)self layer];
  [v13 addSublayer:self->_outerCircle];

  v14 = objc_alloc_init(CAShapeLayerAnimated);
  innerCircle = self->_innerCircle;
  self->_innerCircle = v14;

  [(CAShapeLayerAnimated *)self->_innerCircle setFillColor:[(UIColor *)self->_centerCircleColor CGColor]];
  v16 = [(AVTRecordingButton *)self layer];
  [v16 addSublayer:self->_innerCircle];

  v25 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up" withConfiguration:v25];
  v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v17];
  iconView = self->_iconView;
  self->_iconView = v18;

  [(UIImageView *)self->_iconView setHidden:0];
  v20 = [MEMORY[0x1E69DC888] whiteColor];
  [(UIImageView *)self->_iconView setTintColor:v20];

  [(AVTRecordingButton *)self addSubview:self->_iconView];
  v21 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
  spinner = self->_spinner;
  self->_spinner = v21;

  [(UIActivityIndicatorView *)self->_spinner setUserInteractionEnabled:0];
  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:0];
  [(AVTRecordingButton *)self addSubview:self->_spinner];
  v23 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:0];
  feedbackGenerator = self->_feedbackGenerator;
  self->_feedbackGenerator = v23;
}

- (void)setCenterCircleColor:(id)a3
{
  v5 = a3;
  if (self->_centerCircleColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_centerCircleColor, a3);
    v6 = v7;
    [(CAShapeLayerAnimated *)self->_innerCircle setFillColor:[(UIColor *)v7 CGColor]];
    v5 = v7;
  }
}

- (void)setForceUsePhoneStyle:(BOOL)a3
{
  if (self->_forceUsePhoneStyle != a3)
  {
    self->_forceUsePhoneStyle = a3;
    [(AVTRecordingButton *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v63.receiver = self;
  v63.super_class = AVTRecordingButton;
  [(AVTRecordingButton *)&v63 layoutSubviews];
  v5 = [MEMORY[0x1E6979518] disableActions];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(AVTRecordingButton *)self setAlpha:[(AVTRecordingButton *)self isEnabled]];
  [MEMORY[0x1E6979518] setDisableActions:v5];
  [(AVTRecordingButton *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [MEMORY[0x1E69DC938] currentDevice];
  v15 = [v14 userInterfaceIdiom];
  if (v15 == 1 || ([MEMORY[0x1E69DC938] currentDevice], v2 = objc_claimAutoreleasedReturnValue(), v16 = 2.0, objc_msgSend(v2, "userInterfaceIdiom") == 5))
  {
    if ([(AVTRecordingButton *)self forceUsePhoneStyle])
    {
      v16 = 2.0;
    }

    else
    {
      v16 = 3.5;
    }
  }

  v17 = [MEMORY[0x1E69DC938] currentDevice];
  v18 = [v17 userInterfaceIdiom];
  if (v18 == 1 || ([MEMORY[0x1E69DC938] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v3, "userInterfaceIdiom"), v20 = 2.0, v19 == 5))
  {
    if ([(AVTRecordingButton *)self forceUsePhoneStyle])
    {
      v20 = 2.0;
    }

    else
    {
      v20 = 3.5;
    }
  }

  v64.origin.x = v7;
  v64.origin.y = v9;
  v64.size.width = v11;
  v64.size.height = v13;
  v65 = CGRectInset(v64, v16, v20);
  v21 = CGPathCreateWithEllipseInRect(v65, 0);
  if (v18 != 1)
  {
  }

  if (v15 != 1)
  {
  }

  v22 = [(AVTRecordingButton *)self outerCircle];
  [v22 setPath:v21];

  CFRelease(v21);
  v23 = [MEMORY[0x1E69DC938] currentDevice];
  v24 = [v23 userInterfaceIdiom];
  if (v24 == 1 || ([MEMORY[0x1E69DC938] currentDevice], v2 = objc_claimAutoreleasedReturnValue(), v25 = 4.0, objc_msgSend(v2, "userInterfaceIdiom") == 5))
  {
    if ([(AVTRecordingButton *)self forceUsePhoneStyle])
    {
      v25 = 4.0;
    }

    else
    {
      v25 = 7.0;
    }
  }

  v26 = [(AVTRecordingButton *)self outerCircle];
  [v26 setLineWidth:v25];

  if (v24 != 1)
  {
  }

  v27 = [(AVTRecordingButton *)self uiState];
  v28 = [MEMORY[0x1E69DC938] currentDevice];
  v29 = [v28 userInterfaceIdiom];
  if (v27 == 1)
  {
    if (v29 == 1)
    {
      if ([(AVTRecordingButton *)self forceUsePhoneStyle])
      {
        v30 = 16.0;
      }

      else
      {
        v30 = 20.0;
      }
    }

    else
    {
      v31 = [MEMORY[0x1E69DC938] currentDevice];
      v30 = 16.0;
      if ([v31 userInterfaceIdiom] == 5)
      {
        if ([(AVTRecordingButton *)self forceUsePhoneStyle])
        {
          v30 = 16.0;
        }

        else
        {
          v30 = 20.0;
        }
      }
    }

    v32 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v32 userInterfaceIdiom] == 1)
    {
      if ([(AVTRecordingButton *)self forceUsePhoneStyle])
      {
        v33 = 4.0;
      }

      else
      {
        v33 = 8.0;
      }

      goto LABEL_57;
    }

    v27 = [MEMORY[0x1E69DC938] currentDevice];
    v33 = 4.0;
    if ([v27 userInterfaceIdiom] == 5)
    {
      if ([(AVTRecordingButton *)self forceUsePhoneStyle])
      {
        v33 = 4.0;
      }

      else
      {
        v33 = 8.0;
      }
    }

LABEL_56:

    goto LABEL_57;
  }

  if (v29 == 1)
  {
    if ([(AVTRecordingButton *)self forceUsePhoneStyle])
    {
      v30 = 7.0;
    }

    else
    {
      v30 = 11.0;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E69DC938] currentDevice];
    v30 = 7.0;
    if ([v27 userInterfaceIdiom] == 5)
    {
      if ([(AVTRecordingButton *)self forceUsePhoneStyle])
      {
        v30 = 7.0;
      }

      else
      {
        v30 = 11.0;
      }
    }
  }

  [(AVTRecordingButton *)self bounds];
  v35 = v34;
  v32 = [MEMORY[0x1E69DC938] currentDevice];
  v36 = [v32 userInterfaceIdiom];
  if (v36 != 1)
  {
    v27 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v27 userInterfaceIdiom] != 5)
    {
      v33 = v35 * 0.5 + -7.0;
      goto LABEL_56;
    }
  }

  v37 = [(AVTRecordingButton *)self forceUsePhoneStyle];
  v38 = -11.0;
  if (v37)
  {
    v38 = -7.0;
  }

  v33 = v38 + v35 * 0.5;
  if (v36 != 1)
  {
    goto LABEL_56;
  }

LABEL_57:

  [(AVTRecordingButton *)self bounds];
  v67 = CGRectInset(v66, v30, v30);
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v43 = CGPathCreateWithRoundedRect(v67, v33, v33, 0);
  v44 = [(AVTRecordingButton *)self innerCircle];
  [v44 setFrame:{x, y, width, height}];

  BoundingBox = CGPathGetBoundingBox(v43);
  v45 = BoundingBox.origin.x;
  v46 = BoundingBox.origin.y;
  v47 = BoundingBox.size.width;
  v48 = BoundingBox.size.height;
  v49 = [(AVTRecordingButton *)self innerCircle];
  [v49 setBounds:{v45, v46, v47, v48}];

  v50 = [(AVTRecordingButton *)self innerCircle];
  [v50 setPath:v43];

  CFRelease(v43);
  if ([(AVTRecordingButton *)self isHighlighted]&& [(AVTRecordingButton *)self uiState]!= 1)
  {
    v51 = 0.9;
  }

  else if ([(AVTRecordingButton *)self uiState]== 3)
  {
    v51 = 0.9;
  }

  else
  {
    v51 = 1.0;
  }

  CATransform3DMakeScale(&v62, v51, v51, 1.0);
  v52 = [(AVTRecordingButton *)self innerCircle];
  v61 = v62;
  [v52 setTransform:&v61];

  v53 = [(AVTRecordingButton *)self uiState];
  if (v53 == 2)
  {
    [(AVTRecordingButton *)self tintColor];
  }

  else
  {
    [(AVTRecordingButton *)self centerCircleColor];
  }
  v54 = ;
  v55 = v53 == 2;
  v56 = [v54 CGColor];
  v57 = [(AVTRecordingButton *)self innerCircle];
  [v57 setFillColor:v56];

  v58 = MEMORY[0x1E69DD250];
  [MEMORY[0x1E6979518] animationDuration];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __36__AVTRecordingButton_layoutSubviews__block_invoke;
  v59[3] = &unk_1E7F3C180;
  *&v59[5] = x;
  *&v59[6] = y;
  *&v59[7] = width;
  *&v59[8] = height;
  *&v59[9] = v51;
  v59[4] = self;
  v60 = v55;
  [v58 animateWithDuration:v59 animations:?];
}

void __36__AVTRecordingButton_layoutSubviews__block_invoke(uint64_t a1)
{
  v25 = *(a1 + 40);
  v2 = 1.0;
  v26 = CGRectInset(v25, v25.size.width * ((1.0 - *(a1 + 72)) * 0.5 + 0.2), v25.size.width * ((1.0 - *(a1 + 72)) * 0.5 + 0.2));
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  v7 = [*(a1 + 32) iconView];
  [v7 setFrame:{x, y, width, height}];

  if (*(a1 + 80))
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [*(a1 + 32) iconView];
  [v9 setAlpha:v8];

  v10 = [*(a1 + 32) uiState];
  v11 = [*(a1 + 32) iconView];
  [v11 center];
  v13 = v12 + 1.0;
  v14 = [*(a1 + 32) iconView];
  [v14 center];
  v16 = v15 + 1.0;
  v17 = [*(a1 + 32) spinner];
  [v17 setCenter:{v13, v16}];

  v18 = [*(a1 + 32) spinner];
  v19 = v18;
  if (v10 == 3)
  {
    [v18 startAnimating];
    v20 = 0.0;
  }

  else
  {
    [v18 stopAnimating];
    v20 = 1.0;
    v2 = 0.0;
  }

  v21 = [*(a1 + 32) spinner];
  [v21 setAlpha:v2];

  v23 = [*(a1 + 32) innerCircle];
  *&v22 = v20;
  [v23 setOpacity:v22];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVTRecordingButton *)self isEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = AVTRecordingButton;
    [(AVTRecordingButton *)&v5 setEnabled:v3];
    [(AVTRecordingButton *)self setNeedsLayout];
  }
}

- (void)setUIState:(unint64_t)a3
{
  if (self->_uiState != a3)
  {
    self->_uiState = a3;
    if (a3 - 1 <= 1)
    {
      [(AVTRecordingButton *)self sendHapticFeedbackIfNeeded];
    }

    [(AVTRecordingButton *)self setNeedsLayout];
  }
}

- (void)sendHapticFeedbackIfNeeded
{
  v3 = [(AVTRecordingButton *)self lastFeedbackSent];
  if (!v3 || (v4 = v3, -[AVTRecordingButton lastFeedbackSent](self, "lastFeedbackSent"), v5 = objc_claimAutoreleasedReturnValue(), [v5 timeIntervalSinceNow], v7 = v6, v5, v4, v7 < -0.2))
  {
    v8 = objc_opt_new();
    [(AVTRecordingButton *)self setLastFeedbackSent:v8];

    v9 = [(AVTRecordingButton *)self feedbackGenerator];
    [v9 impactOccurred];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = AVTRecordingButton;
  [(AVTRecordingButton *)&v5 touchesBegan:a3 withEvent:a4];
  if ([(AVTRecordingButton *)self uiState]!= 3)
  {
    [(AVTRecordingButton *)self sendHapticFeedbackIfNeeded];
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  [(AVTRecordingButton *)self performSelector:sel_startLongPress withObject:0 afterDelay:0.25];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = AVTRecordingButton;
  [(AVTRecordingButton *)&v12 touchesEnded:v6 withEvent:a4];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  if ([(AVTRecordingButton *)self isTrackingLongPress])
  {
    v7 = [v6 anyObject];
    [v7 locationInView:self];
    v9 = v8;
    v11 = v10;

    [(AVTRecordingButton *)self bounds];
    v13.x = v9;
    v13.y = v11;
    [(AVTRecordingButton *)self endLongPress:!CGRectContainsPoint(v14, v13)];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = AVTRecordingButton;
  [(AVTRecordingButton *)&v5 touchesCancelled:a3 withEvent:a4];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  if ([(AVTRecordingButton *)self isTrackingLongPress])
  {
    [(AVTRecordingButton *)self endLongPress:1];
  }
}

- (void)startLongPress
{
  [(AVTRecordingButton *)self setIsTrackingLongPress:1];
  v3 = [(AVTRecordingButton *)self longPressDelegate];

  if (v3)
  {
    v4 = [(AVTRecordingButton *)self longPressDelegate];
    [v4 recordingButtonDidStartLongPress:self];
  }
}

- (void)endLongPress:(BOOL)a3
{
  v3 = a3;
  [(AVTRecordingButton *)self setIsTrackingLongPress:0];
  v5 = [(AVTRecordingButton *)self longPressDelegate];

  if (v5)
  {
    v6 = [(AVTRecordingButton *)self longPressDelegate];
    [v6 recordingButton:self didEndLongPress:v3];
  }
}

- (AVTRecordingButtonLongPressDelegate)longPressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_longPressDelegate);

  return WeakRetained;
}

@end