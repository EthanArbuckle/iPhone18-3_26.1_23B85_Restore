@interface ConversationHeaderView
- (CGAffineTransform)_transformForLocation:(SEL)a3;
- (CGPoint)previousScrollViewContentOffset;
- (ConversationHeaderView)initWithFrame:(CGRect)a3;
- (ConversationHeaderViewDelegate)delegate;
- (MFMessageDisplayMetrics)displayMetrics;
- (UIScrollView)hostScrollView;
- (void)_displayLinkDidFire:(id)a3;
- (void)_fontMetricCacheDidInvalidate:(id)a3;
- (void)_layoutLabelsForProgress:(double)a3;
- (void)_processProgressUpdatesWithTargetTimestamp:(double)a3;
- (void)_updateContentWidthIfNecessaryWithBounds:(CGRect)a3;
- (void)contentDidChange;
- (void)dealloc;
- (void)hostScrollViewWillBeginDragging:(id)a3;
- (void)hostScrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)performTransition:(int64_t)a3 willBeDisplayed:(BOOL)a4;
- (void)resetStateBasedOnCurrentStickySubjectPosition;
- (void)safeAreaInsetsDidChange;
- (void)setBounds:(CGRect)a3;
- (void)setCollapsed:(BOOL)a3 animated:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSuperTitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionCompleted:(int64_t)a3 willBeDisplayed:(BOOL)a4;
- (void)transitionWillBegin:(int64_t)a3 willBeDisplayed:(BOOL)a4;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation ConversationHeaderView

- (ConversationHeaderView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = ConversationHeaderView;
  v3 = [(ConversationHeaderView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ConversationHeaderView *)v3 setAutoresizingMask:2];
    [(ConversationHeaderView *)v4 setHideStandardTitle:1];
    [(ConversationHeaderView *)v4 setInitialScrollPosition:1.79769313e308];
    sub_100050B34(v4);
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_fontMetricCacheDidInvalidate:" name:MFFontMetricCacheInvalidationNotification object:0];

    [(ConversationHeaderView *)v4 setInsetsLayoutMarginsFromSafeArea:0];
  }

  return v4;
}

- (void)dealloc
{
  if (_UIUpdateCycleEnabled() && self->_updateSequenceItem)
  {
    _UIUpdateSequenceRemoveItem();
    self->_updateSequenceItem = 0;
  }

  v3.receiver = self;
  v3.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  objc_storeWeak(&self->_delegate, v5);
  v4 = [v5 hostScrollViewForConversationHeaderView:self];
  [(ConversationHeaderView *)self setHostScrollView:v4];
}

- (void)_fontMetricCacheDidInvalidate:(id)a3
{
  sub_100050E9C(self);

  [(ConversationHeaderView *)self setNeedsLayout];
}

- (void)setSuperTitle:(id)a3
{
  v10 = a3;
  if (([v10 isEqualToString:self->_superTitle] & 1) == 0)
  {
    v4 = [v10 copy];
    superTitle = self->_superTitle;
    self->_superTitle = v4;

    [(ConversationHeaderView *)self bounds];
    sub_1000513A4(self, v6, v7, v8, v9);
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v8 setBounds:?];
  [(ConversationHeaderView *)self _updateContentWidthIfNecessaryWithBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6.receiver = self;
  v6.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v6 setFrame:a3.origin.x, a3.origin.y];
  [(ConversationHeaderView *)self _updateContentWidthIfNecessaryWithBounds:0.0, 0.0, width, height];
}

- (void)_updateContentWidthIfNecessaryWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3);
  v9 = [(ConversationHeaderView *)self contentView];
  [v9 bounds];
  v10 = v8 - CGRectGetWidth(v15);
  if (v10 >= 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = -v10;
  }

  if (v11 >= 2.22044605e-16)
  {
    v12 = [(ConversationHeaderView *)self contentView];
    [v12 setContentWidth:v8];

    v13 = [(ConversationHeaderView *)self contentView];
    [v13 invalidateIntrinsicContentSize];

    sub_1000513A4(self, x, y, width, height);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v3 layoutSubviews];
  sub_100051E28(self);
  [(ConversationHeaderView *)self currentProgress];
  [(ConversationHeaderView *)self _layoutLabelsForProgress:?];
}

- (void)_layoutLabelsForProgress:(double)a3
{
  v5 = [(ConversationHeaderView *)self contentView];
  [v5 setAlpha:a3];

  v6 = [(ConversationHeaderView *)self contentView];
  [v6 topToFirstBaseline];
  v8 = v7;
  [(ConversationHeaderView *)self contentViewTopToFirstBaseline];
  v9 = 1.0 - a3;
  v11 = v8 - v10;

  *&v12 = -1;
  *(&v12 + 1) = -1;
  *&v35.c = v12;
  *&v35.tx = v12;
  *&v35.a = v12;
  CGAffineTransformMakeTranslation(&v35, v9 * 0.0, -(v11 * v9));
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *&v33.c = v13;
  *&v33.tx = v13;
  *&v33.a = v13;
  v34 = v35;
  CGAffineTransformScale(&v33, &v34, v9 * -0.0 + 1.0, v9 * -0.0 + 1.0);
  v32 = v33;
  v14 = [(ConversationHeaderView *)self contentView];
  v35 = v32;
  [v14 setTransform:&v35];

  v15 = +[UIApplication sharedApplication];
  v16 = [v15 preferredContentSizeCategory];
  v17 = UIContentSizeCategoryCompareToCategory(v16, UIContentSizeCategoryLarge);

  if (v17 == NSOrderedDescending)
  {
    v18 = 14.0;
  }

  else
  {
    v18 = 11.0;
  }

  if (v17 == NSOrderedDescending)
  {
    v19 = 21.0;
  }

  else
  {
    v19 = 17.0;
  }

  v20 = [(ConversationHeaderView *)self displayMetrics];
  [v20 conversationHeaderViewCollapsedSuperTitleTopToFirstBaseline];
  v22 = v21;
  [v20 conversationHeaderViewCollapsedTitleTopToFirstBaseline];
  *&v24 = -1;
  *(&v24 + 1) = -1;
  *&v35.c = v24;
  *&v35.tx = v24;
  *&v35.a = v24;
  CGAffineTransformMakeTranslation(&v35, 0.0, (v22 - v23 + 3.0) * a3);
  v34 = v35;
  CGAffineTransformScale(&v31, &v34, 1.0 - (1.0 - v18 / v19) * a3, 1.0 - (1.0 - v18 / v19) * a3);
  v25 = [(ConversationHeaderView *)self superTitleLabel];
  v34 = v31;
  [v25 setTransform:&v34];

  v26 = +[UIColor labelColor];
  v27 = +[UIColor secondaryLabelColor];
  *&v28 = a3;
  v29 = [UIColor mf_colorFromColor:v26 toColor:v27 progress:v28];
  v30 = [(ConversationHeaderView *)self superTitleLabel];
  [v30 setColor:v29];
}

- (void)setCollapsed:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  kdebug_trace();
  v7 = 0.0;
  if (v5)
  {
    v7 = 1.0;
  }

  [(ConversationHeaderView *)self setTargetProgress:v7];
  [(ConversationHeaderView *)self setCollapsed:v5];
  if (!a4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100052470;
    v8[3] = &unk_10064C7E8;
    v8[4] = self;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)resetStateBasedOnCurrentStickySubjectPosition
{
  v3 = [(ConversationHeaderView *)self delegate];
  v7 = [v3 hostScrollViewForConversationHeaderView:self];

  [v7 contentOffset];
  v5 = v4;
  v6 = v4 + sub_1000525A0(self, v7) >= 0.0 || v5 < sub_100052654(self);
  [(ConversationHeaderView *)self setCollapsed:v6 animated:1];
}

- (void)hostScrollViewWillBeginDragging:(id)a3
{
  v7 = a3;
  [v7 contentOffset];
  [(ConversationHeaderView *)self setInitialScrollPosition:v4];
  [(ConversationHeaderView *)self targetProgress];
  v6 = v5;
  [(ConversationHeaderView *)self setCurrentProgress:?];
  [(ConversationHeaderView *)self setPreviousProgress:v6];
}

- (void)hostScrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v15 = a3;
  v7 = sub_1000525A0(self, v15);
  v8 = sub_100052308(self);
  y = a5->y;
  v10 = sub_100052654(self);
  [(ConversationHeaderView *)self isCollapsed];
  v11 = v7 + y;
  if (v7 + y < 0.0 || v11 > v8)
  {
    if (v11 >= 0.0 || a5->y < v10)
    {
      goto LABEL_11;
    }

    v13 = 0;
  }

  else
  {
    a5->x = 0.0;
    if (v11 / v8 > 0.5)
    {
      a5->y = v8 - v7;
LABEL_11:
      v14 = 1.0;
      v13 = 1;
      goto LABEL_14;
    }

    v13 = 0;
    a5->y = -v7;
  }

  v14 = 0.0;
LABEL_14:
  [(ConversationHeaderView *)self setTargetProgress:v14];
  [(ConversationHeaderView *)self setInitialScrollPosition:1.79769313e308];
  [(ConversationHeaderView *)self setCollapsed:v13];
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v19 willMoveToSuperview:v4];
  v5 = [(ConversationHeaderView *)self displayLink];
  [v5 invalidate];

  [(ConversationHeaderView *)self setDisplayLink:0];
  if (_UIUpdateCycleEnabled() && self->_updateSequenceItem)
  {
    _UIUpdateSequenceRemoveItem();
    self->_updateSequenceItem = 0;
  }

  if (v4)
  {
    [(ConversationHeaderView *)self setLastUpdateTimeInterval:CACurrentMediaTime()];
    v6 = [CADisplayLink displayLinkWithTarget:self selector:"_displayLinkDidFire:"];
    [(ConversationHeaderView *)self setDisplayLink:v6];

    v20 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
    minimum = v20.minimum;
    maximum = v20.maximum;
    preferred = v20.preferred;
    v10 = [(ConversationHeaderView *)self displayLink];
    *&v11 = minimum;
    *&v12 = maximum;
    *&v13 = preferred;
    [v10 setPreferredFrameRateRange:{v11, v12, v13}];

    v14 = [(ConversationHeaderView *)self displayLink];
    [v14 setHighFrameRateReason:1245185];

    v15 = [(ConversationHeaderView *)self displayLink];
    v16 = +[NSRunLoop mainRunLoop];
    [v15 addToRunLoop:v16 forMode:NSRunLoopCommonModes];

    if (_UIUpdateCycleEnabled())
    {
      objc_initWeak(&location, self);
      objc_copyWeak(&v17, &location);
      self->_updateSequenceItem = _UIUpdateSequenceInsertItem();
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_displayLinkDidFire:(id)a3
{
  v4 = a3;
  if ((_UIUpdateCycleEnabled() & 1) == 0)
  {
    [v4 targetTimestamp];
    [(ConversationHeaderView *)self _processProgressUpdatesWithTargetTimestamp:?];
  }
}

- (void)_processProgressUpdatesWithTargetTimestamp:(double)a3
{
  v5 = sub_100052308(self);
  v45 = [(ConversationHeaderView *)self hostScrollView];
  [(ConversationHeaderView *)self targetProgress];
  v7 = v6;
  [(ConversationHeaderView *)self currentProgress];
  v9 = v8;
  [(ConversationHeaderView *)self previousProgress];
  v44 = v10;
  v11 = [v45 isTracking];
  [v45 contentOffset];
  v13 = v12;
  v15 = v14;
  [(ConversationHeaderView *)self previousScrollViewContentOffset];
  v17 = v16;
  v19 = v18;
  v20 = [v45 isDecelerating];
  v21 = v15 != v19 || v13 != v17;
  if (v9 - v7 >= 0.0)
  {
    v22 = v9 - v7;
  }

  else
  {
    v22 = -(v9 - v7);
  }

  [(ConversationHeaderView *)self lastUpdateTimeInterval];
  v24 = v23;
  [(ConversationHeaderView *)self setLastUpdateTimeInterval:a3];
  v25 = (v11 | ~v20) & v21;
  if (v5 <= 0.00000011920929)
  {
    v25 = 0;
  }

  if (v25 != 1)
  {
    if (v22 < 2.22044605e-16)
    {
      goto LABEL_44;
    }

    v35 = v7 - v9;
    goto LABEL_35;
  }

  [v45 contentOffset];
  [(ConversationHeaderView *)self setPreviousScrollViewContentOffset:?];
  [v45 contentOffset];
  v27 = v26 + sub_1000525A0(self, v45);
  if (v27 >= v5)
  {
    v28 = v7;
    if ([(ConversationHeaderView *)self isCollapsed])
    {
      goto LABEL_14;
    }

    [v45 contentOffset];
    v30 = v29;
    [(ConversationHeaderView *)self initialScrollPosition];
    v27 = v30 - v31;
  }

  v28 = fmax(fmin(v27 / v5, 1.0), 0.0);
LABEL_14:
  if (v11)
  {
    [v45 _verticalVelocity];
    if (v7 >= v28)
    {
      v33 = v7;
    }

    else
    {
      v33 = v28;
    }

    if (v7 >= v28)
    {
      v34 = v28;
    }

    else
    {
      v34 = v7;
    }

    if (v32 < 0.0)
    {
      v7 = v34;
    }

    else
    {
      v7 = v33;
    }
  }

  else
  {
    [(ConversationHeaderView *)self targetProgress];
    if (v36 >= v28)
    {
      v7 = v28;
    }

    else
    {
      v7 = v36;
    }
  }

  v35 = v7 - v9;
  v37 = -(v7 - v9);
  if (v7 - v9 >= 0.0)
  {
    v37 = v7 - v9;
  }

  if (v37 >= 2.22044605e-16 || v22 >= 2.22044605e-16)
  {
LABEL_35:
    v39 = (a3 - v24) * ((v44 - v9) / (a3 - v24) + ((v44 - v9) / (a3 - v24) * (1.0 / (a3 - v24) * -0.833333313) + 1.0 / (a3 - v24) * 15.0 * v35) * (a3 - v24));
    v40 = -v39;
    if (v39 >= 0.0)
    {
      v40 = v39;
    }

    v41 = v7;
    if (v40 >= 0.00000011920929)
    {
      if (![v45 isTracking])
      {
        goto LABEL_42;
      }

      v42 = v9 - v7;
      if (v9 - v7 < 0.0)
      {
        v42 = -(v9 - v7);
      }

      v41 = v7;
      if (v42 >= 0.05)
      {
LABEL_42:
        v41 = v9 + v39;
      }
    }

    sub_100051F20(self);
    [(ConversationHeaderView *)self setPreviousProgress:v9];
    v43 = fmax(fmin(v41, 1.0), 0.0);
    [(ConversationHeaderView *)self setCurrentProgress:v43];
    [(ConversationHeaderView *)self setTargetProgress:v7];
    [(ConversationHeaderView *)self _layoutLabelsForProgress:v43];
  }

LABEL_44:
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  if (([v7 isEqualToString:self->_title] & 1) == 0)
  {
    v4 = [v7 copy];
    title = self->_title;
    self->_title = v4;

    v6 = [(ConversationHeaderView *)self contentView];
    [v6 setText:self->_title];
  }
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v3 layoutMarginsDidChange];
  sub_100051E28(self);
}

- (void)contentDidChange
{
  v4.receiver = self;
  v4.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v4 contentDidChange];
  v3 = [(ConversationHeaderView *)self window];

  if (v3)
  {
    sub_100051E28(self);
  }
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v3 safeAreaInsetsDidChange];
  [(ConversationHeaderView *)self setDisplayMetrics:0];
  sub_100050E9C(self);
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v6 traitCollectionDidChange:v4];
  [(ConversationHeaderView *)self setDisplayMetrics:0];
  v5 = +[MFFontMetricCache sharedFontMetricCache];
  [v5 ensureCacheIsValid];

  sub_100050E9C(self);
}

- (MFMessageDisplayMetrics)displayMetrics
{
  displayMetrics = self->_displayMetrics;
  if (!displayMetrics)
  {
    v4 = [(ConversationHeaderView *)self traitCollection];
    [(ConversationHeaderView *)self layoutMargins];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(ConversationHeaderView *)self safeAreaInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(ConversationHeaderView *)self window];
    v22 = [v21 windowScene];
    v23 = +[MFMessageDisplayMetrics displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:](MFMessageDisplayMetrics, "displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:", v4, [v22 interfaceOrientation], v6, v8, v10, v12, v14, v16, v18, v20);
    v24 = self->_displayMetrics;
    self->_displayMetrics = v23;

    displayMetrics = self->_displayMetrics;
  }

  return displayMetrics;
}

- (void)transitionWillBegin:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v5 = 1.0;
  v6 = 1;
  v7 = 2;
  if (a3)
  {
    v7 = 0;
  }

  if (a3 != 1)
  {
    v6 = v7;
  }

  if (a4)
  {
    v5 = 0.0;
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  [(ConversationHeaderView *)self setAlpha:v5, 0.0];
  [(ConversationHeaderView *)self _transformForLocation:v8];
  v9[0] = v9[3];
  v9[1] = v9[4];
  v9[2] = v9[5];
  [(ConversationHeaderView *)self setTransform:v9];
}

- (void)performTransition:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v5 = 1.0;
  v6 = 2;
  if (a3 != 1)
  {
    v6 = a3 == 0;
  }

  if (a4)
  {
    v7 = 0;
  }

  else
  {
    v5 = 0.0;
    v7 = v6;
  }

  [(ConversationHeaderView *)self setAlpha:v5, 0.0];
  [(ConversationHeaderView *)self _transformForLocation:v7];
  v8[0] = v8[3];
  v8[1] = v8[4];
  v8[2] = v8[5];
  [(ConversationHeaderView *)self setTransform:v8];
}

- (void)transitionCompleted:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v5 = *&CGAffineTransformIdentity.c;
  v6[0] = *&CGAffineTransformIdentity.a;
  v6[1] = v5;
  v6[2] = *&CGAffineTransformIdentity.tx;
  [(ConversationHeaderView *)self setTransform:v6, a4];
  [(ConversationHeaderView *)self setAlpha:1.0];
}

- (CGAffineTransform)_transformForLocation:(SEL)a3
{
  if (a4 == 2)
  {
    if (![(ConversationHeaderView *)self mf_prefersRightToLeftInterfaceLayout])
    {
      [(ConversationHeaderView *)self bounds];
      Width = CGRectGetWidth(v23);
      [(ConversationHeaderView *)self layoutMargins];
      v9 = v16;
      v10 = [(ConversationHeaderView *)self superTitleLabel];
      [v10 frame];
      MinX = CGRectGetMinX(v24);
      goto LABEL_10;
    }

    [(ConversationHeaderView *)self layoutMargins];
    v13 = v12;
    v10 = [(ConversationHeaderView *)self superTitleLabel];
    [v10 frame];
    MaxX = CGRectGetMaxX(v21);
  }

  else
  {
    v6 = 0.0;
    if (a4 != 1)
    {
      goto LABEL_12;
    }

    if ([(ConversationHeaderView *)self mf_prefersRightToLeftInterfaceLayout])
    {
      [(ConversationHeaderView *)self bounds];
      Width = CGRectGetWidth(v19);
      [(ConversationHeaderView *)self layoutMargins];
      v9 = v8;
      v10 = [(ConversationHeaderView *)self superTitleLabel];
      [v10 frame];
      MinX = CGRectGetMaxX(v20);
LABEL_10:
      v6 = Width - v9 - MinX;
      goto LABEL_11;
    }

    [(ConversationHeaderView *)self layoutMargins];
    v13 = v15;
    v10 = [(ConversationHeaderView *)self superTitleLabel];
    [v10 frame];
    MaxX = CGRectGetMinX(v22);
  }

  v6 = v13 - MaxX;
LABEL_11:

LABEL_12:

  return CGAffineTransformMakeTranslation(retstr, v6, 0.0);
}

- (ConversationHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIScrollView)hostScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostScrollView);

  return WeakRetained;
}

- (CGPoint)previousScrollViewContentOffset
{
  x = self->_previousScrollViewContentOffset.x;
  y = self->_previousScrollViewContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end