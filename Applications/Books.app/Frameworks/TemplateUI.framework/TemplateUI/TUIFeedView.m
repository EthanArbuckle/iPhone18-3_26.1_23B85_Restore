@interface TUIFeedView
+ (BOOL)areFeedUpdatesAnimated;
+ (void)performAnimatedFeedUpdates:(id)a3;
- (BOOL)_shouldExtendVisibleBounds:(CGRect)a3;
- (BOOL)touchesShouldCancelInContentView:(id)a3;
- (CGPoint)contentOffsetFromProposedContentOffset:(CGPoint)a3 atScrollPosition:(unint64_t)a4;
- (CGRect)_visibleBounds;
- (TUIFeedControllerHosting)controllerHost;
- (TUIFeedView)initWithCoder:(id)a3;
- (TUIFeedView)initWithFrame:(CGRect)a3;
- (TUIFeedViewRectScrollingDelegate)rectScrollingDelegate;
- (TUIFeedViewScrollDelegate)scrollingDelegate;
- (TUIFeedViewSubviewsDelegate)subviewsDelegate;
- (TUIViewFactory)viewFactory;
- (UIEdgeInsets)contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)a3;
- (double)_contentBottomForScrollObservation;
- (id)descendentViewWithIdentifier:(id)a3;
- (id)descendentViewWithRefId:(id)a3;
- (id)liveLayoutAttributesForRenderModel:(id)a3;
- (id)viewAtIndexPath:(id)a3;
- (id)visibleViews;
- (void)_invalidateImpressionsWithContext:(id)a3;
- (void)_invalidateIndexPaths:(id)a3;
- (void)_tui_commonInit;
- (void)_updateHasOverlays;
- (void)_updateInvalidatedSubviews;
- (void)_updateLayoutAttributes:(id)a3;
- (void)_updateVisibleOverlays;
- (void)_updateVisibleSubviews;
- (void)addSectionView:(id)a3 respectingZIndex:(BOOL)a4;
- (void)appendRenderOverrideObservers:(id)a3;
- (void)applyUpdateCollection:(id)a3 updates:(id)a4;
- (void)deleteSections:(id)a3;
- (void)insertSections:(id)a3;
- (void)invalidateRenderReferenceOverride:(id)a3;
- (void)invalidateWithContext:(id)a3;
- (void)layoutSubviews;
- (void)performBatchUpdatesWithRenderModel:(id)a3 flags:(unint64_t)a4 block:(id)a5 completion:(id)a6;
- (void)reloadWithRenderModel:(id)a3;
- (void)renderReferenceOverridesChanged;
- (void)restoreViewStateForVisibleViews;
- (void)resumeReuseOfView:(id)a3;
- (void)saveViewStateForVisibleViews;
- (void)scrollToItemsMatchingQuery:(id)a3 atScrollPosition:(unint64_t)a4 animated:(BOOL)a5 skipVoiceOverFocus:(BOOL)a6;
- (void)setBounds:(CGRect)a3;
- (void)setControllerHost:(id)a3;
- (void)setCurrentViewState:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setImpressionSnapshot:(id)a3;
- (void)setRenderModel:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setStats:(id)a3;
- (void)suspendReuseOfView:(id)a3;
- (void)updateLiveTransformsIfNecessaryWithViewSize:(double)a3 contentOffset:(double)a4 contentInsets:(double)a5 safeAreaInsets:(double)a6 hasTabBar:(double)a7;
@end

@implementation TUIFeedView

- (TUIFeedView)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUIFeedView;
  v5 = [(TUIFeedView *)&v8 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(TUIFeedView *)v5 _tui_commonInit];
  }

  return v6;
}

- (TUIFeedView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUIFeedView;
  v3 = [(TUIFeedView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUIFeedView *)v3 _tui_commonInit];
  }

  return v4;
}

- (void)_tui_commonInit
{
  size = CGRectNull.size;
  self->_previousVisibleBounds.origin = CGRectNull.origin;
  self->_previousVisibleBounds.size = size;
  sub_129F0C(self);
  v4 = objc_alloc_init(TUILiveFloatingLayoutController);
  liveFloatingLayoutController = self->_liveFloatingLayoutController;
  self->_liveFloatingLayoutController = v4;

  v6 = objc_alloc_init(TUILivePinningLayoutController);
  livePinningLayoutController = self->_livePinningLayoutController;
  self->_livePinningLayoutController = v6;

  v8 = objc_alloc_init(TUILiveOverscrollingLayoutController);
  liveOverscrollingLayoutController = self->_liveOverscrollingLayoutController;
  self->_liveOverscrollingLayoutController = v8;

  v10 = objc_alloc_init(TUIMutableViewState);
  currentViewState = self->_currentViewState;
  self->_currentViewState = v10;

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_scrollViewDidEndDeceleration:" name:_UIScrollViewDidEndDeceleratingNotification object:self];
}

- (void)addSectionView:(id)a3 respectingZIndex:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 renderModel];
  v7 = v6;
  if (v6)
  {
    [v6 config];
    v8 = v37;
  }

  else
  {
    v8 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  v9 = [(TUIFeedView *)self subviews];
  v10 = v9;
  if (v4 && [v9 count])
  {
    v29 = v10;
    v11 = objc_opt_class();
    v12 = [v10 lastObject];
    v13 = TUIDynamicCast(v11, v12);

    if (v13 && (([v13 renderModel], v14 = objc_claimAutoreleasedReturnValue(), (v15 = v14) == 0) ? (v16 = 0, v35 = 0, v36 = 0, v37 = 0) : (objc_msgSend(v14, "config"), v16 = v37), v17 = v16 > v8, v15, !v17))
    {
      [(TUIFeedView *)self addSubview:v5];
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = v29;
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (v19)
      {
        v20 = *v32;
        while (2)
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v31 + 1) + 8 * i);
            v23 = objc_opt_class();
            v24 = TUIDynamicCast(v23, v22);

            v13 = v24;
            if (v24)
            {
              v25 = v24 == v5;
            }

            else
            {
              v25 = 1;
            }

            if (!v25)
            {
              v26 = [v24 renderModel];
              v27 = v26;
              if (v26)
              {
                [v26 config];
                v28 = v37;
              }

              else
              {
                v28 = 0;
                v35 = 0;
                v36 = 0;
                v37 = 0;
              }

              if (v8 < v28)
              {
                [(TUIFeedView *)self insertSubview:v5 belowSubview:v22];
LABEL_32:

                goto LABEL_33;
              }

              if (v8 == v28)
              {
                [(TUIFeedView *)self insertSubview:v5 aboveSubview:v13];
                goto LABEL_32;
              }
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v31 objects:v38 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      [(TUIFeedView *)self addSubview:v5];
    }

LABEL_33:

    v10 = v29;
  }

  else
  {
    [(TUIFeedView *)self addSubview:v5];
  }
}

- (void)setCurrentViewState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_currentViewState != v4)
  {
    if (!v4)
    {
      v5 = objc_alloc_init(TUIMutableViewState);
    }

    objc_storeStrong(&self->_currentViewState, v5);
    sectionModels = self->_sectionModels;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_12B378;
    v7[3] = &unk_2622B0;
    v5 = v5;
    v8 = v5;
    [(NSArray *)sectionModels enumerateObjectsUsingBlock:v7];
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5 = [(TUIFeedView *)self semanticContentAttribute];
  v8.receiver = self;
  v8.super_class = TUIFeedView;
  [(TUIFeedView *)&v8 setSemanticContentAttribute:a3];
  if (v5 != a3)
  {
    sectionModels = self->_sectionModels;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_12B460;
    v7[3] = &unk_2622D0;
    v7[4] = a3;
    [(NSArray *)sectionModels enumerateObjectsUsingBlock:v7];
    sub_129F0C(self);
    [(TUIFeedView *)self reloadWithRenderModel:self->_renderModel];
  }
}

- (void)renderReferenceOverridesChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_controllerHost);
  v3 = [WeakRetained renderOverrideProvider];
  v4 = [v3 renderOverrides];
  overrides = self->_overrides;
  self->_overrides = v4;
}

- (void)setControllerHost:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controllerHost);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_storeWeak(&self->_controllerHost, obj);
    v7 = [obj renderOverrideProvider];
    v8 = [v7 renderOverrides];
    overrides = self->_overrides;
    self->_overrides = v8;

    v5 = obj;
  }
}

- (void)invalidateRenderReferenceOverride:(id)a3
{
  v6 = a3;
  renderModel = self->_renderModel;
  v5 = [(TUIRenderModelCollection *)renderModel uids];
  [(TUIRenderModelCollection *)renderModel invalidateRenderOverride:v6 flags:0 feedView:self uids:v5];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TUIFeedView *)self bounds];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10))
  {
    v8.receiver = self;
    v8.super_class = TUIFeedView;
    [(TUIFeedView *)&v8 setBounds:x, y, width, height];
    if ((*&self->_flags & 1) == 0)
    {
      *&self->_flags |= 1u;
      [(TUIFeedView *)self setNeedsLayout];
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TUIFeedView *)self frame];
  v27.origin.x = v8;
  v27.origin.y = v9;
  v27.size.width = v10;
  v27.size.height = v11;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (!CGRectEqualToRect(v25, v27))
  {
    [(TUIFeedView *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v24.receiver = self;
    v24.super_class = TUIFeedView;
    [(TUIFeedView *)&v24 setFrame:x, y, width, height];
    [(TUIFeedView *)self bounds];
    v28.origin.x = v20;
    v28.origin.y = v21;
    v28.size.width = v22;
    v28.size.height = v23;
    v26.origin.x = v13;
    v26.origin.y = v15;
    v26.size.width = v17;
    v26.size.height = v19;
    if (!CGRectEqualToRect(v26, v28) && (*&self->_flags & 1) == 0)
    {
      *&self->_flags |= 1u;
      [(TUIFeedView *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = TUIFeedView;
  [(TUIFeedView *)&v5 layoutSubviews];
  flags = self->_flags;
  if (flags)
  {
    *&self->_flags = flags & 0xFE;
    [(TUIFeedView *)self _updateVisibleSubviews];
    renderModel = self->_renderModel;
    [(TUIFeedView *)self bounds];
    [(TUIRenderModelCollection *)renderModel updateVisibleBounds:?];
    flags = self->_flags;
    if ((flags & 2) == 0)
    {
LABEL_3:
      if ((flags & 4) == 0)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_flags & 2) == 0)
  {
    goto LABEL_3;
  }

  *&self->_flags = flags & 0xFD;
  [(TUIFeedView *)self _updateInvalidatedSubviews];
  if ((*&self->_flags & 4) == 0)
  {
    return;
  }

LABEL_4:
  [(TUIFeedView *)self _updateVisibleOverlays];
}

- (BOOL)_shouldExtendVisibleBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = +[UIView _isInAnimationBlock];
  if ((v9 & 1) != 0 || (-[TUIFeedView window](self, "window"), v3 = objc_claimAutoreleasedReturnValue(), [v3 isRotating]))
  {
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v10 = CGRectIntersectsRect(v12, self->_previousVisibleBounds);
    if (v9)
    {
      return v10;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGRect)_visibleBounds
{
  [(TUIFeedView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (qword_2E6568 != -1)
  {
    sub_19BAEC();
  }

  v11 = *&qword_2E4BE8;
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  v12 = -(v11 * CGRectGetWidth(v22));
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  v13 = -(v11 * CGRectGetHeight(v23));
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v25 = CGRectInset(v24, v12, v13);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  if ([(TUIFeedView *)self _shouldExtendVisibleBounds:?])
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v27 = CGRectUnion(v26, self->_previousVisibleBounds);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_updateVisibleSubviews
{
  [(TUIFeedView *)self _visibleBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  self->_previousVisibleBounds.origin.x = v3;
  self->_previousVisibleBounds.origin.y = v5;
  self->_previousVisibleBounds.size.width = v7;
  self->_previousVisibleBounds.size.height = v9;
  v11 = [(TUIRenderModelCollection *)self->_renderModel sections];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_12BBF4;
  v12[3] = &unk_2622F8;
  v12[4] = self;
  *&v12[5] = v4;
  *&v12[6] = v6;
  *&v12[7] = v8;
  *&v12[8] = v10;
  [v11 enumerateObjectsUsingBlock:v12];
}

- (void)_updateInvalidatedSubviews
{
  v3 = [(TUIRenderModelCollection *)self->_renderModel sections];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_12BE30;
  v4[3] = &unk_262320;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

- (void)setRenderModel:(id)a3
{
  v5 = a3;
  if (self->_renderModel != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_renderModel, a3);
    v6 = objc_alloc_init(TUIFeedViewInvalidationContext);
    [(TUILiveFloatingLayoutController *)self->_liveFloatingLayoutController setRenderModel:self->_renderModel withInvalidationContext:v6];
    [(TUILivePinningLayoutController *)self->_livePinningLayoutController setRenderModel:self->_renderModel withInvalidationContext:v6];
    [(TUILiveOverscrollingLayoutController *)self->_liveOverscrollingLayoutController setRenderModel:self->_renderModel withInvalidationContext:v6];
    v7 = [(TUIFeedViewInvalidationContext *)v6 invalidatedIndexPaths];
    v8 = [v7 count];

    if (v8)
    {
      [(TUIFeedView *)self invalidateWithContext:v6];
    }

    v5 = v9;
  }
}

- (void)reloadWithRenderModel:(id)a3
{
  v4 = a3;
  renderModel = self->_renderModel;
  self->_renderModel = 0;

  v18 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [v4 matchingSectionUUID];
  v8 = [v4 matchingSectionUID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_12C270;
  v19[3] = &unk_262370;
  v19[4] = self;
  v9 = v4;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  v11 = v8;
  v22 = v11;
  v12 = v18;
  v23 = v12;
  v13 = v6;
  v24 = v13;
  [UIView performWithoutAnimation:v19];
  v14 = [v12 copy];
  sectionViews = self->_sectionViews;
  self->_sectionViews = v14;

  v16 = [v13 copy];
  sectionModels = self->_sectionModels;
  self->_sectionModels = v16;

  *&self->_flags |= 1u;
  [(TUIFeedView *)self setNeedsLayout];
}

- (id)liveLayoutAttributesForRenderModel:(id)a3
{
  v4 = a3;
  v5 = [v4 liveTransform];
  v6 = [v5 kind];
  if (v6 == objc_opt_class())
  {
    v10 = &OBJC_IVAR___TUIFeedView__liveFloatingLayoutController;
  }

  else
  {
    v7 = [v5 kind];
    if (v7 == objc_opt_class())
    {
      v10 = &OBJC_IVAR___TUIFeedView__livePinningLayoutController;
    }

    else
    {
      v8 = [v5 kind];
      if (v8 != objc_opt_class())
      {
        v9 = 0;
        goto LABEL_9;
      }

      v10 = &OBJC_IVAR___TUIFeedView__liveOverscrollingLayoutController;
    }
  }

  v9 = [*(&self->super.super.super.super.isa + *v10) liveAttributesForRenderModel:v4];
LABEL_9:

  return v9;
}

- (void)updateLiveTransformsIfNecessaryWithViewSize:(double)a3 contentOffset:(double)a4 contentInsets:(double)a5 safeAreaInsets:(double)a6 hasTabBar:(double)a7
{
  v32 = objc_alloc_init(TUIFeedViewInvalidationContext);
  v26 = [a1 contentInsetAdjustmentBehavior];
  if (v26 == &dword_0 + 2)
  {
    top = UIEdgeInsetsZero.top;
  }

  bottom = UIEdgeInsetsZero.bottom;
  [a1[23] didUpdateContentOffset:v32 withInvalidationContext:{a4, a5 + top}];
  if (v26 == &dword_0 + 2)
  {
    a14 = bottom;
  }

  if (a8 > a14)
  {
    a14 = a8;
  }

  [a1[24] updatePinningTransformsWithViewBounds:v32 adjustedViewBounds:a10 invalidationContext:a4 hasTabBar:{a5, a2, a3, a4, a6 + a5 + top, a2, a3 - (a6 + top + a14)}];
  [a1[25] updateOverscrollingTransformsWithContentOffset:v32 invalidationContext:{a4, a5}];
  v29 = [(TUIFeedViewInvalidationContext *)v32 invalidatedIndexPaths];
  v30 = [v29 count];

  if (v30)
  {
    [a1 invalidateWithContext:v32];
    [a1 layoutIfNeeded];
  }
}

- (void)scrollToItemsMatchingQuery:(id)a3 atScrollPosition:(unint64_t)a4 animated:(BOOL)a5 skipVoiceOverFocus:(BOOL)a6
{
  v7 = a5;
  v10 = a3;
  [(TUIFeedView *)self saveViewStateForVisibleViews];
  [(TUIRenderModelCollection *)self->_renderModel boundingRectForMatchingQuery:v10 viewState:self->_currentViewState];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v23.origin.x = CGRectNull.origin.x;
  v23.origin.y = CGRectNull.origin.y;
  v23.size.width = CGRectNull.size.width;
  v23.size.height = CGRectNull.size.height;
  if (!CGRectEqualToRect(v22, v23))
  {
    [(TUIFeedView *)self tui_scrollToRect:a4 atScrollPosition:v7 animated:self delegate:x, y, width, height];
    v15 = [(TUIFeedView *)self scrollingDelegate];
    [v15 didScrollToQuery:v10];

    if (UIAccessibilityIsVoiceOverRunning() && !a6)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_12CD34;
      v21[3] = &unk_262398;
      *&v21[5] = x;
      *&v21[6] = y;
      *&v21[7] = width;
      *&v21[8] = height;
      v21[4] = self;
      v16 = objc_retainBlock(v21);
      v17 = v16;
      if (v7)
      {
        v18 = dispatch_time(0, 1000000000);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_12CED0;
        v19[3] = &unk_25F7F0;
        v20 = v17;
        dispatch_after(v18, &_dispatch_main_q, v19);
      }

      else
      {
        (v16[2])(v16);
      }
    }
  }
}

- (UIEdgeInsets)contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(TUIFeedView *)self rectScrollingDelegate];
  if (v8)
  {
    v9 = [(TUIFeedView *)self rectScrollingDelegate];
    [v9 contentInsetsForScrollingToRectWithContentInsets:{top, left, bottom, right}];
    top = v10;
    left = v11;
    bottom = v12;
    right = v13;
  }

  v14 = top;
  v15 = left;
  v16 = bottom;
  v17 = right;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (CGPoint)contentOffsetFromProposedContentOffset:(CGPoint)a3 atScrollPosition:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(TUIRenderModelCollection *)self->_renderModel anchorSet];
  if (v7)
  {
    v8 = [(TUIRenderModelCollection *)self->_renderModel anchorSet];
    [v8 proposeAnchorOffsetWithScrollView:self velocity:CGPointZero.x target:{CGPointZero.y, x, y}];
    x = v9;
    y = v10;
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_updateLayoutAttributes:(id)a3
{
  v20 = a3;
  v22 = [(TUIRenderModelCollection *)self->_renderModel sections];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v20;
  v24 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v24)
  {
    v23 = *v38;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v37 + 1) + 8 * i);
        v25 = [v31 indexPath];
        v3 = [v25 tui_section];
        renderQueryUUID = self->_renderQueryUUID;
        if (renderQueryUUID)
        {
          v32 = renderQueryUUID;
        }

        else
        {
          v5 = [v22 objectAtIndexedSubscript:v3];
          v6 = [v5 entry];
          v32 = [v6 uuid];
        }

        renderQueryUID = self->_renderQueryUID;
        if (renderQueryUID)
        {
          v8 = renderQueryUID;
        }

        else
        {
          v9 = [v22 objectAtIndexedSubscript:v3];
          v10 = [v9 entry];
          v8 = [v10 uid];
        }

        v29 = [v31 refId];
        v30 = [v31 refInstance];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v28 = self->_overrides;
        v11 = [(NSArray *)v28 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v11)
        {
          v12 = *v34;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v34 != v12)
              {
                objc_enumerationMutation(v28);
              }

              v14 = *(*(&v33 + 1) + 8 * j);
              v15 = [v14 query];
              if ([(TUIRenderReferenceIdentifier *)v15 matchesUUID:v32 uid:v8])
              {
                v16 = [v14 query];
                v17 = [v31 renderModel];
                v18 = [v17 identifier];
                v19 = [v16 matchesRefId:v29 refInstance:v30 identifier:v18];

                if (!v19)
                {
                  continue;
                }

                v15 = [[TUIRenderReferenceIdentifier alloc] initWithUUID:v32 uid:v8 refId:v29 refInstance:v30];
                [v14 updateLayoutAttributes:v31 forIdentifier:v15];
              }
            }

            v11 = [(NSArray *)v28 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v11);
        }
      }

      v24 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v24);
  }
}

- (void)setImpressionSnapshot:(id)a3
{
  v5 = a3;
  if (self->_impressionSnapshot != v5)
  {
    v9 = v5;
    v6 = objc_alloc_init(TUIFeedViewInvalidationContext);
    [(TUIFeedView *)self _invalidateImpressionsWithContext:v6];
    objc_storeStrong(&self->_impressionSnapshot, a3);
    [(TUIFeedView *)self _invalidateImpressionsWithContext:v6];
    [(TUIFeedView *)self _updateHasOverlays];
    [(TUIFeedView *)self _updateVisibleOverlays];
    v7 = [(TUIFeedViewInvalidationContext *)v6 invalidatedIndexPaths];
    v8 = [v7 count];

    if (v8)
    {
      *&self->_flags |= 1u;
      [(TUIFeedView *)self setNeedsLayout];
      [(TUIFeedView *)self invalidateWithContext:v6];
    }

    v5 = v9;
  }
}

- (void)_invalidateImpressionsWithContext:(id)a3
{
  v4 = a3;
  if (self->_impressionSnapshot)
  {
    v5 = objc_opt_new();
    [(TUIRenderModelCollection *)self->_renderModel appendImpressionLayoutAttributes:v5 forElementsInRect:self->_impressionSnapshot snapshot:CGRectInfinite.origin.x, CGRectInfinite.origin.y, CGRectInfinite.size.width, CGRectInfinite.size.height];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) indexPath];
          [v4 invalidateIndexPath:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)setStats:(id)a3
{
  v35 = a3;
  if (self->_stats != v35)
  {
    objc_storeStrong(&self->_stats, a3);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v5 = [(NSDictionary *)self->_statsIndicatorViews allValues];
    v6 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v6)
    {
      v7 = *v42;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v42 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v41 + 1) + 8 * i) removeFromSuperview];
        }

        v6 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v6);
    }

    statsIndicatorViews = self->_statsIndicatorViews;
    self->_statsIndicatorViews = 0;

    [(TUIFeedView *)self bounds];
    Width = CGRectGetWidth(v47);
    v11 = Width > 320.0;
    v12 = Width + -10.0;
    if (v11)
    {
      v13 = 310.0;
    }

    else
    {
      v13 = v12;
    }

    v14 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [(TUIStatsFeed *)self->_stats currentEntriesUID];
    v15 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v15)
    {
      v16 = 0;
      v17 = *v38;
      v18 = 0.0;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v37 + 1) + 8 * j);
          v21 = [(TUIRenderModelCollection *)self->_renderModel sections];
          v22 = [v21 objectAtIndexedSubscript:v16];

          [v22 offset];
          v25 = v24;
          if (v23 <= v18)
          {
            v26 = v18;
          }

          else
          {
            v26 = v23;
          }

          v27 = v26;
          v28 = [TUIStatsIndicatorView renderModelWithIdentifier:&off_274DB0 stats:self->_stats uid:v20];
          v29 = [[TUIRenderModelTransform alloc] initWithSubmodel:v28];
          [(TUIRenderModelTransform *)v29 setZIndex:1000];
          [(TUIRenderModelTransform *)v29 size];
          [(TUIRenderModelTransform *)v29 setSize:v13];
          [(TUIRenderModelTransform *)v29 size];
          v31 = v30;
          [(TUIRenderModelTransform *)v29 size];
          [(TUIRenderModelTransform *)v29 setCenter:v25 + v31 * 0.5 + 5.0, v27 + v32 * 0.5 + 5.0];
          [v14 addObject:v29];
          [v28 size];
          v34 = v33;

          v18 = v27 + v34 + 5.0;
          ++v16;
        }

        v15 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v15);
    }

    objc_storeStrong(&self->_statsIndicatorModels, v14);
    [(TUIFeedView *)self _updateHasOverlays];
    [(TUIFeedView *)self _updateVisibleOverlays];
  }
}

- (void)_updateHasOverlays
{
  if (self->_impressionSnapshot)
  {
    v2 = 4;
  }

  else
  {
    v2 = 4 * (self->_stats != 0);
  }

  *&self->_flags = *&self->_flags & 0xFB | v2;
}

- (void)_updateVisibleOverlays
{
  [(TUIFeedView *)self _visibleBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [[NSMutableDictionary alloc] initWithDictionary:self->_statsIndicatorViews];
  statsIndicatorModels = self->_statsIndicatorModels;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_12DD3C;
  v16[3] = &unk_2623C0;
  v16[4] = self;
  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  v13 = v11;
  v17 = v13;
  [(NSArray *)statsIndicatorModels enumerateObjectsUsingBlock:v16];
  statsIndicatorViews = self->_statsIndicatorViews;
  self->_statsIndicatorViews = v13;
  v15 = v13;
}

- (void)applyUpdateCollection:(id)a3 updates:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (v7)
  {
    objc_storeStrong(&self->_currentUpdateCollection, a3);
    v7[2](v7);
    currentUpdateCollection = self->_currentUpdateCollection;
    self->_currentUpdateCollection = 0;
  }
}

- (void)performBatchUpdatesWithRenderModel:(id)a3 flags:(unint64_t)a4 block:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v28 = v11;
  v13 = [TUIIndexMapper alloc];
  v14 = [(TUIRenderModelCollection *)self->_renderModel sections];
  v15 = -[TUIIndexMapper initWithCount:](v13, "initWithCount:", [v14 count]);
  sectionIndexMapper = self->_sectionIndexMapper;
  self->_sectionIndexMapper = v15;

  (*(v11 + 2))(v11);
  v17 = +[_TUIAnimationState currentState];
  v18 = [v17 shouldCaptureCALayerAnimations];
  if (v18)
  {
    v19 = dispatch_group_create();
  }

  else
  {
    v19 = 0;
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_12E428;
  v31[3] = &unk_262480;
  v31[4] = self;
  v20 = v10;
  v32 = v20;
  v35 = a4;
  v21 = v19;
  v33 = v21;
  v36 = v18;
  v22 = v17;
  v34 = v22;
  v23 = objc_retainBlock(v31);
  v24 = v23;
  if (v18)
  {
    objc_storeStrong(&self->_animatedUpdateCompletionGroup, v19);
    dispatch_group_enter(v21);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_12F4CC;
    v29[3] = &unk_2624A8;
    v25 = v21;
    v30 = v25;
    [UIView animateWithDuration:0 delay:v24 options:v29 animations:0.0 completion:0.0];
    animatedUpdateCompletionGroup = self->_animatedUpdateCompletionGroup;
    self->_animatedUpdateCompletionGroup = 0;

    if (v12)
    {
      TUIDispatchGroupNotifyViaRunloopIfMain(v25, &_dispatch_main_q, v12);
    }
  }

  else
  {
    (v23[2])(v23);
    if (v12)
    {
      v12[2](v12);
    }
  }

  v27 = self->_sectionIndexMapper;
  self->_sectionIndexMapper = 0;
}

- (void)insertSections:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_12F54C;
  v3[3] = &unk_2624D0;
  v3[4] = self;
  [a3 enumerateIndexesUsingBlock:v3];
}

- (void)deleteSections:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_12F5DC;
  v3[3] = &unk_2624D0;
  v3[4] = self;
  [a3 enumerateIndexesUsingBlock:v3];
}

- (void)_invalidateIndexPaths:(id)a3
{
  v19 = a3;
  v4 = [(NSArray *)self->_sectionModels count];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v19;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 tui_section];
        if (v10 >= v4)
        {
          if (_TUIDeviceHasInternalInstall())
          {
            v12 = TUIDefaultLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              sectionModels = self->_sectionModels;
              *buf = 134218498;
              v28 = v10;
              v29 = 2048;
              v30 = v4;
              v31 = 2112;
              v32 = sectionModels;
              _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "invalid section addressed: %lu (of %lu) with _sectionModels: %@", buf, 0x20u);
            }

            if (_TUIDeviceHasInternalInstall())
            {
              v15 = [NSException alloc];
              v25 = @"indexPath";
              v26 = v9;
              v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
              v17 = [v15 initWithName:@"InvalidSection" reason:@"An invalid indexPath was used" userInfo:v16];
              v18 = v17;

              objc_exception_throw(v17);
            }
          }

          v11 = 0;
        }

        else
        {
          v11 = [(NSArray *)self->_sectionModels objectAtIndexedSubscript:v10];
        }

        v13 = [v11 invalidateViewAtIndexPath:v9];

        v6 |= v13;
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v5);

    if ((v6 & 1) != 0 && (*&self->_flags & 2) == 0)
    {
      *&self->_flags |= 2u;
      [(TUIFeedView *)self setNeedsLayout];
    }
  }

  else
  {
  }
}

- (id)viewAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 tui_section];
  if (v5 >= [(NSArray *)self->_sectionModels count])
  {
    v7 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_sectionModels objectAtIndexedSubscript:v5];
    v7 = [v6 visibleViewAtIndexPath:v4];
  }

  return v7;
}

- (void)invalidateWithContext:(id)a3
{
  v4 = [a3 invalidatedIndexPaths];
  [(TUIFeedView *)self _invalidateIndexPaths:?];
}

+ (BOOL)areFeedUpdatesAnimated
{
  if (qword_2E6560)
  {
    return [qword_2E6560 BOOLValue];
  }

  else
  {
    return +[UIView areAnimationsEnabled];
  }
}

+ (void)performAnimatedFeedUpdates:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v9 = v3;
    v4 = qword_2E6560;
    if (!qword_2E6560)
    {
      v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[UIView areAnimationsEnabled]);
      v6 = qword_2E6560;
      qword_2E6560 = v5;
    }

    v7 = +[UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:1];
    v9[2]();
    [UIView setAnimationsEnabled:v7];
    v8 = qword_2E6560;
    qword_2E6560 = v4;

    v3 = v9;
  }
}

- (void)suspendReuseOfView:(id)a3
{
  v8 = a3;
  v4 = [v8 layoutAttributes];
  v5 = [v4 indexPath];
  v6 = [v5 tui_section];

  if (v6 < [(NSArray *)self->_sectionModels count])
  {
    v7 = [(NSArray *)self->_sectionModels objectAtIndexedSubscript:v6];
    [v7 suspendReuseOfView:v8];
  }
}

- (void)resumeReuseOfView:(id)a3
{
  v8 = a3;
  v4 = [v8 layoutAttributes];
  v5 = [v4 indexPath];
  v6 = [v5 tui_section];

  if (v6 < [(NSArray *)self->_sectionModels count])
  {
    v7 = [(NSArray *)self->_sectionModels objectAtIndexedSubscript:v6];
    [v7 resumeReuseOfView:v8];
  }
}

- (id)visibleViews
{
  v3 = objc_opt_new();
  sectionModels = self->_sectionModels;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_12FDD4;
  v8[3] = &unk_2622B0;
  v5 = v3;
  v9 = v5;
  [(NSArray *)sectionModels enumerateObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

- (void)appendRenderOverrideObservers:(id)a3
{
  v4 = a3;
  [v4 addObject:self];
  sectionModels = self->_sectionModels;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_12FEB4;
  v7[3] = &unk_2622B0;
  v6 = v4;
  v8 = v6;
  [(NSArray *)sectionModels enumerateObjectsUsingBlock:v7];
}

- (void)saveViewStateForVisibleViews
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [(TUIFeedView *)self visibleViews];
  v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 viewStateSave];
        if (v7)
        {
          v8 = [v6 layoutAttributes];
          v9 = [v8 indexPath];
          v10 = [(TUIRenderModelCollection *)self->_renderModel identifierForViewAtIndexPath:v9];
          [(TUIMutableViewState *)self->_currentViewState setViewState:v7 forIdentifier:v10];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

- (void)restoreViewStateForVisibleViews
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [(TUIFeedView *)self visibleViews];
  v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 layoutAttributes];
        v8 = [v7 indexPath];
        v9 = [(TUIRenderModelCollection *)self->_renderModel identifierForViewAtIndexPath:v8];
        v10 = [(TUIViewState *)self->_currentViewState viewStateForIdentifier:v9];
        [v6 viewStateRestore:v10];
      }

      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

- (id)descendentViewWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 tui_identifierUUID];

  if (v5)
  {
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    obj = self->_sectionModels;
    v6 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v6)
    {
      v7 = 0;
      v8 = *v46;
      v30 = *v46;
      while (1)
      {
        v32 = v6;
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v46 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v45 + 1) + 8 * i);
          v11 = [v10 renderModel];
          v12 = [v11 UUID];
          v13 = [v4 tui_identifierUUID];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            v15 = objc_opt_new();
            [v10 appendVisibleView:v15];
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v16 = v15;
            v17 = [v16 countByEnumeratingWithState:&v41 objects:v51 count:16];
            if (v17)
            {
              v18 = *v42;
              while (2)
              {
                for (j = 0; j != v17; j = j + 1)
                {
                  if (*v42 != v18)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v20 = [*(*(&v41 + 1) + 8 * j) descendentViewWithIdentifier:v4];

                  if (v20)
                  {
                    v21 = v16;
                    v7 = v20;
                    goto LABEL_29;
                  }

                  v7 = 0;
                }

                v17 = [v16 countByEnumeratingWithState:&v41 objects:v51 count:16];
                v7 = 0;
                if (v17)
                {
                  continue;
                }

                break;
              }

LABEL_19:
              v21 = [v4 tui_identifierWithoutUUID];
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v22 = v16;
              v23 = [v22 countByEnumeratingWithState:&v37 objects:v50 count:16];
              if (v23)
              {
                v24 = *v38;
LABEL_21:
                v25 = 0;
                while (1)
                {
                  if (*v38 != v24)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v7 = [*(*(&v37 + 1) + 8 * v25) descendentViewWithIdentifier:v21];
                  if (v7)
                  {
                    break;
                  }

                  if (v23 == ++v25)
                  {
                    v23 = [v22 countByEnumeratingWithState:&v37 objects:v50 count:16];
                    if (v23)
                    {
                      goto LABEL_21;
                    }

                    goto LABEL_27;
                  }
                }
              }

              else
              {
LABEL_27:
                v7 = 0;
              }

              v8 = v30;
LABEL_29:
            }

            else
            {

              if (!v7)
              {
                goto LABEL_19;
              }
            }

            continue;
          }
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v52 count:16];
        if (!v6)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_42:
    v7 = 0;
    goto LABEL_43;
  }

  v35 = 0uLL;
  v36 = 0uLL;
  v33 = 0uLL;
  v34 = 0uLL;
  obj = [(TUIFeedView *)self visibleViews];
  v26 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (!v26)
  {
    goto LABEL_42;
  }

  v27 = *v34;
LABEL_36:
  v28 = 0;
  while (1)
  {
    if (*v34 != v27)
    {
      objc_enumerationMutation(obj);
    }

    v7 = [*(*(&v33 + 1) + 8 * v28) descendentViewWithIdentifier:v4];
    if (v7)
    {
      break;
    }

    if (v26 == ++v28)
    {
      v26 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v49 count:16];
      if (!v26)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }
  }

LABEL_43:

  return v7;
}

- (id)descendentViewWithRefId:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(TUIFeedView *)self visibleViews];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = [*(*(&v11 + 1) + 8 * v8) descendentViewWithRefId:v4];
      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

- (BOOL)touchesShouldCancelInContentView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TUIFeedView;
    v7 = [(TUIFeedView *)&v9 touchesShouldCancelInContentView:v4];
  }

  return v7;
}

- (double)_contentBottomForScrollObservation
{
  v5.receiver = self;
  v5.super_class = TUIFeedView;
  [(TUIFeedView *)&v5 _contentBottomForScrollObservation];
  [(TUIFeedView *)self bounds];
  return self->_contentHeightFactorForScrollingGuess * v3;
}

- (TUIFeedViewSubviewsDelegate)subviewsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_subviewsDelegate);

  return WeakRetained;
}

- (TUIFeedViewRectScrollingDelegate)rectScrollingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rectScrollingDelegate);

  return WeakRetained;
}

- (TUIFeedViewScrollDelegate)scrollingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollingDelegate);

  return WeakRetained;
}

- (TUIViewFactory)viewFactory
{
  WeakRetained = objc_loadWeakRetained(&self->_viewFactory);

  return WeakRetained;
}

- (TUIFeedControllerHosting)controllerHost
{
  WeakRetained = objc_loadWeakRetained(&self->_controllerHost);

  return WeakRetained;
}

@end