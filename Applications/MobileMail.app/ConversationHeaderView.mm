@interface ConversationHeaderView
- (CGAffineTransform)_transformForLocation:(SEL)location;
- (CGPoint)previousScrollViewContentOffset;
- (ConversationHeaderView)initWithFrame:(CGRect)frame;
- (ConversationHeaderViewDelegate)delegate;
- (MFMessageDisplayMetrics)displayMetrics;
- (UIScrollView)hostScrollView;
- (void)_displayLinkDidFire:(id)fire;
- (void)_fontMetricCacheDidInvalidate:(id)invalidate;
- (void)_layoutLabelsForProgress:(double)progress;
- (void)_processProgressUpdatesWithTargetTimestamp:(double)timestamp;
- (void)_updateContentWidthIfNecessaryWithBounds:(CGRect)bounds;
- (void)contentDidChange;
- (void)dealloc;
- (void)hostScrollViewWillBeginDragging:(id)dragging;
- (void)hostScrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)performTransition:(int64_t)transition willBeDisplayed:(BOOL)displayed;
- (void)resetStateBasedOnCurrentStickySubjectPosition;
- (void)safeAreaInsetsDidChange;
- (void)setBounds:(CGRect)bounds;
- (void)setCollapsed:(BOOL)collapsed animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
- (void)setSuperTitle:(id)title;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionCompleted:(int64_t)completed willBeDisplayed:(BOOL)displayed;
- (void)transitionWillBegin:(int64_t)begin willBeDisplayed:(BOOL)displayed;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation ConversationHeaderView

- (ConversationHeaderView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = ConversationHeaderView;
  v3 = [(ConversationHeaderView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v4 = [delegateCopy hostScrollViewForConversationHeaderView:self];
  [(ConversationHeaderView *)self setHostScrollView:v4];
}

- (void)_fontMetricCacheDidInvalidate:(id)invalidate
{
  sub_100050E9C(self);

  [(ConversationHeaderView *)self setNeedsLayout];
}

- (void)setSuperTitle:(id)title
{
  titleCopy = title;
  if (([titleCopy isEqualToString:self->_superTitle] & 1) == 0)
  {
    v4 = [titleCopy copy];
    superTitle = self->_superTitle;
    self->_superTitle = v4;

    [(ConversationHeaderView *)self bounds];
    sub_1000513A4(self, v6, v7, v8, v9);
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8.receiver = self;
  v8.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v8 setBounds:?];
  [(ConversationHeaderView *)self _updateContentWidthIfNecessaryWithBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v6.receiver = self;
  v6.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v6 setFrame:frame.origin.x, frame.origin.y];
  [(ConversationHeaderView *)self _updateContentWidthIfNecessaryWithBounds:0.0, 0.0, width, height];
}

- (void)_updateContentWidthIfNecessaryWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = CGRectGetWidth(bounds);
  contentView = [(ConversationHeaderView *)self contentView];
  [contentView bounds];
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
    contentView2 = [(ConversationHeaderView *)self contentView];
    [contentView2 setContentWidth:v8];

    contentView3 = [(ConversationHeaderView *)self contentView];
    [contentView3 invalidateIntrinsicContentSize];

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

- (void)_layoutLabelsForProgress:(double)progress
{
  contentView = [(ConversationHeaderView *)self contentView];
  [contentView setAlpha:progress];

  contentView2 = [(ConversationHeaderView *)self contentView];
  [contentView2 topToFirstBaseline];
  v8 = v7;
  [(ConversationHeaderView *)self contentViewTopToFirstBaseline];
  v9 = 1.0 - progress;
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
  contentView3 = [(ConversationHeaderView *)self contentView];
  v35 = v32;
  [contentView3 setTransform:&v35];

  v15 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v15 preferredContentSizeCategory];
  v17 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryLarge);

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

  displayMetrics = [(ConversationHeaderView *)self displayMetrics];
  [displayMetrics conversationHeaderViewCollapsedSuperTitleTopToFirstBaseline];
  v22 = v21;
  [displayMetrics conversationHeaderViewCollapsedTitleTopToFirstBaseline];
  *&v24 = -1;
  *(&v24 + 1) = -1;
  *&v35.c = v24;
  *&v35.tx = v24;
  *&v35.a = v24;
  CGAffineTransformMakeTranslation(&v35, 0.0, (v22 - v23 + 3.0) * progress);
  v34 = v35;
  CGAffineTransformScale(&v31, &v34, 1.0 - (1.0 - v18 / v19) * progress, 1.0 - (1.0 - v18 / v19) * progress);
  superTitleLabel = [(ConversationHeaderView *)self superTitleLabel];
  v34 = v31;
  [superTitleLabel setTransform:&v34];

  v26 = +[UIColor labelColor];
  v27 = +[UIColor secondaryLabelColor];
  *&v28 = progress;
  v29 = [UIColor mf_colorFromColor:v26 toColor:v27 progress:v28];
  superTitleLabel2 = [(ConversationHeaderView *)self superTitleLabel];
  [superTitleLabel2 setColor:v29];
}

- (void)setCollapsed:(BOOL)collapsed animated:(BOOL)animated
{
  collapsedCopy = collapsed;
  kdebug_trace();
  v7 = 0.0;
  if (collapsedCopy)
  {
    v7 = 1.0;
  }

  [(ConversationHeaderView *)self setTargetProgress:v7];
  [(ConversationHeaderView *)self setCollapsed:collapsedCopy];
  if (!animated)
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
  delegate = [(ConversationHeaderView *)self delegate];
  v7 = [delegate hostScrollViewForConversationHeaderView:self];

  [v7 contentOffset];
  v5 = v4;
  v6 = v4 + sub_1000525A0(self, v7) >= 0.0 || v5 < sub_100052654(self);
  [(ConversationHeaderView *)self setCollapsed:v6 animated:1];
}

- (void)hostScrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  [draggingCopy contentOffset];
  [(ConversationHeaderView *)self setInitialScrollPosition:v4];
  [(ConversationHeaderView *)self targetProgress];
  v6 = v5;
  [(ConversationHeaderView *)self setCurrentProgress:?];
  [(ConversationHeaderView *)self setPreviousProgress:v6];
}

- (void)hostScrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  v7 = sub_1000525A0(self, draggingCopy);
  v8 = sub_100052308(self);
  y = offset->y;
  v10 = sub_100052654(self);
  [(ConversationHeaderView *)self isCollapsed];
  v11 = v7 + y;
  if (v7 + y < 0.0 || v11 > v8)
  {
    if (v11 >= 0.0 || offset->y < v10)
    {
      goto LABEL_11;
    }

    v13 = 0;
  }

  else
  {
    offset->x = 0.0;
    if (v11 / v8 > 0.5)
    {
      offset->y = v8 - v7;
LABEL_11:
      v14 = 1.0;
      v13 = 1;
      goto LABEL_14;
    }

    v13 = 0;
    offset->y = -v7;
  }

  v14 = 0.0;
LABEL_14:
  [(ConversationHeaderView *)self setTargetProgress:v14];
  [(ConversationHeaderView *)self setInitialScrollPosition:1.79769313e308];
  [(ConversationHeaderView *)self setCollapsed:v13];
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  v19.receiver = self;
  v19.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v19 willMoveToSuperview:superviewCopy];
  displayLink = [(ConversationHeaderView *)self displayLink];
  [displayLink invalidate];

  [(ConversationHeaderView *)self setDisplayLink:0];
  if (_UIUpdateCycleEnabled() && self->_updateSequenceItem)
  {
    _UIUpdateSequenceRemoveItem();
    self->_updateSequenceItem = 0;
  }

  if (superviewCopy)
  {
    [(ConversationHeaderView *)self setLastUpdateTimeInterval:CACurrentMediaTime()];
    v6 = [CADisplayLink displayLinkWithTarget:self selector:"_displayLinkDidFire:"];
    [(ConversationHeaderView *)self setDisplayLink:v6];

    v20 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
    minimum = v20.minimum;
    maximum = v20.maximum;
    preferred = v20.preferred;
    displayLink2 = [(ConversationHeaderView *)self displayLink];
    *&v11 = minimum;
    *&v12 = maximum;
    *&v13 = preferred;
    [displayLink2 setPreferredFrameRateRange:{v11, v12, v13}];

    displayLink3 = [(ConversationHeaderView *)self displayLink];
    [displayLink3 setHighFrameRateReason:1245185];

    displayLink4 = [(ConversationHeaderView *)self displayLink];
    v16 = +[NSRunLoop mainRunLoop];
    [displayLink4 addToRunLoop:v16 forMode:NSRunLoopCommonModes];

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

- (void)_displayLinkDidFire:(id)fire
{
  fireCopy = fire;
  if ((_UIUpdateCycleEnabled() & 1) == 0)
  {
    [fireCopy targetTimestamp];
    [(ConversationHeaderView *)self _processProgressUpdatesWithTargetTimestamp:?];
  }
}

- (void)_processProgressUpdatesWithTargetTimestamp:(double)timestamp
{
  v5 = sub_100052308(self);
  hostScrollView = [(ConversationHeaderView *)self hostScrollView];
  [(ConversationHeaderView *)self targetProgress];
  v7 = v6;
  [(ConversationHeaderView *)self currentProgress];
  v9 = v8;
  [(ConversationHeaderView *)self previousProgress];
  v44 = v10;
  isTracking = [hostScrollView isTracking];
  [hostScrollView contentOffset];
  v13 = v12;
  v15 = v14;
  [(ConversationHeaderView *)self previousScrollViewContentOffset];
  v17 = v16;
  v19 = v18;
  isDecelerating = [hostScrollView isDecelerating];
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
  [(ConversationHeaderView *)self setLastUpdateTimeInterval:timestamp];
  v25 = (isTracking | ~isDecelerating) & v21;
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

  [hostScrollView contentOffset];
  [(ConversationHeaderView *)self setPreviousScrollViewContentOffset:?];
  [hostScrollView contentOffset];
  v27 = v26 + sub_1000525A0(self, hostScrollView);
  if (v27 >= v5)
  {
    v28 = v7;
    if ([(ConversationHeaderView *)self isCollapsed])
    {
      goto LABEL_14;
    }

    [hostScrollView contentOffset];
    v30 = v29;
    [(ConversationHeaderView *)self initialScrollPosition];
    v27 = v30 - v31;
  }

  v28 = fmax(fmin(v27 / v5, 1.0), 0.0);
LABEL_14:
  if (isTracking)
  {
    [hostScrollView _verticalVelocity];
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
    v39 = (timestamp - v24) * ((v44 - v9) / (timestamp - v24) + ((v44 - v9) / (timestamp - v24) * (1.0 / (timestamp - v24) * -0.833333313) + 1.0 / (timestamp - v24) * 15.0 * v35) * (timestamp - v24));
    v40 = -v39;
    if (v39 >= 0.0)
    {
      v40 = v39;
    }

    v41 = v7;
    if (v40 >= 0.00000011920929)
    {
      if (![hostScrollView isTracking])
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (([titleCopy isEqualToString:self->_title] & 1) == 0)
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    contentView = [(ConversationHeaderView *)self contentView];
    [contentView setText:self->_title];
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
  window = [(ConversationHeaderView *)self window];

  if (window)
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v6.receiver = self;
  v6.super_class = ConversationHeaderView;
  [(ConversationHeaderView *)&v6 traitCollectionDidChange:changeCopy];
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
    traitCollection = [(ConversationHeaderView *)self traitCollection];
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
    window = [(ConversationHeaderView *)self window];
    windowScene = [window windowScene];
    v23 = +[MFMessageDisplayMetrics displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:](MFMessageDisplayMetrics, "displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:", traitCollection, [windowScene interfaceOrientation], v6, v8, v10, v12, v14, v16, v18, v20);
    v24 = self->_displayMetrics;
    self->_displayMetrics = v23;

    displayMetrics = self->_displayMetrics;
  }

  return displayMetrics;
}

- (void)transitionWillBegin:(int64_t)begin willBeDisplayed:(BOOL)displayed
{
  v5 = 1.0;
  v6 = 1;
  v7 = 2;
  if (begin)
  {
    v7 = 0;
  }

  if (begin != 1)
  {
    v6 = v7;
  }

  if (displayed)
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

- (void)performTransition:(int64_t)transition willBeDisplayed:(BOOL)displayed
{
  v5 = 1.0;
  v6 = 2;
  if (transition != 1)
  {
    v6 = transition == 0;
  }

  if (displayed)
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

- (void)transitionCompleted:(int64_t)completed willBeDisplayed:(BOOL)displayed
{
  v5 = *&CGAffineTransformIdentity.c;
  v6[0] = *&CGAffineTransformIdentity.a;
  v6[1] = v5;
  v6[2] = *&CGAffineTransformIdentity.tx;
  [(ConversationHeaderView *)self setTransform:v6, displayed];
  [(ConversationHeaderView *)self setAlpha:1.0];
}

- (CGAffineTransform)_transformForLocation:(SEL)location
{
  if (a4 == 2)
  {
    if (![(ConversationHeaderView *)self mf_prefersRightToLeftInterfaceLayout])
    {
      [(ConversationHeaderView *)self bounds];
      Width = CGRectGetWidth(v23);
      [(ConversationHeaderView *)self layoutMargins];
      v9 = v16;
      superTitleLabel = [(ConversationHeaderView *)self superTitleLabel];
      [superTitleLabel frame];
      MinX = CGRectGetMinX(v24);
      goto LABEL_10;
    }

    [(ConversationHeaderView *)self layoutMargins];
    v13 = v12;
    superTitleLabel = [(ConversationHeaderView *)self superTitleLabel];
    [superTitleLabel frame];
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
      superTitleLabel = [(ConversationHeaderView *)self superTitleLabel];
      [superTitleLabel frame];
      MinX = CGRectGetMaxX(v20);
LABEL_10:
      v6 = Width - v9 - MinX;
      goto LABEL_11;
    }

    [(ConversationHeaderView *)self layoutMargins];
    v13 = v15;
    superTitleLabel = [(ConversationHeaderView *)self superTitleLabel];
    [superTitleLabel frame];
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