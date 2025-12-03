@interface TUIEmbeddedCollectionView
+ (TUIRenderModelView)renderModelWithUpdateController:(double)controller uid:(double)uid UUID:(double)d identifier:(double)identifier scrollIdentifier:(double)scrollIdentifier ancestorScrollIdentifier:(double)ancestorScrollIdentifier scrollPolicy:(uint64_t)policy scrollAxis:(uint64_t)self0 additionalSafeAreaInsets:(void *)self1 contentIntrinsicInsets:(void *)self2 pageGap:(void *)self3 gradientInsets:(void *)self4 gradientFraction:(void *)self5 acceptsDrop:(void *)self6 dropHandler:(void *)self7 decelerationRate:(uint64_t)self8;
- (BOOL)visibilityProviderIsScrolling;
- (BOOL)visibilityProviderIsVisible;
- (CGRect)_leadingGradientFrame;
- (CGRect)_trailingGradientFrame;
- (CGRect)visibilityProviderVisibleBounds;
- (CGRect)visibleBounds;
- (TUIReusableSubviewPool)subviewPool;
- (TUIViewFactory)factory;
- (TUIViewRegistry)registry;
- (id)descendentViewWithIdentifier:(id)identifier;
- (id)descendentViewWithRefId:(id)id;
- (id)viewFactoryDequeueReusableSubviewWithReuseIdentifier:(id)identifier indexPath:(id)path host:(id)host;
- (id)viewStateSave;
- (id)visibilityProviderSections;
- (id)visibilityProviderWindowLayer;
- (void)_updateContentInsetAndOffsetIfNeeded;
- (void)_updateContentInsetAndOffsetWithCollectionModel:(id)model reset:(BOOL)reset;
- (void)_updateInsets:(id)insets;
- (void)_updateModel;
- (void)_updatePagedScrollable;
- (void)_updateScrollObserver;
- (void)_updateVisibilityCollector;
- (void)applyLayoutAttributes:(id)attributes;
- (void)applyUpdate:(id)update controller:(id)controller completion:(id)completion;
- (void)configureWithModel:(id)model;
- (void)didMoveToWindow;
- (void)pagedScrollableActionChangeToPageIndex:(unint64_t)index;
- (void)parentFeedDidUpdateTriggerStatesWithEvent:(unint64_t)event;
- (void)prepareForReuse;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setFactory:(id)factory;
- (void)setUpdateController:(id)controller;
- (void)updateWithImpressionSnapshot:(id)snapshot;
- (void)viewDidEndDisplay;
- (void)viewFactoryPrepareToReuseHost:(id)host;
- (void)viewFactoryReuseSubviews:(id)subviews host:(id)host;
- (void)viewStateRestore:(id)restore;
- (void)viewWillDisplay;
@end

@implementation TUIEmbeddedCollectionView

- (TUIViewRegistry)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  registry = [WeakRetained registry];

  return registry;
}

+ (TUIRenderModelView)renderModelWithUpdateController:(double)controller uid:(double)uid UUID:(double)d identifier:(double)identifier scrollIdentifier:(double)scrollIdentifier ancestorScrollIdentifier:(double)ancestorScrollIdentifier scrollPolicy:(uint64_t)policy scrollAxis:(uint64_t)self0 additionalSafeAreaInsets:(void *)self1 contentIntrinsicInsets:(void *)self2 pageGap:(void *)self3 gradientInsets:(void *)self4 gradientFraction:(void *)self5 acceptsDrop:(void *)self6 dropHandler:(void *)self7 decelerationRate:(uint64_t)self8
{
  v40 = a29;
  handlerCopy = handler;
  dropCopy = drop;
  fractionCopy = fraction;
  gradientInsetsCopy = gradientInsets;
  gapCopy = gap;
  intrinsicInsetsCopy = intrinsicInsets;
  insetsCopy = insets;
  v47 = [[TUIEmbeddedCollectionViewRenderModel alloc] initWithUpdateController:insetsCopy uid:intrinsicInsetsCopy UUID:gapCopy];

  [(TUIEmbeddedCollectionViewRenderModel *)v47 setScrollPolicy:handlerCopy];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setScrollAxis:rate];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setAdditionalSafeAreaInsets:self, a2, controller, uid];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setContentIntrinsicInsets:d, identifier, scrollIdentifier, ancestorScrollIdentifier];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setPageGap:a19];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setGradientInsets:a20, a21, a22, a23];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setGradientFraction:a24, a25, a26, a27];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setIdentifier:gradientInsetsCopy];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setAcceptsDrop:a28];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setDropHandler:v40];

  [(TUIEmbeddedCollectionViewRenderModel *)v47 setDecelerationRate:a30];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setScrollIdentifier:fractionCopy];

  [(TUIEmbeddedCollectionViewRenderModel *)v47 setAncestorScrollIdentifier:dropCopy];
  v48 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierEmbeddedCollectionView" identifier:gradientInsetsCopy submodel:v47];

  return v48;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = TUIEmbeddedCollectionView;
  attributesCopy = attributes;
  [(TUIReusableBaseView *)&v7 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];

  submodel = [renderModel submodel];
  [(TUIEmbeddedCollectionView *)self configureWithModel:submodel];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TUIEmbeddedCollectionView;
  [(TUIEmbeddedCollectionView *)&v3 didMoveToWindow];
  [(TUIEmbeddedCollectionView *)self _updateVisibilityCollector];
  [(TUIVisibilityCollector *)self->_visibilityCollector updateVisible];
}

- (void)setFactory:(id)factory
{
  obj = factory;
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_factory, obj);
    [(TUIEmbeddedCollectionView *)self _updateModel];
    v5 = obj;
  }
}

- (void)setUpdateController:(id)controller
{
  controllerCopy = controller;
  updateController = self->_updateController;
  if (updateController != controllerCopy)
  {
    v13 = controllerCopy;
    [(TUIRenderUpdateCollectionController *)updateController unregisterDelegate:self];
    objc_storeStrong(&self->_updateController, controller);
    v7 = [(TUIRenderUpdateCollectionController *)self->_updateController registerDelegate:self];
    first = [v7 first];

    feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
    [(TUIFeedView *)self->_feedView setControllerHost:feedControllerHost];

    [(TUIFeedView *)self->_feedView reloadWithRenderModel:first];
    if ([first layoutDirection] == &dword_0 + 2 && -[TUIFeedView effectiveUserInterfaceLayoutDirection](self->_feedView, "effectiveUserInterfaceLayoutDirection") != &dword_0 + 1)
    {
      v10 = 4;
    }

    else
    {
      if ([first layoutDirection] != &dword_0 + 1 || !-[TUIFeedView effectiveUserInterfaceLayoutDirection](self->_feedView, "effectiveUserInterfaceLayoutDirection"))
      {
        goto LABEL_9;
      }

      v10 = 3;
    }

    [(TUIFeedView *)self->_feedView setSemanticContentAttribute:v10];
LABEL_9:
    [(TUIEmbeddedCollectionView *)self _updateContentInsetAndOffsetWithCollectionModel:first reset:1];
    [(TUIRenderUpdateCollectionController *)self->_updateController applyInitialUpdate];
    controllerHost = [(TUIFeedView *)self->_feedView controllerHost];
    triggerStateManager = [controllerHost triggerStateManager];
    [triggerStateManager registerEmbeddedCollectionDelegate:self];

    controllerCopy = v13;
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TUIEmbeddedCollectionView;
  [(TUIReusableBaseView *)&v3 prepareForReuse];
  [(TUIEmbeddedCollectionView *)self _resetUpdateController];
  [(TUIFeedView *)self->_feedView setContentInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(TUIFeedView *)self->_feedView setContentOffset:CGPointZero.x, CGPointZero.y];
}

- (void)viewWillDisplay
{
  v14.receiver = self;
  v14.super_class = TUIEmbeddedCollectionView;
  [(TUIReusableBaseView *)&v14 viewWillDisplay];
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  [(TUIFeedView *)self->_feedView setControllerHost:feedControllerHost];

  renderModel = self->_renderModel;
  if (renderModel)
  {
    identifier = [(TUIEmbeddedCollectionViewRenderModel *)renderModel identifier];
    tui_querySectionUUID = [(TUIReusableBaseView *)self tui_querySectionUUID];
    v7 = [identifier tui_identifierByPrependingUUID:tui_querySectionUUID];

    feedControllerHost2 = [(TUIReusableBaseView *)self feedControllerHost];
    pagedScrollableController = [feedControllerHost2 pagedScrollableController];
    v10 = [pagedScrollableController registerPagedScrollableWithWithIdentifier:v7 action:self];
    pagedScrollable = self->_pagedScrollable;
    self->_pagedScrollable = v10;

    [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
  }

  controllerHost = [(TUIFeedView *)self->_feedView controllerHost];
  embeddedScrollViewCoordinator = [controllerHost embeddedScrollViewCoordinator];
  [embeddedScrollViewCoordinator registerEmbeddedScrollView:self];
}

- (void)viewDidEndDisplay
{
  if (self->_pagedScrollable)
  {
    renderModel = self->_renderModel;
    if (renderModel)
    {
      identifier = [(TUIEmbeddedCollectionViewRenderModel *)renderModel identifier];
      tui_querySectionUUID = [(TUIReusableBaseView *)self tui_querySectionUUID];
      v6 = [identifier tui_identifierByPrependingUUID:tui_querySectionUUID];

      feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
      pagedScrollableController = [feedControllerHost pagedScrollableController];
      [pagedScrollableController unregisterPagedScrollableWithIdentifier:v6];

      pagedScrollable = self->_pagedScrollable;
      self->_pagedScrollable = 0;
    }
  }

  v16.receiver = self;
  v16.super_class = TUIEmbeddedCollectionView;
  [(TUIReusableBaseView *)&v16 viewDidEndDisplay];
  controllerHost = [(TUIFeedView *)self->_feedView controllerHost];
  triggerStateManager = [controllerHost triggerStateManager];
  [triggerStateManager unregisterEmbeddedCollectionDelegate:self];

  controllerHost2 = [(TUIFeedView *)self->_feedView controllerHost];
  embeddedScrollViewCoordinator = [controllerHost2 embeddedScrollViewCoordinator];
  [embeddedScrollViewCoordinator unregisterEmbeddedScrollView:self];

  [(TUIFeedView *)self->_feedView setControllerHost:0];
  scrollPolicy = self->_scrollPolicy;
  self->_scrollPolicy = 0;

  [(TUIScrollableObserverInstance *)self->_scrollObserver reset];
  scrollObserver = self->_scrollObserver;
  self->_scrollObserver = 0;

  [(TUIEmbeddedCollectionView *)self _updateVisibilityCollector];
  [(TUIEmbeddedCollectionView *)self _resetUpdateController];
}

- (void)_updateInsets:(id)insets
{
  renderModel = self->_renderModel;
  insetsCopy = insets;
  [(TUIEmbeddedCollectionViewRenderModel *)renderModel _computedContentInsetsWithRenderModel:insetsCopy];
  p_insets = &self->_insets;
  self->_insets.top = -v7;
  self->_insets.left = -v8;
  self->_insets.bottom = -v9;
  self->_insets.right = -v10;
  [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel additionalSafeAreaInsets];
  UIEdgeInsetsAdd();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  layoutDirection = [insetsCopy layoutDirection];

  if (layoutDirection == &dword_0 + 2)
  {
    v20 = v14;
  }

  else
  {
    v20 = v18;
  }

  if (layoutDirection == &dword_0 + 2)
  {
    v14 = v18;
  }

  [(TUIEmbeddedCollectionView *)self bounds];
  top = p_insets->top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  v25 = p_insets->top + v24;
  v27 = v26 - (left + self->_insets.right);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_8D72C;
  v32[3] = &unk_260758;
  v32[4] = self;
  v32[5] = v12;
  v32[6] = v14;
  v32[7] = v16;
  v32[8] = v20;
  *&v32[9] = v28 + left;
  *&v32[10] = v25;
  *&v32[11] = v27;
  *&v32[12] = v29 - (top + bottom);
  [UIView performWithoutAnimation:v32];
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  viewVisibilityController = [feedControllerHost viewVisibilityController];
  [viewVisibilityController updatedVisibleBoundsOfScrollView:self->_feedView];
}

- (void)_updateContentInsetAndOffsetIfNeeded
{
  if (self->_needsUpdateContentInsetAndOffset)
  {
    renderModel = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
    [(TUIEmbeddedCollectionView *)self _updateContentInsetAndOffsetWithCollectionModel:renderModel reset:0];
  }
}

- (void)_updateContentInsetAndOffsetWithCollectionModel:(id)model reset:(BOOL)reset
{
  resetCopy = reset;
  modelCopy = model;
  self->_needsUpdateContentInsetAndOffset = 0;
  if (resetCopy)
  {
    [(TUIFeedView *)self->_feedView setContentInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(TUIFeedView *)self->_feedView setContentOffset:CGPointZero.x, CGPointZero.y];
  }

  [(TUIEmbeddedCollectionView *)self _updateInsets:modelCopy];
  [(TUIFeedView *)self->_feedView contentInset];
  v8 = v7;
  v10 = v9;
  _isRTL = [(TUIEmbeddedCollectionView *)self _isRTL];
  if (_isRTL)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (_isRTL)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  if (v12 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (resetCopy && [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel scrollAxis]== &dword_0 + 1)
  {
    v15 = -v14;
    [(TUIFeedView *)self->_feedView contentOffset];
    if (v16 != v15)
    {
      v17 = TUIViewUpdateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
        feedId = [feedControllerHost feedId];
        [(TUIFeedView *)self->_feedView contentOffset];
        v26 = 134218754;
        v27 = feedId;
        v28 = 2112;
        selfCopy = self;
        v30 = 2048;
        v31 = v25;
        v32 = 2048;
        v33 = v15;
        _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "[fid:%lu] %@: Manually fixing initial horizontal content offset: %lf -> %lf", &v26, 0x2Au);
      }

      [(TUIFeedView *)self->_feedView contentOffset];
      [(TUIFeedView *)self->_feedView setContentOffset:v15];
    }
  }

  _collectionRenderModel = [(TUIEmbeddedCollectionView *)self _collectionRenderModel];
  anchorSet = [_collectionRenderModel anchorSet];

  if (anchorSet)
  {
    feedView = self->_feedView;
    [(TUIFeedView *)feedView contentOffset];
    [anchorSet proposeAnchorOffsetWithScrollView:feedView velocity:CGPointZero.x target:{CGPointZero.y, v21, v22}];
    [(TUIFeedView *)self->_feedView setContentOffset:?];
  }
}

- (void)applyUpdate:(id)update controller:(id)controller completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  controllerCopy = controller;
  v11 = TUIViewUpdateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_19A0EC(self, updateCopy, v11);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  updateController = self->_updateController;

  if (updateController == controllerCopy)
  {
    v13 = [updateCopy to];
    [(TUIEmbeddedCollectionView *)self _updateInsets:v13];

    feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
    hostingController = [feedControllerHost hostingController];

    [hostingController beginViewUpdates];
    [updateCopy applyToFeedView:self->_feedView completion:completionCopy];
    [hostingController endViewUpdates];
    [(TUIVisibilityCollector *)self->_visibilityCollector updateSections];
    renderModel = [(TUIFeedView *)self->_feedView renderModel];
    [(TUIEmbeddedCollectionView *)self visibleBounds];
    [renderModel updateVisibleBounds:?];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)configureWithModel:(id)model
{
  modelCopy = model;
  if (self->_renderModel != modelCopy)
  {
    [(TUIVisibilityCollector *)self->_visibilityCollector teardown];
    visibilityCollector = self->_visibilityCollector;
    self->_visibilityCollector = 0;

    if (self->_pagedScrollable)
    {
      renderModel = self->_renderModel;
      if (renderModel)
      {
        identifier = [(TUIEmbeddedCollectionViewRenderModel *)renderModel identifier];
        tui_querySectionUUID = [(TUIReusableBaseView *)self tui_querySectionUUID];
        v9 = [identifier tui_identifierByPrependingUUID:tui_querySectionUUID];

        feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
        pagedScrollableController = [feedControllerHost pagedScrollableController];
        [pagedScrollableController unregisterPagedScrollableWithIdentifier:v9];

        pagedScrollable = self->_pagedScrollable;
        self->_pagedScrollable = 0;
      }
    }

    objc_storeStrong(&self->_renderModel, model);
    self->_needsUpdateContentInsetAndOffset = 1;
    [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel prepare];
    [(TUIEmbeddedCollectionView *)self _updateModel];
    [(TUIEmbeddedCollectionView *)self _updateContentInsetAndOffsetIfNeeded];
    scrollPolicy = self->_scrollPolicy;
    scrollPolicy = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel scrollPolicy];

    if (scrollPolicy != scrollPolicy)
    {
      [(TUIScrollableObserverInstance *)self->_scrollObserver reset];
      scrollObserver = self->_scrollObserver;
      self->_scrollObserver = 0;

      scrollPolicy2 = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel scrollPolicy];
      v17 = self->_scrollPolicy;
      self->_scrollPolicy = scrollPolicy2;

      if (objc_opt_respondsToSelector())
      {
        v18 = self->_scrollPolicy;
        feedView = self->_feedView;
        feedControllerHost2 = [(TUIReusableBaseView *)self feedControllerHost];
        uUID = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel UUID];
        v22 = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel uid];
        v23 = [(TUIScrollablePolicy *)v18 newScrollableObserverInstanceWithView:feedView host:feedControllerHost2 uuid:uUID uid:v22];
        v24 = self->_scrollObserver;
        self->_scrollObserver = v23;

        [(TUIEmbeddedCollectionView *)self _updateScrollObserver];
      }
    }

    [(TUIEmbeddedCollectionView *)self _updateVisibilityCollector];
    v25 = self->_renderModel;
    if (v25)
    {
      identifier2 = [(TUIEmbeddedCollectionViewRenderModel *)v25 identifier];
      tui_querySectionUUID2 = [(TUIReusableBaseView *)self tui_querySectionUUID];
      v28 = [identifier2 tui_identifierByPrependingUUID:tui_querySectionUUID2];

      feedControllerHost3 = [(TUIReusableBaseView *)self feedControllerHost];
      pagedScrollableController2 = [feedControllerHost3 pagedScrollableController];
      v31 = [pagedScrollableController2 registerPagedScrollableWithWithIdentifier:v28 action:self];
      v32 = self->_pagedScrollable;
      self->_pagedScrollable = v31;

      [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
    }
  }
}

- (CGRect)_leadingGradientFrame
{
  [(TUIEmbeddedCollectionView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(TUIEmbeddedCollectionView *)self bounds];
  top = self->_insets.top;
  v9 = v8 + top;
  v11 = v10 - (top + self->_insets.bottom);
  [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel gradientInsets];
  v13 = v12;
  [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel gradientFraction];
  v15 = v14;
  v20.origin.x = v4;
  v20.origin.y = v9;
  v20.size.width = v6;
  v20.size.height = v11;
  v16 = CGRectGetMinX(v20) + fmin(v13, 0.0);
  v17 = fabs(v13 * v15);
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v17;
  result.origin.y = v18;
  result.origin.x = v16;
  return result;
}

- (CGRect)_trailingGradientFrame
{
  [(TUIEmbeddedCollectionView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(TUIEmbeddedCollectionView *)self bounds];
  top = self->_insets.top;
  v9 = v8 + top;
  v11 = v10 - (top + self->_insets.bottom);
  [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel gradientInsets];
  v13 = v12;
  [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel gradientFraction];
  v15 = v14;
  v22.origin.x = v4;
  v22.origin.y = v9;
  v22.size.width = v6;
  v22.size.height = v11;
  MaxX = CGRectGetMaxX(v22);
  v17 = v13 * (1.0 - v15);
  if (v13 >= 0.0)
  {
    v17 = v13 * v15;
  }

  v18 = MaxX - v17;
  v19 = fabs(v13 * v15);
  v20 = v9;
  v21 = v11;
  result.size.height = v21;
  result.size.width = v19;
  result.origin.y = v20;
  result.origin.x = v18;
  return result;
}

- (void)_updateModel
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  if (WeakRetained)
  {
    if (self->_renderModel)
    {
      [(TUIEmbeddedCollectionView *)self bounds];
      top = self->_insets.top;
      left = self->_insets.left;
      v7 = v6 + left;
      v9 = v8 + top;
      v11 = v10 - (left + self->_insets.right);
      v13 = v12 - (top + self->_insets.bottom);
      [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel gradientInsets];
      v15 = v14;
      v17 = v16;
      v18 = v16 != 0.0 || v14 != 0.0;
      if (!self->_feedView)
      {
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_8E3CC;
        v38[3] = &unk_260780;
        v38[4] = self;
        *&v38[5] = v7;
        *&v38[6] = v9;
        *&v38[7] = v11;
        *&v38[8] = v13;
        [UIView performWithoutAnimation:v38];
      }

      v19 = objc_loadWeakRetained(&self->_factory);
      [(TUIFeedView *)self->_feedView setViewFactory:v19];

      [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel decelerationRate];
      [(TUIFeedView *)self->_feedView setDecelerationRate:?];
      if (v18)
      {
        if (!self->_leadingGradientView && v15 != 0.0)
        {
          v20 = [_TUIEmbeddedCollectionGradientView alloc];
          [(TUIEmbeddedCollectionView *)self _leadingGradientFrame];
          v21 = [(_TUIEmbeddedCollectionGradientView *)v20 initWithFrame:?];
          leadingGradientView = self->_leadingGradientView;
          self->_leadingGradientView = v21;

          [(_TUIEmbeddedCollectionGradientView *)self->_leadingGradientView configureGradientWithAxis:1 leading:1];
          [(TUIEmbeddedCollectionView *)self addSubview:self->_leadingGradientView];
        }

        [(TUIEmbeddedCollectionView *)self _leadingGradientFrame];
        [(_TUIEmbeddedCollectionGradientView *)self->_leadingGradientView setFrame:?];
        if (!self->_trailingGradientView && v17 != 0.0)
        {
          v23 = [_TUIEmbeddedCollectionGradientView alloc];
          [(TUIEmbeddedCollectionView *)self _trailingGradientFrame];
          v24 = [(_TUIEmbeddedCollectionGradientView *)v23 initWithFrame:?];
          trailingGradientView = self->_trailingGradientView;
          self->_trailingGradientView = v24;

          [(_TUIEmbeddedCollectionGradientView *)self->_trailingGradientView configureGradientWithAxis:1 leading:0];
          [(TUIEmbeddedCollectionView *)self addSubview:self->_trailingGradientView];
        }

        [(TUIEmbeddedCollectionView *)self _trailingGradientFrame];
        [(_TUIEmbeddedCollectionGradientView *)self->_trailingGradientView setFrame:?];
      }

      layer = [(TUIEmbeddedCollectionView *)self layer];
      allowsGroupBlending = [layer allowsGroupBlending];

      if (v18 != allowsGroupBlending)
      {
        layer2 = [(TUIEmbeddedCollectionView *)self layer];
        [layer2 setAllowsGroupBlending:v18];
      }

      v29 = self->_leadingGradientView;
      if (v29 && v15 == 0.0)
      {
        [(_TUIEmbeddedCollectionGradientView *)v29 removeFromSuperview];
        v30 = self->_leadingGradientView;
        self->_leadingGradientView = 0;

        v29 = self->_leadingGradientView;
      }

      if (v29)
      {
        if (v17 == 0.0)
        {
          [(_TUIEmbeddedCollectionGradientView *)self->_trailingGradientView removeFromSuperview];
          v31 = self->_trailingGradientView;
          self->_trailingGradientView = 0;
        }
      }

      [(TUIFeedView *)self->_feedView setFrame:v7, v9, v11, v13];
      feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
      viewVisibilityController = [feedControllerHost viewVisibilityController];
      [viewVisibilityController updatedVisibleBoundsOfScrollView:self->_feedView];

      renderModel = self->_renderModel;
    }

    else
    {
      renderModel = 0;
    }

    v35 = [(TUIEmbeddedCollectionViewRenderModel *)renderModel uid];
    [(TUIFeedView *)self->_feedView setRenderQueryUID:v35];

    uUID = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel UUID];
    [(TUIFeedView *)self->_feedView setRenderQueryUUID:uUID];

    updateController = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel updateController];
    [(TUIEmbeddedCollectionView *)self setUpdateController:updateController];

    [(TUIEmbeddedCollectionView *)self _updateVisibilityCollector];
  }
}

- (void)_updateVisibilityCollector
{
  controllerHost = [(TUIFeedView *)self->_feedView controllerHost];
  visibilityController = [controllerHost visibilityController];

  _collectionRenderModel = [(TUIEmbeddedCollectionView *)self _collectionRenderModel];
  if (_collectionRenderModel && (v5 = _collectionRenderModel, [(TUIEmbeddedCollectionView *)self window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    if (!self->_visibilityCollector)
    {
      scrollIdentifier = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel scrollIdentifier];
      ancestorScrollIdentifier = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel ancestorScrollIdentifier];
      v9 = [visibilityController newCollectorForProvider:self withIdentifier:scrollIdentifier parentIdentifier:ancestorScrollIdentifier];
      visibilityCollector = self->_visibilityCollector;
      self->_visibilityCollector = v9;

      [(TUIVisibilityCollector *)self->_visibilityCollector updateSections];
      [(TUIVisibilityCollector *)self->_visibilityCollector updateVisible];
    }
  }

  else
  {
    v11 = self->_visibilityCollector;
    if (v11)
    {
      [(TUIVisibilityCollector *)v11 teardown];
      v12 = self->_visibilityCollector;
      self->_visibilityCollector = 0;
    }
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  _collectionRenderModel = [(TUIEmbeddedCollectionView *)self _collectionRenderModel];
  anchorSet = [_collectionRenderModel anchorSet];

  if (offset && anchorSet)
  {
    [anchorSet proposeAnchorOffsetWithScrollView:draggingCopy velocity:x target:{y, offset->x, offset->y}];
    offset->x = v11;
    offset->y = v12;
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  [(TUIEmbeddedCollectionView *)self _updateScrollObserver];
  [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
  visibilityCollector = self->_visibilityCollector;

  [(TUIVisibilityCollector *)visibilityCollector updateVisibleBounds];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(TUIEmbeddedCollectionView *)self _updateScrollObserver];
  [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
  visibilityCollector = self->_visibilityCollector;

  [(TUIVisibilityCollector *)visibilityCollector updateVisibleBounds];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(TUIEmbeddedCollectionView *)self _updateScrollObserver];
  [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
  visibilityCollector = self->_visibilityCollector;

  [(TUIVisibilityCollector *)visibilityCollector updateVisibleBounds];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(TUIEmbeddedCollectionView *)self _updateScrollObserver];
    [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
    visibilityCollector = self->_visibilityCollector;

    [(TUIVisibilityCollector *)visibilityCollector updateVisibleBounds];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(TUIVisibilityCollector *)self->_visibilityCollector updateVisibleBounds];
  [(TUIEmbeddedCollectionView *)self _updateScrollObserver];
  [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  viewVisibilityController = [feedControllerHost viewVisibilityController];
  [viewVisibilityController updatedVisibleBoundsOfScrollView:self->_feedView];

  _collectionRenderModel = [(TUIEmbeddedCollectionView *)self _collectionRenderModel];
  anchorSet = [_collectionRenderModel anchorSet];

  if (anchorSet)
  {
    v8 = [anchorSet computeTriggerStatesInScrollView:scrollCopy axis:1];
    controllerHost = [(TUIFeedView *)self->_feedView controllerHost];
    triggerStateManager = [controllerHost triggerStateManager];
    [triggerStateManager updateEmbeddedTriggerStatesWithNewStates:v8 updateEvent:3];
  }
}

- (void)_updateScrollObserver
{
  if (([(TUIFeedView *)self->_feedView isDragging]& 1) != 0)
  {
    isDecelerating = &dword_0 + 1;
  }

  else
  {
    isDecelerating = [(TUIFeedView *)self->_feedView isDecelerating];
  }

  [(TUIEmbeddedCollectionView *)self visibleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  renderModel = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
  if ([renderModel layoutDirection] == &dword_0 + 2)
  {
    [renderModel size];
    v5 = v12 - v9 - v5;
  }

  [(TUIScrollableObserverInstance *)self->_scrollObserver updateScrollingWithVisibleBounds:isDecelerating active:v5, v7, v9, v11];
}

- (void)_updatePagedScrollable
{
  if (self->_pagedScrollable)
  {
    [(TUIFeedView *)self->_feedView contentInset];
    [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel contentIntrinsicInsets];
    [(TUIFeedView *)self->_feedView contentSize];
    UIEdgeInsetsAdd();
    [(TUIFeedView *)self->_feedView bounds];
    [(TUIFeedView *)self->_feedView contentOffset];
    [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel pageGap];
    pagedScrollable = self->_pagedScrollable;

    [TUIPagedScrollableProviding updateWithPageIndices:"updateWithPageIndices:pageCount:" pageCount:?];
  }
}

- (void)pagedScrollableActionChangeToPageIndex:(unint64_t)index
{
  [(TUIFeedView *)self->_feedView contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(TUIFeedView *)self->_feedView contentInset];
  [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel contentIntrinsicInsets];
  UIEdgeInsetsAdd();
  v14 = v13;
  v16 = v15;
  [(TUIFeedView *)self->_feedView bounds];
  v18 = v17 - (v14 + v16);
  [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel pageGap];
  v20 = (v19 + v18) * index;
  [(TUIFeedView *)self->_feedView contentOffset];
  v22 = v6 + v21;
  [(TUIFeedView *)self->_feedView bounds];
  [(TUIFeedView *)self->_feedView tui_contentOffsetForScrollingToRect:16 atScrollPosition:self->_feedView delegate:v20, v22, v23 - (v8 + v12), v24 - (v6 + v10)];
  v26 = v25;
  v28 = v27;
  [(TUIPagedScrollableProviding *)self->_pagedScrollable pageCount];
  feedView = self->_feedView;

  [(TUIFeedView *)feedView setContentOffset:1 animated:v26, v28];
}

- (void)parentFeedDidUpdateTriggerStatesWithEvent:(unint64_t)event
{
  _collectionRenderModel = [(TUIEmbeddedCollectionView *)self _collectionRenderModel];
  anchorSet = [_collectionRenderModel anchorSet];

  v6 = anchorSet;
  if (anchorSet)
  {
    if (event == 1)
    {
      [anchorSet feedNotVisibleTriggerStatesForAxis:1];
    }

    else
    {
      [anchorSet computeTriggerStatesInScrollView:self->_feedView axis:1];
    }
    v7 = ;
    if ([v7 hasUpdates])
    {
      controllerHost = [(TUIFeedView *)self->_feedView controllerHost];
      triggerStateManager = [controllerHost triggerStateManager];
      [triggerStateManager updateEmbeddedTriggerStatesWithNewStates:v7 updateEvent:event];
    }

    v6 = anchorSet;
  }
}

- (id)viewFactoryDequeueReusableSubviewWithReuseIdentifier:(id)identifier indexPath:(id)path host:(id)host
{
  hostCopy = host;
  pathCopy = path;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  v12 = [WeakRetained viewFactoryDequeueReusableSubviewWithReuseIdentifier:identifierCopy indexPath:pathCopy host:hostCopy];

  return v12;
}

- (void)viewFactoryPrepareToReuseHost:(id)host
{
  hostCopy = host;
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  subviewPool = [WeakRetained subviewPool];
  [subviewPool prepareToReuseHost:hostCopy];
}

- (void)viewFactoryReuseSubviews:(id)subviews host:(id)host
{
  hostCopy = host;
  subviewsCopy = subviews;
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  subviewPool = [WeakRetained subviewPool];
  [subviewPool reuseSubviews:subviewsCopy host:hostCopy];
}

- (TUIReusableSubviewPool)subviewPool
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  subviewPool = [WeakRetained subviewPool];

  return subviewPool;
}

- (id)viewStateSave
{
  v3 = objc_opt_new();
  [(TUIFeedView *)self->_feedView saveViewStateForVisibleViews];
  [(TUIFeedView *)self->_feedView contentOffset];
  [v3 setContentOffset:?];
  currentViewState = [(TUIFeedView *)self->_feedView currentViewState];
  v5 = [currentViewState copy];
  [v3 setEmbeddedState:v5];

  return v3;
}

- (void)viewStateRestore:(id)restore
{
  if (restore)
  {
    restoreCopy = restore;
    [restoreCopy contentOffset];
    v6 = v5;
    v8 = v7;
    [(TUIFeedView *)self->_feedView bounds];
    v9 = UIEdgeInsetsZero.top - self->_insets.top;
    v10 = UIEdgeInsetsZero.left - self->_insets.left;
    v11 = v6 + v10;
    v12 = v8 + v9;
    v14 = v13 - (v10 + UIEdgeInsetsZero.right - self->_insets.right);
    v16 = v15 - (v9 + UIEdgeInsetsZero.bottom - self->_insets.bottom);
    [(TUIFeedView *)self->_feedView contentInset];
    [(TUIFeedView *)self->_feedView tui_contentOffsetForScrollingToRect:0 atScrollPosition:self->_feedView delegate:v11 + v20, v12 + v17, v14 - (v20 + v18), v16 - (v17 + v19)];
    [(TUIFeedView *)self->_feedView setContentOffset:?];
    embeddedState = [restoreCopy embeddedState];

    v21 = [embeddedState mutableCopy];
    [(TUIFeedView *)self->_feedView setCurrentViewState:v21];
  }
}

- (id)visibilityProviderWindowLayer
{
  window = [(TUIFeedView *)self->_feedView window];
  layer = [window layer];

  return layer;
}

- (CGRect)visibilityProviderVisibleBounds
{
  layer = [(TUIFeedView *)self->_feedView layer];
  [layer bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)visibilityProviderSections
{
  _collectionRenderModel = [(TUIEmbeddedCollectionView *)self _collectionRenderModel];
  sections = [_collectionRenderModel sections];

  return sections;
}

- (BOOL)visibilityProviderIsVisible
{
  if (([(TUIEmbeddedCollectionView *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  window = [(TUIEmbeddedCollectionView *)self window];
  v3 = window != 0;

  return v3;
}

- (BOOL)visibilityProviderIsScrolling
{
  if (([(TUIFeedView *)self->_feedView isDragging]& 1) != 0 || ([(TUIFeedView *)self->_feedView isTracking]& 1) != 0 || ([(TUIFeedView *)self->_feedView isDecelerating]& 1) != 0)
  {
    return 1;
  }

  feedView = self->_feedView;

  return [(TUIFeedView *)feedView _isAnimatingScroll];
}

- (CGRect)visibleBounds
{
  [(TUIFeedView *)self->_feedView bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)updateWithImpressionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(TUIFeedView *)self->_feedView setImpressionSnapshot:snapshotCopy];
}

- (id)descendentViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = TUIEmbeddedCollectionView;
  v5 = [(TUIReusableBaseView *)&v11 descendentViewWithIdentifier:identifierCopy];
  if (!v5)
  {
    renderModel = self->_renderModel;
    if (renderModel && (-[TUIEmbeddedCollectionViewRenderModel scrollIdentifier](renderModel, "scrollIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [identifierCopy isEqual:v7], v7, v8))
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = [(TUIFeedView *)self->_feedView descendentViewWithIdentifier:identifierCopy];
    }

    v5 = selfCopy;
  }

  return v5;
}

- (id)descendentViewWithRefId:(id)id
{
  idCopy = id;
  v7.receiver = self;
  v7.super_class = TUIEmbeddedCollectionView;
  v5 = [(TUIReusableBaseView *)&v7 descendentViewWithRefId:idCopy];
  if (!v5)
  {
    v5 = [(TUIFeedView *)self->_feedView descendentViewWithRefId:idCopy];
  }

  return v5;
}

- (TUIViewFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

@end