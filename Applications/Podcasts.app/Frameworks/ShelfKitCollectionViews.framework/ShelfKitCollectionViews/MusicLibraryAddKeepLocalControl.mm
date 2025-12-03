@interface MusicLibraryAddKeepLocalControl
+ (CGSize)_expectedSizeForControlStatusType:(int64_t)type controlTitle:(id)title hasControlImage:(BOOL)image displayScale:(double)scale preferredHeight:(double)height;
+ (id)_controlTitleFontForControlStatusType:(int64_t)type;
+ (id)_newControlTitleLabel;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)intrinsicContentSize;
- (CGSize)maximumSizeWithPreferredHeight:(double)height;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MusicLibraryAddKeepLocalControl)initWithFrame:(CGRect)frame;
- (MusicLibraryAddKeepLocalControlStatus)controlStatus;
- (UIEdgeInsets)controlImageEdgeInsets;
- (id)_centerImageForDownloading;
- (id)_centerImageForPausedDownload;
- (id)_currentContentSuperview;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)titleForControlStatusType:(int64_t)type;
- (void)_beginTransientContentViewTransaction;
- (void)_endTransientContentViewTransaction;
- (void)_updateBackgroundViewCornerRadius;
- (void)_updateControlImageViewAnimation;
- (void)_updateControlStatusProperties;
- (void)_updateControlTitleLabelVisualProperties;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)width;
- (void)setAllowsAddImage:(BOOL)image;
- (void)setContentHorizontalAlignment:(int64_t)alignment;
- (void)setControlStatus:(MusicLibraryAddKeepLocalControlStatus)status animated:(BOOL)animated;
- (void)setDisplayStyle:(int64_t)style;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setTitle:(id)title forControlStatusType:(int64_t)type;
- (void)tintColorDidChange;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MusicLibraryAddKeepLocalControl

- (MusicLibraryAddKeepLocalControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MusicLibraryAddKeepLocalControl;
  v3 = [(MusicLibraryAddKeepLocalControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_allowsAddImage = 1;
    [(MusicLibraryAddKeepLocalControl *)v3 _updateControlStatusProperties];
    v4->_controlHitOutsets = -16.0;
  }

  return v4;
}

- (void)dealloc
{
  if (self->_controlStatus.statusType == 3)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:MTApplicationWillEnterForegroundNotification object:0];
  }

  v4.receiver = self;
  v4.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v3 didMoveToWindow];
  if ([(MusicLibraryAddKeepLocalControl *)self _isInAWindow])
  {
    [(MusicLibraryAddKeepLocalControl *)self _updateControlImageViewAnimation];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if ([(MusicLibraryAddKeepLocalControl *)self pointInside:event withEvent:test.x, test.y]&& [(MusicLibraryAddKeepLocalControl *)self isEnabled])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(MusicLibraryAddKeepLocalControl *)self bounds];
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
  v17 = CGRectInset(v16, self->_controlHitOutsets, self->_controlHitOutsets);
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

  text = [(UILabel *)self->_controlTitleLabel text];
  if ([text length])
  {
    v11 = 1;
  }

  else
  {
    v11 = self->_downloadProgressView != 0;
  }

  return v11;
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)width
{
  if (self->_adjustsFontSizeToFitWidth != width)
  {
    self->_adjustsFontSizeToFitWidth = width;
    [(MusicLibraryAddKeepLocalControl *)self _updateControlStatusProperties];
  }
}

- (void)layoutSubviews
{
  v123.receiver = self;
  v123.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v123 layoutSubviews];
  [(MusicLibraryAddKeepLocalControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traitCollection = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
  [traitCollection displayScale];
  MTMPUFloatGetSafeScaleForValue();
  v13 = v12;

  [(UILabel *)self->_controlTitleLabel frame];
  v113 = v14;
  v16 = v15;
  [(UILabel *)self->_controlTitleLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  v19 = v18;
  if (v17 >= v8 + -32.0)
  {
    v20 = v8 + -32.0;
  }

  else
  {
    v20 = v17;
  }

  contentHorizontalAlignment = [(MusicLibraryAddKeepLocalControl *)self contentHorizontalAlignment];
  controlImageView = self->_controlImageView;
  rect = v10;
  v117 = v6;
  v118 = v4;
  v116 = v8;
  v109 = v13;
  if (controlImageView)
  {
    [(UIImageView *)controlImageView frame];
    [(UIImageView *)self->_controlImageView sizeThatFits:v8, v10];
    UIRectCenteredYInRectScale();
    v24 = v23;
    r2 = v25;
    v121 = v26;
    v28 = v27;
    text = [(UILabel *)self->_controlTitleLabel text];
    v30 = [text length];

    if (v30)
    {
      v110 = v28;
      v104 = v13;
      UIRectCenteredYInRectScale();
      v35 = v34;
      v36 = v31;
      v111 = v6 + 0.0;
      v114 = v4 + 0.0;
      r1 = v32;
      v107 = v8 + -6.0;
      v108 = v33;
      if (contentHorizontalAlignment == &dword_0 + 2)
      {
        v126.origin.x = v4;
        v51 = v24;
        v52 = v32;
        v126.origin.y = v6;
        v126.size.width = v8;
        v126.size.height = rect;
        v53 = CGRectGetMaxX(v126) + -6.0;
        v127.origin.x = v35;
        v37 = v108;
        v127.origin.y = v36;
        v127.size.width = v52;
        v127.size.height = v108;
        v46 = v53 - CGRectGetWidth(v127);
        v128.origin.x = v46;
        v128.origin.y = v36;
        v128.size.width = v52;
        v128.size.height = v108;
        MinX = CGRectGetMinX(v128);
        v129.origin.x = v51;
        v40 = v110;
        v129.size.width = v110;
        v42 = v36;
        v129.origin.y = r2;
        v44 = v121;
        v129.size.height = v121;
        v38 = MinX - CGRectGetWidth(v129);
      }

      else
      {
        v37 = v33;
        v38 = 0.0;
        v39 = 0;
        if (contentHorizontalAlignment == &dword_0 + 1)
        {
          v40 = v110;
          v41 = v110;
          v42 = v31;
          v43 = r2;
          v44 = v121;
          v45 = v121;
          v46 = CGRectGetMaxX(*&v39) + 0.0;
        }

        else
        {
          v55 = r2;
          v40 = v110;
          v56 = v110;
          v57 = v121;
          v130.origin.x = CGRectGetMaxX(*&v39) + 0.0;
          x = v130.origin.x;
          v149.origin.x = 0.0;
          v130.origin.y = v36;
          v130.size.width = r1;
          v130.size.height = v37;
          v149.origin.y = r2;
          v149.size.width = v110;
          v149.size.height = v121;
          v131 = CGRectUnion(v130, v149);
          v58 = v131.origin.x;
          y = v131.origin.y;
          v42 = v36;
          width = v131.size.width;
          height = v131.size.height;
          v104 = v109;
          UIRectCenteredXInRectScale();
          CGRectGetMinX(v132);
          v133.origin.x = v58;
          v133.origin.y = y;
          v133.size.width = width;
          v133.size.height = height;
          v37 = v108;
          v44 = v121;
          CGRectGetMinX(v133);
          MTMPUFloatRoundForScale();
          v38 = v62 + 0.0;
          v46 = x + v62;
        }
      }

      v134.origin.x = v46;
      v134.origin.y = v42;
      v134.size.width = r1;
      v134.size.height = v37;
      v150.origin.x = v38;
      v150.origin.y = r2;
      v150.size.width = v40;
      v150.size.height = v44;
      v135 = CGRectUnion(v134, v150);
      v63 = v135.origin.x;
      v64 = v135.origin.y;
      v65 = v135.size.width;
      v66 = v135.size.height;
      v135.origin.y = v111;
      v135.origin.x = v114;
      v135.size.width = v107;
      v135.size.height = rect;
      CGRectGetWidth(v135);
      v112 = v64;
      v115 = v63;
      v136.origin.x = v63;
      v136.origin.y = v64;
      v136.size.width = v65;
      v121 = v66;
      v136.size.height = v66;
      CGRectGetWidth(v136);
      v4 = v118;
      v67 = self->_controlImageView;
      v8 = v116;
      v6 = v117;
      MTMPURectByApplyingUserInterfaceLayoutDirectionInRect();
      [(UIImageView *)v67 setFrame:v104];
      controlTitleLabel = self->_controlTitleLabel;
      MTMPURectByApplyingUserInterfaceLayoutDirectionInRect();
      [(UILabel *)controlTitleLabel setFrame:?];
      v28 = v65 + 6.0;
    }

    else
    {
      v49 = v24;
      if (contentHorizontalAlignment == &dword_0 + 2)
      {
        v139.origin.x = v4;
        v139.origin.y = v6;
        v139.size.width = v8;
        v139.size.height = v10;
        MaxX = CGRectGetMaxX(v139);
        v140.origin.x = v49;
        v140.origin.y = r2;
        v140.size.height = v121;
        v140.size.width = v28;
        v50 = MaxX - CGRectGetWidth(v140);
      }

      else if (contentHorizontalAlignment == &dword_0 + 1)
      {
        v125.origin.x = v4;
        v125.origin.y = v6;
        v125.size.width = v8;
        v125.size.height = v10;
        v50 = CGRectGetMinX(v125);
      }

      else
      {
        v103 = v13;
        UIRectCenteredXInRectScale();
        r2 = v73;
        v121 = v74;
        v28 = v75;
      }

      v115 = v50;
      v76 = self->_controlImageView;
      MTMPURectByApplyingUserInterfaceLayoutDirectionInRect();
      [(UIImageView *)v76 setFrame:?];
      v112 = r2;
    }
  }

  else
  {
    text2 = [(UILabel *)self->_controlTitleLabel text];
    v48 = [text2 length];

    if (v48)
    {
      if (contentHorizontalAlignment == &dword_0 + 2)
      {
        v137.origin.x = v4;
        v137.origin.y = v6;
        v137.size.width = v8;
        v137.size.height = v10;
        CGRectGetMaxX(v137);
        v138.origin.x = v113;
        v138.origin.y = v16;
        v138.size.width = v20;
        v138.size.height = v19;
        CGRectGetWidth(v138);
      }

      else if (contentHorizontalAlignment == &dword_0 + 1)
      {
        v124.origin.x = v4;
        v124.origin.y = v6;
        v124.size.width = v8;
        v124.size.height = v10;
        CGRectGetMinX(v124);
      }

      else
      {
        UIRectCenteredXInRectScale();
      }

      UIRectCenteredYInRectScale();
      v115 = v70 + -16.0;
      v28 = v71 + 32.0;
      v141.origin.x = v4;
      v141.origin.y = v6;
      v141.size.width = v8;
      v141.size.height = v10;
      v121 = CGRectGetHeight(v141);
      v72 = self->_controlTitleLabel;
      MTMPURectByApplyingUserInterfaceLayoutDirectionInRect();
      [(UILabel *)v72 setFrame:v13];
      v112 = 0.0;
    }

    else
    {
      v112 = CGRectNull.origin.y;
      v115 = CGRectNull.origin.x;
      v28 = CGRectNull.size.width;
      v121 = CGRectNull.size.height;
    }
  }

  if (!self->_downloadProgressView)
  {
    v84 = v121;
    v86 = v112;
    v85 = v115;
    goto LABEL_39;
  }

  v142.origin.x = v4;
  v142.origin.y = v6;
  v142.size.width = v8;
  v142.size.height = rect;
  v77 = CGRectGetWidth(v142);
  v143.origin.x = v4;
  v143.origin.y = v6;
  v143.size.width = v8;
  v143.size.height = rect;
  v78 = CGRectGetHeight(v143);
  if (v77 >= v78)
  {
    v77 = v78;
  }

  [(MusicDownloadProgressView *)self->_downloadProgressView frame];
  v80 = v79;
  v82 = v81;
  if (contentHorizontalAlignment == &dword_0 + 2)
  {
    v145.origin.x = v4;
    v145.origin.y = v6;
    v145.size.width = v8;
    v145.size.height = rect;
    v87 = CGRectGetMaxX(v145);
    v146.origin.x = v80;
    v146.origin.y = v82;
    v146.size.width = v77;
    v146.size.height = v77;
    v83 = v87 - CGRectGetWidth(v146);
  }

  else
  {
    if (contentHorizontalAlignment != &dword_0 + 1)
    {
      UIRectCenteredIntegralRectScale();
      r2a = v89;
      v82 = v90;
      v77 = v91;
      v88 = v92;
      goto LABEL_36;
    }

    v144.origin.x = v4;
    v144.origin.y = v6;
    v144.size.width = v8;
    v144.size.height = rect;
    v83 = CGRectGetMinX(v144);
  }

  r2a = v83;
  v88 = v77;
LABEL_36:
  v147.origin.x = v115;
  v147.origin.y = v112;
  v147.size.width = v28;
  v147.size.height = v121;
  IsNull = CGRectIsNull(v147);
  v84 = v88;
  v94 = v77;
  v95 = v115;
  v86 = v82;
  v96 = r2a;
  if (!IsNull)
  {
    v97 = v112;
    v98 = v28;
    v99 = v121;
    v151.origin.x = r2a;
    v151.origin.y = v82;
    v151.size.width = v77;
    v151.size.height = v88;
    v148 = CGRectUnion(*&v95, v151);
    v96 = v148.origin.x;
    v86 = v148.origin.y;
    v94 = v148.size.width;
    v84 = v148.size.height;
  }

  downloadProgressView = self->_downloadProgressView;
  v101 = v96;
  MTMPURectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MusicDownloadProgressView *)downloadProgressView setFrame:?];
  v28 = v94;
  v85 = v101;
LABEL_39:
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [(UIView *)backgroundView setFrame:v85, v86, v28, v84];
    [(MusicLibraryAddKeepLocalControl *)self _updateBackgroundViewCornerRadius];
  }
}

- (CGSize)intrinsicContentSize
{
  +[MusicAppTheme defaultLibraryAddKeepLocalControlHeight];

  [(MusicLibraryAddKeepLocalControl *)self maximumSizeWithPreferredHeight:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)maximumSizeWithPreferredHeight:(double)height
{
  v4 = [(MusicLibraryAddKeepLocalControl *)self traitCollection:0];
  [v4 displayScale];
  MTMPUFloatGetSafeScaleForValue();

  v5 = 0;
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  do
  {
    v8 = *(&v18 + v5);
    v9 = objc_opt_class();
    v10 = [(MusicLibraryAddKeepLocalControl *)self titleForControlStatusType:v8];
    v11 = self->_allowsAddImage || self->_controlStatus.statusType != 1;
    MTMPUFloatGetSafeScaleForValue();
    [v9 _expectedSizeForControlStatusType:v8 controlTitle:v10 hasControlImage:v11 displayScale:? preferredHeight:?];
    v13 = v12;
    v15 = v14;

    if (width < v13)
    {
      width = v13;
    }

    if (height < v15)
    {
      height = v15;
    }

    v5 += 8;
  }

  while (v5 != 48);
  v16 = width;
  heightCopy = height;
  result.height = heightCopy;
  result.width = v16;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = objc_opt_class();
  statusType = self->_controlStatus.statusType;
  v6 = [(MusicLibraryAddKeepLocalControl *)self titleForControlStatusType:statusType];
  v7 = self->_allowsAddImage || self->_controlStatus.statusType != 1;
  traitCollection = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
  [traitCollection displayScale];
  MTMPUFloatGetSafeScaleForValue();
  [v4 _expectedSizeForControlStatusType:statusType controlTitle:v6 hasControlImage:v7 displayScale:? preferredHeight:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v4 tintColorDidChange];
  tintColor = [(MusicLibraryAddKeepLocalControl *)self tintColor];
  if (self->_displayStyle == 1)
  {
    [(UIView *)self->_backgroundView setBackgroundColor:tintColor];
  }

  [(MusicLibraryAddKeepLocalControl *)self _updateControlTitleLabelVisualProperties];
  if (self->_controlStatus.statusType == 2)
  {
    [(MusicLibraryAddKeepLocalControl *)self _updateControlStatusProperties];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v10 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];
  traitCollection = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  traitCollection2 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
  v9 = traitCollection2;
  if (userInterfaceStyle != userInterfaceStyle2 || ([traitCollection2 displayScale], objc_msgSend(changeCopy, "displayScale"), (MTMPUFloatEqualToFloat() & 1) == 0))
  {
    [(MusicLibraryAddKeepLocalControl *)self _updateControlStatusProperties];
  }
}

- (void)setContentHorizontalAlignment:(int64_t)alignment
{
  contentHorizontalAlignment = [(MusicLibraryAddKeepLocalControl *)self contentHorizontalAlignment];
  v6.receiver = self;
  v6.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v6 setContentHorizontalAlignment:alignment];
  if (contentHorizontalAlignment != [(MusicLibraryAddKeepLocalControl *)self contentHorizontalAlignment])
  {
    [(MusicLibraryAddKeepLocalControl *)self setNeedsLayout];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v5 touchesCancelled:cancelled withEvent:event];
  self->_hadFirstTouchHighlight = 0;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v5 touchesEnded:ended withEvent:event];
  self->_hadFirstTouchHighlight = 0;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(MusicLibraryAddKeepLocalControl *)self isHighlighted];
  v12.receiver = self;
  v12.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v12 setHighlighted:highlightedCopy];
  isHighlighted2 = [(MusicLibraryAddKeepLocalControl *)self isHighlighted];
  if (isHighlighted != isHighlighted2)
  {
    v7 = isHighlighted2;
    v8 = 1.0;
    if (isHighlighted2)
    {
      [(MusicLibraryAddKeepLocalControl *)self _beginTransientContentViewTransaction];
      v8 = 0.2;
    }

    if (self->_hadFirstTouchHighlight)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = __50__MusicLibraryAddKeepLocalControl_setHighlighted___block_invoke;
      v11[3] = &unk_3B43F0;
      v11[4] = self;
      *&v11[5] = v8;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __50__MusicLibraryAddKeepLocalControl_setHighlighted___block_invoke_2;
      v9[3] = &unk_3B4418;
      v10 = v7;
      v9[4] = self;
      [UIView animateWithDuration:327684 delay:v11 options:v9 animations:0.47 completion:0.0];
    }

    else
    {
      self->_hadFirstTouchHighlight = 1;
      [(UIView *)self->_transientContentView setAlpha:v8];
      if ((v7 & 1) == 0)
      {
        [(MusicLibraryAddKeepLocalControl *)self _endTransientContentViewTransaction];
      }
    }
  }
}

void __50__MusicLibraryAddKeepLocalControl_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transientContentView];
  [v2 setAlpha:*(a1 + 40)];
}

id *__50__MusicLibraryAddKeepLocalControl_setHighlighted___block_invoke_2(id *result)
{
  if ((result[5] & 1) == 0)
  {
    return [result[4] _endTransientContentViewTransaction];
  }

  return result;
}

- (void)setAllowsAddImage:(BOOL)image
{
  if (self->_allowsAddImage != image)
  {
    self->_allowsAddImage = image;
    if (self->_controlStatus.statusType == 1)
    {
      [(MusicLibraryAddKeepLocalControl *)self _updateControlStatusProperties];
    }
  }
}

- (void)setDisplayStyle:(int64_t)style
{
  if (self->_displayStyle != style)
  {
    self->_displayStyle = style;
    [(MusicLibraryAddKeepLocalControl *)self _updateControlStatusProperties];

    [(MusicLibraryAddKeepLocalControl *)self _updateControlTitleLabelVisualProperties];
  }
}

- (void)setControlStatus:(MusicLibraryAddKeepLocalControlStatus)status animated:(BOOL)animated
{
  animatedCopy = animated;
  p_controlStatus = &self->_controlStatus;
  statusType = self->_controlStatus.statusType;
  if (statusType == status.statusType && vabdd_f64(self->_controlStatus.downloadProgress, status.downloadProgress) <= 0.00000011920929)
  {
    return;
  }

  p_controlStatus->statusType = status.statusType;
  self->_controlStatus.downloadProgress = status.downloadProgress;
  v8 = self->_controlStatusRevision + 1;
  self->_controlStatusRevision = v8;
  if (p_controlStatus->statusType != statusType || (p_controlStatus->statusType & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    if (p_controlStatus->statusType == 3)
    {
      if (statusType != 3)
      {
        v10 = +[NSNotificationCenter defaultCenter];
        v11 = MTApplicationWillEnterForegroundNotification;
        v12 = +[UIApplication sharedApplication];
        [v10 addObserver:self selector:"_applicationWillEnterForegroundNotification:" name:v11 object:v12];

        goto LABEL_17;
      }
    }

    else
    {
      if (statusType != 3)
      {
LABEL_17:
        v18 = (statusType & 0xFFFFFFFFFFFFFFFELL) != 4 || !animatedCopy;
        if (!v18 && p_controlStatus->statusType == 6)
        {
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = __61__MusicLibraryAddKeepLocalControl_setControlStatus_animated___block_invoke_2;
          v20[3] = &unk_3B43C8;
          v20[4] = self;
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = __61__MusicLibraryAddKeepLocalControl_setControlStatus_animated___block_invoke_3;
          v19[3] = &unk_3B4440;
          v19[4] = self;
          v19[5] = v8;
          [UIView animateWithDuration:134 delay:v20 options:v19 animations:0.25 completion:0.0];
          return;
        }

        goto LABEL_23;
      }

      v15 = +[NSNotificationCenter defaultCenter];
      v16 = MTApplicationWillEnterForegroundNotification;
      v17 = +[UIApplication sharedApplication];
      [v15 removeObserver:self name:v16 object:v17];
    }

LABEL_23:

    [(MusicLibraryAddKeepLocalControl *)self _updateControlStatusProperties];
    return;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __61__MusicLibraryAddKeepLocalControl_setControlStatus_animated___block_invoke;
  v21[3] = &unk_3B43C8;
  v21[4] = self;
  v13 = objc_retainBlock(v21);
  v14 = v13;
  if (animatedCopy)
  {
    [UIView animateWithDuration:134 delay:v13 options:0 animations:0.25 completion:0.0];
  }

  else
  {
    (v13[2])(v13);
  }
}

void __61__MusicLibraryAddKeepLocalControl_setControlStatus_animated___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) downloadProgressView];
  [*(a1 + 32) controlStatus];
  [v3 setDownloadProgress:v2];
}

void __61__MusicLibraryAddKeepLocalControl_setControlStatus_animated___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) downloadProgressView];
  [v1 setDownloadProgress:1.0];
}

void __61__MusicLibraryAddKeepLocalControl_setControlStatus_animated___block_invoke_3(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __61__MusicLibraryAddKeepLocalControl_setControlStatus_animated___block_invoke_4;
  v4[3] = &unk_3B43F0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v4[5] = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

id __61__MusicLibraryAddKeepLocalControl_setControlStatus_animated___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) controlStatusRevision];
  if (result == *(a1 + 40))
  {
    v3 = *(a1 + 32);

    return [v3 _updateControlStatusProperties];
  }

  return result;
}

- (void)setTitle:(id)title forControlStatusType:(int64_t)type
{
  titleCopy = title;
  v6 = [NSNumber numberWithInteger:type];
  controlStatusTypeToTitle = self->_controlStatusTypeToTitle;
  if (titleCopy)
  {
    if (!controlStatusTypeToTitle)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = self->_controlStatusTypeToTitle;
      self->_controlStatusTypeToTitle = v8;

      controlStatusTypeToTitle = self->_controlStatusTypeToTitle;
    }

    [(NSMutableDictionary *)controlStatusTypeToTitle setObject:titleCopy forKey:v6];
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

  if (self->_controlStatus.statusType == type)
  {
    [(MusicLibraryAddKeepLocalControl *)self _updateControlStatusProperties];
  }
}

- (id)titleForControlStatusType:(int64_t)type
{
  controlStatusTypeToTitle = self->_controlStatusTypeToTitle;
  v4 = [NSNumber numberWithInteger:type];
  v5 = [(NSMutableDictionary *)controlStatusTypeToTitle objectForKey:v4];

  return v5;
}

+ (CGSize)_expectedSizeForControlStatusType:(int64_t)type controlTitle:(id)title hasControlImage:(BOOL)image displayScale:(double)scale preferredHeight:(double)height
{
  imageCopy = image;
  titleCopy = title;
  v12 = titleCopy;
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (type)
  {
    if ([titleCopy length])
    {
      _newControlTitleLabel = [self _newControlTitleLabel];
      v16 = [self _controlTitleFontForControlStatusType:type];
      [_newControlTitleLabel setFont:v16];

      [_newControlTitleLabel setText:v12];
      font = [_newControlTitleLabel font];
      [_newControlTitleLabel sizeThatFits:{1.79769313e308, 1.79769313e308}];
      MTMPUFloatCeilForScale();
      if (imageCopy)
      {
        width = CGSizeZero.width + v18 + 0.0 + 6.0 + 28.0;
        [font lineHeight];
        v20 = v19;
        [font ascender];
        v22 = v20 - v21;
        [font descender];
        height = fmax(v22 + v23 + 16.0, 28.0);
      }

      else
      {
        width = CGSizeZero.width + v18 + 32.0;
      }

      if (height <= height)
      {
        height = height;
      }
    }

    else
    {
      if (height >= 28.0)
      {
        height = height;
      }

      else
      {
        height = 28.0;
      }

      width = height;
    }
  }

  v24 = width;
  heightCopy = height;
  result.height = heightCopy;
  result.width = v24;
  return result;
}

+ (id)_newControlTitleLabel
{
  v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v3 = +[UIColor clearColor];
  [v2 setBackgroundColor:v3];

  return v2;
}

+ (id)_controlTitleFontForControlStatusType:(int64_t)type
{
  if (type == 6)
  {
    defaultFont = [UIFont boldSystemFontOfSize:11.0];
  }

  else
  {
    v4 = [MTMPUFontDescriptor fontDescriptorWithTextStyle:2 weight:4];
    defaultFont = [v4 defaultFont];
  }

  return defaultFont;
}

- (void)_beginTransientContentViewTransaction
{
  transientContentViewTransactionCount = self->_transientContentViewTransactionCount;
  self->_transientContentViewTransactionCount = transientContentViewTransactionCount + 1;
  if (!transientContentViewTransactionCount)
  {
    if (!self->_transientContentView)
    {
      v4 = [UIView alloc];
      [(MusicLibraryAddKeepLocalControl *)self bounds];
      v5 = [v4 initWithFrame:?];
      transientContentView = self->_transientContentView;
      self->_transientContentView = v5;

      [(MusicLibraryAddKeepLocalControl *)self insertSubview:self->_transientContentView atIndex:0];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    subviews = [(MusicLibraryAddKeepLocalControl *)self subviews];
    v8 = [subviews copy];

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

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)_endTransientContentViewTransaction
{
  --self->_transientContentViewTransactionCount;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [(UIView *)self->_transientContentView subviews];
  v4 = [subviews copy];

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
          [(MusicLibraryAddKeepLocalControl *)self addSubview:?];
          transientContentView = self->_transientContentView;
        }

        [(UIView *)transientContentView removeFromSuperview];
        v10 = self->_transientContentView;
        self->_transientContentView = 0;

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)_currentContentSuperview
{
  if (self->_transientContentViewTransactionCount >= 1)
  {
    self = self->_transientContentView;
  }

  return self;
}

- (void)_updateControlTitleLabelVisualProperties
{
  if (self->_controlStatus.statusType == 6)
  {
    controlTitleLabel = self->_controlTitleLabel;
    v3 = +[UIColor systemGrayColor];
  }

  else
  {
    controlTitleLabel = self->_controlTitleLabel;
    if (self->_displayStyle == 1)
    {
      +[UIColor whiteColor];
    }

    else
    {
      [(MusicLibraryAddKeepLocalControl *)self tintColor];
    }
    v3 = ;
  }

  v4 = v3;
  [(UILabel *)controlTitleLabel setTextColor:?];
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
  layer = [(UIView *)self->_backgroundView layer];
  [layer setCornerRadius:v9];
}

- (id)_centerImageForDownloading
{
  downloadingCenterIconType = [(MusicLibraryAddKeepLocalControl *)self downloadingCenterIconType];
  if (downloadingCenterIconType == 1)
  {
    traitCollection = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
    v5 = [MusicAppTheme pauseButtonImageWithTraitCollection:traitCollection];
    goto LABEL_5;
  }

  if (!downloadingCenterIconType)
  {
    traitCollection = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
    v5 = [MusicAppTheme stopButtonImageWithTraitCollection:traitCollection];
LABEL_5:
    v6 = v5;

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

- (id)_centerImageForPausedDownload
{
  traitCollection = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
  v3 = [MusicAppTheme resumeButtonImageWithTraitCollection:traitCollection];

  v4 = [v3 imageWithRenderingMode:2];

  return v4;
}

- (void)_updateControlStatusProperties
{
  traitCollection = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
  [traitCollection displayScale];

  if (MTMPUFloatLessThanOrEqualToFloat())
  {
    return;
  }

  statusType = self->_controlStatus.statusType;
  downloadProgressView = self->_downloadProgressView;
  if ((statusType & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    if (!downloadProgressView)
    {
      v6 = [MusicDownloadProgressView alloc];
      [(MusicLibraryAddKeepLocalControl *)self bounds];
      v7 = [(MusicDownloadProgressView *)v6 initWithFrame:?];
      v8 = self->_downloadProgressView;
      self->_downloadProgressView = v7;

      _currentContentSuperview = [(MusicLibraryAddKeepLocalControl *)self _currentContentSuperview];
      [_currentContentSuperview addSubview:self->_downloadProgressView];
    }

    v10 = self->_downloadProgressView;
    if (statusType == 4)
    {
      [(MusicLibraryAddKeepLocalControl *)self _centerImageForDownloading];
    }

    else
    {
      [(MusicLibraryAddKeepLocalControl *)self _centerImageForPausedDownload];
    }
    v22 = ;
    [(MusicDownloadProgressView *)v10 setCenterImage:v22];

    [(MusicDownloadProgressView *)self->_downloadProgressView setDownloadProgress:self->_controlStatus.downloadProgress];
  }

  else
  {
    [(MusicDownloadProgressView *)downloadProgressView removeFromSuperview];
    v11 = self->_downloadProgressView;
    self->_downloadProgressView = 0;

    if (statusType == 1 && self->_displayStyle == 1)
    {
      if (!self->_backgroundView)
      {
        v12 = [UIView alloc];
        [(MusicLibraryAddKeepLocalControl *)self bounds];
        v13 = [v12 initWithFrame:?];
        backgroundView = self->_backgroundView;
        self->_backgroundView = v13;

        v15 = self->_backgroundView;
        tintColor = [(MusicLibraryAddKeepLocalControl *)self tintColor];
        [(UIView *)v15 setBackgroundColor:tintColor];

        [(UIView *)self->_backgroundView setClipsToBounds:1];
        [(MusicLibraryAddKeepLocalControl *)self _updateBackgroundViewCornerRadius];
        _currentContentSuperview2 = [(MusicLibraryAddKeepLocalControl *)self _currentContentSuperview];
        [_currentContentSuperview2 insertSubview:self->_backgroundView atIndex:0];
      }

      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      goto LABEL_24;
    }
  }

  [(UIView *)self->_backgroundView removeFromSuperview];
  v23 = self->_backgroundView;
  self->_backgroundView = 0;

  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  if (statusType <= 2)
  {
    if (statusType != 1)
    {
      if (statusType == 2)
      {
        if ([(MusicLibraryAddKeepLocalControl *)self offerButtonSize])
        {
          v24 = 16.0;
        }

        else
        {
          v24 = 22.0;
        }

        tintColor2 = [(MusicLibraryAddKeepLocalControl *)self tintColor];
        traitCollection2 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
        v27 = [MusicAppTheme cloudDownloadImageForTintColor:tintColor2 pointSize:traitCollection2 traitCollection:v24];

        goto LABEL_30;
      }

      goto LABEL_39;
    }

LABEL_24:
    if (self->_allowsAddImage)
    {
      if ([(MusicLibraryAddKeepLocalControl *)self offerButtonSize])
      {
        v28 = 16.0;
      }

      else
      {
        v28 = 20.0;
      }

      traitCollection3 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
      v27 = [MusicAppTheme addButtonImageWithPointSize:traitCollection3 traitCollection:v28];

      if (self->_displayStyle == 1)
      {
        v30 = +[UIColor whiteColor];
        goto LABEL_42;
      }

      goto LABEL_30;
    }

    goto LABEL_39;
  }

  if (statusType != 6)
  {
    if (statusType == 3)
    {
      v27 = [UIImage imageNamed:@"UniversalAddControlWaiting"];
LABEL_30:
      v30 = 0;
      goto LABEL_42;
    }

LABEL_39:
    v47 = 0;
    self->_controlImageEdgeInsets.top = top;
    self->_controlImageEdgeInsets.left = left;
    self->_controlImageEdgeInsets.bottom = bottom;
    self->_controlImageEdgeInsets.right = right;
    goto LABEL_46;
  }

  v31 = [(MusicLibraryAddKeepLocalControl *)self titleForControlStatusType:6];
  if ([v31 length])
  {
  }

  else
  {
    v32 = +[NSUserDefaults standardUserDefaults];
    v33 = [v32 BOOLForKey:@"MusicKeepLocalControlShouldShowDownloadedIndicator"];

    if (!v33)
    {
      goto LABEL_39;
    }
  }

  v27 = [UIImage imageNamed:@"UniversalAddControlDownloaded"];
  if (MTMPUFloatEqualToFloat())
  {
    left = -1.5;
  }

  else
  {
    left = -2.0;
  }

  if (self->_displayStyle == 1)
  {
    +[UIColor systemGrayColor];
  }

  else
  {
    +[MusicAppTheme systemLightGrayColor];
  }
  v30 = ;
  bottom = 0.0;
  right = -3.0;
  top = 0.0;
LABEL_42:
  self->_controlImageEdgeInsets.top = top;
  self->_controlImageEdgeInsets.left = left;
  self->_controlImageEdgeInsets.bottom = bottom;
  self->_controlImageEdgeInsets.right = right;
  v47 = v30;
  if (v27)
  {
    controlImageView = self->_controlImageView;
    if (!controlImageView)
    {
      v35 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v36 = self->_controlImageView;
      self->_controlImageView = v35;

      _currentContentSuperview3 = [(MusicLibraryAddKeepLocalControl *)self _currentContentSuperview];
      [_currentContentSuperview3 addSubview:self->_controlImageView];

      v30 = v47;
      controlImageView = self->_controlImageView;
    }

    [(UIImageView *)controlImageView setTintColor:v30];
    [(UIImageView *)self->_controlImageView setImage:v27];
    [(MusicLibraryAddKeepLocalControl *)self _updateControlImageViewAnimation];
    goto LABEL_47;
  }

LABEL_46:
  [(UIImageView *)self->_controlImageView removeFromSuperview];
  v27 = self->_controlImageView;
  self->_controlImageView = 0;
LABEL_47:

  v38 = [(MusicLibraryAddKeepLocalControl *)self titleForControlStatusType:statusType];
  v39 = [v38 length];
  controlTitleLabel = self->_controlTitleLabel;
  if (v39)
  {
    if (!controlTitleLabel)
    {
      _newControlTitleLabel = [objc_opt_class() _newControlTitleLabel];
      v42 = self->_controlTitleLabel;
      self->_controlTitleLabel = _newControlTitleLabel;

      _currentContentSuperview4 = [(MusicLibraryAddKeepLocalControl *)self _currentContentSuperview];
      [_currentContentSuperview4 addSubview:self->_controlTitleLabel];
    }

    [(MusicLibraryAddKeepLocalControl *)self _updateControlTitleLabelVisualProperties];
    v44 = self->_controlTitleLabel;
    v45 = [objc_opt_class() _controlTitleFontForControlStatusType:statusType];
    [(UILabel *)v44 setFont:v45];

    [(UILabel *)self->_controlTitleLabel setText:v38];
    [(UILabel *)self->_controlTitleLabel setAdjustsFontSizeToFitWidth:[(MusicLibraryAddKeepLocalControl *)self adjustsFontSizeToFitWidth]];
    [(UILabel *)self->_controlTitleLabel setMinimumScaleFactor:0.75];
    [(UILabel *)self->_controlTitleLabel setBaselineAdjustment:[(MusicLibraryAddKeepLocalControl *)self adjustsFontSizeToFitWidth]];
    [(MusicLibraryAddKeepLocalControl *)self setNeedsLayout];
  }

  else
  {
    [(UILabel *)controlTitleLabel removeFromSuperview];
    v46 = self->_controlTitleLabel;
    self->_controlTitleLabel = 0;
  }

  [(MusicLibraryAddKeepLocalControl *)self setNeedsLayout];
}

- (void)_updateControlImageViewAnimation
{
  controlImageView = self->_controlImageView;
  if (controlImageView)
  {
    layer = [(UIImageView *)controlImageView layer];
    if (self->_controlStatus.statusType == 3)
    {
      v4 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
      presentationLayer = [layer presentationLayer];
      if (presentationLayer)
      {
        v6 = presentationLayer;
      }

      else
      {
        v6 = layer;
      }

      keyPath = [v4 keyPath];
      v8 = [v6 valueForKeyPath:keyPath];

      [v4 setFromValue:v8];
      [v8 floatValue];
      v10 = [NSNumber numberWithDouble:(fmod(v9, 6.28318531) + 6.28318531)];
      [v4 setToValue:v10];

      [v4 setRemovedOnCompletion:0];
      LODWORD(v11) = 2139095040;
      [v4 setRepeatCount:v11];
      [v4 setFillMode:kCAFillModeBoth];
      [v4 setDuration:1.0];
      [v4 setBeginTimeMode:kCAAnimationAbsolute];
      v12 = CACurrentMediaTime();
      [v4 duration];
      [v4 setBeginTime:{(v12 - fmod(v12, v13))}];
      [layer addAnimation:v4 forKey:@"_MusicLibraryAddKeepLocalControlWaitingSpinnerAnimationKey"];
    }

    else
    {
      [layer removeAnimationForKey:@"_MusicLibraryAddKeepLocalControlWaitingSpinnerAnimationKey"];
    }
  }
}

- (MusicLibraryAddKeepLocalControlStatus)controlStatus
{
  p_controlStatus = &self->_controlStatus;
  statusType = self->_controlStatus.statusType;
  downloadProgress = p_controlStatus->downloadProgress;
  result.downloadProgress = downloadProgress;
  result.statusType = statusType;
  return result;
}

- (UIEdgeInsets)controlImageEdgeInsets
{
  top = self->_controlImageEdgeInsets.top;
  left = self->_controlImageEdgeInsets.left;
  bottom = self->_controlImageEdgeInsets.bottom;
  right = self->_controlImageEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end