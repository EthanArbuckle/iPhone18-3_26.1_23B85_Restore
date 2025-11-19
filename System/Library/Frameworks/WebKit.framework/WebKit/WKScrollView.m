@interface WKScrollView
- (BOOL)_setContentScrollInsetInternal:(UIEdgeInsets)a3;
- (BOOL)_usesHardTopScrollEdgeEffect;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)isScrollEnabled;
- (CGSize)_currentTopLeftRubberbandAmount;
- (UIEdgeInsets)_systemContentInset;
- (WKScrollView)initWithFrame:(CGRect)a3;
- (id).cxx_construct;
- (id)_wk_bottomEdgeEffect;
- (id)_wk_leftEdgeEffect;
- (id)_wk_rightEdgeEffect;
- (id)_wk_topEdgeEffect;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_adjustForAutomaticKeyboardInfo:(id)a3 animated:(BOOL)a4 lastAdjustment:(double *)a5;
- (void)_didChangeTopScrollEdgeEffectStyle;
- (void)_resetContentInset;
- (void)_restoreContentOffsetWithRubberbandAmount:(CGSize)a3;
- (void)_setBackgroundColorInternal:(id)a3;
- (void)_setBouncesInternal:(BOOL)a3 vertical:(BOOL)a4;
- (void)_setContentInsetAdjustmentBehaviorInternal:(int64_t)a3;
- (void)_setContentScrollInset:(UIEdgeInsets)a3;
- (void)_setContentSizePreservingContentOffsetDuringRubberband:(CGSize)a3;
- (void)_setDecelerationRateInternal:(double)a3;
- (void)_setIndicatorStyleInternal:(int64_t)a3;
- (void)_setInternalTopPocketColor:(id)a3;
- (void)_setPocketColor:(id)a3 forEdge:(unint64_t)a4;
- (void)_updateBouncability;
- (void)_updateContentScrollInset;
- (void)_updateDelegate;
- (void)_updateScrollability;
- (void)_updateTopPocketColor;
- (void)_updateZoomability;
- (void)setBackgroundColor:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setContentInsetAdjustmentBehavior:(int64_t)a3;
- (void)setDecelerationRate:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setIndicatorStyle:(int64_t)a3;
- (void)setInternalDelegate:(id)a3;
@end

@implementation WKScrollView

- (id).cxx_construct
{
  *(self + 287) = 0;
  *(self + 288) = 0;
  *(self + 2336) = 0;
  *(self + 2368) = 0;
  *(self + 2376) = 0;
  *(self + 2408) = 0;
  *(self + 151) = 0u;
  *(self + 152) = 0u;
  *(self + 306) = 0;
  *(self + 307) = 0;
  return self;
}

- (UIEdgeInsets)_systemContentInset
{
  v15.receiver = self;
  v15.super_class = WKScrollView;
  [(WKScrollView *)&v15 _systemContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (([(BEScrollViewDelegate *)self->_internalDelegate _haveSetObscuredInsets]& 1) == 0 && WTF::linkedOnOrAfterSDKWithBehavior() && [(WKScrollView *)self contentInsetAdjustmentBehavior]== 2)
  {
    v8 = v8 + self->_keyboardBottomInsetAdjustment;
  }

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)_updateDelegate
{
  m_ptr = self->_delegateForwarder.m_ptr;
  self->_delegateForwarder.m_ptr = 0;
  WeakRetained = objc_loadWeakRetained(&self->_externalDelegate.m_weakReference);
  internalDelegate = self->_internalDelegate;
  if (!WeakRetained)
  {
    v10.receiver = self;
    v10.super_class = WKScrollView;
    [(BEScrollView *)&v10 setDelegate:internalDelegate];
    if (!m_ptr)
    {
      return;
    }

    goto LABEL_7;
  }

  if (internalDelegate)
  {
    v6 = [[WKScrollViewDelegateForwarder alloc] initWithInternalDelegate:self->_internalDelegate externalDelegate:WeakRetained];
    v7 = self->_delegateForwarder.m_ptr;
    self->_delegateForwarder.m_ptr = v6;
    if (v7)
    {

      v6 = self->_delegateForwarder.m_ptr;
    }

    v8.receiver = self;
    v8.super_class = WKScrollView;
    [(BEScrollView *)&v8 setDelegate:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WKScrollView;
    [(BEScrollView *)&v9 setDelegate:WeakRetained];
  }

  if (m_ptr)
  {
LABEL_7:
  }
}

- (WKScrollView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = WKScrollView;
  v3 = [(WKBaseScrollView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_scrollEnabledByClient = 1;
    v3->_scrollEnabledInternal = 1;
    v3->_zoomEnabledByClient = 1;
    v3->_zoomEnabledInternal = 1;
    v3->_bouncesSetByClient = 1;
    v3->_bouncesHorizontalInternal = 1;
    v3->_bouncesVerticalInternal = 1;
    [(WKScrollView *)v3 setAlwaysBounceVertical:1];
    [(WKScrollView *)v4 setDirectionalLockEnabled:1];
    [(WKScrollView *)v4 setAutomaticallyAdjustsScrollIndicatorInsets:1];
    [(WKScrollView *)v4 setAllowsKeyboardScrolling:1];
    v4->_contentInsetAdjustmentBehaviorWasExternallyOverridden = [(WKScrollView *)v4 contentInsetAdjustmentBehavior]!= 0;
  }

  return v4;
}

- (void)setInternalDelegate:(id)a3
{
  if (self->_internalDelegate != a3)
  {
    self->_internalDelegate = a3;
    [(WKScrollView *)self _updateDelegate];
  }
}

- (void)setDelegate:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_externalDelegate.m_weakReference);
  v6 = WeakRetained;
  if (WeakRetained)
  {
  }

  if (v6 != a3)
  {
    objc_storeWeak(&self->_externalDelegate.m_weakReference, a3);

    [(WKScrollView *)self _updateDelegate];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [a4 shouldDeferGestureRecognizer:a3];
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [a3 shouldDeferGestureRecognizer:a4];
}

- (void)setBackgroundColor:(id)a3
{
  self->_backgroundColorSetByClient = a3 != 0;
  v4.receiver = self;
  v4.super_class = WKScrollView;
  [(WKScrollView *)&v4 setBackgroundColor:?];
  if (!self->_backgroundColorSetByClient)
  {
    [(BEScrollViewDelegate *)self->_internalDelegate _resetCachedScrollViewBackgroundColor];
    [(BEScrollViewDelegate *)self->_internalDelegate _updateScrollViewBackground];
  }
}

- (void)_setBackgroundColorInternal:(id)a3
{
  if (!self->_backgroundColorSetByClient)
  {
    v4.receiver = self;
    v4.super_class = WKScrollView;
    [(WKScrollView *)&v4 setBackgroundColor:a3];
    [(BEScrollViewDelegate *)self->_internalDelegate _resetCachedScrollViewBackgroundColor];
  }
}

- (void)setIndicatorStyle:(int64_t)a3
{
  self->_indicatorStyleSetByClient = a3 != 0;
  v4.receiver = self;
  v4.super_class = WKScrollView;
  [(WKScrollView *)&v4 setIndicatorStyle:?];
  if (!self->_indicatorStyleSetByClient)
  {
    [(BEScrollViewDelegate *)self->_internalDelegate _updateScrollViewIndicatorStyle];
  }
}

- (void)_setIndicatorStyleInternal:(int64_t)a3
{
  if (!self->_indicatorStyleSetByClient)
  {
    v3.receiver = self;
    v3.super_class = WKScrollView;
    [(WKScrollView *)&v3 setIndicatorStyle:a3];
  }
}

- (void)setDecelerationRate:(double)a3
{
  self->_decelerationRateSetByClient = 1;
  v3.receiver = self;
  v3.super_class = WKScrollView;
  [(WKScrollView *)&v3 setDecelerationRate:a3];
}

- (void)_setDecelerationRateInternal:(double)a3
{
  if (!self->_decelerationRateSetByClient)
  {
    v3.receiver = self;
    v3.super_class = WKScrollView;
    [(WKScrollView *)&v3 setDecelerationRate:a3];
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = WKScrollView;
  [(WKScrollView *)&v4 setContentInset:a3.top, a3.left, a3.bottom, a3.right];
  self->_contentInsetWasExternallyOverridden = 1;
  [(BEScrollViewDelegate *)self->_internalDelegate _scheduleVisibleContentRectUpdate];
}

- (void)_resetContentInset
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  v7.receiver = self;
  v7.super_class = WKScrollView;
  [(WKScrollView *)&v7 setContentInset:v3, v4, v5, v6];
  [(BEScrollViewDelegate *)self->_internalDelegate _scheduleVisibleContentRectUpdate];
}

- (void)setContentInsetAdjustmentBehavior:(int64_t)a3
{
  self->_contentInsetAdjustmentBehaviorWasExternallyOverridden = 1;
  if ([(WKScrollView *)self contentInsetAdjustmentBehavior]!= a3)
  {
    v5.receiver = self;
    v5.super_class = WKScrollView;
    [(WKScrollView *)&v5 setContentInsetAdjustmentBehavior:a3];
    [(BEScrollViewDelegate *)self->_internalDelegate _scheduleVisibleContentRectUpdate];
  }
}

- (void)_setContentInsetAdjustmentBehaviorInternal:(int64_t)a3
{
  if ([(WKScrollView *)self contentInsetAdjustmentBehavior]!= a3)
  {
    v5.receiver = self;
    v5.super_class = WKScrollView;
    [(WKScrollView *)&v5 setContentInsetAdjustmentBehavior:a3];
  }
}

- (CGSize)_currentTopLeftRubberbandAmount
{
  [(WKScrollView *)self contentInset];
  v4 = v3;
  v6 = v5;
  v7 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  [(WKScrollView *)self contentOffset];
  v11 = v9 - v6;
  if (v9 - v6 > 0.0)
  {
    v11 = 0.0;
  }

  if (v9 >= -v6)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = v4 + v10;
  if (v4 + v10 > 0.0)
  {
    v13 = 0.0;
  }

  if (v10 >= -v4)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  result.height = v14;
  result.width = v12;
  return result;
}

- (void)_restoreContentOffsetWithRubberbandAmount:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(WKScrollView *)self contentInset];
  v7 = v6;
  v9 = v8;
  [(WKScrollView *)self contentOffset];
  if (width < 0.0)
  {
    v10 = width - v9;
  }

  if (height < 0.0)
  {
    v11 = height - v7;
  }

  [(WKScrollView *)self setContentOffset:v10, v11];
}

- (void)_setContentSizePreservingContentOffsetDuringRubberband:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(WKScrollView *)self contentSize];
  v7 = v6;
  v9 = v8;
  if ((([(WKScrollView *)self isDragging]& 1) != 0 || [(WKScrollView *)self isScrollEnabled]&& [(UIScrollView *)self _wk_isScrolledBeyondExtents]|| [(WKScrollView *)self refreshControl]) && ((v10 = MEMORY[0x1E695F060], v7 == *MEMORY[0x1E695F060]) ? (v11 = v9 == *(MEMORY[0x1E695F060] + 8)) : (v11 = 0), !v11 && (v7 == width ? (v12 = v9 == height) : (v12 = 0), !v12 && (([(WKScrollView *)self zoomScale], v14 = v13, [(WKScrollView *)self minimumZoomScale], v14 >= v15) || ([(WKScrollView *)self zoomScale], v17 = v16, v18 = [(WKScrollView *)self minimumZoomScale], v20 = v19, WebKit::scalesAreEssentiallyEqual(v18, v17, v20))))))
  {
    [(WKScrollView *)self _currentTopLeftRubberbandAmount];
    v22 = v21;
    v24 = v23;
    [(WKScrollView *)self setContentSize:width, height];
    if (v22 != *v10 || v24 != v10[1])
    {

      [(WKScrollView *)self _restoreContentOffsetWithRubberbandAmount:v22, v24];
    }
  }

  else
  {

    [(WKScrollView *)self setContentSize:width, height];
  }
}

- (void)_adjustForAutomaticKeyboardInfo:(id)a3 animated:(BOOL)a4 lastAdjustment:(double *)a5
{
  v6 = a4;
  [objc_msgSend(MEMORY[0x1E69DCD68] "sharedInstance")];
  self->_keyboardBottomInsetAdjustment = v9;
  v10.receiver = self;
  v10.super_class = WKScrollView;
  [(WKScrollView *)&v10 _adjustForAutomaticKeyboardInfo:a3 animated:v6 lastAdjustment:a5];
}

- (BOOL)isScrollEnabled
{
  v3 = [objc_msgSend(-[WKScrollView panGestureRecognizer](self "panGestureRecognizer")];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = WKScrollView;
    LOBYTE(v3) = [(WKScrollView *)&v5 isScrollEnabled];
  }

  return v3;
}

- (void)_updateScrollability
{
  v4 = self->_scrollEnabledByClient && self->_scrollEnabledInternal;
  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = WKScrollView;
  [(WKScrollView *)&v5 setScrollEnabled:v4];
}

- (void)_setBouncesInternal:(BOOL)a3 vertical:(BOOL)a4
{
  self->_bouncesHorizontalInternal = a3;
  self->_bouncesVerticalInternal = a4;
  [(WKScrollView *)self _updateBouncability];
}

- (void)_updateBouncability
{
  v3 = self->_bouncesSetByClient && self->_bouncesHorizontalInternal;
  v6.receiver = self;
  v6.super_class = WKScrollView;
  [(WKScrollView *)&v6 setBouncesHorizontally:v3];
  v4 = self->_bouncesSetByClient && self->_bouncesVerticalInternal;
  v5.receiver = self;
  v5.super_class = WKScrollView;
  [(WKScrollView *)&v5 setBouncesVertically:v4];
}

- (void)_updateZoomability
{
  v4 = self->_zoomEnabledByClient && self->_zoomEnabledInternal;
  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = WKScrollView;
  [(WKScrollView *)&v5 setZoomEnabled:v4];
}

- (void)_setContentScrollInset:(UIEdgeInsets)a3
{
  engaged = self->_contentScrollInsetFromClient.__engaged_;
  self->_contentScrollInsetFromClient.var0.__val_ = a3;
  if (!engaged)
  {
    self->_contentScrollInsetFromClient.__engaged_ = 1;
  }

  [(WKScrollView *)self _updateContentScrollInset];
}

- (BOOL)_setContentScrollInsetInternal:(UIEdgeInsets)a3
{
  if (self->_contentScrollInsetFromClient.__engaged_)
  {
    return 0;
  }

  p_contentScrollInsetInternal = &self->_contentScrollInsetInternal;
  if (self->_contentScrollInsetInternal.__engaged_)
  {
    v7.f64[0] = a3.top;
    v7.f64[1] = a3.left;
    v8.f64[0] = a3.bottom;
    v8.f64[1] = a3.right;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*p_contentScrollInsetInternal, v7), vceqq_f64(*&self->_contentScrollInsetInternal.var0.__val_.bottom, v8)))))
    {
      return 0;
    }

    p_contentScrollInsetInternal->f64[0] = a3.top;
    self->_contentScrollInsetInternal.var0.__val_.left = a3.left;
    self->_contentScrollInsetInternal.var0.__val_.bottom = a3.bottom;
    self->_contentScrollInsetInternal.var0.__val_.right = a3.right;
  }

  else
  {
    p_contentScrollInsetInternal->f64[0] = a3.top;
    self->_contentScrollInsetInternal.var0.__val_.left = a3.left;
    self->_contentScrollInsetInternal.var0.__val_.bottom = a3.bottom;
    self->_contentScrollInsetInternal.var0.__val_.right = a3.right;
    self->_contentScrollInsetInternal.__engaged_ = 1;
  }

  [(WKScrollView *)self _updateContentScrollInset:v3];
  return 1;
}

- (void)_updateContentScrollInset
{
  if (self->_contentScrollInsetFromClient.__engaged_)
  {
    bottom = self->_contentScrollInsetFromClient.var0.__val_.bottom;
    right = self->_contentScrollInsetFromClient.var0.__val_.right;
    top = self->_contentScrollInsetFromClient.var0.__val_.top;
    left = self->_contentScrollInsetFromClient.var0.__val_.left;
    v6 = &v8;
    v8.receiver = self;
  }

  else
  {
    if (!self->_contentScrollInsetInternal.__engaged_)
    {
      return;
    }

    bottom = self->_contentScrollInsetInternal.var0.__val_.bottom;
    right = self->_contentScrollInsetInternal.var0.__val_.right;
    top = self->_contentScrollInsetInternal.var0.__val_.top;
    left = self->_contentScrollInsetInternal.var0.__val_.left;
    v6 = &v7;
    v7 = self;
  }

  v6->super_class = WKScrollView;
  [(objc_super *)v6 _setContentScrollInset:top, left, bottom, right, v7];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = *(self->_internalDelegate + 82);
  if (v8)
  {
    [v8 makeTextSelectionViewsNonInteractiveForScope];
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0;
  }

  v11.receiver = self;
  v11.super_class = WKScrollView;
  v9 = [(WKScrollView *)&v11 hitTest:a4 withEvent:x, y];
  WTF::ScopeExit<WTF::Function<void ()(void)>>::~ScopeExit(v12);
  return v9;
}

- (id)_wk_topEdgeEffect
{
  m_ptr = self->_edgeEffectWrappers.m_sides.__elems_[0].m_ptr;
  if (m_ptr)
  {
    v3 = m_ptr;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WKScrollView;
    v6 = [(WKScrollView *)&v9 topEdgeEffect];
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    v8 = v6;
    m_ptr = [[WKUIScrollEdgeEffect alloc] initWithScrollView:self scrollEdgeEffect:v7 boxSide:0];
    WebCore::RectEdges<WTF::RetainPtr<WKUIScrollEdgeEffect>>::setAt(&self->_edgeEffectWrappers, 0, m_ptr);

    if (!m_ptr)
    {
      return m_ptr;
    }
  }

  return m_ptr;
}

- (id)_wk_leftEdgeEffect
{
  p_edgeEffectWrappers = &self->_edgeEffectWrappers;
  m_ptr = self->_edgeEffectWrappers.m_sides.__elems_[3].m_ptr;
  if (m_ptr)
  {
    v4 = m_ptr;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WKScrollView;
    v7 = [(WKScrollView *)&v10 leftEdgeEffect];
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    v9 = v7;
    m_ptr = [[WKUIScrollEdgeEffect alloc] initWithScrollView:self scrollEdgeEffect:v8 boxSide:3];
    WebCore::RectEdges<WTF::RetainPtr<WKUIScrollEdgeEffect>>::setAt(p_edgeEffectWrappers, 3u, m_ptr);

    if (!m_ptr)
    {
      return m_ptr;
    }
  }

  return m_ptr;
}

- (id)_wk_rightEdgeEffect
{
  p_edgeEffectWrappers = &self->_edgeEffectWrappers;
  m_ptr = self->_edgeEffectWrappers.m_sides.__elems_[1].m_ptr;
  if (m_ptr)
  {
    v4 = m_ptr;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WKScrollView;
    v7 = [(WKScrollView *)&v10 rightEdgeEffect];
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    v9 = v7;
    m_ptr = [[WKUIScrollEdgeEffect alloc] initWithScrollView:self scrollEdgeEffect:v8 boxSide:1];
    WebCore::RectEdges<WTF::RetainPtr<WKUIScrollEdgeEffect>>::setAt(p_edgeEffectWrappers, 1u, m_ptr);

    if (!m_ptr)
    {
      return m_ptr;
    }
  }

  return m_ptr;
}

- (id)_wk_bottomEdgeEffect
{
  p_edgeEffectWrappers = &self->_edgeEffectWrappers;
  m_ptr = self->_edgeEffectWrappers.m_sides.__elems_[2].m_ptr;
  if (m_ptr)
  {
    v4 = m_ptr;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WKScrollView;
    v7 = [(WKScrollView *)&v10 bottomEdgeEffect];
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    v9 = v7;
    m_ptr = [[WKUIScrollEdgeEffect alloc] initWithScrollView:self scrollEdgeEffect:v8 boxSide:2];
    WebCore::RectEdges<WTF::RetainPtr<WKUIScrollEdgeEffect>>::setAt(p_edgeEffectWrappers, 2u, m_ptr);

    if (!m_ptr)
    {
      return m_ptr;
    }
  }

  return m_ptr;
}

- (void)_setInternalTopPocketColor:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->_topPocketColorSetInternally.m_ptr;
  self->_topPocketColorSetInternally.m_ptr = a3;
  if (m_ptr)
  {
  }

  [(WKScrollView *)self _updateTopPocketColor];
}

- (void)_setPocketColor:(id)a3 forEdge:(unint64_t)a4
{
  if (a4 == 1)
  {
    if (a3)
    {
      v6 = a3;
    }

    m_ptr = self->_topPocketColorSetByClient.m_ptr;
    self->_topPocketColorSetByClient.m_ptr = a3;
    if (m_ptr)
    {
    }

    [(WKScrollView *)self _updateTopPocketColor];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WKScrollView;
    [(WKScrollView *)&v8 _setPocketColor:a3 forEdge:?];
  }
}

- (void)_updateTopPocketColor
{
  m_ptr = self->_topPocketColorSetByClient.m_ptr;
  if (m_ptr || (m_ptr = self->_topPocketColorSetInternally.m_ptr) != 0)
  {
    v4 = m_ptr;
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6.receiver = self;
  v6.super_class = WKScrollView;
  [(WKScrollView *)&v6 _setPocketColor:m_ptr forEdge:1];
  if ((v5 & 1) == 0)
  {
  }
}

- (BOOL)_usesHardTopScrollEdgeEffect
{
  v2 = [(WKScrollView *)self _wk_topEdgeEffect];

  return [v2 usesHardStyle];
}

- (void)_didChangeTopScrollEdgeEffectStyle
{
  internalDelegate = self->_internalDelegate;
  if (internalDelegate)
  {
    v2 = internalDelegate;
    [(BEScrollViewDelegate *)internalDelegate _updateTopScrollPocketCaptureColor];
    [(BEScrollViewDelegate *)internalDelegate _updatePrefersSolidColorHardPocket];
  }
}

@end