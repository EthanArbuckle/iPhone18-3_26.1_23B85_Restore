@interface TUIFeedView
+ (BOOL)areFeedUpdatesAnimated;
+ (void)performAnimatedFeedUpdates:(id)updates;
- (BOOL)_shouldExtendVisibleBounds:(CGRect)bounds;
- (BOOL)touchesShouldCancelInContentView:(id)view;
- (CGPoint)contentOffsetFromProposedContentOffset:(CGPoint)offset atScrollPosition:(unint64_t)position;
- (CGRect)_visibleBounds;
- (TUIFeedControllerHosting)controllerHost;
- (TUIFeedView)initWithCoder:(id)coder;
- (TUIFeedView)initWithFrame:(CGRect)frame;
- (TUIFeedViewRectScrollingDelegate)rectScrollingDelegate;
- (TUIFeedViewScrollDelegate)scrollingDelegate;
- (TUIFeedViewSubviewsDelegate)subviewsDelegate;
- (TUIViewFactory)viewFactory;
- (UIEdgeInsets)contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)insets;
- (double)_contentBottomForScrollObservation;
- (id)descendentViewWithIdentifier:(id)identifier;
- (id)descendentViewWithRefId:(id)id;
- (id)liveLayoutAttributesForRenderModel:(id)model;
- (id)viewAtIndexPath:(id)path;
- (id)visibleViews;
- (void)_invalidateImpressionsWithContext:(id)context;
- (void)_invalidateIndexPaths:(id)paths;
- (void)_tui_commonInit;
- (void)_updateHasOverlays;
- (void)_updateInvalidatedSubviews;
- (void)_updateLayoutAttributes:(id)attributes;
- (void)_updateVisibleOverlays;
- (void)_updateVisibleSubviews;
- (void)addSectionView:(id)view respectingZIndex:(BOOL)index;
- (void)appendRenderOverrideObservers:(id)observers;
- (void)applyUpdateCollection:(id)collection updates:(id)updates;
- (void)deleteSections:(id)sections;
- (void)insertSections:(id)sections;
- (void)invalidateRenderReferenceOverride:(id)override;
- (void)invalidateWithContext:(id)context;
- (void)layoutSubviews;
- (void)performBatchUpdatesWithRenderModel:(id)model flags:(unint64_t)flags block:(id)block completion:(id)completion;
- (void)reloadWithRenderModel:(id)model;
- (void)renderReferenceOverridesChanged;
- (void)restoreViewStateForVisibleViews;
- (void)resumeReuseOfView:(id)view;
- (void)saveViewStateForVisibleViews;
- (void)scrollToItemsMatchingQuery:(id)query atScrollPosition:(unint64_t)position animated:(BOOL)animated skipVoiceOverFocus:(BOOL)focus;
- (void)setBounds:(CGRect)bounds;
- (void)setControllerHost:(id)host;
- (void)setCurrentViewState:(id)state;
- (void)setFrame:(CGRect)frame;
- (void)setImpressionSnapshot:(id)snapshot;
- (void)setRenderModel:(id)model;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setStats:(id)stats;
- (void)suspendReuseOfView:(id)view;
- (void)updateLiveTransformsIfNecessaryWithViewSize:(double)size contentOffset:(double)offset contentInsets:(double)insets safeAreaInsets:(double)areaInsets hasTabBar:(double)bar;
@end

@implementation TUIFeedView

- (TUIFeedView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = TUIFeedView;
  v5 = [(TUIFeedView *)&v8 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(TUIFeedView *)v5 _tui_commonInit];
  }

  return v6;
}

- (TUIFeedView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUIFeedView;
  v3 = [(TUIFeedView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)addSectionView:(id)view respectingZIndex:(BOOL)index
{
  indexCopy = index;
  viewCopy = view;
  renderModel = [viewCopy renderModel];
  v7 = renderModel;
  if (renderModel)
  {
    [renderModel config];
    v8 = v37;
  }

  else
  {
    v8 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  subviews = [(TUIFeedView *)self subviews];
  v10 = subviews;
  if (indexCopy && [subviews count])
  {
    v29 = v10;
    v11 = objc_opt_class();
    lastObject = [v10 lastObject];
    v13 = TUIDynamicCast(v11, lastObject);

    if (v13 && (([v13 renderModel], v14 = objc_claimAutoreleasedReturnValue(), (v15 = v14) == 0) ? (v16 = 0, v35 = 0, v36 = 0, v37 = 0) : (objc_msgSend(v14, "config"), v16 = v37), v17 = v16 > v8, v15, !v17))
    {
      [(TUIFeedView *)self addSubview:viewCopy];
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
              v25 = v24 == viewCopy;
            }

            else
            {
              v25 = 1;
            }

            if (!v25)
            {
              renderModel2 = [v24 renderModel];
              v27 = renderModel2;
              if (renderModel2)
              {
                [renderModel2 config];
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
                [(TUIFeedView *)self insertSubview:viewCopy belowSubview:v22];
LABEL_32:

                goto LABEL_33;
              }

              if (v8 == v28)
              {
                [(TUIFeedView *)self insertSubview:viewCopy aboveSubview:v13];
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

      [(TUIFeedView *)self addSubview:viewCopy];
    }

LABEL_33:

    v10 = v29;
  }

  else
  {
    [(TUIFeedView *)self addSubview:viewCopy];
  }
}

- (void)setCurrentViewState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self->_currentViewState != stateCopy)
  {
    if (!stateCopy)
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

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  semanticContentAttribute = [(TUIFeedView *)self semanticContentAttribute];
  v8.receiver = self;
  v8.super_class = TUIFeedView;
  [(TUIFeedView *)&v8 setSemanticContentAttribute:attribute];
  if (semanticContentAttribute != attribute)
  {
    sectionModels = self->_sectionModels;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_12B460;
    v7[3] = &unk_2622D0;
    v7[4] = attribute;
    [(NSArray *)sectionModels enumerateObjectsUsingBlock:v7];
    sub_129F0C(self);
    [(TUIFeedView *)self reloadWithRenderModel:self->_renderModel];
  }
}

- (void)renderReferenceOverridesChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_controllerHost);
  renderOverrideProvider = [WeakRetained renderOverrideProvider];
  renderOverrides = [renderOverrideProvider renderOverrides];
  overrides = self->_overrides;
  self->_overrides = renderOverrides;
}

- (void)setControllerHost:(id)host
{
  obj = host;
  WeakRetained = objc_loadWeakRetained(&self->_controllerHost);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_storeWeak(&self->_controllerHost, obj);
    renderOverrideProvider = [obj renderOverrideProvider];
    renderOverrides = [renderOverrideProvider renderOverrides];
    overrides = self->_overrides;
    self->_overrides = renderOverrides;

    v5 = obj;
  }
}

- (void)invalidateRenderReferenceOverride:(id)override
{
  overrideCopy = override;
  renderModel = self->_renderModel;
  uids = [(TUIRenderModelCollection *)renderModel uids];
  [(TUIRenderModelCollection *)renderModel invalidateRenderOverride:overrideCopy flags:0 feedView:self uids:uids];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (BOOL)_shouldExtendVisibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
  sections = [(TUIRenderModelCollection *)self->_renderModel sections];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_12BBF4;
  v12[3] = &unk_2622F8;
  v12[4] = self;
  *&v12[5] = v4;
  *&v12[6] = v6;
  *&v12[7] = v8;
  *&v12[8] = v10;
  [sections enumerateObjectsUsingBlock:v12];
}

- (void)_updateInvalidatedSubviews
{
  sections = [(TUIRenderModelCollection *)self->_renderModel sections];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_12BE30;
  v4[3] = &unk_262320;
  v4[4] = self;
  [sections enumerateObjectsUsingBlock:v4];
}

- (void)setRenderModel:(id)model
{
  modelCopy = model;
  if (self->_renderModel != modelCopy)
  {
    v9 = modelCopy;
    objc_storeStrong(&self->_renderModel, model);
    v6 = objc_alloc_init(TUIFeedViewInvalidationContext);
    [(TUILiveFloatingLayoutController *)self->_liveFloatingLayoutController setRenderModel:self->_renderModel withInvalidationContext:v6];
    [(TUILivePinningLayoutController *)self->_livePinningLayoutController setRenderModel:self->_renderModel withInvalidationContext:v6];
    [(TUILiveOverscrollingLayoutController *)self->_liveOverscrollingLayoutController setRenderModel:self->_renderModel withInvalidationContext:v6];
    invalidatedIndexPaths = [(TUIFeedViewInvalidationContext *)v6 invalidatedIndexPaths];
    v8 = [invalidatedIndexPaths count];

    if (v8)
    {
      [(TUIFeedView *)self invalidateWithContext:v6];
    }

    modelCopy = v9;
  }
}

- (void)reloadWithRenderModel:(id)model
{
  modelCopy = model;
  renderModel = self->_renderModel;
  self->_renderModel = 0;

  v18 = objc_opt_new();
  v6 = objc_opt_new();
  matchingSectionUUID = [modelCopy matchingSectionUUID];
  matchingSectionUID = [modelCopy matchingSectionUID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_12C270;
  v19[3] = &unk_262370;
  v19[4] = self;
  v9 = modelCopy;
  v20 = v9;
  v10 = matchingSectionUUID;
  v21 = v10;
  v11 = matchingSectionUID;
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

- (id)liveLayoutAttributesForRenderModel:(id)model
{
  modelCopy = model;
  liveTransform = [modelCopy liveTransform];
  kind = [liveTransform kind];
  if (kind == objc_opt_class())
  {
    v10 = &OBJC_IVAR___TUIFeedView__liveFloatingLayoutController;
  }

  else
  {
    kind2 = [liveTransform kind];
    if (kind2 == objc_opt_class())
    {
      v10 = &OBJC_IVAR___TUIFeedView__livePinningLayoutController;
    }

    else
    {
      kind3 = [liveTransform kind];
      if (kind3 != objc_opt_class())
      {
        v9 = 0;
        goto LABEL_9;
      }

      v10 = &OBJC_IVAR___TUIFeedView__liveOverscrollingLayoutController;
    }
  }

  v9 = [*(&self->super.super.super.super.isa + *v10) liveAttributesForRenderModel:modelCopy];
LABEL_9:

  return v9;
}

- (void)updateLiveTransformsIfNecessaryWithViewSize:(double)size contentOffset:(double)offset contentInsets:(double)insets safeAreaInsets:(double)areaInsets hasTabBar:(double)bar
{
  v32 = objc_alloc_init(TUIFeedViewInvalidationContext);
  contentInsetAdjustmentBehavior = [self contentInsetAdjustmentBehavior];
  if (contentInsetAdjustmentBehavior == &dword_0 + 2)
  {
    top = UIEdgeInsetsZero.top;
  }

  bottom = UIEdgeInsetsZero.bottom;
  [self[23] didUpdateContentOffset:v32 withInvalidationContext:{offset, insets + top}];
  if (contentInsetAdjustmentBehavior == &dword_0 + 2)
  {
    a14 = bottom;
  }

  if (a8 > a14)
  {
    a14 = a8;
  }

  [self[24] updatePinningTransformsWithViewBounds:v32 adjustedViewBounds:a10 invalidationContext:offset hasTabBar:{insets, a2, size, offset, areaInsets + insets + top, a2, size - (areaInsets + top + a14)}];
  [self[25] updateOverscrollingTransformsWithContentOffset:v32 invalidationContext:{offset, insets}];
  invalidatedIndexPaths = [(TUIFeedViewInvalidationContext *)v32 invalidatedIndexPaths];
  v30 = [invalidatedIndexPaths count];

  if (v30)
  {
    [self invalidateWithContext:v32];
    [self layoutIfNeeded];
  }
}

- (void)scrollToItemsMatchingQuery:(id)query atScrollPosition:(unint64_t)position animated:(BOOL)animated skipVoiceOverFocus:(BOOL)focus
{
  animatedCopy = animated;
  queryCopy = query;
  [(TUIFeedView *)self saveViewStateForVisibleViews];
  [(TUIRenderModelCollection *)self->_renderModel boundingRectForMatchingQuery:queryCopy viewState:self->_currentViewState];
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
    [(TUIFeedView *)self tui_scrollToRect:position atScrollPosition:animatedCopy animated:self delegate:x, y, width, height];
    scrollingDelegate = [(TUIFeedView *)self scrollingDelegate];
    [scrollingDelegate didScrollToQuery:queryCopy];

    if (UIAccessibilityIsVoiceOverRunning() && !focus)
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
      if (animatedCopy)
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

- (UIEdgeInsets)contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  rectScrollingDelegate = [(TUIFeedView *)self rectScrollingDelegate];
  if (rectScrollingDelegate)
  {
    rectScrollingDelegate2 = [(TUIFeedView *)self rectScrollingDelegate];
    [rectScrollingDelegate2 contentInsetsForScrollingToRectWithContentInsets:{top, left, bottom, right}];
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

- (CGPoint)contentOffsetFromProposedContentOffset:(CGPoint)offset atScrollPosition:(unint64_t)position
{
  y = offset.y;
  x = offset.x;
  anchorSet = [(TUIRenderModelCollection *)self->_renderModel anchorSet];
  if (anchorSet)
  {
    anchorSet2 = [(TUIRenderModelCollection *)self->_renderModel anchorSet];
    [anchorSet2 proposeAnchorOffsetWithScrollView:self velocity:CGPointZero.x target:{CGPointZero.y, x, y}];
    x = v9;
    y = v10;
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_updateLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  sections = [(TUIRenderModelCollection *)self->_renderModel sections];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = attributesCopy;
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
        indexPath = [v31 indexPath];
        tui_section = [indexPath tui_section];
        renderQueryUUID = self->_renderQueryUUID;
        if (renderQueryUUID)
        {
          uuid = renderQueryUUID;
        }

        else
        {
          v5 = [sections objectAtIndexedSubscript:tui_section];
          entry = [v5 entry];
          uuid = [entry uuid];
        }

        renderQueryUID = self->_renderQueryUID;
        if (renderQueryUID)
        {
          v8 = renderQueryUID;
        }

        else
        {
          v9 = [sections objectAtIndexedSubscript:tui_section];
          entry2 = [v9 entry];
          v8 = [entry2 uid];
        }

        refId = [v31 refId];
        refInstance = [v31 refInstance];
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
              query = [v14 query];
              if ([(TUIRenderReferenceIdentifier *)query matchesUUID:uuid uid:v8])
              {
                query2 = [v14 query];
                renderModel = [v31 renderModel];
                identifier = [renderModel identifier];
                v19 = [query2 matchesRefId:refId refInstance:refInstance identifier:identifier];

                if (!v19)
                {
                  continue;
                }

                query = [[TUIRenderReferenceIdentifier alloc] initWithUUID:uuid uid:v8 refId:refId refInstance:refInstance];
                [v14 updateLayoutAttributes:v31 forIdentifier:query];
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

- (void)setImpressionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (self->_impressionSnapshot != snapshotCopy)
  {
    v9 = snapshotCopy;
    v6 = objc_alloc_init(TUIFeedViewInvalidationContext);
    [(TUIFeedView *)self _invalidateImpressionsWithContext:v6];
    objc_storeStrong(&self->_impressionSnapshot, snapshot);
    [(TUIFeedView *)self _invalidateImpressionsWithContext:v6];
    [(TUIFeedView *)self _updateHasOverlays];
    [(TUIFeedView *)self _updateVisibleOverlays];
    invalidatedIndexPaths = [(TUIFeedViewInvalidationContext *)v6 invalidatedIndexPaths];
    v8 = [invalidatedIndexPaths count];

    if (v8)
    {
      *&self->_flags |= 1u;
      [(TUIFeedView *)self setNeedsLayout];
      [(TUIFeedView *)self invalidateWithContext:v6];
    }

    snapshotCopy = v9;
  }
}

- (void)_invalidateImpressionsWithContext:(id)context
{
  contextCopy = context;
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

          indexPath = [*(*(&v11 + 1) + 8 * v9) indexPath];
          [contextCopy invalidateIndexPath:indexPath];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)setStats:(id)stats
{
  statsCopy = stats;
  if (self->_stats != statsCopy)
  {
    objc_storeStrong(&self->_stats, stats);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    allValues = [(NSDictionary *)self->_statsIndicatorViews allValues];
    v6 = [allValues countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v6)
    {
      v7 = *v42;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v42 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v41 + 1) + 8 * i) removeFromSuperview];
        }

        v6 = [allValues countByEnumeratingWithState:&v41 objects:v46 count:16];
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
          sections = [(TUIRenderModelCollection *)self->_renderModel sections];
          v22 = [sections objectAtIndexedSubscript:v16];

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

- (void)applyUpdateCollection:(id)collection updates:(id)updates
{
  collectionCopy = collection;
  updatesCopy = updates;
  if (updatesCopy)
  {
    objc_storeStrong(&self->_currentUpdateCollection, collection);
    updatesCopy[2](updatesCopy);
    currentUpdateCollection = self->_currentUpdateCollection;
    self->_currentUpdateCollection = 0;
  }
}

- (void)performBatchUpdatesWithRenderModel:(id)model flags:(unint64_t)flags block:(id)block completion:(id)completion
{
  modelCopy = model;
  blockCopy = block;
  completionCopy = completion;
  v28 = blockCopy;
  v13 = [TUIIndexMapper alloc];
  sections = [(TUIRenderModelCollection *)self->_renderModel sections];
  v15 = -[TUIIndexMapper initWithCount:](v13, "initWithCount:", [sections count]);
  sectionIndexMapper = self->_sectionIndexMapper;
  self->_sectionIndexMapper = v15;

  (*(blockCopy + 2))(blockCopy);
  v17 = +[_TUIAnimationState currentState];
  shouldCaptureCALayerAnimations = [v17 shouldCaptureCALayerAnimations];
  if (shouldCaptureCALayerAnimations)
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
  v20 = modelCopy;
  v32 = v20;
  flagsCopy = flags;
  v21 = v19;
  v33 = v21;
  v36 = shouldCaptureCALayerAnimations;
  v22 = v17;
  v34 = v22;
  v23 = objc_retainBlock(v31);
  v24 = v23;
  if (shouldCaptureCALayerAnimations)
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

    if (completionCopy)
    {
      TUIDispatchGroupNotifyViaRunloopIfMain(v25, &_dispatch_main_q, completionCopy);
    }
  }

  else
  {
    (v23[2])(v23);
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  v27 = self->_sectionIndexMapper;
  self->_sectionIndexMapper = 0;
}

- (void)insertSections:(id)sections
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_12F54C;
  v3[3] = &unk_2624D0;
  v3[4] = self;
  [sections enumerateIndexesUsingBlock:v3];
}

- (void)deleteSections:(id)sections
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_12F5DC;
  v3[3] = &unk_2624D0;
  v3[4] = self;
  [sections enumerateIndexesUsingBlock:v3];
}

- (void)_invalidateIndexPaths:(id)paths
{
  pathsCopy = paths;
  v4 = [(NSArray *)self->_sectionModels count];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = pathsCopy;
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
        tui_section = [v9 tui_section];
        if (tui_section >= v4)
        {
          if (_TUIDeviceHasInternalInstall())
          {
            v12 = TUIDefaultLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              sectionModels = self->_sectionModels;
              *buf = 134218498;
              v28 = tui_section;
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
          v11 = [(NSArray *)self->_sectionModels objectAtIndexedSubscript:tui_section];
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

- (id)viewAtIndexPath:(id)path
{
  pathCopy = path;
  tui_section = [pathCopy tui_section];
  if (tui_section >= [(NSArray *)self->_sectionModels count])
  {
    v7 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_sectionModels objectAtIndexedSubscript:tui_section];
    v7 = [v6 visibleViewAtIndexPath:pathCopy];
  }

  return v7;
}

- (void)invalidateWithContext:(id)context
{
  invalidatedIndexPaths = [context invalidatedIndexPaths];
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

+ (void)performAnimatedFeedUpdates:(id)updates
{
  updatesCopy = updates;
  if (updatesCopy)
  {
    v9 = updatesCopy;
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

    updatesCopy = v9;
  }
}

- (void)suspendReuseOfView:(id)view
{
  viewCopy = view;
  layoutAttributes = [viewCopy layoutAttributes];
  indexPath = [layoutAttributes indexPath];
  tui_section = [indexPath tui_section];

  if (tui_section < [(NSArray *)self->_sectionModels count])
  {
    v7 = [(NSArray *)self->_sectionModels objectAtIndexedSubscript:tui_section];
    [v7 suspendReuseOfView:viewCopy];
  }
}

- (void)resumeReuseOfView:(id)view
{
  viewCopy = view;
  layoutAttributes = [viewCopy layoutAttributes];
  indexPath = [layoutAttributes indexPath];
  tui_section = [indexPath tui_section];

  if (tui_section < [(NSArray *)self->_sectionModels count])
  {
    v7 = [(NSArray *)self->_sectionModels objectAtIndexedSubscript:tui_section];
    [v7 resumeReuseOfView:viewCopy];
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

- (void)appendRenderOverrideObservers:(id)observers
{
  observersCopy = observers;
  [observersCopy addObject:self];
  sectionModels = self->_sectionModels;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_12FEB4;
  v7[3] = &unk_2622B0;
  v6 = observersCopy;
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
        viewStateSave = [v6 viewStateSave];
        if (viewStateSave)
        {
          layoutAttributes = [v6 layoutAttributes];
          indexPath = [layoutAttributes indexPath];
          v10 = [(TUIRenderModelCollection *)self->_renderModel identifierForViewAtIndexPath:indexPath];
          [(TUIMutableViewState *)self->_currentViewState setViewState:viewStateSave forIdentifier:v10];
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
        layoutAttributes = [v6 layoutAttributes];
        indexPath = [layoutAttributes indexPath];
        v9 = [(TUIRenderModelCollection *)self->_renderModel identifierForViewAtIndexPath:indexPath];
        v10 = [(TUIViewState *)self->_currentViewState viewStateForIdentifier:v9];
        [v6 viewStateRestore:v10];
      }

      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

- (id)descendentViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tui_identifierUUID = [identifierCopy tui_identifierUUID];

  if (tui_identifierUUID)
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
          renderModel = [v10 renderModel];
          uUID = [renderModel UUID];
          tui_identifierUUID2 = [identifierCopy tui_identifierUUID];
          v14 = [uUID isEqual:tui_identifierUUID2];

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

                  v20 = [*(*(&v41 + 1) + 8 * j) descendentViewWithIdentifier:identifierCopy];

                  if (v20)
                  {
                    tui_identifierWithoutUUID = v16;
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
              tui_identifierWithoutUUID = [identifierCopy tui_identifierWithoutUUID];
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

                  v7 = [*(*(&v37 + 1) + 8 * v25) descendentViewWithIdentifier:tui_identifierWithoutUUID];
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

    v7 = [*(*(&v33 + 1) + 8 * v28) descendentViewWithIdentifier:identifierCopy];
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

- (id)descendentViewWithRefId:(id)id
{
  idCopy = id;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  visibleViews = [(TUIFeedView *)self visibleViews];
  v6 = [visibleViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(visibleViews);
      }

      v9 = [*(*(&v11 + 1) + 8 * v8) descendentViewWithRefId:idCopy];
      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [visibleViews countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)touchesShouldCancelInContentView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, viewCopy);

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TUIFeedView;
    v7 = [(TUIFeedView *)&v9 touchesShouldCancelInContentView:viewCopy];
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