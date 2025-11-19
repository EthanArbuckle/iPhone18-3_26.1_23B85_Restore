@interface MusicLibraryAddKeepLocalControl
+ (CGSize)_expectedSizeForControlStatusType:(int64_t)a3 controlTitle:(id)a4 hasControlImage:(BOOL)a5 displayScale:(double)a6 preferredHeight:(double)a7;
+ (id)_controlTitleFontForControlStatusType:(int64_t)a3;
+ (id)_newControlTitleLabel;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)maximumSizeWithPreferredHeight:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MusicLibraryAddKeepLocalControl)initWithFrame:(CGRect)a3;
- (MusicLibraryAddKeepLocalControlStatus)controlStatus;
- (UIEdgeInsets)controlImageEdgeInsets;
- (id)_centerImageForDownloading;
- (id)_centerImageForPausedDownload;
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
- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3;
- (void)setAllowsAddImage:(BOOL)a3;
- (void)setContentHorizontalAlignment:(int64_t)a3;
- (void)setControlStatus:(MusicLibraryAddKeepLocalControlStatus)a3 animated:(BOOL)a4;
- (void)setDisplayStyle:(int64_t)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setTitle:(id)a3 forControlStatusType:(int64_t)a4;
- (void)tintColorDidChange;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MusicLibraryAddKeepLocalControl

- (MusicLibraryAddKeepLocalControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MusicLibraryAddKeepLocalControl;
  v3 = [(MusicLibraryAddKeepLocalControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if ([(MusicLibraryAddKeepLocalControl *)self pointInside:a4 withEvent:a3.x, a3.y]&& [(MusicLibraryAddKeepLocalControl *)self isEnabled])
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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

- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3
{
  if (self->_adjustsFontSizeToFitWidth != a3)
  {
    self->_adjustsFontSizeToFitWidth = a3;
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
  v11 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
  [v11 displayScale];
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

  v21 = [(MusicLibraryAddKeepLocalControl *)self contentHorizontalAlignment];
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
    v29 = [(UILabel *)self->_controlTitleLabel text];
    v30 = [v29 length];

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
      if (v21 == &dword_0 + 2)
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
        if (v21 == &dword_0 + 1)
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
      if (v21 == &dword_0 + 2)
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

      else if (v21 == &dword_0 + 1)
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
    v47 = [(UILabel *)self->_controlTitleLabel text];
    v48 = [v47 length];

    if (v48)
    {
      if (v21 == &dword_0 + 2)
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

      else if (v21 == &dword_0 + 1)
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
  if (v21 == &dword_0 + 2)
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
    if (v21 != &dword_0 + 1)
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

- (CGSize)maximumSizeWithPreferredHeight:(double)a3
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
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = objc_opt_class();
  statusType = self->_controlStatus.statusType;
  v6 = [(MusicLibraryAddKeepLocalControl *)self titleForControlStatusType:statusType];
  v7 = self->_allowsAddImage || self->_controlStatus.statusType != 1;
  v8 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
  [v8 displayScale];
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
  v3 = [(MusicLibraryAddKeepLocalControl *)self tintColor];
  if (self->_displayStyle == 1)
  {
    [(UIView *)self->_backgroundView setBackgroundColor:v3];
  }

  [(MusicLibraryAddKeepLocalControl *)self _updateControlTitleLabelVisualProperties];
  if (self->_controlStatus.statusType == 2)
  {
    [(MusicLibraryAddKeepLocalControl *)self _updateControlStatusProperties];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v10 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];
  v6 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  v8 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
  v9 = v8;
  if (v5 != v7 || ([v8 displayScale], objc_msgSend(v4, "displayScale"), (MTMPUFloatEqualToFloat() & 1) == 0))
  {
    [(MusicLibraryAddKeepLocalControl *)self _updateControlStatusProperties];
  }
}

- (void)setContentHorizontalAlignment:(int64_t)a3
{
  v5 = [(MusicLibraryAddKeepLocalControl *)self contentHorizontalAlignment];
  v6.receiver = self;
  v6.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v6 setContentHorizontalAlignment:a3];
  if (v5 != [(MusicLibraryAddKeepLocalControl *)self contentHorizontalAlignment])
  {
    [(MusicLibraryAddKeepLocalControl *)self setNeedsLayout];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v5 touchesCancelled:a3 withEvent:a4];
  self->_hadFirstTouchHighlight = 0;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v5 touchesEnded:a3 withEvent:a4];
  self->_hadFirstTouchHighlight = 0;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(MusicLibraryAddKeepLocalControl *)self isHighlighted];
  v12.receiver = self;
  v12.super_class = MusicLibraryAddKeepLocalControl;
  [(MusicLibraryAddKeepLocalControl *)&v12 setHighlighted:v3];
  v6 = [(MusicLibraryAddKeepLocalControl *)self isHighlighted];
  if (v5 != v6)
  {
    v7 = v6;
    v8 = 1.0;
    if (v6)
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

- (void)setAllowsAddImage:(BOOL)a3
{
  if (self->_allowsAddImage != a3)
  {
    self->_allowsAddImage = a3;
    if (self->_controlStatus.statusType == 1)
    {
      [(MusicLibraryAddKeepLocalControl *)self _updateControlStatusProperties];
    }
  }
}

- (void)setDisplayStyle:(int64_t)a3
{
  if (self->_displayStyle != a3)
  {
    self->_displayStyle = a3;
    [(MusicLibraryAddKeepLocalControl *)self _updateControlStatusProperties];

    [(MusicLibraryAddKeepLocalControl *)self _updateControlTitleLabelVisualProperties];
  }
}

- (void)setControlStatus:(MusicLibraryAddKeepLocalControlStatus)a3 animated:(BOOL)a4
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
        v18 = (statusType & 0xFFFFFFFFFFFFFFFELL) != 4 || !v4;
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
  if (v4)
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

- (void)setTitle:(id)a3 forControlStatusType:(int64_t)a4
{
  v11 = a3;
  v6 = [NSNumber numberWithInteger:a4];
  controlStatusTypeToTitle = self->_controlStatusTypeToTitle;
  if (v11)
  {
    if (!controlStatusTypeToTitle)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
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
    [(MusicLibraryAddKeepLocalControl *)self _updateControlStatusProperties];
  }
}

- (id)titleForControlStatusType:(int64_t)a3
{
  controlStatusTypeToTitle = self->_controlStatusTypeToTitle;
  v4 = [NSNumber numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)controlStatusTypeToTitle objectForKey:v4];

  return v5;
}

+ (CGSize)_expectedSizeForControlStatusType:(int64_t)a3 controlTitle:(id)a4 hasControlImage:(BOOL)a5 displayScale:(double)a6 preferredHeight:(double)a7
{
  v8 = a5;
  v11 = a4;
  v12 = v11;
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (a3)
  {
    if ([v11 length])
    {
      v15 = [a1 _newControlTitleLabel];
      v16 = [a1 _controlTitleFontForControlStatusType:a3];
      [v15 setFont:v16];

      [v15 setText:v12];
      v17 = [v15 font];
      [v15 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      MTMPUFloatCeilForScale();
      if (v8)
      {
        width = CGSizeZero.width + v18 + 0.0 + 6.0 + 28.0;
        [v17 lineHeight];
        v20 = v19;
        [v17 ascender];
        v22 = v20 - v21;
        [v17 descender];
        height = fmax(v22 + v23 + 16.0, 28.0);
      }

      else
      {
        width = CGSizeZero.width + v18 + 32.0;
      }

      if (height <= a7)
      {
        height = a7;
      }
    }

    else
    {
      if (a7 >= 28.0)
      {
        height = a7;
      }

      else
      {
        height = 28.0;
      }

      width = height;
    }
  }

  v24 = width;
  v25 = height;
  result.height = v25;
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

+ (id)_controlTitleFontForControlStatusType:(int64_t)a3
{
  if (a3 == 6)
  {
    v3 = [UIFont boldSystemFontOfSize:11.0];
  }

  else
  {
    v4 = [MTMPUFontDescriptor fontDescriptorWithTextStyle:2 weight:4];
    v3 = [v4 defaultFont];
  }

  return v3;
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
    v7 = [(MusicLibraryAddKeepLocalControl *)self subviews];
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
  v10 = [(UIView *)self->_backgroundView layer];
  [v10 setCornerRadius:v9];
}

- (id)_centerImageForDownloading
{
  v3 = [(MusicLibraryAddKeepLocalControl *)self downloadingCenterIconType];
  if (v3 == 1)
  {
    v4 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
    v5 = [MusicAppTheme pauseButtonImageWithTraitCollection:v4];
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
    v5 = [MusicAppTheme stopButtonImageWithTraitCollection:v4];
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
  v2 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
  v3 = [MusicAppTheme resumeButtonImageWithTraitCollection:v2];

  v4 = [v3 imageWithRenderingMode:2];

  return v4;
}

- (void)_updateControlStatusProperties
{
  v3 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
  [v3 displayScale];

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

      v9 = [(MusicLibraryAddKeepLocalControl *)self _currentContentSuperview];
      [v9 addSubview:self->_downloadProgressView];
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
        v16 = [(MusicLibraryAddKeepLocalControl *)self tintColor];
        [(UIView *)v15 setBackgroundColor:v16];

        [(UIView *)self->_backgroundView setClipsToBounds:1];
        [(MusicLibraryAddKeepLocalControl *)self _updateBackgroundViewCornerRadius];
        v17 = [(MusicLibraryAddKeepLocalControl *)self _currentContentSuperview];
        [v17 insertSubview:self->_backgroundView atIndex:0];
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

        v25 = [(MusicLibraryAddKeepLocalControl *)self tintColor];
        v26 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
        v27 = [MusicAppTheme cloudDownloadImageForTintColor:v25 pointSize:v26 traitCollection:v24];

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

      v29 = [(MusicLibraryAddKeepLocalControl *)self traitCollection];
      v27 = [MusicAppTheme addButtonImageWithPointSize:v29 traitCollection:v28];

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

      v37 = [(MusicLibraryAddKeepLocalControl *)self _currentContentSuperview];
      [v37 addSubview:self->_controlImageView];

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
      v41 = [objc_opt_class() _newControlTitleLabel];
      v42 = self->_controlTitleLabel;
      self->_controlTitleLabel = v41;

      v43 = [(MusicLibraryAddKeepLocalControl *)self _currentContentSuperview];
      [v43 addSubview:self->_controlTitleLabel];
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
    v14 = [(UIImageView *)controlImageView layer];
    if (self->_controlStatus.statusType == 3)
    {
      v4 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
      v5 = [v14 presentationLayer];
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = v14;
      }

      v7 = [v4 keyPath];
      v8 = [v6 valueForKeyPath:v7];

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
      [v14 addAnimation:v4 forKey:@"_MusicLibraryAddKeepLocalControlWaitingSpinnerAnimationKey"];
    }

    else
    {
      [v14 removeAnimationForKey:@"_MusicLibraryAddKeepLocalControlWaitingSpinnerAnimationKey"];
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