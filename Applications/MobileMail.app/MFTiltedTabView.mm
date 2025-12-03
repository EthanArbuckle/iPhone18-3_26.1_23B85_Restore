@interface MFTiltedTabView
- (BOOL)_gestureRecognizer:(id)recognizer shouldInteractWithItem:(id)item;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)_hitRectForItem:(id)item;
- (CGSize)_contentSizeForItemCount:(double)count;
- (MFTiltedTabView)initWithFrame:(CGRect)frame;
- (MFTiltedTabViewDelegate)delegate;
- (double)_baseOffsetForItem:(id)item index:(unint64_t *)index count:(double *)count;
- (double)_spaceBetweenTabsWithCount:(double)count;
- (double)_statusBarHeight;
- (double)_tabCloseAnimationSlideDistance;
- (double)_topAreaHeightForTabsWithCount:(double)count;
- (double)_velocityForSpringAnimations;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (id)_makeReorderAnimationWithDirection:(int64_t)direction springDuration:(double)duration tabCount:(double)count;
- (id)_tabItem;
- (id)_tiltedTabItemForLocation:(CGPoint)location;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)tabItemAtIndex:(unint64_t)index;
- (id)visibleIndexSet;
- (int64_t)_currentOrientation;
- (unint64_t)_numberOfItems;
- (void)_addSpringAnimationWithKeyPath:(id)path toLayer:(id)layer fromValue:(id)value toValue:(id)toValue;
- (void)_closeButtonPressed:(id)pressed;
- (void)_closeItem:(id)item;
- (void)_configureVelocityForSpringAnimation:(id)animation withKeyPath:(id)path;
- (void)_finishAnimations;
- (void)_installMotionEffectOntoScrollView;
- (void)_invalidateAllSnapshotsForce:(BOOL)force;
- (void)_relinquishBorrowedViews;
- (void)_reorderScroll:(id)scroll;
- (void)_resetInteractiveReorderOffsetAtLocation:(CGPoint)location;
- (void)_resetItem:(id)item;
- (void)_sendPresentedStateDidChangeToDelegateIfNeeded;
- (void)_setPressedItem:(id)item animated:(BOOL)animated;
- (void)_setReorderScrollVelocity:(double)velocity;
- (void)_stopReorderingItem:(id)item withFinalTimeAdjustment:(double)adjustment tabCount:(double)count;
- (void)_tabCloseRecognized:(id)recognized;
- (void)_tabPressUpdated:(id)updated;
- (void)_tabReorderRecognized:(id)recognized;
- (void)_tabSelectionRecognized:(id)recognized;
- (void)_updateItemsInvolvedInAnimation;
- (void)_updateReorderAnimationBeginTimeForLayer:(id)layer withTimeAdjustment:(double)adjustment;
- (void)_updateReorderAnimationsForItem:(id)item withTimeAdjustment:(double)adjustment tabCount:(double)count createIfNecessary:(BOOL)necessary;
- (void)_updateReorderGesture;
- (void)_updateSpringAnimationForView:(id)view withBounds:(CGRect)bounds animated:(BOOL)animated;
- (void)_updateSpringAnimationForView:(id)view withFrame:(CGRect)frame transform:(CATransform3D *)transform userTransform:(CATransform3D *)userTransform opacity:(double)opacity verticalScrollAdjustment:(double)adjustment animated:(BOOL)animated;
- (void)_updateSpringAnimationForView:(id)view withFrame:(CGRect)frame verticalScrollAdjustment:(double)adjustment animated:(BOOL)animated;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)layoutItemsAnimated:(BOOL)animated;
- (void)scrollViewDidScroll:(id)scroll;
- (void)selectItemAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
- (void)setPresented:(BOOL)presented animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSnapshotsIfNecessary;
@end

@implementation MFTiltedTabView

- (MFTiltedTabView)initWithFrame:(CGRect)frame
{
  v40.receiver = self;
  v40.super_class = MFTiltedTabView;
  v3 = [(MFTiltedTabView *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIScrollView);
    scrollView = v3->_scrollView;
    v3->_scrollView = v4;

    [(UIScrollView *)v3->_scrollView setAlwaysBounceVertical:1];
    [(UIScrollView *)v3->_scrollView setClipsToBounds:0];
    v6 = qword_1006D52C8;
    layer = [(UIScrollView *)v3->_scrollView layer];
    v8 = *&CATransform3DIdentity.m23;
    v33 = *&CATransform3DIdentity.m21;
    v34 = v8;
    v35 = *&CATransform3DIdentity.m31;
    m33 = CATransform3DIdentity.m33;
    v9 = *&CATransform3DIdentity.m13;
    *location = *&CATransform3DIdentity.m11;
    v32 = v9;
    v37 = v6;
    v10 = *&CATransform3DIdentity.m43;
    v38 = *&CATransform3DIdentity.m41;
    v39 = v10;
    [layer setSublayerTransform:location];

    [(UIScrollView *)v3->_scrollView setDelegate:v3];
    [(UIScrollView *)v3->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v3->_scrollView setShowsVerticalScrollIndicator:0];
    [(MFTiltedTabView *)v3 addSubview:v3->_scrollView];
    v11 = objc_alloc_init(_TabGradientView);
    statusBarGradient = v3->_statusBarGradient;
    v3->_statusBarGradient = v11;

    gradientLayer = [(_TabGradientView *)v3->_statusBarGradient gradientLayer];
    [MFSafariTabsClassConstants configureStatusBarGradientLayer:gradientLayer];
    [(MFTiltedTabView *)v3 insertSubview:v3->_statusBarGradient aboveSubview:v3->_scrollView];
    v14 = [[_MFTouchDownTapRecognizer alloc] initWithTarget:v3 action:"_tabPressUpdated:"];
    pressRecognizer = v3->_pressRecognizer;
    v3->_pressRecognizer = v14;

    objc_initWeak(location, v3);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10021E418;
    v29[3] = &unk_100655CB0;
    objc_copyWeak(&v30, location);
    [(_MFTouchDownTapRecognizer *)v3->_pressRecognizer setTouchdownHandler:v29];
    [(MFTiltedTabView *)v3 addGestureRecognizer:v3->_pressRecognizer];
    v16 = [[UIPanGestureRecognizer alloc] initWithTarget:v3 action:"_tabCloseRecognized:"];
    tabCloseRecognizer = v3->_tabCloseRecognizer;
    v3->_tabCloseRecognizer = v16;

    [(UIPanGestureRecognizer *)v3->_tabCloseRecognizer setDelegate:v3];
    [(UIPanGestureRecognizer *)v3->_tabCloseRecognizer _setHysteresis:25.0];
    [(UIPanGestureRecognizer *)v3->_tabCloseRecognizer _setCanPanVertically:0];
    [(MFTiltedTabView *)v3 addGestureRecognizer:v3->_tabCloseRecognizer];
    v18 = [[UILongPressGestureRecognizer alloc] initWithTarget:v3 action:"_tabReorderRecognized:"];
    tabReorderRecognizer = v3->_tabReorderRecognizer;
    v3->_tabReorderRecognizer = v18;

    [(UILongPressGestureRecognizer *)v3->_tabReorderRecognizer setDelegate:v3];
    [(MFTiltedTabView *)v3 addGestureRecognizer:v3->_tabReorderRecognizer];
    v20 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"_tabSelectionRecognized:"];
    tabSelectionRecognizer = v3->_tabSelectionRecognizer;
    v3->_tabSelectionRecognizer = v20;

    [(UITapGestureRecognizer *)v3->_tabSelectionRecognizer setDelegate:v3];
    [(MFTiltedTabView *)v3 addGestureRecognizer:v3->_tabSelectionRecognizer];
    v22 = objc_alloc_init(NSMutableSet);
    itemsCurrentlyClosing = v3->_itemsCurrentlyClosing;
    v3->_itemsCurrentlyClosing = v22;

    v24 = objc_alloc_init(NSMutableArray);
    visibleItems = v3->_visibleItems;
    v3->_visibleItems = v24;

    v26 = objc_alloc_init(NSMutableSet);
    allTabItems = v3->_allTabItems;
    v3->_allTabItems = v26;

    v3->_animating = 0;
    [(MFTiltedTabView *)v3 setRotationStyle:2];
    [(MFTiltedTabView *)v3 setPreservesSuperviewLayoutMargins:1];
    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }

  return v3;
}

- (void)_installMotionEffectOntoScrollView
{
  parallaxMotionEffectGroup = self->_parallaxMotionEffectGroup;
  if (!parallaxMotionEffectGroup)
  {
    v4 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"sublayerTransform" type:0];
    v5 = *&CATransform3DIdentity.m13;
    v27 = *&CATransform3DIdentity.m11;
    v26 = v27;
    v25 = v5;
    v23 = *&CATransform3DIdentity.m23;
    v24 = *&CATransform3DIdentity.m21;
    v28 = v5;
    v29 = v24;
    v30 = v23;
    *v32 = *&CATransform3DIdentity.m32;
    v21 = *v32;
    *&v32[16] = *&CATransform3DIdentity.m34;
    v19 = *&v32[16];
    *&v32[32] = *&CATransform3DIdentity.m42;
    v17 = *&v32[32];
    *&v32[48] = CATransform3DIdentity.m44;
    v6 = *&v32[48];
    m31 = -*&qword_1006D52D0;
    v7 = [NSValue valueWithCATransform3D:&v27];
    [v4 setMinimumRelativeValue:v7];

    v27 = v26;
    v28 = v25;
    v29 = v24;
    v30 = v23;
    *v32 = v21;
    *&v32[16] = v19;
    *&v32[32] = v17;
    *&v32[48] = v6;
    m31 = *&qword_1006D52D0;
    v8 = [NSValue valueWithCATransform3D:&v27];
    [v4 setMaximumRelativeValue:v8];

    v9 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"sublayerTransform" type:1];
    v29 = v24;
    v30 = v23;
    m31 = CATransform3DIdentity.m31;
    v10 = m31;
    v27 = v26;
    v28 = v25;
    v20 = *&CATransform3DIdentity.m41;
    *&v32[8] = *&CATransform3DIdentity.m33;
    v22 = *&v32[8];
    *&v32[24] = v20;
    *&v32[40] = *&CATransform3DIdentity.m43;
    v18 = *&v32[40];
    *v32 = -*&qword_1006D52D8;
    v11 = [NSValue valueWithCATransform3D:&v27];
    [v9 setMinimumRelativeValue:v11];

    v29 = v24;
    v30 = v23;
    m31 = v10;
    v27 = v26;
    v28 = v25;
    *&v32[8] = v22;
    *&v32[24] = v20;
    *&v32[40] = v18;
    *v32 = qword_1006D52D8;
    v12 = [NSValue valueWithCATransform3D:&v27];
    [v9 setMaximumRelativeValue:v12];

    v13 = objc_alloc_init(UIMotionEffectGroup);
    v14 = self->_parallaxMotionEffectGroup;
    self->_parallaxMotionEffectGroup = v13;

    v15 = self->_parallaxMotionEffectGroup;
    v33[0] = v4;
    v33[1] = v9;
    v16 = [NSArray arrayWithObjects:v33 count:2];
    [(UIMotionEffectGroup *)v15 setMotionEffects:v16];

    parallaxMotionEffectGroup = self->_parallaxMotionEffectGroup;
  }

  [(UIScrollView *)self->_scrollView addMotionEffect:parallaxMotionEffectGroup];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MFTiltedTabView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = MFTiltedTabView;
  [(MFTiltedTabView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(MFTiltedTabView *)self _invalidateAllSnapshots];
  }
}

- (unint64_t)_numberOfItems
{
  visibleItems = self->_visibleItems;
  if (visibleItems)
  {

    return [(NSMutableArray *)visibleItems count];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained numberOfItemsInTiltedTabView:self];

    return v6;
  }
}

- (double)_topAreaHeightForTabsWithCount:(double)count
{
  [(MFTiltedTabView *)self _scrollingEffectFactorForTabsWithCount:count];
  v5 = (1.0 - v4) * unk_1006D5220 + v4 * *&qword_1006D5218;
  [(MFTiltedTabView *)self _statusBarHeight];
  return v6 + v5;
}

- (CGRect)_hitRectForItem:(id)item
{
  itemCopy = item;
  v18 = 0.0;
  [(MFTiltedTabView *)self _baseOffsetForItem:itemCopy index:0 count:&v18];
  v6 = v5;
  v7 = [(NSMutableArray *)self->_visibleItems indexOfObject:itemCopy];
  if (v7 == [(MFTiltedTabView *)self _numberOfItems]- 1)
  {
    v8 = v6;
  }

  else
  {
    [(MFTiltedTabView *)self _spaceBetweenTabsWithCount:v18];
    v8 = v9;
  }

  [(MFTiltedTabView *)self _topAreaHeightForTabsWithCount:v18];
  v11 = v10;
  [(MFTiltedTabView *)self _tabLayoutBounds];
  v13 = v12;

  v14 = 0.0;
  v15 = v6 + v11;
  v16 = v13;
  v17 = v8;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (double)_statusBarHeight
{
  window = [(MFTiltedTabView *)self window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];
  [statusBarManager statusBarFrame];
  v6 = v5;

  return v6;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  [(MFTiltedTabView *)self convertPoint:self->_scrollView toView:x, y];
  v9 = v8;
  v11 = v10;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = self->_visibleItems;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        [v16 closeButtonHitRect];
        v28.x = v9;
        v28.y = v11;
        if (CGRectContainsPoint(v29, v28))
        {
          closeButton = [v16 closeButton];
          goto LABEL_13;
        }
      }

      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v21.receiver = self;
  v21.super_class = MFTiltedTabView;
  v12 = [(MFTiltedTabView *)&v21 hitTest:eventCopy withEvent:x, y];
  scrollView = v12;
  if (v12 == self)
  {
    scrollView = self->_scrollView;
  }

  closeButton = scrollView;
LABEL_13:
  v19 = closeButton;

  return v19;
}

- (id)_tiltedTabItemForLocation:(CGPoint)location
{
  if (self->_presented)
  {
    y = location.y;
    x = location.x;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_visibleItems;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = *v21;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v20 + 1) + 8 * v9) closeButtonHitRect];
        v27.x = x;
        v27.y = y;
        if (CGRectContainsPoint(v29, v27))
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = self->_visibleItems;
      v10 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v10)
      {
        v11 = *v17;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            [(MFTiltedTabView *)self _hitRectForItem:v13, v16];
            v28.x = x;
            v28.y = y;
            if (CGRectContainsPoint(v30, v28))
            {
              v14 = v13;
              goto LABEL_21;
            }
          }

          v10 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

    v14 = 0;
LABEL_21:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_setPressedItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  if (self->_pressedItem != itemCopy)
  {
    if (animatedCopy)
    {
      [(MFTiltedTabView *)self layoutBelowIfNeeded];
      objc_storeStrong(&self->_pressedItem, item);
      [(MFTiltedTabView *)self layoutItemsAnimated:1];
    }

    else
    {
      objc_storeStrong(&self->_pressedItem, item);
      [(MFTiltedTabView *)self setNeedsLayout];
    }
  }
}

- (void)_tabPressUpdated:(id)updated
{
  updatedCopy = updated;
  if ([updatedCopy numberOfTouches] && objc_msgSend(updatedCopy, "state") != 5)
  {
    [updatedCopy locationInView:self->_scrollView];
    v4 = [(MFTiltedTabView *)self _tiltedTabItemForLocation:?];
    [(MFTiltedTabView *)self _setPressedItem:v4 animated:1];
  }

  else
  {
    [(MFTiltedTabView *)self _setPressedItem:0 animated:1];
  }
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldInteractWithItem:(id)item
{
  recognizerCopy = recognizer;
  itemCopy = item;
  v8 = itemCopy;
  if (self->_tabSelectionRecognizer != recognizerCopy && self->_tabCloseRecognizer != recognizerCopy && self->_tabReorderRecognizer != recognizerCopy)
  {
    __assert_rtn("[MFTiltedTabView _gestureRecognizer:shouldInteractWithItem:]", "MFTiltedTabView.m", 630, "gestureRecognizer == _tabSelectionRecognizer || gestureRecognizer == _tabCloseRecognizer || gestureRecognizer == _tabReorderRecognizer");
  }

  v9 = itemCopy && (self->_tabReorderRecognizer != recognizerCopy || [(MFTiltedTabView *)self _numberOfItems]>= 2);

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (([(MFTiltedTabView *)self isUserInteractionEnabled]& 1) != 0)
  {
    if (self->_tabSelectionRecognizer != recognizerCopy && self->_tabCloseRecognizer != recognizerCopy && self->_tabReorderRecognizer != recognizerCopy)
    {
      __assert_rtn("[MFTiltedTabView gestureRecognizer:shouldReceiveTouch:]", "MFTiltedTabView.m", 643, "gestureRecognizer == _tabSelectionRecognizer || gestureRecognizer == _tabCloseRecognizer || gestureRecognizer == _tabReorderRecognizer");
    }

    [touchCopy locationInView:self->_scrollView];
    v8 = [(MFTiltedTabView *)self _tiltedTabItemForLocation:?];
    v9 = [(MFTiltedTabView *)self _gestureRecognizer:recognizerCopy shouldInteractWithItem:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  if (self->_tabSelectionRecognizer != beginCopy && self->_tabCloseRecognizer != beginCopy && self->_tabReorderRecognizer != beginCopy)
  {
    __assert_rtn("[MFTiltedTabView gestureRecognizerShouldBegin:]", "MFTiltedTabView.m", 649, "gestureRecognizer == _tabSelectionRecognizer || gestureRecognizer == _tabCloseRecognizer || gestureRecognizer == _tabReorderRecognizer");
  }

  [(UITapGestureRecognizer *)beginCopy locationInView:self->_scrollView];
  v6 = [(MFTiltedTabView *)self _tiltedTabItemForLocation:?];
  v7 = [(MFTiltedTabView *)self _gestureRecognizer:v5 shouldInteractWithItem:v6];

  return v7;
}

- (double)_tabCloseAnimationSlideDistance
{
  v2 = *&qword_1006D5238;
  [(MFTiltedTabView *)self _tabLayoutBounds];
  return v2 + CGRectGetMaxX(v4);
}

- (void)_closeItem:(id)item
{
  itemCopy = item;
  v6 = [(NSMutableArray *)self->_visibleItems indexOfObject:itemCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained tiltedTabView:self canCloseItemAtIndex:v6])
  {
    _numberOfItems = [(MFTiltedTabView *)self _numberOfItems];
    [itemCopy setClosing:1];
    [WeakRetained tiltedTabView:self closeItemAtIndex:{-[MFTiltedTabView _indexOfVisibleItem:](self, "_indexOfVisibleItem:", itemCopy)}];
    v9 = [WeakRetained numberOfItemsInTiltedTabView:self];
    if (v9 >= _numberOfItems)
    {
      v11 = +[NSAssertionHandler currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"MFTiltedTabView.m" lineNumber:671 description:@"Number of items should be less than before when closing tabs."];
    }

    [(NSMutableArray *)self->_visibleItems removeObject:itemCopy];
    visibleItems = self->_visibleItems;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10021F62C;
    v12[3] = &unk_100655CD0;
    v12[4] = v9;
    [(NSMutableArray *)visibleItems enumerateObjectsUsingBlock:v12];
    [(MFTiltedTabView *)self layoutItemsAnimated:1];
  }
}

- (id)tabItemAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_visibleItems count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_visibleItems objectAtIndexedSubscript:index];
  }

  return v5;
}

- (void)_tabCloseRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if (self->_tabCloseRecognizer != recognizedCopy)
  {
    __assert_rtn("[MFTiltedTabView _tabCloseRecognized:]", "MFTiltedTabView.m", 692, "gestureRecognizer == _tabCloseRecognizer");
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  state = [(UIPanGestureRecognizer *)recognizedCopy state];
  if (state <= 2)
  {
    if (state != 1)
    {
      if (state != 2)
      {
        goto LABEL_28;
      }

      [(UIPanGestureRecognizer *)recognizedCopy translationInView:self];
      v7 = v6;
      [(MFTiltedTabView *)self _tabCloseAnimationSlideDistance];
      v9 = -v7 / v8;
      self->_interactiveCloseProgress = v9;
      if (v9 >= 0.0)
      {
        if ([WeakRetained tiltedTabView:self canCloseItemAtIndex:{-[MFTiltedTabView _indexOfVisibleItem:](self, "_indexOfVisibleItem:", self->_interactivelyClosingItem)}])
        {
LABEL_27:
          [(MFTiltedTabView *)self setNeedsLayout];
          goto LABEL_28;
        }

        v10 = 1.0 - 1.0 / (self->_interactiveCloseProgress * 0.55 + 1.0);
      }

      else
      {
        v10 = -(1.0 - 1.0 / (v9 * -0.55 + 1.0));
      }

      self->_interactiveCloseProgress = v10;
      goto LABEL_27;
    }

    [(UIPanGestureRecognizer *)recognizedCopy locationInView:self->_scrollView];
    onlyHorizontalVelocityItem = [(MFTiltedTabView *)self _tiltedTabItemForLocation:?];
    if (onlyHorizontalVelocityItem)
    {
      if (!self->_interactivelyClosingItem)
      {
        objc_storeStrong(&self->_interactivelyClosingItem, onlyHorizontalVelocityItem);
        self->_interactiveCloseProgress = 0.0;
        [onlyHorizontalVelocityItem setCountForLayout:{-[MFTiltedTabView _numberOfItems](self, "_numberOfItems")}];
        [onlyHorizontalVelocityItem setIndexForLayout:{-[NSMutableArray indexOfObject:](self->_visibleItems, "indexOfObject:", onlyHorizontalVelocityItem)}];
LABEL_23:

        goto LABEL_28;
      }

      v21 = "!_interactivelyClosingItem";
      v22 = 701;
    }

    else
    {
      v21 = "tabItemForLocation";
      v22 = 700;
    }

    __assert_rtn("[MFTiltedTabView _tabCloseRecognized:]", "MFTiltedTabView.m", v22, v21);
  }

  if (state == 3)
  {
    [(UIPanGestureRecognizer *)recognizedCopy translationInView:self];
    v13 = v12;
    [(UIPanGestureRecognizer *)recognizedCopy velocityInView:self];
    v15 = v14;
    [(MFTiltedTabView *)self _tabCloseAnimationSlideDistance];
    if (v13 + v15 < v16 * -0.75)
    {
      v17 = [WeakRetained tiltedTabView:self canCloseItemAtIndex:{-[MFTiltedTabView _indexOfVisibleItem:](self, "_indexOfVisibleItem:", self->_interactivelyClosingItem)}];
LABEL_16:
      [(UIPanGestureRecognizer *)recognizedCopy velocityInView:self];
      self->_interactiveCloseVelocity = v18;
      if (v17)
      {
        [(MFTiltedTabView *)self _closeItem:self->_interactivelyClosingItem];
      }

      isClosing = [(_MFTiltedTabItemView *)self->_interactivelyClosingItem isClosing];
      if ((isClosing & 1) == 0)
      {
        [(_MFTiltedTabItemView *)self->_interactivelyClosingItem setCountForLayout:0x7FFFFFFFFFFFFFFFLL];
        [(_MFTiltedTabItemView *)self->_interactivelyClosingItem setIndexForLayout:0x7FFFFFFFFFFFFFFFLL];
      }

      objc_storeStrong(&self->_onlyHorizontalVelocityItem, self->_interactivelyClosingItem);
      interactivelyClosingItem = self->_interactivelyClosingItem;
      self->_interactivelyClosingItem = 0;

      if ((isClosing & 1) == 0)
      {
        [(MFTiltedTabView *)self layoutItemsAnimated:1];
      }

      self->_interactiveCloseProgress = 0.0;
      self->_interactiveCloseVelocity = 0.0;
      onlyHorizontalVelocityItem = self->_onlyHorizontalVelocityItem;
      self->_onlyHorizontalVelocityItem = 0;
      goto LABEL_23;
    }

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  if (state == 4)
  {
    goto LABEL_15;
  }

LABEL_28:
}

- (void)_setReorderScrollVelocity:(double)velocity
{
  reorderScrollDisplayLink = self->_reorderScrollDisplayLink;
  if (fabs(velocity) >= 0.01)
  {
    if (!reorderScrollDisplayLink)
    {
      v7 = [CADisplayLink displayLinkWithTarget:self selector:"_reorderScroll:"];
      v8 = self->_reorderScrollDisplayLink;
      self->_reorderScrollDisplayLink = v7;

      v9 = self->_reorderScrollDisplayLink;
      v10 = +[NSRunLoop mainRunLoop];
      [(CADisplayLink *)v9 addToRunLoop:v10 forMode:NSRunLoopCommonModes];
    }

    self->_reorderScrollVelocity = velocity;
  }

  else
  {
    [(CADisplayLink *)reorderScrollDisplayLink invalidate];
    v6 = self->_reorderScrollDisplayLink;
    self->_reorderScrollDisplayLink = 0;
  }
}

- (void)_reorderScroll:(id)scroll
{
  [scroll duration];
  v5 = v4;
  reorderScrollVelocity = self->_reorderScrollVelocity;
  reorderScrollOffsetError = self->_reorderScrollOffsetError;
  v8 = +[UIScreen mainScreen];
  [v8 scale];
  v10 = v9;

  __y = NAN;
  self->_reorderScrollOffsetError = modf((reorderScrollOffsetError + v5 * reorderScrollVelocity) * v10, &__y) / v10;
  v11 = __y;
  [(UIScrollView *)self->_scrollView contentOffset];
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)self->_scrollView contentInset];
  v17 = v16;
  v19 = v18;
  [(UIScrollView *)self->_scrollView contentSize];
  v21 = v20;
  [(UIScrollView *)self->_scrollView bounds];
  [(UIScrollView *)self->_scrollView setContentOffset:v13, fmin(fmax(v11 / v10 + v15, -v17), v19 + v21 - v22)];
  [(MFTiltedTabView *)self _updateReorderGesture];
}

- (void)_updateReorderGesture
{
  [(MFTiltedTabView *)self _spaceBetweenTabsWithCount:[(MFTiltedTabView *)self _numberOfItems]];
  v4 = v3;
  [(UILongPressGestureRecognizer *)self->_tabReorderRecognizer locationInView:self->_scrollView];
  v6 = v5;
  if (self->_reorderOffsetNeedsReset)
  {
    [(MFTiltedTabView *)self _resetInteractiveReorderOffsetAtLocation:?];
    self->_reorderOffsetNeedsReset = 0;
  }

  else
  {
    self->_interactiveReorderOffset = v5 - self->_interactiveReorderOffsetDistanceFromTouch;
  }

  v7 = v4 * ([(MFTiltedTabView *)self _numberOfItems]+ -0.5);
  interactiveReorderOffset = self->_interactiveReorderOffset;
  if (interactiveReorderOffset > v7)
  {
    self->_interactiveReorderOffset = v7 + (1.0 - 1.0 / ((interactiveReorderOffset - v7) / v4 * 0.55 + 1.0)) * v4;
  }

  v9 = [(MFTiltedTabView *)self _indexOfVisibleItem:self->_interactivelyReorderingItem];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_10048C3BC();
  }

  v10 = v9;
  v11 = vcvtad_u64_f64(self->_interactiveReorderOffset / v4);
  if (v9 != v11 && [(MFTiltedTabView *)self _numberOfItems]> v11)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tiltedTabView:self didMoveItemAtIndex:v10 toIndex:v11];
  }

  v13 = *&qword_1006D5260;
  v14 = unk_1006D5268;
  [(MFTiltedTabView *)self bounds];
  v16 = v13 * v15;
  [(UIScrollView *)self->_scrollView bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  if (v6 - CGRectGetMinY(v25) >= v14)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v22 = CGRectGetMaxY(v27) - v6;
    v23 = 0.0;
    if (v22 >= v14)
    {
      goto LABEL_15;
    }

    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v21 = v14 + v6 - CGRectGetMaxY(v28);
  }

  else
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v21 = v6 - CGRectGetMinY(v26) - v14;
  }

  v23 = v16 * v21 / v14;
LABEL_15:
  [(MFTiltedTabView *)self _setReorderScrollVelocity:v23];

  [(MFTiltedTabView *)self setNeedsLayout];
}

- (void)_resetInteractiveReorderOffsetAtLocation:(CGPoint)location
{
  y = location.y;
  [(MFTiltedTabView *)self _spaceBetweenTabsWithCount:[(MFTiltedTabView *)self _numberOfItems]];
  v6 = v5;
  v7 = [(MFTiltedTabView *)self _indexOfVisibleItem:self->_interactivelyReorderingItem];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_10048C3E8();
  }

  v8 = v6 * v7;
  self->_interactiveReorderOffset = v8;
  self->_interactiveReorderOffsetDistanceFromTouch = y - v8;
}

- (void)_tabReorderRecognized:(id)recognized
{
  recognizedCopy = recognized;
  v14 = recognizedCopy;
  if (self->_tabReorderRecognizer != recognizedCopy)
  {
    __assert_rtn("[MFTiltedTabView _tabReorderRecognized:]", "MFTiltedTabView.m", 835, "gestureRecognizer == _tabReorderRecognizer");
  }

  state = [(UILongPressGestureRecognizer *)recognizedCopy state];
  if ((state - 3) < 2)
  {
    interactivelyReorderingItem = self->_interactivelyReorderingItem;
    self->_interactivelyReorderingItem = 0;

    self->_interactiveReorderOffset = 0.0;
    self->_interactiveReorderOffsetDistanceFromTouch = 0.0;
    [(MFTiltedTabView *)self layoutItemsAnimated:1];
    [(MFTiltedTabView *)self _setReorderScrollVelocity:0.0];
    self->_reorderScrollOffsetError = 0.0;
  }

  else
  {
    if (state != 2)
    {
      if (state != 1)
      {
        goto LABEL_10;
      }

      [(UILongPressGestureRecognizer *)v14 locationInView:self->_scrollView];
      v7 = v6;
      v9 = v8;
      v10 = [(MFTiltedTabView *)self _tiltedTabItemForLocation:?];
      if (v10)
      {
        if (!self->_interactivelyReorderingItem)
        {
          objc_storeStrong(&self->_interactivelyReorderingItem, v10);
          [(MFTiltedTabView *)self _resetInteractiveReorderOffsetAtLocation:v7, v9];
          [(MFTiltedTabView *)self layoutItemsAnimated:1];
          self->_reorderOffsetNeedsReset = 1;

          goto LABEL_10;
        }

        v12 = "!_interactivelyReorderingItem";
        v13 = 841;
      }

      else
      {
        v12 = "tabItemForLocation";
        v13 = 840;
      }

      __assert_rtn("[MFTiltedTabView _tabReorderRecognized:]", "MFTiltedTabView.m", v13, v12);
    }

    [(MFTiltedTabView *)self _updateReorderGesture];
  }

LABEL_10:
}

- (void)selectItemAtIndex:(unint64_t)index animated:(BOOL)animated
{
  if ([(NSMutableArray *)self->_visibleItems count:index]> index)
  {
    v6 = [(NSMutableArray *)self->_visibleItems objectAtIndex:index];
    objc_storeStrong(&self->_selectedItem, v6);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained tiltedTabView:self contentViewForItemAtIndex:index];
    if (v8)
    {
      borrowedContentView = [(_MFTiltedTabItemView *)self->_selectedItem borrowedContentView];
      [WeakRetained tiltedTabView:self relinquishSnapshotView:borrowedContentView forItemAtIndex:index];

      v10 = *&CGAffineTransformIdentity.c;
      v11[0] = *&CGAffineTransformIdentity.a;
      v11[1] = v10;
      v11[2] = *&CGAffineTransformIdentity.tx;
      [v8 setTransform:v11];
      [(_MFTiltedTabItemView *)self->_selectedItem setBorrowedContentView:v8];
      [(_MFTiltedTabItemView *)self->_selectedItem setContentViewType:0];
    }

    [WeakRetained tiltedTabView:self didSelectItemAtIndex:index];
  }
}

- (void)_tabSelectionRecognized:(id)recognized
{
  recognizedCopy = recognized;
  v6 = recognizedCopy;
  if (self->_tabSelectionRecognizer != recognizedCopy)
  {
    __assert_rtn("[MFTiltedTabView _tabSelectionRecognized:]", "MFTiltedTabView.m", 891, "gestureRecognizer == _tabSelectionRecognizer");
  }

  [(UITapGestureRecognizer *)recognizedCopy locationInView:self->_scrollView];
  v5 = [(MFTiltedTabView *)self _tiltedTabItemForLocation:?];
  [(MFTiltedTabView *)self selectItemAtIndex:[(MFTiltedTabView *)self _indexOfVisibleItem:v5] animated:1];
}

- (void)_sendPresentedStateDidChangeToDelegateIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (self->_presented)
  {
    p_sentDidPresentToDelegate = &self->_sentDidPresentToDelegate;
    if (!self->_sentDidPresentToDelegate)
    {
      [WeakRetained tiltedTabViewDidPresent:self];
    }
  }

  else
  {
    p_sentDidPresentToDelegate = &self->_sentDidDismissToDelegate;
    if (!self->_sentDidDismissToDelegate)
    {
      [WeakRetained tiltedTabViewDidDismiss:self];
    }
  }

  *p_sentDidPresentToDelegate = 1;
}

- (void)_relinquishBorrowedViews
{
  visibleItems = self->_visibleItems;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100220524;
  v3[3] = &unk_100655CF8;
  v3[4] = self;
  [(NSMutableArray *)visibleItems enumerateObjectsUsingBlock:v3];
}

- (void)_finishAnimations
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_visibleItems;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v18 + 1) + 8 * i) setShadowOpacity:0.0];
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  if (!self->_presented)
  {
    [(MFTiltedTabView *)self _relinquishBorrowedViews];
    [(NSMutableSet *)self->_itemsCurrentlyClosing addObjectsFromArray:self->_visibleItems];
    [(NSMutableArray *)self->_visibleItems removeAllObjects];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_itemsCurrentlyClosing;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (j = 0; j != v8; j = j + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * j);
        [v11 uninstallMaskCutoutView];
        [v11 setFinishedClosing:1];
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v8);
  }

  [(MFTiltedTabView *)self _updateItemsInvolvedInAnimation];
  if (self->_presented && [(NSMutableSet *)self->_itemsCurrentlyClosing count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tiltedTabViewDidScroll:self];
  }

  [(NSMutableSet *)self->_itemsCurrentlyClosing removeAllObjects];
  selectedItem = self->_selectedItem;
  self->_selectedItem = 0;

  self->_animating = 0;
  [(MFTiltedTabView *)self _sendPresentedStateDidChangeToDelegateIfNeeded];
  if (!self->_presented)
  {
    [(NSMutableSet *)self->_allTabItems makeObjectsPerformSelector:"removeFromSuperview"];
    [(NSMutableSet *)self->_allTabItems removeAllObjects];
    [(MFTiltedTabView *)self setHidden:1];
  }
}

- (id)_tabItem
{
  v3 = objc_alloc_init(_MFTiltedTabItemView);
  [(NSMutableSet *)self->_allTabItems addObject:v3];

  return v3;
}

- (void)setPresented:(BOOL)presented animated:(BOOL)animated
{
  if (self->_presented == !presented)
  {
    presentedCopy = presented;
    v34 = 8;
    animatedCopy = animated;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (presentedCopy)
    {
      [(MFTiltedTabView *)self setHidden:0];
      [(MFTiltedTabView *)self _installMotionEffectOntoScrollView];
      selectedItem = self->_selectedItem;
      self->_selectedItem = 0;

      self->_sentDidPresentToDelegate = 0;
      [(MFTiltedTabView *)self _relinquishBorrowedViews];
      [(NSMutableArray *)self->_visibleItems removeAllObjects];
      rotationStyle = [(MFTiltedTabView *)self rotationStyle];
      v8 = [WeakRetained numberOfItemsInTiltedTabView:self];
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = [WeakRetained tiltedTabView:self snapshotViewForItemAtIndex:{i, v34}];
          _tabItem = [(MFTiltedTabView *)self _tabItem];
          [_tabItem setIndexForLayout:i];
          [_tabItem setCountForLayout:v8];
          [_tabItem setBorrowedContentView:v10];
          [_tabItem setContentViewType:1];
          [_tabItem setCapturedInterfaceOrientation:{-[MFTiltedTabView _currentOrientation](self, "_currentOrientation")}];
          [_tabItem setAutoresizesContentView:rotationStyle == 2];
          contentClipperView = [_tabItem contentClipperView];
          [v10 bounds];
          [contentClipperView setBounds:?];

          [_tabItem setClipsToBounds:{objc_msgSend(v10, "clipsToBounds")}];
          [v10 _continuousCornerRadius];
          [_tabItem _setContinuousCornerRadius:?];
          objc_initWeak(location, self);
          v13 = [UISpringLoadedInteraction alloc];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100220F60;
          v38[3] = &unk_100655D20;
          objc_copyWeak(v39, location);
          v39[1] = i;
          v14 = [v13 initWithActivationHandler:v38];
          [_tabItem addInteraction:v14];

          if (i)
          {
            v15 = WeakRetained;
            v16 = [WeakRetained tiltedTabView:self headerViewForItemAtIndex:i];
            headerView = [_tabItem headerView];
            [headerView frame];
            v19 = v18;
            v21 = v20;
            v23 = v22;

            [v16 frame];
            Height = CGRectGetHeight(v41);
            headerView2 = [_tabItem headerView];
            [headerView2 setFrame:{v19, v21, v23, Height}];

            title = [v16 title];
            headerView3 = [_tabItem headerView];
            [headerView3 setTitle:title];

            [v16 bottomInset];
            v29 = v28;
            headerView4 = [_tabItem headerView];
            [headerView4 setBottomInset:v29];

            WeakRetained = v15;
          }

          [(NSMutableArray *)self->_visibleItems addObject:_tabItem];
          objc_destroyWeak(v39);
          objc_destroyWeak(location);
        }
      }

      [WeakRetained tiltedTabViewWillPresent:{self, v34}];
      [(MFTiltedTabView *)self _updateItemsInvolvedInAnimation];
    }

    else
    {
      [(MFTiltedTabView *)self _uninstallMotionEffectOntoScrollView];
      self->_sentDidDismissToDelegate = 0;
      [WeakRetained tiltedTabViewWillDismiss:self];
    }

    if (animatedCopy)
    {
      self->_animating = 1;
      [(MFTiltedTabView *)self setNeedsLayout];
      [(MFTiltedTabView *)self layoutBelowIfNeeded];
    }

    if ((!self->_selectedItem || ![(MFTiltedTabView *)self _indexOfVisibleItem:?]) && !presentedCopy)
    {
      visibleItems = self->_visibleItems;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100220FE4;
      v37[3] = &unk_100655CF8;
      v37[4] = self;
      [(NSMutableArray *)visibleItems enumerateObjectsUsingBlock:v37];
    }

    *(&self->super.super.super.isa + v34) = presentedCopy;
    [WeakRetained tiltedTabViewDidLayoutItems:{self, v34}];
    if (presentedCopy)
    {
      v32 = [WeakRetained tiltedTabView:self maskCutoutViewForItemAtIndex:0];
      if (v32)
      {
        firstObject = [(NSMutableArray *)self->_visibleItems firstObject];
        [firstObject installMaskCutoutView:v32];
      }
    }

    [(MFTiltedTabView *)self layoutItemsAnimated:animatedCopy];
    if (!self->_activeAnimationCount)
    {
      [(MFTiltedTabView *)self _finishAnimations];
    }

    [(_MFTouchDownTapRecognizer *)self->_pressRecognizer setEnabled:presentedCopy];
    [(UIPanGestureRecognizer *)self->_tabCloseRecognizer setEnabled:presentedCopy];
    [(UILongPressGestureRecognizer *)self->_tabReorderRecognizer setEnabled:self->_reorderingEnabled];
    [(UITapGestureRecognizer *)self->_tabSelectionRecognizer setEnabled:presentedCopy];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  v5 = [stopCopy valueForKey:@"reordering-item"];
  if (v5)
  {
    v6 = [stopCopy valueForKey:@"being-replaced"];
    bOOLValue = [v6 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v8 = [stopCopy valueForKey:@"base-begin-time"];
      [v8 doubleValue];
      v10 = v9;

      [stopCopy beginTime];
      v12 = v11;
      v13 = *&qword_1006D5210;
      v14 = [stopCopy valueForKey:@"tab-count"];
      [v14 doubleValue];
      [(MFTiltedTabView *)self _stopReorderingItem:v5 withFinalTimeAdjustment:(v10 - v12) / v13 tabCount:v15];
    }
  }

  else
  {
    v16 = self->_activeAnimationCount - 1;
    self->_activeAnimationCount = v16;
    if (v16 <= 2 && self->_animating)
    {
      [(MFTiltedTabView *)self _finishAnimations];
    }
  }
}

- (void)_resetItem:(id)item
{
  itemCopy = item;
  [itemCopy setClosing:0];
  [itemCopy setFinishedClosing:0];
  [itemCopy setCountForLayout:0x7FFFFFFFFFFFFFFFLL];
  [itemCopy setIndexForLayout:0x7FFFFFFFFFFFFFFFLL];
  [itemCopy setVerticalScrollAdjustment:0.0];
}

- (void)_updateItemsInvolvedInAnimation
{
  v18 = self->_itemsInvolvedInAnimation;
  v3 = [NSMutableArray arrayWithArray:self->_visibleItems];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v18;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        if ([v3 indexOfObject:v8] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (![(MFTiltedTabView *)self _shouldContinueAnimatingItem:v8])
          {
            [v8 removeFromSuperview];
            closeButton = [v8 closeButton];
            [closeButton removeTarget:self action:"_closeButtonPressed:" forControlEvents:64];
          }
        }

        else
        {
          [v3 removeObject:v8];
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v11)
  {
    v12 = *v20;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * j);
        [(UIScrollView *)self->_scrollView addSubview:v14];
        closeButton2 = [v14 closeButton];
        [closeButton2 addTarget:self action:"_closeButtonPressed:" forControlEvents:64];
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }

  v16 = [(NSMutableArray *)self->_visibleItems copy];
  itemsInvolvedInAnimation = self->_itemsInvolvedInAnimation;
  self->_itemsInvolvedInAnimation = v16;
}

- (void)_closeButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  visibleItems = self->_visibleItems;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100221678;
  v7[3] = &unk_100655D48;
  v8 = pressedCopy;
  selfCopy = self;
  v6 = pressedCopy;
  [(NSMutableArray *)visibleItems enumerateObjectsUsingBlock:v7];
}

- (void)_updateSpringAnimationForView:(id)view withFrame:(CGRect)frame verticalScrollAdjustment:(double)adjustment animated:(BOOL)animated
{
  animatedCopy = animated;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  layer = [viewCopy layer];
  v15 = layer;
  if (layer)
  {
    [layer transform];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  v16 = *&CATransform3DIdentity.m33;
  v20[4] = *&CATransform3DIdentity.m31;
  v20[5] = v16;
  v17 = *&CATransform3DIdentity.m43;
  v20[6] = *&CATransform3DIdentity.m41;
  v20[7] = v17;
  v18 = *&CATransform3DIdentity.m13;
  v20[0] = *&CATransform3DIdentity.m11;
  v20[1] = v18;
  v19 = *&CATransform3DIdentity.m23;
  v20[2] = *&CATransform3DIdentity.m21;
  v20[3] = v19;
  [(MFTiltedTabView *)self _updateSpringAnimationForView:viewCopy withFrame:v21 transform:v20 userTransform:animatedCopy opacity:x verticalScrollAdjustment:y animated:width, height, 1.0, adjustment];
}

- (double)_velocityForSpringAnimations
{
  [(MFTiltedTabView *)self _tabCloseAnimationSlideDistance];
  v4 = v3;
  isClosing = [(_MFTiltedTabItemView *)self->_interactivelyClosingItem isClosing];
  v6 = -v4;
  result = 0.0;
  if (!isClosing)
  {
    v6 = 0.0;
  }

  v8 = -(v4 * self->_interactiveCloseProgress);
  if (v6 != v8)
  {
    return self->_interactiveCloseVelocity / (v6 - v8);
  }

  return result;
}

- (void)_configureVelocityForSpringAnimation:(id)animation withKeyPath:(id)path
{
  animationCopy = animation;
  pathCopy = path;
  [(MFTiltedTabView *)self _velocityForSpringAnimations];
  v8 = v7;
  if (v7 != 0.0)
  {
    if (([pathCopy isEqualToString:@"position.x"] & 1) == 0)
    {
      if (self->_applyVelocityOnlyToHorizontalPosition)
      {
        goto LABEL_6;
      }

      v8 = v8 + v8;
    }

    [animationCopy setVelocity:v8];
  }

LABEL_6:
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  pathCopy = path;
  v6 = objc_alloc_init(MFSpringAnimation);
  [v6 setKeyPath:pathCopy];
  [(MFTiltedTabView *)self _configureVelocityForSpringAnimation:v6 withKeyPath:pathCopy];

  return v6;
}

- (void)_addSpringAnimationWithKeyPath:(id)path toLayer:(id)layer fromValue:(id)value toValue:(id)toValue
{
  pathCopy = path;
  layerCopy = layer;
  v11 = [MFSpringAnimation springAnimationWithKeyPath:pathCopy fromValue:value toValue:toValue];
  [(MFTiltedTabView *)self _velocityForSpringAnimations];
  if (v12 != 0.0)
  {
    v13 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [v11 setTimingFunction:v13];

    [(MFTiltedTabView *)self _configureVelocityForSpringAnimation:v11 withKeyPath:pathCopy];
  }

  [v11 setDelegate:self];
  ++self->_activeAnimationCount;
  [layerCopy addAnimation:v11 forKey:0];
}

- (void)_updateSpringAnimationForView:(id)view withFrame:(CGRect)frame transform:(CATransform3D *)transform userTransform:(CATransform3D *)userTransform opacity:(double)opacity verticalScrollAdjustment:(double)adjustment animated:(BOOL)animated
{
  animatedCopy = animated;
  rect = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  layer = [viewCopy layer];
  [layer anchorPoint];
  [layer position];
  v84 = v18;
  v20 = v19;
  *&v21 = -1;
  *(&v21 + 1) = -1;
  *&v94.c = v21;
  *&v94.tx = v21;
  *&v94.a = v21;
  v22 = *&userTransform->m33;
  *&v93.m31 = *&userTransform->m31;
  *&v93.m33 = v22;
  v23 = *&userTransform->m43;
  *&v93.m41 = *&userTransform->m41;
  *&v93.m43 = v23;
  v24 = *&userTransform->m13;
  *&v93.m11 = *&userTransform->m11;
  *&v93.m13 = v24;
  v25 = *&userTransform->m23;
  *&v93.m21 = *&userTransform->m21;
  *&v93.m23 = v25;
  CATransform3DGetAffineTransform(&v94, &v93);
  [viewCopy bounds];
  v26 = CGRectGetWidth(v95);
  v27 = 0.0;
  if (v26 > 0.0)
  {
    v27 = v94.tx / v26;
  }

  v94.tx = v27;
  [viewCopy bounds];
  Height = CGRectGetHeight(v96);
  v29 = 0.0;
  if (Height > 0.0)
  {
    v29 = v94.ty / Height;
  }

  v82 = v20;
  v94.ty = v29;
  v30 = *&userTransform->m33;
  *&v93.m31 = *&userTransform->m31;
  *&v93.m33 = v30;
  v31 = *&userTransform->m43;
  *&v93.m41 = *&userTransform->m41;
  *&v93.m43 = v31;
  v32 = *&userTransform->m13;
  *&v93.m11 = *&userTransform->m11;
  *&v93.m13 = v32;
  v33 = *&userTransform->m23;
  *&v93.m21 = *&userTransform->m21;
  *&v93.m23 = v33;
  CATransform3DGetAffineTransform(&v92, &v93);
  v97.origin.x = x;
  v97.origin.y = y;
  v88 = width;
  v97.size.width = width;
  v97.size.height = rect;
  CGRectApplyAffineTransform(v97, &v92);
  v34 = +[UIScreen mainScreen];
  [v34 scale];
  v81 = v35;
  UIRectCenteredIntegralRectScale();

  UIPointRoundToViewScale();
  v87 = v36;
  v38 = v37;
  *&v39 = -1;
  *(&v39 + 1) = -1;
  *&v93.m41 = v39;
  *&v93.m43 = v39;
  *&v93.m31 = v39;
  *&v93.m33 = v39;
  *&v93.m21 = v39;
  *&v93.m23 = v39;
  *&v93.m11 = v39;
  *&v93.m13 = v39;
  if (layer)
  {
    [layer transform];
  }

  else
  {
    memset(&v93, 0, sizeof(v93));
  }

  [layer opacity];
  v41 = v40;
  [layer bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v83 = v82 + adjustment;
  v50 = v83 != v87 || v84 != v38;
  v92 = v93;
  v51 = *&transform->m33;
  *&b.m31 = *&transform->m31;
  *&b.m33 = v51;
  v52 = *&transform->m43;
  *&b.m41 = *&transform->m41;
  *&b.m43 = v52;
  v53 = *&transform->m13;
  *&b.m11 = *&transform->m11;
  *&b.m13 = v53;
  v54 = *&transform->m23;
  *&b.m21 = *&transform->m21;
  *&b.m23 = v54;
  v55 = CATransform3DEqualToTransform(&v92, &b);
  v98.origin.x = v43;
  v98.origin.y = v45;
  v98.size.width = v47;
  v98.size.height = v49;
  v99.origin.x = v43;
  v99.origin.y = v45;
  v99.size.width = v88;
  v99.size.height = rect;
  v56 = CGRectEqualToRect(v98, v99);
  v57 = v41;
  if (v50 || !v55 || v57 != opacity || !v56)
  {
    if (!v56)
    {
      [(MFTiltedTabView *)self _updateSpringAnimationForView:viewCopy withBounds:animatedCopy animated:v43, v45, v88, rect];
    }

    [layer setPosition:{v38, v87}];
    v58 = *&transform->m33;
    *&v92.m31 = *&transform->m31;
    *&v92.m33 = v58;
    v59 = *&transform->m43;
    *&v92.m41 = *&transform->m41;
    *&v92.m43 = v59;
    v60 = *&transform->m13;
    *&v92.m11 = *&transform->m11;
    *&v92.m13 = v60;
    v61 = *&transform->m23;
    *&v92.m21 = *&transform->m21;
    *&v92.m23 = v61;
    [layer setTransform:&v92];
    HIDWORD(v62) = HIDWORD(opacity);
    *&v62 = opacity;
    [layer setOpacity:v62];
    if (animatedCopy)
    {
      if (v50)
      {
        v63 = v84 - v38;
        v64 = v83 - v87;
        if (!self->_applyVelocityOnlyToHorizontalPosition || ([(MFTiltedTabView *)self _velocityForSpringAnimations], v65 == 0.0))
        {
          v67 = [NSValue valueWithCGPoint:v63, v64];
          v68 = [NSValue valueWithCGPoint:CGPointZero.x, CGPointZero.y];
          [(MFTiltedTabView *)self _addSpringAnimationWithKeyPath:@"position" toLayer:layer fromValue:v67 toValue:v68];
        }

        else
        {
          v66 = [NSNumber numberWithDouble:v63];
          [(MFTiltedTabView *)self _addSpringAnimationWithKeyPath:@"position.x" toLayer:layer fromValue:v66 toValue:&off_1006743F0];

          v67 = [NSNumber numberWithDouble:v64];
          [(MFTiltedTabView *)self _addSpringAnimationWithKeyPath:@"position.y" toLayer:layer fromValue:v67 toValue:&off_1006743F0];
        }
      }

      if (!v55)
      {
        *&v69 = -1;
        *(&v69 + 1) = -1;
        *&v92.m41 = v69;
        *&v92.m43 = v69;
        *&v92.m31 = v69;
        *&v92.m33 = v69;
        *&v92.m21 = v69;
        *&v92.m23 = v69;
        *&v92.m11 = v69;
        *&v92.m13 = v69;
        v70 = *&transform->m33;
        *&a.m31 = *&transform->m31;
        *&a.m33 = v70;
        v71 = *&transform->m43;
        *&a.m41 = *&transform->m41;
        *&a.m43 = v71;
        v72 = *&transform->m13;
        *&a.m11 = *&transform->m11;
        *&a.m13 = v72;
        v73 = *&transform->m23;
        *&a.m21 = *&transform->m21;
        *&a.m23 = v73;
        CATransform3DInvert(&b, &a);
        a = v93;
        CATransform3DConcat(&v92, &a, &b);
        b = v92;
        v74 = [NSValue valueWithCATransform3D:&b];
        v75 = *&CATransform3DIdentity.m33;
        *&b.m31 = *&CATransform3DIdentity.m31;
        *&b.m33 = v75;
        v76 = *&CATransform3DIdentity.m43;
        *&b.m41 = *&CATransform3DIdentity.m41;
        *&b.m43 = v76;
        v77 = *&CATransform3DIdentity.m13;
        *&b.m11 = *&CATransform3DIdentity.m11;
        *&b.m13 = v77;
        v78 = *&CATransform3DIdentity.m23;
        *&b.m21 = *&CATransform3DIdentity.m21;
        *&b.m23 = v78;
        v79 = [NSValue valueWithCATransform3D:&b];
        [(MFTiltedTabView *)self _addSpringAnimationWithKeyPath:@"transform" toLayer:layer fromValue:v74 toValue:v79];
      }

      if (v57 != opacity)
      {
        opacity = [NSNumber numberWithDouble:v57 - opacity];
        [(MFTiltedTabView *)self _addSpringAnimationWithKeyPath:@"opacity" toLayer:layer fromValue:opacity toValue:&off_1006743F0];
      }
    }
  }

  else if (adjustment != 0.0)
  {
    [layer setPosition:{v38, v87}];
  }
}

- (void)_updateSpringAnimationForView:(id)view withBounds:(CGRect)bounds animated:(BOOL)animated
{
  animatedCopy = animated;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  viewCopy = view;
  [viewCopy bounds];
  v11 = v23.origin.x;
  v12 = v23.origin.y;
  v13 = v23.size.width;
  v14 = v23.size.height;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  if (!CGRectEqualToRect(v23, v24))
  {
    [viewCopy setBounds:{x, y, width, height}];
    if (animatedCopy)
    {
      layer = [viewCopy layer];
      v16 = [NSValue valueWithCGPoint:v11 - x, v12 - y];
      v17 = [NSValue valueWithCGPoint:CGPointZero.x, CGPointZero.y];
      [(MFTiltedTabView *)self _addSpringAnimationWithKeyPath:@"bounds.origin" toLayer:layer fromValue:v16 toValue:v17];

      layer2 = [viewCopy layer];
      height = [NSValue valueWithCGSize:v13 - width, v14 - height];
      v20 = [NSValue valueWithCGSize:CGSizeZero.width, CGSizeZero.height];
      [(MFTiltedTabView *)self _addSpringAnimationWithKeyPath:@"bounds.size" toLayer:layer2 fromValue:height toValue:v20];
    }
  }
}

- (id)_makeReorderAnimationWithDirection:(int64_t)direction springDuration:(double)duration tabCount:(double)count
{
  v7 = sub_10020B914(count);
  v8 = __sincos_stret(v7 * 3.14159265 / 180.0);
  v9 = *&qword_1006D5258;
  v10 = [CASpringAnimation animationWithKeyPath:@"position"];
  [v10 setMass:1.0];
  [v10 setStiffness:300.0];
  [v10 setDamping:400.0];
  v11 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  [v10 setTimingFunction:v11];

  v12 = [NSValue valueWithCGPoint:0.0, v9 * v8.__cosval];
  v13 = [NSValue valueWithCGPoint:CGPointZero.x, CGPointZero.y];
  sub_10022283C(v10, v12, v13, direction);

  [v10 setDuration:duration];
  [v10 setFillMode:kCAFillModeBoth];
  [v10 setAdditive:1];
  v14 = [CASpringAnimation animationWithKeyPath:@"zPosition"];
  [v14 setMass:1.0];
  [v14 setStiffness:300.0];
  [v14 setDamping:400.0];
  v15 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  [v14 setTimingFunction:v15];

  v16 = [NSNumber numberWithDouble:-(v8.__sinval * v9)];
  sub_10022283C(v14, v16, &off_1006743F0, direction);

  [v14 setDuration:duration];
  [v14 setFillMode:kCAFillModeBoth];
  [v14 setAdditive:1];
  v17 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  sub_10022283C(v17, &off_100674408, &off_1006743F0, direction);
  if (direction < 1)
  {
    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
  }

  else
  {
    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  }
  v18 = ;
  [v17 setTimingFunction:v18];

  [v17 setDuration:*&qword_1006D5210];
  [v17 setFillMode:kCAFillModeBoth];
  [v17 setAdditive:1];
  v19 = +[CAAnimationGroup animation];
  v24[0] = v10;
  v24[1] = v14;
  v24[2] = v17;
  v20 = [NSArray arrayWithObjects:v24 count:3];
  [v19 setAnimations:v20];

  [v19 setDuration:duration];
  UIAnimationDragCoefficient();
  *&v22 = 1.0 / v21;
  [v19 setSpeed:v22];
  [v19 setFillMode:kCAFillModeBoth];

  return v19;
}

- (void)_stopReorderingItem:(id)item withFinalTimeAdjustment:(double)adjustment tabCount:(double)count
{
  itemCopy = item;
  [itemCopy setReordering:0];
  [itemCopy setIndexForLayout:0x7FFFFFFFFFFFFFFFLL];
  layer = [itemCopy layer];
  [layer removeAnimationForKey:@"reorder-animation"];
  [(MFTiltedTabView *)self setNeedsLayout];
  if (adjustment <= 1.0)
  {
    adjustmentCopy = adjustment;
  }

  else
  {
    adjustmentCopy = 1.0;
  }

  v10 = fmin(*&qword_1006D5200 / *&qword_1006D5210 + (1.0 - adjustmentCopy) * 2.0, 1.0);
  if (v10 > 0.001)
  {
    v11 = [(MFTiltedTabView *)self _makeReorderAnimationWithDirection:1 springDuration:*&qword_1006D5208 tabCount:count];
    v12 = 1.0 / v10;
    *&v12 = 1.0 / v10;
    [v11 setSpeed:v12];
    [layer addAnimation:v11 forKey:0];
  }
}

- (void)_updateReorderAnimationBeginTimeForLayer:(id)layer withTimeAdjustment:(double)adjustment
{
  layerCopy = layer;
  v5 = [layerCopy animationForKey:@"reorder-animation"];
  v6 = [v5 valueForKey:@"base-begin-time"];
  [v6 doubleValue];
  v8 = v7;

  v9 = *&qword_1006D5210;
  [v5 beginTime];
  v11 = v8 - adjustment * v9;
  if (v10 == 0.0 || v11 < v10)
  {
    [v5 setValue:&__kCFBooleanTrue forKey:@"being-replaced"];
    v12 = [v5 mutableCopy];

    [v12 setValue:&__kCFBooleanFalse forKey:@"being-replaced"];
    [v12 setBeginTime:v11];
    [layerCopy addAnimation:v12 forKey:@"reorder-animation"];
  }

  else
  {
    v12 = v5;
  }
}

- (void)_updateReorderAnimationsForItem:(id)item withTimeAdjustment:(double)adjustment tabCount:(double)count createIfNecessary:(BOOL)necessary
{
  itemCopy = item;
  layer = [itemCopy layer];
  v9 = [layer animationForKey:@"reorder-animation"];
  if (v9)
  {
    v10 = 0.0;
    if (adjustment >= 0.0 && (v10 = adjustment, adjustment >= 1.0))
    {
      [MFTiltedTabView _stopReorderingItem:"_stopReorderingItem:withFinalTimeAdjustment:tabCount:" withFinalTimeAdjustment:itemCopy tabCount:?];
    }

    else
    {
      CACurrentMediaTime();
      [(MFTiltedTabView *)self _updateReorderAnimationBeginTimeForLayer:layer withTimeAdjustment:v10];
    }
  }
}

- (double)_spaceBetweenTabsWithCount:(double)count
{
  [(MFTiltedTabView *)self _tabLayoutBounds];
  v6 = v5 * 0.07 + 77.0;
  if (count >= 1.0)
  {
    v7 = v5;
    [(MFTiltedTabView *)self _topAreaHeightForTabsWithCount:count];
    v9 = (v7 - v8 - *&qword_1006D52A0 + unk_1006D52A8) / count;
    if (v9 >= v6)
    {
      return v9;
    }
  }

  return v6;
}

- (CGSize)_contentSizeForItemCount:(double)count
{
  [(MFTiltedTabView *)self _tabLayoutBounds];
  v6 = v5;
  [(MFTiltedTabView *)self _spaceBetweenTabsWithCount:count];
  v8 = v7;
  [(MFTiltedTabView *)self _topAreaHeightForTabsWithCount:count];
  v10 = v9 + v8 * count + *&qword_1006D52A0;
  v11 = v6;
  result.height = v10;
  result.width = v11;
  return result;
}

- (double)_baseOffsetForItem:(id)item index:(unint64_t *)index count:(double *)count
{
  itemCopy = item;
  indexForLayout = [(_MFTiltedTabItemView *)itemCopy indexForLayout];
  if (indexForLayout == 0x7FFFFFFFFFFFFFFFLL)
  {
    indexForLayout = [(MFTiltedTabView *)self _indexOfVisibleItem:itemCopy];
    if (indexForLayout == 0x7FFFFFFFFFFFFFFFLL)
    {
      indexForLayout = [(MFTiltedTabView *)self _numberOfItems];
      if (indexForLayout == 0x7FFFFFFFFFFFFFFFLL)
      {
        __assert_rtn("[MFTiltedTabView _baseOffsetForItem:index:count:]", "MFTiltedTabView.m", 1515, "itemIndex != NSNotFound");
      }
    }
  }

  if ([(_MFTiltedTabItemView *)itemCopy countForLayout]== 0x7FFFFFFFFFFFFFFFLL)
  {
    _numberOfItems = [(MFTiltedTabView *)self _numberOfItems];
  }

  else
  {
    _numberOfItems = [(_MFTiltedTabItemView *)itemCopy countForLayout];
  }

  v11 = _numberOfItems;
  if (self->_interactivelyReorderingItem != itemCopy)
  {
    [(MFTiltedTabView *)self _baseOffsetForItemAtIndex:indexForLayout withItemCountForLayout:v11];
    interactiveReorderOffset = v12;
    if (!index)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  interactiveReorderOffset = self->_interactiveReorderOffset;
  if (index)
  {
LABEL_9:
    *index = indexForLayout;
  }

LABEL_10:
  if (count)
  {
    *count = v11;
  }

  return interactiveReorderOffset;
}

- (void)_invalidateAllSnapshotsForce:(BOOL)force
{
  if (self->_presented)
  {
    forceCopy = force;
    if ([(NSArray *)self->_itemsInvolvedInAnimation count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = self->_itemsInvolvedInAnimation;
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        v7 = *v21;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v21 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v20 + 1) + 8 * i);
            v10 = [(MFTiltedTabView *)self _indexOfVisibleItem:v9, v20];
            [v9 frame];
            v12 = v11;
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained tiltedTabView:self frameForItemAtIndex:v10];
            v15 = v14;

            if (v15 != v12 || forceCopy)
            {
              if ([(MFTiltedTabView *)self rotationStyle])
              {
                borrowedContentView = [v9 borrowedContentView];
                [borrowedContentView setAlpha:0.0];

                v18 = +[UIColor systemBackgroundColor];
                contentClipperView = [v9 contentClipperView];
                [contentClipperView setBackgroundColor:v18];
              }
            }
          }

          v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v6);
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MFTiltedTabView;
  [(MFTiltedTabView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(MFTiltedTabView *)self traitCollection];
  v6 = [traitCollection mf_traitDifferenceAffectsTextLayout:changeCopy];

  traitCollection2 = [(MFTiltedTabView *)self traitCollection];
  v8 = [traitCollection2 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if ((v6 | v8))
  {
    [(MFTiltedTabView *)self _invalidateAllSnapshotsForce:1];
    [(MFTiltedTabView *)self updateSnapshotsIfNecessary];
  }
}

- (int64_t)_currentOrientation
{
  window = [(MFTiltedTabView *)self window];

  if (!window)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MFTiltedTabView.m" lineNumber:1577 description:@"Asking for currentOrientation without a window is not supported."];
  }

  window2 = [(MFTiltedTabView *)self window];
  windowScene = [window2 windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return interfaceOrientation;
}

- (id)visibleIndexSet
{
  v3 = +[NSMutableIndexSet indexSet];
  [(UIScrollView *)self->_scrollView contentOffset];
  v5 = v4;
  [(UIScrollView *)self->_scrollView bounds];
  v6 = 0;
  v8 = v5 + v7;
  while (v6 < [(MFTiltedTabView *)self _numberOfItems])
  {
    [(MFTiltedTabView *)self _baseOffsetForItemAtIndex:v6 withItemCountForLayout:[(MFTiltedTabView *)self _numberOfItems]];
    if (v9 + 200.0 > v5 && v9 < v8)
    {
      [v3 addIndex:v6];
    }

    ++v6;
  }

  return v3;
}

- (void)updateSnapshotsIfNecessary
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_itemsInvolvedInAnimation;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v3)
  {
    v21 = *v36;
    origin = CGRectZero.origin;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v35 + 1) + 8 * i);
        contentClipperView = [v5 contentClipperView];
        v7 = [contentClipperView snapshotViewAfterScreenUpdates:0];

        contentClipperView2 = [v5 contentClipperView];
        v9 = contentClipperView2;
        if (contentClipperView2)
        {
          [contentClipperView2 transform];
        }

        else
        {
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
        }

        v31[0] = v32;
        v31[1] = v33;
        v31[2] = v34;
        [v7 setTransform:v31];

        contentClipperView3 = [v5 contentClipperView];
        [contentClipperView3 frame];
        [v7 setFrame:?];

        contentClipperView4 = [v5 contentClipperView];
        [v5 insertSubview:v7 aboveSubview:contentClipperView4];

        v12 = [(MFTiltedTabView *)self _indexOfVisibleItem:v5];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1002237E8;
        v30[3] = &unk_10064CF10;
        v30[4] = self;
        v30[5] = v5;
        v30[6] = v12;
        [UIView performWithoutAnimation:v30];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained tiltedTabView:self frameForItemAtIndex:v12];
        v15 = v14;
        v17 = v16;

        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100223C28;
        v24[3] = &unk_10064E000;
        v25 = v7;
        v26 = v5;
        v27 = origin;
        v28 = v15;
        v29 = v17;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100223D50;
        v22[3] = &unk_10064C570;
        v18 = v25;
        v23 = v18;
        [UIView animateWithDuration:v24 animations:v22 completion:0.22];
      }

      v3 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v3);
  }

  [(MFTiltedTabView *)self layoutItemsAnimated:0];
}

- (void)layoutItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(MFTiltedTabView *)self bounds];
  if (self->_suppressingScrollViewDidScroll)
  {
    sub_10048C414();
  }

  v8 = v4;
  v9 = v5;
  v10 = v7;
  self->_suppressingScrollViewDidScroll = 1;
  v11 = v6;
  [(UIScrollView *)self->_scrollView frame];
  v249.origin.x = v12;
  v249.origin.y = v13;
  v249.size.width = v14;
  v249.size.height = v15;
  v241.origin.x = v8;
  v241.origin.y = v9;
  v180 = v11;
  v241.size.width = v11;
  v192 = v10;
  v241.size.height = v10;
  if (!CGRectEqualToRect(v241, v249))
  {
    [(UIScrollView *)self->_scrollView setFrame:v8, v9, v11, v10];
  }

  _numberOfItems = [(MFTiltedTabView *)self _numberOfItems];
  [(UIScrollView *)self->_scrollView contentOffset];
  v18 = v17;
  scrollView = self->_scrollView;
  v179 = _numberOfItems;
  [(MFTiltedTabView *)self _contentSizeForItemCount:?];
  [(UIScrollView *)scrollView setContentSize:?];
  [(UIScrollView *)self->_scrollView contentOffset];
  v196 = v20;
  [(UIScrollView *)self->_scrollView setScrollEnabled:self->_presented];
  self->_suppressingScrollViewDidScroll = 0;
  if (self->_selectedItem)
  {
    v21 = [(MFTiltedTabView *)self _indexOfVisibleItem:?]!= 0;
  }

  else
  {
    v21 = 1;
  }

  v191 = v21;
  v238 = 0u;
  v237 = 0u;
  v236 = 0u;
  v235 = 0u;
  obj = self->_itemsInvolvedInAnimation;
  v22 = [(NSArray *)obj countByEnumeratingWithState:&v235 objects:v240 count:16];
  if (v22)
  {
    v199 = 0;
    v195 = v196 - v18;
    v190 = *v236;
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
    bottom = UIEdgeInsetsZero.bottom;
    y = CGPointZero.y;
    v194 = fmax(-v196, 0.0);
    v182 = v10 + v196;
    v186 = CGRectNull.origin.y;
    height = CGRectNull.size.height;
    width = CGRectNull.size.width;
    v183 = CGRectZero.origin.y;
    do
    {
      v193 = v22;
      for (i = 0; i != v193; i = i + 1)
      {
        if (*v236 != v190)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v235 + 1) + 8 * i);
        self->_applyVelocityOnlyToHorizontalPosition = v24 == self->_onlyHorizontalVelocityItem;
        v212 = ![(_MFTiltedTabItemView *)v24 isClosing]&& [(MFTiltedTabView *)self _indexOfVisibleItem:v24]== 0x7FFFFFFFFFFFFFFFLL;
        v25 = [(MFTiltedTabView *)self _indexOfVisibleItem:v24];
        v234 = 0xAAAAAAAAAAAAAAAALL;
        v233 = NAN;
        [(MFTiltedTabView *)self _baseOffsetForItem:v24 index:&v234 count:&v233];
        v27 = v26;
        v208 = *&CATransform3DIdentity.m33;
        v209 = *&CATransform3DIdentity.m31;
        *&v232.m31 = v209;
        *&v232.m33 = v208;
        v206 = *&CATransform3DIdentity.m43;
        v207 = *&CATransform3DIdentity.m41;
        *&v232.m41 = v207;
        *&v232.m43 = v206;
        v204 = *&CATransform3DIdentity.m13;
        v205 = *&CATransform3DIdentity.m11;
        *&v232.m11 = *&CATransform3DIdentity.m11;
        *&v232.m13 = v204;
        v202 = *&CATransform3DIdentity.m23;
        v203 = *&CATransform3DIdentity.m21;
        *&v232.m21 = v203;
        *&v232.m23 = v202;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v29 = left;
        top = UIEdgeInsetsZero.top;
        v31 = right;
        v30 = bottom;
        if (![(_MFTiltedTabItemView *)v24 isClosing])
        {
          [WeakRetained tiltedTabView:self expanded:self->_presented edgeInsetsForItemAtIndex:v25];
          top = v32;
          v29 = v33;
          v30 = v34;
          v31 = v35;
          if (WeakRetained)
          {
            [WeakRetained tiltedTabView:self expanded:self->_presented layerTransformForItemAtIndex:v25];
          }

          else
          {
            memset(&v239, 0, sizeof(v239));
          }

          v232 = v239;
        }

        [(_MFTiltedTabItemView *)v24 setContentClippingInsets:top, v29, v30, v31];
        v200 = 0.0;
        if (!v212 && self->_presented)
        {
          [(MFTiltedTabView *)self _scrollingEffectFactorForTabsWithCount:v233];
          v200 = v36;
        }

        if ([(_MFTiltedTabItemView *)v24 isClosing])
        {
          [(_MFTiltedTabItemView *)v24 bounds];
          v216 = v37;
          rect = v38;
          v40 = v39;
          v42 = v41;
        }

        else
        {
          superview = [(_MFTiltedTabItemView *)v24 superview];
          [WeakRetained tiltedTabView:self frameForItemAtIndex:v25];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;
          superview2 = [(MFTiltedTabView *)self superview];
          [superview convertRect:superview2 fromView:{v45, v47, v49, v51}];
          v216 = v53;
          rect = v54;
          v40 = v55;
          v42 = v56;
        }

        if ([(MFTiltedTabView *)self rotationStyle]!= 2)
        {
          capturedInterfaceOrientation = [(_MFTiltedTabItemView *)v24 capturedInterfaceOrientation];
          _currentOrientation = [(MFTiltedTabView *)self _currentOrientation];
          LOBYTE(v60) = 0;
          v61 = 0;
          *&v239.m11 = xmmword_1004FC5E0;
          *&v239.m13 = xmmword_1004FC5F0;
          v62 = 0.0;
          for (j = 1; ; j = capturedInterfaceOrientation)
          {
            while (j != capturedInterfaceOrientation)
            {
              v60 = (v60 + 1) & 3;
              v62 = v62 + -1.57079633;
              j = *(&v239.m11 + v60);
            }

            if (*(&v239.m11 + v61) == _currentOrientation)
            {
              break;
            }

            v61 = (v61 + 1) & 3;
            v62 = v62 + 1.57079633;
          }

          *&v64 = -1;
          *(&v64 + 1) = -1;
          *&v239.m43 = v64;
          *&v239.m41 = v64;
          *&v239.m33 = v64;
          *&v239.m31 = v64;
          *&v239.m23 = v64;
          *&v239.m21 = v64;
          *&v239.m13 = v64;
          *&v239.m11 = v64;
          CATransform3DMakeRotation(&v239, v62, 0.0, 0.0, 1.0);
          v231 = v239;
          [(_MFTiltedTabItemView *)v24 setContentTransform:&v231];
          v231 = v239;
          CATransform3DGetAffineTransform(&v230, &v231);
          v242.origin.x = v40;
          v242.origin.y = v42;
          v242.size.width = v216;
          v242.size.height = rect;
          *&v57 = CGRectApplyAffineTransform(v242, &v230);
          v42 = v65;
          v216 = v66;
          rect = v67;
        }

        [(MFTiltedTabView *)self bounds];
        v211 = (v68 - v216) * 0.5;
        if (self->_presented)
        {
          v69 = v27;
        }

        else
        {
          [(_MFTiltedTabItemView *)v24 contentClippingInsets];
          v71 = v70;
          [(_MFTiltedTabItemView *)v24 contentClippingInsets];
          v211 = v211 + v71;
          v69 = v27 + v72;
        }

        borrowedContentView = [(_MFTiltedTabItemView *)v24 borrowedContentView];
        layer = [borrowedContentView layer];

        borrowedContentView2 = [(_MFTiltedTabItemView *)v24 borrowedContentView];
        [borrowedContentView2 bounds];
        MidX = CGRectGetMidX(v243);
        borrowedContentView3 = [(_MFTiltedTabItemView *)v24 borrowedContentView];
        [borrowedContentView3 bounds];
        MidY = CGRectGetMidY(v244);

        [(_MFTiltedTabItemView *)v24 contentClippingInsets];
        v80 = v79;
        [(_MFTiltedTabItemView *)v24 contentClippingInsets];
        v82 = v81;
        [layer position];
        v84 = v83;
        [layer position];
        v85 = MidX - v80;
        v86 = MidY - v82;
        v88 = [NSValue valueWithCGPoint:v84 - v85, v87 - v86];
        v89 = [NSValue valueWithCGPoint:CGPointZero.x, y];
        [(MFTiltedTabView *)self _addSpringAnimationWithKeyPath:@"position" toLayer:layer fromValue:v88 toValue:v89];

        [layer setPosition:{v85, v86}];
        contentClipperView = [(_MFTiltedTabItemView *)v24 contentClipperView];
        [(_MFTiltedTabItemView *)v24 bounds];
        v91 = v90;
        v93 = v92;
        [(_MFTiltedTabItemView *)v24 contentClippingInsets];
        [(MFTiltedTabView *)self _updateSpringAnimationForView:contentClipperView withBounds:animatedCopy animated:CGPointZero.x, y, v91 - (v94 + v95), v93 - (v96 + v97)];
        maskCutoutView = [(_MFTiltedTabItemView *)v24 maskCutoutView];
        if (maskCutoutView)
        {
          [contentClipperView frame];
          [maskCutoutView setFrame:?];
          if (animatedCopy)
          {
            v99 = [MFSpringAnimation springAnimationWithKeyPath:@"path" fromValue:0 toValue:0];
            [v99 setAdditive:0];
            layer2 = [maskCutoutView layer];
            [layer2 addAnimation:v99 forKey:0];
          }
        }

        [WeakRetained tiltedTabView:self alphaValueForItemAtIndex:v25];
        [(_MFTiltedTabItemView *)v24 setAlpha:?];
        if ([(_MFTiltedTabItemView *)v24 isReordering])
        {
          v101 = [(MFTiltedTabView *)self _indexOfVisibleItem:v24];
          v102 = 0.0;
          if (v101 < v234)
          {
            v102 = -1.0;
          }

          if (v101 > v234)
          {
            v102 = 1.0;
          }

          [(MFTiltedTabView *)self _updateReorderAnimationsForItem:v24 withTimeAdjustment:animatedCopy tabCount:1.0 - (self->_interactiveReorderOffset - v69) * v102 / *&qword_1006D5250 createIfNecessary:v233];
          v199 = 1;
        }

        else
        {
          v199 |= v24 == self->_interactivelyReorderingItem;
        }

        if (self->_presented || (v103 = v196, [(_MFTiltedTabItemView *)v24 isClosing]))
        {
          v104 = v182;
          if (!v212)
          {
            [(MFTiltedTabView *)self _topAreaHeightForTabsWithCount:v233];
            v104 = v69 + v105;
          }

          v103 = v104 * (v194 * *&qword_1006D52B8 + 1.0);
        }

        if (v212)
        {
          v106 = *&qword_1006D52B0;
        }

        else
        {
          v106 = sub_10020B914(v233);
        }

        v107 = *&qword_1006D5240;
        if (!self->_presented)
        {
          v107 = 0.0;
        }

        v213 = v107;
        if (v24 == self->_pressedItem || v24 == self->_interactivelyClosingItem || v24 == self->_interactivelyReorderingItem || [(_MFTiltedTabItemView *)v24 isClosing])
        {
          v106 = v106 + -2.0;
          v103 = v103 + -10.0;
        }

        v108 = (v27 - v196) / v192;
        if (self->_presented)
        {
          v213 = v213 + v200 * 0.2 * sub_10020BAAC((v27 - v196) / v192, v192);
        }

        if ([(_MFTiltedTabItemView *)v24 isClosing])
        {
          [(MFTiltedTabView *)self _tabCloseAnimationSlideDistance];
          v110 = v109;
          [(_MFTiltedTabItemView *)v24 verticalScrollAdjustment];
          v112 = v195 + v111;
          [(_MFTiltedTabItemView *)v24 setVerticalScrollAdjustment:v195 + v111];
          [(NSMutableSet *)self->_itemsCurrentlyClosing addObject:v24];
          v211 = -(v216 + v110);
          v103 = v103 + v112;
        }

        else if (v24 == self->_interactivelyClosingItem)
        {
          [(MFTiltedTabView *)self _tabCloseAnimationSlideDistance];
          v211 = -(v113 * self->_interactiveCloseProgress);
        }

        presented = self->_presented;
        if (self->_presented)
        {
          v115 = v103;
        }

        else
        {
          v115 = v42;
        }

        v197 = v115;
        v239 = v232;
        if (presented)
        {
          v116 = v200 * sub_10020BA5C(v108) + (v106 + v194 * *&qword_1006D52C0) * -3.14159265 / 180.0;
          if (v116 != 0.00000011920929)
          {
            *&v117 = -1;
            *(&v117 + 1) = -1;
            *&v231.m43 = v117;
            *&v231.m41 = v117;
            *&v231.m33 = v117;
            *&v231.m31 = v117;
            *&v231.m23 = v117;
            *&v231.m21 = v117;
            *&v231.m13 = v117;
            *&v231.m11 = v117;
            CATransform3DMakeRotation(&v231, v116, 1.0, 0.0, 0.0);
            a = v232;
            b = v231;
            CATransform3DConcat(&v230, &a, &b);
            v239 = v230;
          }
        }

        selectedItem = self->_selectedItem;
        if (selectedItem != 0 && v191)
        {
          if (v234)
          {
            v119 = v24 == selectedItem;
          }

          else
          {
            v119 = 1;
          }

          v120 = v213 + -20.0;
          if (v119)
          {
            v120 = v213;
          }

          if (v24 == selectedItem)
          {
            v120 = 1.0;
          }

          v213 = v120;
          v199 = 1;
        }

        if (self->_presented)
        {
          [(MFTiltedTabView *)self frame];
          v122 = v121;
          v124 = v123;
          v126 = v125;
          v128 = v127;
          [(MFTiltedTabView *)self safeAreaInsets];
          v130 = v129;
          v132 = v131;
          v134 = v133;
          v136 = v135;
          v245.origin.x = v122;
          v245.origin.y = v124;
          v245.size.width = v126;
          v245.size.height = v128;
          v201 = CGRectGetWidth(v245);
          v246.origin.x = v122 + v132;
          v246.origin.y = v124 + v130;
          v246.size.width = v126 - (v132 + v136);
          v246.size.height = v128 - (v130 + v134);
          v137 = CGRectGetWidth(v246);
          layer3 = [(UIScrollView *)self->_scrollView layer];
          v139 = layer3;
          if (layer3)
          {
            [layer3 sublayerTransform];
            v140 = *(&v225 + 1);
          }

          else
          {
            v226 = 0u;
            v227 = 0u;
            v224 = 0u;
            v225 = 0u;
            v222 = 0u;
            v223 = 0u;
            v140 = 0.0;
            v220 = 0u;
            v221 = 0u;
          }

          v141 = v213 + -1.0 / v140 - v201 * (-1.0 / v140) / v137;
        }

        else
        {
          v141 = v213;
        }

        if (v141 != 0.0)
        {
          *&v142 = -1;
          *(&v142 + 1) = -1;
          *&v231.m43 = v142;
          *&v231.m41 = v142;
          *&v231.m33 = v142;
          *&v231.m31 = v142;
          *&v231.m23 = v142;
          *&v231.m21 = v142;
          *&v231.m13 = v142;
          *&v231.m11 = v142;
          CATransform3DMakeTranslation(&v231, 0.0, 0.0, v141);
          a = v239;
          b = v231;
          CATransform3DConcat(&v230, &a, &b);
          v239 = v230;
        }

        v231 = v239;
        v230 = v232;
        [(MFTiltedTabView *)self _updateSpringAnimationForView:v24 withFrame:&v231 transform:&v230 userTransform:animatedCopy opacity:v211 verticalScrollAdjustment:v197 animated:v216, rect, 1.0, v195];
        [(_MFTiltedTabItemView *)v24 layoutSubviews];
        [WeakRetained tiltedTabView:self headerHeightForItemAtIndex:v25];
        v144 = v143;
        [(_MFTiltedTabItemView *)v24 setTopBackdropHeight:?];
        [(_MFTiltedTabItemView *)v24 setTopBackdropScaled:self->_presented];
        closeButtonWrapperView = [(_MFTiltedTabItemView *)v24 closeButtonWrapperView];
        superview3 = [closeButtonWrapperView superview];
        [superview3 bounds];
        v148 = v147;
        v149 = sub_10020B8F0();

        v150 = 0.8;
        if (self->_presented)
        {
          v150 = v144 / v149;
        }

        v151 = 0.0;
        if (!self->_presented)
        {
          v151 = v144 / 1.6 + v149 * -0.5;
        }

        CATransform3DMakeScale(&v231, 1.0, v150, 1.0);
        *&v230.m31 = v209;
        *&v230.m33 = v208;
        *&v230.m41 = v207;
        *&v230.m43 = v206;
        *&v230.m11 = v205;
        *&v230.m13 = v204;
        *&v230.m21 = v203;
        *&v230.m23 = v202;
        [(MFTiltedTabView *)self _updateSpringAnimationForView:closeButtonWrapperView withFrame:&v231 transform:&v230 userTransform:animatedCopy opacity:0.0 verticalScrollAdjustment:v151 animated:v148, v149, 1.0, 0.0];
        if (self->_presented)
        {
          v152 = [WeakRetained tiltedTabView:self canCloseItemAtIndex:v25];
        }

        else
        {
          v152 = 0;
        }

        [(_MFTiltedTabItemView *)v24 layoutHeaderViewAnimated:animatedCopy closeButton:v152];
        v154 = height;
        v153 = width;
        v156 = v186;
        x = CGRectNull.origin.x;
        if (v152)
        {
          v157 = [(_MFTiltedTabItemView *)v24 closeButton:CGRectNull.origin.x];
          [v157 bounds];
          UIRectGetCenter();
          [v157 convertPoint:self->_scrollView toView:?];
          v159 = v158;
          v161 = v160;
          if (MUISolariumFeatureEnabled())
          {
            v154 = 76.0;
          }

          else
          {
            v154 = *&qword_1006D5230;
          }

          x = v159 - v154 * 0.5;
          v156 = v161 - v154 * 0.5;
          v153 = v154;
        }

        [(_MFTiltedTabItemView *)v24 setCloseButtonHitRect:x, v156, v153, v154];
        [(_MFTiltedTabItemView *)v24 contentClippingInsets];
        v163 = v162;
        contentShadowView = [(_MFTiltedTabItemView *)v24 contentShadowView];
        v165 = 0.0;
        if (self->_presented)
        {
          sub_10020B9F4();
          v165 = v166;
        }

        *&v231.m31 = v209;
        *&v231.m33 = v208;
        *&v231.m41 = v207;
        *&v231.m43 = v206;
        *&v231.m11 = v205;
        *&v231.m13 = v204;
        *&v231.m21 = v203;
        *&v231.m23 = v202;
        *&v230.m31 = v209;
        *&v230.m33 = v208;
        *&v230.m41 = v207;
        *&v230.m43 = v206;
        *&v230.m11 = v205;
        *&v230.m13 = v204;
        *&v230.m21 = v203;
        *&v230.m23 = v202;
        [(MFTiltedTabView *)self _updateSpringAnimationForView:contentShadowView withFrame:&v231 transform:&v230 userTransform:animatedCopy opacity:CGRectZero.origin.x verticalScrollAdjustment:v183 animated:v216, rect - v163, v165, 0.0];
        if (v25)
        {
          headerView = [(DockedPlaceholderView *)v24 headerView];
          [(_MFTiltedTabItemView *)v24 bringSubviewToFront:headerView];

          closeButtonWrapperView2 = [(_MFTiltedTabItemView *)v24 closeButtonWrapperView];
          [(_MFTiltedTabItemView *)v24 bringSubviewToFront:closeButtonWrapperView2];

          v219[0] = _NSConcreteStackBlock;
          v219[1] = 3221225472;
          v219[2] = sub_100225414;
          v219[3] = &unk_10064C660;
          v219[4] = self;
          v219[5] = v24;
          v169 = objc_retainBlock(v219);
          v170 = v169;
          if (animatedCopy)
          {
            [UIView animateWithDuration:327680 delay:v169 options:0 animations:0.22 completion:0.0];
          }

          else
          {
            (v169[2])(v169);
          }
        }
      }

      v22 = [(NSArray *)obj countByEnumeratingWithState:&v235 objects:v240 count:16];
    }

    while (v22);
  }

  else
  {
    v199 = 0;
  }

  self->_applyVelocityOnlyToHorizontalPosition = 0;
  v171 = 0.0;
  if (self->_presented)
  {
    [(MFTiltedTabView *)self _topAreaHeightForTabsWithCount:v179];
    v171 = *&qword_1006D5290 * fmax(fmin(v196 / v172, 1.0), 0.0);
  }

  v218[0] = _NSConcreteStackBlock;
  v218[1] = 3221225472;
  v218[2] = sub_1002254C8;
  v218[3] = &unk_10064DE08;
  v218[4] = self;
  *&v218[5] = v171;
  v173 = objc_retainBlock(v218);
  v174 = v173;
  if (animatedCopy)
  {
    [UIView animateWithDuration:v173 animations:0.25];
  }

  else
  {
    (v173[2])(v173);
  }

  [(MFTiltedTabView *)self _statusBarHeight];
  v247.size.height = v192;
  v247.origin.y = -(v192 + v175 - *&qword_1006D5298);
  v247.size.width = v180;
  v247.origin.x = 0.0;
  v248 = CGRectInset(v247, -v180, 0.0);
  v176 = v248.size.height;
  [(_TabGradientView *)self->_statusBarGradient setFrame:v248.origin.x, v248.origin.y, v248.size.width];
  gradientLayer = [(_TabGradientView *)self->_statusBarGradient gradientLayer];
  [gradientLayer setStartPoint:{0.5, 1.0 - *&qword_1006D5298 / v176}];
  [gradientLayer setEndPoint:{0.5, 1.0}];
  layer4 = [(UIScrollView *)self->_scrollView layer];
  [layer4 setSortsSublayers:v199 & 1];

  sub_1002254E4(self);
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (!self->_suppressingScrollViewDidScroll)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tiltedTabViewDidScroll:self];

    [(MFTiltedTabView *)self setNeedsLayout];
  }
}

- (MFTiltedTabViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end