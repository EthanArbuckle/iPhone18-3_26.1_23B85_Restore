@interface WKBaseScrollView
+ (void)_overrideAddGestureRecognizerIfNeeded;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)interactiveScrollVelocityInPointsPerSecond;
- (WKBaseScrollView)initWithFrame:(CGRect)frame;
- (id).cxx_construct;
- (unint64_t)_axesToPreventScrollingFromDelegate;
- (void)_updatePanGestureToPreventScrolling;
- (void)_wk_addGestureRecognizer:(id)recognizer;
- (void)removeFromSuperview;
- (void)removeGestureRecognizer:(id)recognizer;
- (void)updateInteractiveScrollVelocity;
@end

@implementation WKBaseScrollView

- (id).cxx_construct
{
  *(self + 270) = 0;
  *(self + 283) = 0;
  *(self + 2232) = 0u;
  *(self + 2248) = 0u;
  *(self + 2200) = 0u;
  *(self + 2216) = 0u;
  *(self + 2184) = 0u;
  *(self + 142) = *MEMORY[0x1E695EFF8];
  return self;
}

+ (void)_overrideAddGestureRecognizerIfNeeded
{
  v2 = +[WKBaseScrollView _overrideAddGestureRecognizerIfNeeded]::hasOverridenAddGestureRecognizer;
  +[WKBaseScrollView _overrideAddGestureRecognizerIfNeeded]::hasOverridenAddGestureRecognizer = 1;
  if ((v2 & 1) == 0 && (!WTF::IOSApplication::isHimalaya(self) || WTF::linkedOnOrAfterSDKWithBehavior()))
  {
    v3 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v3, sel__wk_addGestureRecognizer_);
    v5 = objc_opt_class();
    Implementation = method_getImplementation(InstanceMethod);
    TypeEncoding = method_getTypeEncoding(InstanceMethod);

    class_addMethod(v5, sel_addGestureRecognizer_, Implementation, TypeEncoding);
  }
}

- (void)updateInteractiveScrollVelocity
{
  if (([(WKBaseScrollView *)self isTracking]& 1) != 0 || [(WKBaseScrollView *)self isDecelerating])
  {
    contentOffset = [(WKBaseScrollView *)self contentOffset];
    v17 = v4;
    v18 = v5;
    WTF::ApproximateTime::now(contentOffset);
    v7 = v6 - self->_scrollingDeltaWindow.m_lastTimestamp.m_value;
    if (v7 <= 0.1)
    {
      m_lastIndex = self->_scrollingDeltaWindow.m_lastIndex;
      if (m_lastIndex >= 3)
      {
        __break(1u);
        return;
      }

      v14 = &self->_scrollingDeltaWindow.m_deltas.__elems_[m_lastIndex];
      v12 = v17;
      v11 = v18;
      v15.f64[0] = v17;
      v15.f64[1] = v18;
      *v14 = vsubq_f64(v15, self->_scrollingDeltaWindow.m_lastOffset);
      v14[1].f64[0] = v7;
      if (m_lastIndex == 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = m_lastIndex + 1;
      }

      self->_scrollingDeltaWindow.m_lastIndex = v16;
    }

    else
    {
      p_second = &self->_scrollingDeltaWindow.m_deltas.__elems_[0].second;
      v9 = 72;
      v10 = MEMORY[0x1E695F060];
      v12 = v17;
      v11 = v18;
      do
      {
        *&p_second[-2].m_value = *v10;
        p_second->m_value = 0.0;
        p_second += 3;
        v9 -= 24;
      }

      while (v9);
    }

    self->_scrollingDeltaWindow.m_lastTimestamp.m_value = v6;
    self->_scrollingDeltaWindow.m_lastOffset.x = v12;
    self->_scrollingDeltaWindow.m_lastOffset.y = v11;
  }
}

- (void)removeFromSuperview
{
  isBeingRemovedFromSuperview = self->_isBeingRemovedFromSuperview;
  self->_isBeingRemovedFromSuperview = 1;
  v4.receiver = self;
  v4.super_class = WKBaseScrollView;
  [(WKBaseScrollView *)&v4 removeFromSuperview];
  self->_isBeingRemovedFromSuperview = isBeingRemovedFromSuperview;
}

- (WKBaseScrollView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  +[WKBaseScrollView _overrideAddGestureRecognizerIfNeeded];
  v11.receiver = self;
  v11.super_class = WKBaseScrollView;
  height = [(WKBaseScrollView *)&v11 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    height->_axesToPreventMomentumScrolling = 0;
    [-[WKBaseScrollView panGestureRecognizer](height "panGestureRecognizer")];
  }

  return v9;
}

- (void)_wk_addGestureRecognizer:(id)recognizer
{
  if ([(WKBaseScrollView *)self panGestureRecognizer]== recognizer)
  {
    m_ptr = self->_axisLockingPanGestureRecognizer.m_ptr;
    if (!m_ptr)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__updatePanGestureToPreventScrolling];
      v7 = self->_axisLockingPanGestureRecognizer.m_ptr;
      self->_axisLockingPanGestureRecognizer.m_ptr = v6;
      if (v7)
      {

        v6 = self->_axisLockingPanGestureRecognizer.m_ptr;
      }

      [(UIPanGestureRecognizer *)v6 setName:@"Scroll axis locking"];
      [(UIPanGestureRecognizer *)self->_axisLockingPanGestureRecognizer.m_ptr setDelegate:self];
      m_ptr = self->_axisLockingPanGestureRecognizer.m_ptr;
    }

    [(WKBaseScrollView *)self addGestureRecognizer:m_ptr];
  }

  v8.receiver = self;
  v8.super_class = WKBaseScrollView;
  [(WKBaseScrollView *)&v8 addGestureRecognizer:recognizer];
}

- (void)removeGestureRecognizer:(id)recognizer
{
  if ([(WKBaseScrollView *)self panGestureRecognizer]== recognizer)
  {
    m_ptr = self->_axisLockingPanGestureRecognizer.m_ptr;
    self->_axisLockingPanGestureRecognizer.m_ptr = 0;
    if (m_ptr)
    {
      [(WKBaseScrollView *)self removeGestureRecognizer:m_ptr];
    }
  }

  v6.receiver = self;
  v6.super_class = WKBaseScrollView;
  [(WKBaseScrollView *)&v6 removeGestureRecognizer:recognizer];
}

- (void)_updatePanGestureToPreventScrolling
{
  panGestureRecognizer = [(WKBaseScrollView *)self panGestureRecognizer];
  v4 = [-[WKBaseScrollView panGestureRecognizer](self "panGestureRecognizer")];
  if (v4 <= 5 && ((1 << v4) & 0x39) != 0)
  {
    return;
  }

  if (([(UIPanGestureRecognizer *)self->_axisLockingPanGestureRecognizer.m_ptr state]& 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    return;
  }

  _axesToPreventScrollingFromDelegate = [(WKBaseScrollView *)self _axesToPreventScrollingFromDelegate];
  if (!_axesToPreventScrollingFromDelegate)
  {
    return;
  }

  v7 = _axesToPreventScrollingFromDelegate;
  [panGestureRecognizer translationInView:0];
  if ((v7 & 1) == 0 || fabs(v8) <= 2.22044605e-16)
  {
    if ((v7 & 2) == 0 || fabs(v9) <= 2.22044605e-16)
    {
      return;
    }

    axesToPreventMomentumScrolling = self->_axesToPreventMomentumScrolling;
    goto LABEL_16;
  }

  axesToPreventMomentumScrolling = self->_axesToPreventMomentumScrolling | 1;
  self->_axesToPreventMomentumScrolling = axesToPreventMomentumScrolling;
  v8 = 0.0;
  if ((v7 & 2) != 0 && fabs(v9) > 2.22044605e-16)
  {
LABEL_16:
    self->_axesToPreventMomentumScrolling = axesToPreventMomentumScrolling | 2;
    v9 = 0.0;
  }

  [panGestureRecognizer setTranslation:0 inView:{v8, v9}];
}

- (unint64_t)_axesToPreventScrollingFromDelegate
{
  if (self->_isBeingRemovedFromSuperview)
  {
    return 0;
  }

  if (![(WKBaseScrollView *)self window])
  {
    return 0;
  }

  baseScrollViewDelegate = [(WKBaseScrollView *)self baseScrollViewDelegate];
  if (!baseScrollViewDelegate)
  {
    return 0;
  }

  return [(WKBaseScrollViewDelegate *)baseScrollViewDelegate axesToPreventScrollingForPanGestureInScrollView:self];
}

- (CGSize)interactiveScrollVelocityInPointsPerSecond
{
  p_scrollingDeltaWindow = &self->_scrollingDeltaWindow;
  WTF::ApproximateTime::now(self);
  v5 = v4 - p_scrollingDeltaWindow->m_lastTimestamp.m_value;
  v6 = *MEMORY[0x1E695F060];
  if (v5 <= 0.1)
  {
    p_second = &self->_scrollingDeltaWindow.m_deltas.__elems_[0].second;
    v8 = 0.0;
    v9 = 72;
    v10 = *MEMORY[0x1E695F060];
    do
    {
      if (*p_second != 0.0)
      {
        v10 = vaddq_f64(v10, vdivq_f64(*(p_second - 1), vdupq_lane_s64(*p_second, 0)));
        v8 = v8 + 1.0;
      }

      p_second += 3;
      v9 -= 24;
    }

    while (v9);
    if (v8 != 0.0)
    {
      v6 = vdivq_f64(v10, vdupq_lane_s64(*&v8, 0));
    }
  }

  v11 = v6.f64[1];
  result.width = v6.f64[0];
  result.height = v11;
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  m_ptr = self->_axisLockingPanGestureRecognizer.m_ptr;
  if (m_ptr == recognizer || m_ptr == gestureRecognizer)
  {
    return 1;
  }

  if (byte_1ED64281D == 1)
  {
    if (_MergedGlobals_35)
    {
LABEL_9:
      v9.receiver = self;
      v9.super_class = WKBaseScrollView;
      return [WKBaseScrollView gestureRecognizer:sel_gestureRecognizer_shouldRecognizeSimultaneouslyWithGestureRecognizer_ shouldRecognizeSimultaneouslyWithGestureRecognizer:?];
    }
  }

  else
  {
    selfCopy = self;
    v7 = [MEMORY[0x1E69DCEF8] instancesRespondToSelector:sel_gestureRecognizer_shouldRecognizeSimultaneouslyWithGestureRecognizer_];
    self = selfCopy;
    _MergedGlobals_35 = v7;
    byte_1ED64281D = 1;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if ([(WKBaseScrollView *)self panGestureRecognizer]== begin)
  {
    self->_axesToPreventMomentumScrolling = 0;
  }

  if (byte_1ED64281F == 1)
  {
    if (byte_1ED64281E)
    {
LABEL_5:
      v7.receiver = self;
      v7.super_class = WKBaseScrollView;
      return [(WKBaseScrollView *)&v7 gestureRecognizerShouldBegin:begin];
    }

    return 1;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCEF8] instancesRespondToSelector:sel_gestureRecognizerShouldBegin_];
    byte_1ED64281E = v6;
    result = 1;
    byte_1ED64281F = 1;
    if (v6)
    {
      goto LABEL_5;
    }
  }

  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if ([(WKBaseScrollView *)self panGestureRecognizer]== recognizer)
  {
    baseScrollViewDelegate = [(WKBaseScrollView *)self baseScrollViewDelegate];
    if (baseScrollViewDelegate)
    {
      v9 = baseScrollViewDelegate;
      v10 = baseScrollViewDelegate;
      v11 = [(WKBaseScrollViewDelegate *)v9 shouldAllowPanGestureRecognizerToReceiveTouchesInScrollView:self];

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (byte_1ED642821 == 1)
  {
    if ((byte_1ED642820 & 1) == 0)
    {
      return 1;
    }

LABEL_4:
    v13.receiver = self;
    v13.super_class = WKBaseScrollView;
    return [(WKBaseScrollView *)&v13 gestureRecognizer:recognizer shouldReceiveTouch:touch];
  }

  v12 = [MEMORY[0x1E69DCEF8] instancesRespondToSelector:sel_gestureRecognizer_shouldReceiveTouch_];
  byte_1ED642820 = v12;
  result = 1;
  byte_1ED642821 = 1;
  if (v12)
  {
    goto LABEL_4;
  }

  return result;
}

@end