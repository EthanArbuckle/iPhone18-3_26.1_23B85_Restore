@interface MPAddKeepLocalControl
+ (CGSize)_expectedSizeForControlStatusType:(int64_t)a3 controlTitle:(id)a4 hasControlImage:(BOOL)a5 displayScale:(double)a6 preferredHeight:(double)a7;
+ (id)_imageNamed:(id)a3 compatibleWithTraitCollection:(id)a4;
+ (id)_newControlTitleLabel;
+ (id)controlTitleFontForControlStatusType:(int64_t)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)maximumSizeWithPreferredHeight:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MPAddKeepLocalControl)initWithFrame:(CGRect)a3;
- (MPAddKeepLocalControlStatus)controlStatus;
- (id)_currentContentSuperview;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)titleForControlStatusType:(int64_t)a3;
- (void)_beginTransientContentViewTransaction;
- (void)_endTransientContentViewTransaction;
- (void)_updateBackgroundViewCornerRadius;
- (void)_updateControlImageViewAnimation;
- (void)_updateControlStatusProperties;
- (void)_updateControlTitleLabelVisualProperties;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAllowsAddImage:(BOOL)a3;
- (void)setContentHorizontalAlignment:(int64_t)a3;
- (void)setControlStatus:(MPAddKeepLocalControlStatus)a3 animated:(BOOL)a4;
- (void)setDisplayStyle:(int64_t)a3;
- (void)setFilledTintColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setTitle:(id)a3 forControlStatusType:(int64_t)a4;
- (void)tintColorDidChange;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MPAddKeepLocalControl

- (MPAddKeepLocalControlStatus)controlStatus
{
  p_controlStatus = &self->_controlStatus;
  statusType = self->_controlStatus.statusType;
  downloadProgress = p_controlStatus->downloadProgress;
  result.downloadProgress = downloadProgress;
  result.statusType = statusType;
  return result;
}

- (void)_updateControlImageViewAnimation
{
  controlImageView = self->_controlImageView;
  if (controlImageView)
  {
    v15 = [(UIImageView *)controlImageView layer];
    if (self->_controlStatus.statusType == 3)
    {
      v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation.z"];
      v5 = [v15 presentationLayer];
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = v15;
      }

      v7 = [v4 keyPath];
      v8 = [v6 valueForKeyPath:v7];

      [v4 setFromValue:v8];
      v9 = MEMORY[0x1E696AD98];
      [v8 floatValue];
      v11 = [v9 numberWithDouble:{(fmod(v10, 6.28318531) + 6.28318531)}];
      [v4 setToValue:v11];

      [v4 setRemovedOnCompletion:0];
      LODWORD(v12) = 2139095040;
      [v4 setRepeatCount:v12];
      [v4 setFillMode:*MEMORY[0x1E69797E0]];
      [v4 setDuration:1.0];
      [v4 setBeginTimeMode:*MEMORY[0x1E6979588]];
      v13 = CACurrentMediaTime();
      [v4 duration];
      [v4 setBeginTime:{(v13 - fmod(v13, v14))}];
      [v15 addAnimation:v4 forKey:@"_MPAddKeepLocalControlWaitingSpinnerAnimationKey"];
    }

    else
    {
      [v15 removeAnimationForKey:@"_MPAddKeepLocalControlWaitingSpinnerAnimationKey"];
    }
  }
}

- (void)_updateControlStatusProperties
{
  v65 = [(MPAddKeepLocalControl *)self traitCollection];
  [v65 displayScale];
  v4 = v3;
  v5 = vabdd_f64(0.0, v3);
  if (v4 < 0.0 || v5 < 0.00000011920929)
  {
    goto LABEL_49;
  }

  v7 = [v65 preferredContentSizeCategory];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69DDC90]];

  if (v8)
  {
    goto LABEL_49;
  }

  statusType = self->_controlStatus.statusType;
  downloadProgressView = self->_downloadProgressView;
  if (statusType == 4)
  {
    if (!downloadProgressView)
    {
      v11 = [objc_opt_class() _imageNamed:@"UniversalDownloadProgressStopButton" compatibleWithTraitCollection:v65];
      v12 = [MPDownloadProgressView alloc];
      [(MPAddKeepLocalControl *)self bounds];
      v13 = [(MPDownloadProgressView *)v12 initWithFrame:?];
      v14 = self->_downloadProgressView;
      self->_downloadProgressView = v13;

      [(MPDownloadProgressView *)self->_downloadProgressView setCenterImage:v11];
      v15 = self->_downloadProgressView;
      v16 = [MEMORY[0x1E69DC888] systemFillColor];
      [(MPDownloadProgressView *)v15 setOuterRingColor:v16];

      v17 = [(MPAddKeepLocalControl *)self _currentContentSuperview];
      [v17 addSubview:self->_downloadProgressView];

      downloadProgressView = self->_downloadProgressView;
    }

    [(MPDownloadProgressView *)downloadProgressView setDownloadProgress:self->_controlStatus.downloadProgress];
    [(UIView *)self->_backgroundView removeFromSuperview];
    backgroundView = self->_backgroundView;
    self->_backgroundView = 0;

    goto LABEL_10;
  }

  [(MPDownloadProgressView *)downloadProgressView removeFromSuperview];
  v23 = self->_downloadProgressView;
  self->_downloadProgressView = 0;

  if (statusType != 1)
  {
    [(UIView *)self->_backgroundView removeFromSuperview];
    v31 = self->_backgroundView;
    self->_backgroundView = 0;

    v19 = *MEMORY[0x1E69DDCE0];
    v20 = *(MEMORY[0x1E69DDCE0] + 16);
    if (statusType <= 4)
    {
      if (statusType == 2)
      {
        v58 = *(MEMORY[0x1E69DDCE0] + 16);
        v61 = *MEMORY[0x1E69DDCE0];
        v32 = objc_opt_class();
        v33 = @"UniversalAddControlDownloadable";
      }

      else
      {
        if (statusType != 3)
        {
          goto LABEL_11;
        }

        v58 = *(MEMORY[0x1E69DDCE0] + 16);
        v61 = *MEMORY[0x1E69DDCE0];
        v32 = objc_opt_class();
        v33 = @"UniversalAddControlWaiting";
      }
    }

    else
    {
      switch(statusType)
      {
        case 5:
          v59 = *(MEMORY[0x1E69DDCE0] + 16);
          v63 = *MEMORY[0x1E69DDCE0];
          v40 = [(MPAddKeepLocalControl *)self titleForControlStatusType:5];
          if ([v40 length])
          {
          }

          else
          {
            v55 = [MEMORY[0x1E695E000] standardUserDefaults];
            v56 = [v55 BOOLForKey:@"MPKeepLocalControlShouldShowDownloadedIndicator"];

            v20 = v59;
            v19 = v63;
            if (!v56)
            {
              goto LABEL_11;
            }
          }

          v22 = [objc_opt_class() _imageNamed:@"UniversalAddControlDownloaded" compatibleWithTraitCollection:v65];
          v57 = -2.0;
          if (vabdd_f64(2.0, v4) < 0.00000011920929)
          {
            v57 = -1.5;
          }

          v64 = *&v57;
          if (self->_displayStyle == 1)
          {
            [MEMORY[0x1E69DC888] systemGrayColor];
          }

          else
          {
            [objc_opt_class() systemLightGrayColor];
          }
          v21 = ;
          v39 = xmmword_1A273DE50;
          _Q1 = v64;
          goto LABEL_37;
        case 6:
          v58 = *(MEMORY[0x1E69DDCE0] + 16);
          v61 = *MEMORY[0x1E69DDCE0];
          v32 = objc_opt_class();
          v33 = @"UniversalAddControlError";
          break;
        case 7:
          v58 = *(MEMORY[0x1E69DDCE0] + 16);
          v61 = *MEMORY[0x1E69DDCE0];
          v32 = objc_opt_class();
          v33 = @"UniversalAddControlPaused";
          break;
        default:
          goto LABEL_11;
      }
    }

    v22 = [v32 _imageNamed:v33 compatibleWithTraitCollection:{v65, v58}];
    v21 = 0;
    _Q1 = vextq_s8(v61, v60, 8uLL);
    v39 = vextq_s8(v60, v61, 8uLL);
    goto LABEL_37;
  }

  v24 = self->_backgroundView;
  if (self->_displayStyle != 1)
  {
    [(UIView *)v24 removeFromSuperview];
    v30 = self->_backgroundView;
    self->_backgroundView = 0;
    goto LABEL_23;
  }

  if (!v24)
  {
    v25 = objc_alloc(MEMORY[0x1E69DD250]);
    [(MPAddKeepLocalControl *)self bounds];
    v26 = [v25 initWithFrame:?];
    v27 = self->_backgroundView;
    self->_backgroundView = v26;

    v28 = self->_backgroundView;
    v29 = [(MPAddKeepLocalControl *)self tintColor];
    [(UIView *)v28 setBackgroundColor:v29];

    [(UIView *)self->_backgroundView setClipsToBounds:1];
    [(MPAddKeepLocalControl *)self _updateBackgroundViewCornerRadius];
    v30 = [(MPAddKeepLocalControl *)self _currentContentSuperview];
    [v30 insertSubview:self->_backgroundView atIndex:0];
LABEL_23:
  }

  if (!self->_allowsAddImage)
  {
LABEL_10:
    v19 = *MEMORY[0x1E69DDCE0];
    v20 = *(MEMORY[0x1E69DDCE0] + 16);
LABEL_11:
    v21 = 0;
    *&self->_controlImageEdgeInsets.top = v19;
    *&self->_controlImageEdgeInsets.bottom = v20;
    goto LABEL_12;
  }

  v22 = [objc_opt_class() _imageNamed:@"UniversalAddControlAdd" compatibleWithTraitCollection:v65];
  __asm { FMOV            V1.2D, #3.0 }

  if (self->_displayStyle == 1)
  {
    v62 = _Q1;
    v38 = [(MPAddKeepLocalControl *)self filledTintColor];
    _Q1 = v62;
    v21 = v38;
  }

  else
  {
    v21 = 0;
  }

  v39 = _Q1;
LABEL_37:
  *&self->_controlImageEdgeInsets.top = v39.i64[1];
  *&self->_controlImageEdgeInsets.left = _Q1;
  *&self->_controlImageEdgeInsets.right = v39.i64[0];
  if (v22)
  {
    controlImageView = self->_controlImageView;
    if (!controlImageView)
    {
      v42 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v43 = [v42 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v44 = self->_controlImageView;
      self->_controlImageView = v43;

      v45 = [(MPAddKeepLocalControl *)self _currentContentSuperview];
      [v45 addSubview:self->_controlImageView];

      controlImageView = self->_controlImageView;
    }

    [(UIImageView *)controlImageView setTintColor:v21];
    [(UIImageView *)self->_controlImageView setImage:v22];
    if ([(MPAddKeepLocalControl *)self scaleImageForAccessibility])
    {
      [(UIImageView *)self->_controlImageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    }

    [(MPAddKeepLocalControl *)self _updateControlImageViewAnimation];
    goto LABEL_43;
  }

LABEL_12:
  [(UIImageView *)self->_controlImageView removeFromSuperview];
  v22 = self->_controlImageView;
  self->_controlImageView = 0;
LABEL_43:

  v46 = [(MPAddKeepLocalControl *)self titleForControlStatusType:statusType];
  v47 = [v46 length];
  controlTitleLabel = self->_controlTitleLabel;
  if (v47)
  {
    if (!controlTitleLabel)
    {
      v49 = [objc_opt_class() _newControlTitleLabel];
      v50 = self->_controlTitleLabel;
      self->_controlTitleLabel = v49;

      v51 = [(MPAddKeepLocalControl *)self _currentContentSuperview];
      [v51 addSubview:self->_controlTitleLabel];
    }

    [(MPAddKeepLocalControl *)self _updateControlTitleLabelVisualProperties];
    v52 = self->_controlTitleLabel;
    v53 = [objc_opt_class() controlTitleFontForControlStatusType:statusType];
    [(UILabel *)v52 setFont:v53];

    [(UILabel *)self->_controlTitleLabel setText:v46];
  }

  else
  {
    [(UILabel *)controlTitleLabel removeFromSuperview];
    v54 = self->_controlTitleLabel;
    self->_controlTitleLabel = 0;
  }

  [(MPAddKeepLocalControl *)self setNeedsLayout];

LABEL_49:
}

- (void)_updateBackgroundViewCornerRadius
{
  [(UIView *)self->_backgroundView bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v7 = CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v8 = CGRectGetHeight(v13);
  if (v7 < v8)
  {
    v8 = v7;
  }

  v9 = v8 * 0.5;
  v10 = [(UIView *)self->_backgroundView layer];
  [v10 setCornerRadius:v9];
}

- (void)_updateControlTitleLabelVisualProperties
{
  if (self->_controlStatus.statusType == 5)
  {
    controlTitleLabel = self->_controlTitleLabel;
    v3 = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    controlTitleLabel = self->_controlTitleLabel;
    if (self->_displayStyle == 1)
    {
      [(MPAddKeepLocalControl *)self filledTintColor];
    }

    else
    {
      [(MPAddKeepLocalControl *)self tintColor];
    }
    v3 = ;
  }

  v4 = v3;
  [(UILabel *)controlTitleLabel setTextColor:?];
}

- (id)_currentContentSuperview
{
  if (self->_transientContentViewTransactionCount >= 1)
  {
    self = self->_transientContentView;
  }

  return self;
}

- (void)_endTransientContentViewTransaction
{
  v16 = *MEMORY[0x1E69E9840];
  --self->_transientContentViewTransactionCount;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(UIView *)self->_transientContentView subviews];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        transientContentView = self->_transientContentView;
        if (*(*(&v11 + 1) + 8 * v8) != transientContentView)
        {
          [(MPAddKeepLocalControl *)self addSubview:?];
          transientContentView = self->_transientContentView;
        }

        [(UIView *)transientContentView removeFromSuperview];
        v10 = self->_transientContentView;
        self->_transientContentView = 0;

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_beginTransientContentViewTransaction
{
  v19 = *MEMORY[0x1E69E9840];
  transientContentViewTransactionCount = self->_transientContentViewTransactionCount;
  self->_transientContentViewTransactionCount = transientContentViewTransactionCount + 1;
  if (!transientContentViewTransactionCount)
  {
    if (!self->_transientContentView)
    {
      v4 = objc_alloc(MEMORY[0x1E69DD250]);
      [(MPAddKeepLocalControl *)self bounds];
      v5 = [v4 initWithFrame:?];
      transientContentView = self->_transientContentView;
      self->_transientContentView = v5;

      [(MPAddKeepLocalControl *)self insertSubview:self->_transientContentView atIndex:0];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(MPAddKeepLocalControl *)self subviews];
    v8 = [v7 copy];

    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = self->_transientContentView;
          if (*(*(&v14 + 1) + 8 * v12) != v13)
          {
            [(UIView *)v13 addSubview:?];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (id)titleForControlStatusType:(int64_t)a3
{
  controlStatusTypeToTitle = self->_controlStatusTypeToTitle;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)controlStatusTypeToTitle objectForKey:v4];

  return v5;
}

- (void)setTitle:(id)a3 forControlStatusType:(int64_t)a4
{
  v11 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  controlStatusTypeToTitle = self->_controlStatusTypeToTitle;
  if (v11)
  {
    if (!controlStatusTypeToTitle)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_controlStatusTypeToTitle;
      self->_controlStatusTypeToTitle = v8;

      controlStatusTypeToTitle = self->_controlStatusTypeToTitle;
    }

    [(NSMutableDictionary *)controlStatusTypeToTitle setObject:v11 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)controlStatusTypeToTitle removeObjectForKey:v6];
    if (![(NSMutableDictionary *)self->_controlStatusTypeToTitle count])
    {
      v10 = self->_controlStatusTypeToTitle;
      self->_controlStatusTypeToTitle = 0;
    }
  }

  if (self->_controlStatus.statusType == a4)
  {
    [(MPAddKeepLocalControl *)self _updateControlStatusProperties];
  }
}

- (void)setFilledTintColor:(id)a3
{
  objc_storeStrong(&self->_filledTintColor, a3);
  if (self->_displayStyle == 1)
  {
    [(MPAddKeepLocalControl *)self _updateControlTitleLabelVisualProperties];

    [(MPAddKeepLocalControl *)self _updateControlStatusProperties];
  }
}

- (void)setControlStatus:(MPAddKeepLocalControlStatus)a3 animated:(BOOL)a4
{
  v4 = a4;
  p_controlStatus = &self->_controlStatus;
  statusType = self->_controlStatus.statusType;
  if (statusType == a3.statusType && vabdd_f64(self->_controlStatus.downloadProgress, a3.downloadProgress) <= 0.00000011920929)
  {
    return;
  }

  p_controlStatus->statusType = a3.statusType;
  self->_controlStatus.downloadProgress = a3.downloadProgress;
  v8 = self->_controlStatusRevision + 1;
  self->_controlStatusRevision = v8;
  v9 = p_controlStatus->statusType;
  if (statusType == 4 && v9 == 4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__MPAddKeepLocalControl_setControlStatus_animated___block_invoke;
    aBlock[3] = &unk_1E7682518;
    aBlock[4] = self;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (v4)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:134 delay:v12 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      (*(v12 + 2))(v12);
    }

    return;
  }

  if (v9 == 3)
  {
    if (statusType == 3)
    {
      goto LABEL_15;
    }

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:self selector:sel__applicationWillEnterForegroundNotification_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  else
  {
    if (statusType != 3)
    {
      goto LABEL_15;
    }

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
  }

LABEL_15:
  v14 = [(MPAddKeepLocalControl *)self traitCollection];
  v15 = [v14 preferredContentSizeCategory];
  v16 = [v15 isEqualToString:*MEMORY[0x1E69DDC90]];

  v17 = statusType != 4 || !v4;
  if (v17 || p_controlStatus->statusType != 5)
  {
    if ((v16 & 1) == 0)
    {

      [(MPAddKeepLocalControl *)self _updateControlStatusProperties];
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__MPAddKeepLocalControl_setControlStatus_animated___block_invoke_2;
    v20[3] = &unk_1E7682518;
    v20[4] = self;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__MPAddKeepLocalControl_setControlStatus_animated___block_invoke_3;
    v18[3] = &unk_1E7682348;
    v18[4] = self;
    v18[5] = v8;
    v19 = v16 ^ 1;
    [MEMORY[0x1E69DD250] animateWithDuration:134 delay:v20 options:v18 animations:0.25 completion:0.0];
  }
}

void __51__MPAddKeepLocalControl_setControlStatus_animated___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MPAddKeepLocalControl_setControlStatus_animated___block_invoke_4;
  block[3] = &unk_1E7682320;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = v3;
  v5 = *(a1 + 48);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void *__51__MPAddKeepLocalControl_setControlStatus_animated___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[61] == *(a1 + 40) && *(a1 + 48) == 1)
  {
    return [result _updateControlStatusProperties];
  }

  return result;
}

- (void)setDisplayStyle:(int64_t)a3
{
  if (self->_displayStyle != a3)
  {
    self->_displayStyle = a3;
    [(MPAddKeepLocalControl *)self _updateControlStatusProperties];

    [(MPAddKeepLocalControl *)self _updateControlTitleLabelVisualProperties];
  }
}

- (void)setAllowsAddImage:(BOOL)a3
{
  if (self->_allowsAddImage != a3)
  {
    self->_allowsAddImage = a3;
    if (self->_controlStatus.statusType == 1)
    {
      [(MPAddKeepLocalControl *)self _updateControlStatusProperties];
    }
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(MPAddKeepLocalControl *)self isHighlighted];
  v12.receiver = self;
  v12.super_class = MPAddKeepLocalControl;
  [(MPAddKeepLocalControl *)&v12 setHighlighted:v3];
  v6 = [(MPAddKeepLocalControl *)self isHighlighted];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = 1.0;
    if (v6)
    {
      [(MPAddKeepLocalControl *)self _beginTransientContentViewTransaction];
      v8 = 0.2;
    }

    if (self->_hadFirstTouchHighlight)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __40__MPAddKeepLocalControl_setHighlighted___block_invoke;
      v11[3] = &unk_1E7682398;
      v11[4] = self;
      *&v11[5] = v8;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __40__MPAddKeepLocalControl_setHighlighted___block_invoke_2;
      v9[3] = &unk_1E76822F8;
      v10 = v7;
      v9[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:327684 delay:v11 options:v9 animations:0.47 completion:0.0];
    }

    else
    {
      self->_hadFirstTouchHighlight = 1;
      [(UIView *)self->_transientContentView setAlpha:v8];
      if ((v7 & 1) == 0)
      {
        [(MPAddKeepLocalControl *)self _endTransientContentViewTransaction];
      }
    }
  }
}

uint64_t __40__MPAddKeepLocalControl_setHighlighted___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _endTransientContentViewTransaction];
  }

  return result;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPAddKeepLocalControl;
  [(MPAddKeepLocalControl *)&v5 touchesEnded:a3 withEvent:a4];
  self->_hadFirstTouchHighlight = 0;
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPAddKeepLocalControl;
  [(MPAddKeepLocalControl *)&v5 touchesCancelled:a3 withEvent:a4];
  self->_hadFirstTouchHighlight = 0;
}

- (void)setContentHorizontalAlignment:(int64_t)a3
{
  v5 = [(MPAddKeepLocalControl *)self contentHorizontalAlignment];
  v6.receiver = self;
  v6.super_class = MPAddKeepLocalControl;
  [(MPAddKeepLocalControl *)&v6 setContentHorizontalAlignment:a3];
  if (v5 != [(MPAddKeepLocalControl *)self contentHorizontalAlignment])
  {
    [(MPAddKeepLocalControl *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MPAddKeepLocalControl;
  [(MPAddKeepLocalControl *)&v11 traitCollectionDidChange:v4];
  v5 = [(MPAddKeepLocalControl *)self traitCollection];
  [v5 displayScale];
  v7 = v6;
  [v4 displayScale];
  if (vabdd_f64(v8, v7) >= 0.00000011920929 || ([v5 preferredContentSizeCategory], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "preferredContentSizeCategory"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v9 != v10))
  {
    [(MPAddKeepLocalControl *)self _updateControlStatusProperties];
  }

  self->_traitCollectionDidChangeWasCalled = 1;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = MPAddKeepLocalControl;
  [(MPAddKeepLocalControl *)&v4 tintColorDidChange];
  v3 = [(MPAddKeepLocalControl *)self tintColor];
  if (self->_displayStyle == 1)
  {
    [(UIView *)self->_backgroundView setBackgroundColor:v3];
  }

  [(MPAddKeepLocalControl *)self _updateControlTitleLabelVisualProperties];
  if (self->_controlStatus.statusType == 2 && self->_traitCollectionDidChangeWasCalled)
  {
    [(MPAddKeepLocalControl *)self _updateControlStatusProperties];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v5 = objc_opt_class();
  statusType = self->_controlStatus.statusType;
  v7 = [(MPAddKeepLocalControl *)self titleForControlStatusType:statusType];
  v8 = self->_allowsAddImage || self->_controlStatus.statusType != 1;
  v9 = [(MPAddKeepLocalControl *)self traitCollection];
  [v9 displayScale];
  [v5 _expectedSizeForControlStatusType:statusType controlTitle:v7 hasControlImage:v8 displayScale:MPFloatGetSafeScaleForValue(v10) preferredHeight:height];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)maximumSizeWithPreferredHeight:(double)a3
{
  v5 = [(MPAddKeepLocalControl *)self traitCollection:0];
  [v5 displayScale];
  SafeScaleForValue = MPFloatGetSafeScaleForValue(v6);

  v8 = 0;
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  do
  {
    v11 = *(&v21 + v8);
    v12 = objc_opt_class();
    v13 = [(MPAddKeepLocalControl *)self titleForControlStatusType:v11];
    v14 = self->_allowsAddImage || self->_controlStatus.statusType != 1;
    [v12 _expectedSizeForControlStatusType:v11 controlTitle:v13 hasControlImage:v14 displayScale:MPFloatGetSafeScaleForValue(SafeScaleForValue) preferredHeight:a3];
    v16 = v15;
    v18 = v17;

    if (v9 < v16)
    {
      v9 = v16;
    }

    if (v10 < v18)
    {
      v10 = v18;
    }

    v8 += 8;
  }

  while (v8 != 56);
  v19 = v9;
  v20 = v10;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)layoutSubviews
{
  v143.receiver = self;
  v143.super_class = MPAddKeepLocalControl;
  [(MPAddKeepLocalControl *)&v143 layoutSubviews];
  [(MPAddKeepLocalControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MPAddKeepLocalControl *)self traitCollection];
  [v11 displayScale];
  SafeScaleForValue = MPFloatGetSafeScaleForValue(v12);

  [(UILabel *)self->_controlTitleLabel frame];
  rect_16 = v14;
  v16 = v15;
  [(UILabel *)self->_controlTitleLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  v18 = v17;
  v20 = v19;
  v21 = [(MPAddKeepLocalControl *)self contentHorizontalAlignment];
  controlImageView = self->_controlImageView;
  v142 = SafeScaleForValue;
  if (controlImageView)
  {
    statusType = self->_controlStatus.statusType;
    [(UIImageView *)controlImageView frame];
    v141 = v4;
    v24 = [(UILabel *)self->_controlTitleLabel text];
    v25 = [v24 length];

    v26 = fmin(v8, 45.0);
    v27 = fmin(v10, 45.0);
    if (!v25)
    {
      v10 = v27;
      v8 = v26;
    }

    [(UIImageView *)self->_controlImageView sizeThatFits:v8, v10];
    p_controlImageEdgeInsets = &self->_controlImageEdgeInsets;
    v131 = v29;
    v132 = v30;
    UIRectCenteredYInRectScale();
    v127 = v31;
    v33 = v32;
    rect_24 = v34;
    rect_8 = v35;
    v36 = [(UILabel *)self->_controlTitleLabel text];
    v37 = [v36 length];

    if (v37)
    {
      UIRectCenteredYInRectScale();
      rect = v38;
      v40 = v39;
      v41 = v8;
      v43 = v42;
      rect_16a = v44;
      v45 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDCF8], *&SafeScaleForValue}];
      [v45 _scaledValueForValue:8.0];
      v125 = v41;
      v47 = v41 - (v46 + 5.0);

      v126 = v6;
      v133 = v33;
      v130 = v47;
      v122 = v6 + 0.0;
      if (v21 == 2)
      {
        v148.origin.x = v4 + 5.0;
        v148.origin.y = v6 + 0.0;
        v148.size.width = v47;
        v148.size.height = v10;
        MaxX = CGRectGetMaxX(v148);
        v149.origin.x = rect;
        v149.origin.y = v40;
        v149.size.width = v43;
        v53 = rect_16a;
        v149.size.height = rect_16a;
        v60 = MaxX - CGRectGetWidth(v149);
        v150.origin.x = v60;
        v150.origin.y = v40;
        v150.size.width = v43;
        v150.size.height = rect_16a;
        MinX = CGRectGetMinX(v150);
        v151.origin.x = v127;
        v151.origin.y = v133;
        v50 = rect_24;
        v151.size.width = rect_24;
        v48 = v40;
        v49 = rect_8;
        v151.size.height = rect_8;
        x = MinX - CGRectGetWidth(v151);
        v52 = v60;
        v33 = v133;
      }

      else
      {
        v48 = v40;
        v49 = rect_8;
        v50 = rect_24;
        if (v21 == 1)
        {
          v144.size.width = v130;
          v144.origin.x = v141 + 5.0;
          v144.origin.y = v6 + 0.0;
          v144.size.height = v10;
          v145.origin.x = CGRectGetMinX(v144);
          x = v145.origin.x;
          v145.origin.y = v33;
          v145.size.width = rect_24;
          v145.size.height = rect_8;
          v52 = CGRectGetMaxX(v145) + 0.0;
          v53 = rect_16a;
        }

        else
        {
          v152.origin.x = 0.0;
          v152.origin.y = v33;
          v152.size.width = rect_24;
          v152.size.height = rect_8;
          v153.origin.x = CGRectGetMaxX(v152) + 0.0;
          rectb = v153.origin.x;
          v169.origin.x = 0.0;
          v153.origin.y = v48;
          v153.size.width = v43;
          v153.size.height = rect_16a;
          v169.origin.y = v33;
          v169.size.width = rect_24;
          v169.size.height = rect_8;
          v154 = CGRectUnion(v153, v169);
          v128 = v154.origin.x;
          y = v154.origin.y;
          width = v154.size.width;
          height = v154.size.height;
          v121 = SafeScaleForValue;
          UIRectCenteredXInRectScale();
          v64 = CGRectGetMinX(v155);
          v156.origin.x = v128;
          v156.origin.y = y;
          v49 = rect_8;
          v156.size.width = width;
          v156.size.height = height;
          v50 = rect_24;
          v65 = v64 - CGRectGetMinX(v156);
          v53 = rect_16a;
          v66 = MPFloatGetSafeScaleForValue(v142);
          v67 = round(v66 * v65) / v66;
          x = v67 + 0.0;
          v52 = rectb + v67;
        }
      }

      v124 = v52;
      v129 = v48;
      v68 = v48;
      recta = v43;
      v69 = v43;
      v70 = v53;
      v170.origin.x = x;
      v170.origin.y = v33;
      v170.size.width = v50;
      v170.size.height = v49;
      v157 = CGRectUnion(*&v52, v170);
      v71 = v157.origin.x;
      v72 = v157.origin.y;
      v73 = v157.size.width;
      v74 = v157.size.height;
      v157.size.width = v130;
      v157.origin.x = v141 + 5.0;
      v157.origin.y = v122;
      v157.size.height = v10;
      v75 = CGRectGetWidth(v157);
      v76 = [(MPAddKeepLocalControl *)self traitCollection];
      v77 = [v76 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v77);

      if (!IsAccessibilityCategory)
      {
        v158.origin.x = v71;
        v158.origin.y = v72;
        v158.size.width = v73;
        v158.size.height = v74;
        v79 = CGRectGetWidth(v158) - v75;
        v80 = v43;
        if (v79 > 0.00000011920929)
        {
          v80 = v43 - v79;
        }

        recta = v80;
      }

      v4 = v141;
      v6 = v126;
      if (statusType == 1)
      {
        v81 = v133;
        v82 = rect_8;
        v83 = rect_24;
      }

      else
      {
        x = x - self->_controlImageEdgeInsets.left;
        v82 = v132;
        v81 = v133 - p_controlImageEdgeInsets->top;
        v83 = v131;
      }

      [(UIImageView *)self->_controlImageView setFrame:MPRectByApplyingUserInterfaceLayoutDirectionInRect(x, v81, v83, v82, v141, v126, v125, v10)];
      controlTitleLabel = self->_controlTitleLabel;
      v85 = v124;
      v86 = v129;
      v87 = recta;
      v8 = v125;
      v88 = rect_16a;
      v89 = v141;
      v90 = v126;
      v91 = v125;
      goto LABEL_32;
    }

    if (v21 == 2)
    {
      v161.origin.x = v4;
      v161.origin.y = v6;
      v161.size.width = v8;
      v161.size.height = v10;
      v93 = v33;
      v94 = CGRectGetMaxX(v161);
      v162.origin.x = v127;
      v162.origin.y = v93;
      v162.size.width = rect_24;
      v162.size.height = rect_8;
      v58 = v94 - CGRectGetWidth(v162);
      v33 = v93;
    }

    else if (v21 == 1)
    {
      v147.origin.x = v4;
      v147.origin.y = v6;
      v147.size.width = v8;
      v147.size.height = v10;
      v58 = CGRectGetMinX(v147);
    }

    else
    {
      v121 = SafeScaleForValue;
      UIRectCenteredXInRectScale();
      v33 = v106;
    }

    v85 = v58 - self->_controlImageEdgeInsets.left;
    v86 = v33 - p_controlImageEdgeInsets->top;
    v87 = fmin(v131, 45.0);
    v88 = fmin(v132, 45.0);
    controlTitleLabel = self->_controlImageView;
    v89 = v4;
  }

  else
  {
    v54 = [(UILabel *)self->_controlTitleLabel text];
    v55 = [v54 length];

    if (!v55)
    {
      goto LABEL_33;
    }

    if (v21 == 2)
    {
      v159.origin.x = v4;
      v159.origin.y = v6;
      v159.size.width = v8;
      v159.size.height = v10;
      CGRectGetMaxX(v159);
      v56 = *MEMORY[0x1E69DDCF8];
      v92 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v92 _scaledValueForValue:8.0];
      v160.origin.x = rect_16;
      v160.origin.y = v16;
      v160.size.width = v18;
      v160.size.height = v20;
      CGRectGetWidth(v160);
    }

    else if (v21 == 1)
    {
      v146.origin.x = v4;
      v146.origin.y = v6;
      v146.size.width = v8;
      v146.size.height = v10;
      CGRectGetMinX(v146);
      v56 = *MEMORY[0x1E69DDCF8];
      v57 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v57 _scaledValueForValue:8.0];
    }

    else
    {
      UIRectCenteredXInRectScale();
      v56 = *MEMORY[0x1E69DDCF8];
    }

    UIRectCenteredYInRectScale();
    v96 = v95;
    v97 = v4;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v104 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{v56, *&v142}];
    [v104 _scaledValueForValue:8.0];

    v105 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v56];
    [v105 _scaledValueForValue:8.0];

    v163.origin.x = v97;
    v163.origin.y = v6;
    v163.size.width = v8;
    v163.size.height = v10;
    CGRectGetHeight(v163);
    controlTitleLabel = self->_controlTitleLabel;
    v85 = v96;
    v86 = v99;
    v4 = v97;
    v87 = v101;
    v88 = v103;
    v89 = v97;
  }

  v90 = v6;
  v91 = v8;
LABEL_32:
  [controlTitleLabel setFrame:{MPRectByApplyingUserInterfaceLayoutDirectionInRect(v85, v86, v87, v88, v89, v90, v91, v10)}];
LABEL_33:
  if (!self->_downloadProgressView)
  {
    goto LABEL_44;
  }

  v164.origin.x = v4;
  v164.origin.y = v6;
  v164.size.width = v8;
  v164.size.height = v10;
  v107 = CGRectGetWidth(v164);
  v165.origin.x = v4;
  v165.origin.y = v6;
  v165.size.width = v8;
  v165.size.height = v10;
  v108 = CGRectGetHeight(v165);
  if (v107 >= v108)
  {
    v109 = v108;
  }

  else
  {
    v109 = v107;
  }

  [(MPDownloadProgressView *)self->_downloadProgressView frame];
  v111 = v110;
  v113 = v112;
  if (v21 == 2)
  {
    v167.origin.x = v4;
    v167.origin.y = v6;
    v167.size.width = v8;
    v167.size.height = v10;
    v115 = v4;
    v116 = CGRectGetMaxX(v167);
    v168.origin.x = v111;
    v168.origin.y = v113;
    v168.size.width = v109;
    v168.size.height = v109;
    v114 = v116 - CGRectGetWidth(v168);
    v4 = v115;
  }

  else
  {
    if (v21 != 1)
    {
      UIRectCenteredIntegralRectScale();
      v113 = v118;
      v109 = v119;
      goto LABEL_43;
    }

    v166.origin.x = v4;
    v166.origin.y = v6;
    v166.size.width = v8;
    v166.size.height = v10;
    v114 = CGRectGetMinX(v166);
  }

  v117 = v109;
LABEL_43:
  [(MPDownloadProgressView *)self->_downloadProgressView setFrame:MPRectByApplyingUserInterfaceLayoutDirectionInRect(v114, v113, v109, v117, v4, v6, v8, v10)];
LABEL_44:
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(UIView *)backgroundView setFrame:v4, v6, v8, v10];
    [(MPAddKeepLocalControl *)self _updateBackgroundViewCornerRadius];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(MPAddKeepLocalControl *)self bounds];
  v7 = v15.origin.x;
  v8 = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  if (CGRectIsEmpty(v15))
  {
    return 0;
  }

  v16.origin.x = v7;
  v16.origin.y = v8;
  v16.size.width = width;
  v16.size.height = height;
  v17 = CGRectInset(v16, -16.0, -16.0);
  v14.x = x;
  v14.y = y;
  if (!CGRectContainsPoint(v17, v14))
  {
    return 0;
  }

  if (self->_controlImageView)
  {
    return 1;
  }

  v13 = [(UILabel *)self->_controlTitleLabel text];
  if ([v13 length])
  {
    v11 = 1;
  }

  else
  {
    v11 = self->_downloadProgressView != 0;
  }

  return v11;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if ([(MPAddKeepLocalControl *)self pointInside:a4 withEvent:a3.x, a3.y]&& [(MPAddKeepLocalControl *)self isEnabled])
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MPAddKeepLocalControl;
  [(MPAddKeepLocalControl *)&v3 didMoveToWindow];
  if ([(MPAddKeepLocalControl *)self _isInAWindow])
  {
    [(MPAddKeepLocalControl *)self _updateControlImageViewAnimation];
  }
}

- (void)dealloc
{
  if (self->_controlStatus.statusType == 3)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
  }

  v4.receiver = self;
  v4.super_class = MPAddKeepLocalControl;
  [(MPAddKeepLocalControl *)&v4 dealloc];
}

- (MPAddKeepLocalControl)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = MPAddKeepLocalControl;
  v3 = [(MPAddKeepLocalControl *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_allowsAddImage = 1;
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    filledTintColor = v4->_filledTintColor;
    v4->_filledTintColor = v5;
  }

  [(MPAddKeepLocalControl *)v4 setScaleImageForAccessibility:1];
  return v4;
}

+ (id)_imageNamed:(id)a3 compatibleWithTraitCollection:(id)a4
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = MEMORY[0x1E696AAE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 bundleForClass:objc_opt_class()];
  v10 = [v5 imageNamed:v8 inBundle:v9 compatibleWithTraitCollection:v7];

  return v10;
}

+ (id)controlTitleFontForControlStatusType:(int64_t)a3
{
  v3 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] smallSystemFontSize];

  return [v3 boldSystemFontOfSize:?];
}

+ (id)_newControlTitleLabel
{
  v2 = objc_alloc(MEMORY[0x1E69DCC10]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  return v3;
}

+ (CGSize)_expectedSizeForControlStatusType:(int64_t)a3 controlTitle:(id)a4 hasControlImage:(BOOL)a5 displayScale:(double)a6 preferredHeight:(double)a7
{
  v9 = a5;
  v12 = a4;
  v13 = v12;
  v15 = *MEMORY[0x1E695F060];
  v14 = *(MEMORY[0x1E695F060] + 8);
  if (a3)
  {
    if ([v12 length])
    {
      v16 = [a1 _newControlTitleLabel];
      v17 = [a1 controlTitleFontForControlStatusType:a3];
      [v16 setFont:v17];

      [v16 setText:v13];
      [v16 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v19 = v18;
      v21 = v20;
      SafeScaleForValue = MPFloatGetSafeScaleForValue(a6);
      v23 = ceil(SafeScaleForValue * v19) / SafeScaleForValue;
      if (v9)
      {
        v14 = fmax(v21, 28.0);
        v24 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
        [v24 _scaledValueForValue:8.0];
        v26 = v15 + v23 + 5.0 + v25;

        v15 = v14 + v26;
      }

      else
      {
        v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
        [v27 _scaledValueForValue:8.0];
        v15 = v15 + v23 + v28 * 2.0;
      }

      if (v14 <= a7)
      {
        v14 = a7;
      }
    }

    else
    {
      if (a7 >= 28.0)
      {
        v14 = a7;
      }

      else
      {
        v14 = 28.0;
      }

      v15 = v14;
    }
  }

  v29 = v15;
  v30 = v14;
  result.height = v30;
  result.width = v29;
  return result;
}

@end