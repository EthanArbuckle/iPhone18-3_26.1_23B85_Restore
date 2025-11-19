@interface TUIEmbeddedCollectionView
+ (TUIRenderModelView)renderModelWithUpdateController:(double)a3 uid:(double)a4 UUID:(double)a5 identifier:(double)a6 scrollIdentifier:(double)a7 ancestorScrollIdentifier:(double)a8 scrollPolicy:(uint64_t)a9 scrollAxis:(uint64_t)a10 additionalSafeAreaInsets:(void *)a11 contentIntrinsicInsets:(void *)a12 pageGap:(void *)a13 gradientInsets:(void *)a14 gradientFraction:(void *)a15 acceptsDrop:(void *)a16 dropHandler:(void *)a17 decelerationRate:(uint64_t)a18;
- (BOOL)visibilityProviderIsScrolling;
- (BOOL)visibilityProviderIsVisible;
- (CGRect)_leadingGradientFrame;
- (CGRect)_trailingGradientFrame;
- (CGRect)visibilityProviderVisibleBounds;
- (CGRect)visibleBounds;
- (TUIReusableSubviewPool)subviewPool;
- (TUIViewFactory)factory;
- (TUIViewRegistry)registry;
- (id)descendentViewWithIdentifier:(id)a3;
- (id)descendentViewWithRefId:(id)a3;
- (id)viewFactoryDequeueReusableSubviewWithReuseIdentifier:(id)a3 indexPath:(id)a4 host:(id)a5;
- (id)viewStateSave;
- (id)visibilityProviderSections;
- (id)visibilityProviderWindowLayer;
- (void)_updateContentInsetAndOffsetIfNeeded;
- (void)_updateContentInsetAndOffsetWithCollectionModel:(id)a3 reset:(BOOL)a4;
- (void)_updateInsets:(id)a3;
- (void)_updateModel;
- (void)_updatePagedScrollable;
- (void)_updateScrollObserver;
- (void)_updateVisibilityCollector;
- (void)applyLayoutAttributes:(id)a3;
- (void)applyUpdate:(id)a3 controller:(id)a4 completion:(id)a5;
- (void)configureWithModel:(id)a3;
- (void)didMoveToWindow;
- (void)pagedScrollableActionChangeToPageIndex:(unint64_t)a3;
- (void)parentFeedDidUpdateTriggerStatesWithEvent:(unint64_t)a3;
- (void)prepareForReuse;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setFactory:(id)a3;
- (void)setUpdateController:(id)a3;
- (void)updateWithImpressionSnapshot:(id)a3;
- (void)viewDidEndDisplay;
- (void)viewFactoryPrepareToReuseHost:(id)a3;
- (void)viewFactoryReuseSubviews:(id)a3 host:(id)a4;
- (void)viewStateRestore:(id)a3;
- (void)viewWillDisplay;
@end

@implementation TUIEmbeddedCollectionView

- (TUIViewRegistry)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  v3 = [WeakRetained registry];

  return v3;
}

+ (TUIRenderModelView)renderModelWithUpdateController:(double)a3 uid:(double)a4 UUID:(double)a5 identifier:(double)a6 scrollIdentifier:(double)a7 ancestorScrollIdentifier:(double)a8 scrollPolicy:(uint64_t)a9 scrollAxis:(uint64_t)a10 additionalSafeAreaInsets:(void *)a11 contentIntrinsicInsets:(void *)a12 pageGap:(void *)a13 gradientInsets:(void *)a14 gradientFraction:(void *)a15 acceptsDrop:(void *)a16 dropHandler:(void *)a17 decelerationRate:(uint64_t)a18
{
  v40 = a29;
  v41 = a17;
  v54 = a16;
  v42 = a15;
  v43 = a14;
  v44 = a13;
  v45 = a12;
  v46 = a11;
  v47 = [[TUIEmbeddedCollectionViewRenderModel alloc] initWithUpdateController:v46 uid:v45 UUID:v44];

  [(TUIEmbeddedCollectionViewRenderModel *)v47 setScrollPolicy:v41];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setScrollAxis:a18];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setAdditionalSafeAreaInsets:a1, a2, a3, a4];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setContentIntrinsicInsets:a5, a6, a7, a8];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setPageGap:a19];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setGradientInsets:a20, a21, a22, a23];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setGradientFraction:a24, a25, a26, a27];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setIdentifier:v43];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setAcceptsDrop:a28];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setDropHandler:v40];

  [(TUIEmbeddedCollectionViewRenderModel *)v47 setDecelerationRate:a30];
  [(TUIEmbeddedCollectionViewRenderModel *)v47 setScrollIdentifier:v42];

  [(TUIEmbeddedCollectionViewRenderModel *)v47 setAncestorScrollIdentifier:v54];
  v48 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierEmbeddedCollectionView" identifier:v43 submodel:v47];

  return v48;
}

- (void)applyLayoutAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = TUIEmbeddedCollectionView;
  v4 = a3;
  [(TUIReusableBaseView *)&v7 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];

  v6 = [v5 submodel];
  [(TUIEmbeddedCollectionView *)self configureWithModel:v6];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TUIEmbeddedCollectionView;
  [(TUIEmbeddedCollectionView *)&v3 didMoveToWindow];
  [(TUIEmbeddedCollectionView *)self _updateVisibilityCollector];
  [(TUIVisibilityCollector *)self->_visibilityCollector updateVisible];
}

- (void)setFactory:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_factory, obj);
    [(TUIEmbeddedCollectionView *)self _updateModel];
    v5 = obj;
  }
}

- (void)setUpdateController:(id)a3
{
  v5 = a3;
  updateController = self->_updateController;
  if (updateController != v5)
  {
    v13 = v5;
    [(TUIRenderUpdateCollectionController *)updateController unregisterDelegate:self];
    objc_storeStrong(&self->_updateController, a3);
    v7 = [(TUIRenderUpdateCollectionController *)self->_updateController registerDelegate:self];
    v8 = [v7 first];

    v9 = [(TUIReusableBaseView *)self feedControllerHost];
    [(TUIFeedView *)self->_feedView setControllerHost:v9];

    [(TUIFeedView *)self->_feedView reloadWithRenderModel:v8];
    if ([v8 layoutDirection] == &dword_0 + 2 && -[TUIFeedView effectiveUserInterfaceLayoutDirection](self->_feedView, "effectiveUserInterfaceLayoutDirection") != &dword_0 + 1)
    {
      v10 = 4;
    }

    else
    {
      if ([v8 layoutDirection] != &dword_0 + 1 || !-[TUIFeedView effectiveUserInterfaceLayoutDirection](self->_feedView, "effectiveUserInterfaceLayoutDirection"))
      {
        goto LABEL_9;
      }

      v10 = 3;
    }

    [(TUIFeedView *)self->_feedView setSemanticContentAttribute:v10];
LABEL_9:
    [(TUIEmbeddedCollectionView *)self _updateContentInsetAndOffsetWithCollectionModel:v8 reset:1];
    [(TUIRenderUpdateCollectionController *)self->_updateController applyInitialUpdate];
    v11 = [(TUIFeedView *)self->_feedView controllerHost];
    v12 = [v11 triggerStateManager];
    [v12 registerEmbeddedCollectionDelegate:self];

    v5 = v13;
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
  v3 = [(TUIReusableBaseView *)self feedControllerHost];
  [(TUIFeedView *)self->_feedView setControllerHost:v3];

  renderModel = self->_renderModel;
  if (renderModel)
  {
    v5 = [(TUIEmbeddedCollectionViewRenderModel *)renderModel identifier];
    v6 = [(TUIReusableBaseView *)self tui_querySectionUUID];
    v7 = [v5 tui_identifierByPrependingUUID:v6];

    v8 = [(TUIReusableBaseView *)self feedControllerHost];
    v9 = [v8 pagedScrollableController];
    v10 = [v9 registerPagedScrollableWithWithIdentifier:v7 action:self];
    pagedScrollable = self->_pagedScrollable;
    self->_pagedScrollable = v10;

    [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
  }

  v12 = [(TUIFeedView *)self->_feedView controllerHost];
  v13 = [v12 embeddedScrollViewCoordinator];
  [v13 registerEmbeddedScrollView:self];
}

- (void)viewDidEndDisplay
{
  if (self->_pagedScrollable)
  {
    renderModel = self->_renderModel;
    if (renderModel)
    {
      v4 = [(TUIEmbeddedCollectionViewRenderModel *)renderModel identifier];
      v5 = [(TUIReusableBaseView *)self tui_querySectionUUID];
      v6 = [v4 tui_identifierByPrependingUUID:v5];

      v7 = [(TUIReusableBaseView *)self feedControllerHost];
      v8 = [v7 pagedScrollableController];
      [v8 unregisterPagedScrollableWithIdentifier:v6];

      pagedScrollable = self->_pagedScrollable;
      self->_pagedScrollable = 0;
    }
  }

  v16.receiver = self;
  v16.super_class = TUIEmbeddedCollectionView;
  [(TUIReusableBaseView *)&v16 viewDidEndDisplay];
  v10 = [(TUIFeedView *)self->_feedView controllerHost];
  v11 = [v10 triggerStateManager];
  [v11 unregisterEmbeddedCollectionDelegate:self];

  v12 = [(TUIFeedView *)self->_feedView controllerHost];
  v13 = [v12 embeddedScrollViewCoordinator];
  [v13 unregisterEmbeddedScrollView:self];

  [(TUIFeedView *)self->_feedView setControllerHost:0];
  scrollPolicy = self->_scrollPolicy;
  self->_scrollPolicy = 0;

  [(TUIScrollableObserverInstance *)self->_scrollObserver reset];
  scrollObserver = self->_scrollObserver;
  self->_scrollObserver = 0;

  [(TUIEmbeddedCollectionView *)self _updateVisibilityCollector];
  [(TUIEmbeddedCollectionView *)self _resetUpdateController];
}

- (void)_updateInsets:(id)a3
{
  renderModel = self->_renderModel;
  v5 = a3;
  [(TUIEmbeddedCollectionViewRenderModel *)renderModel _computedContentInsetsWithRenderModel:v5];
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
  v19 = [v5 layoutDirection];

  if (v19 == &dword_0 + 2)
  {
    v20 = v14;
  }

  else
  {
    v20 = v18;
  }

  if (v19 == &dword_0 + 2)
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
  v30 = [(TUIReusableBaseView *)self feedControllerHost];
  v31 = [v30 viewVisibilityController];
  [v31 updatedVisibleBoundsOfScrollView:self->_feedView];
}

- (void)_updateContentInsetAndOffsetIfNeeded
{
  if (self->_needsUpdateContentInsetAndOffset)
  {
    v4 = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
    [(TUIEmbeddedCollectionView *)self _updateContentInsetAndOffsetWithCollectionModel:v4 reset:0];
  }
}

- (void)_updateContentInsetAndOffsetWithCollectionModel:(id)a3 reset:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  self->_needsUpdateContentInsetAndOffset = 0;
  if (v4)
  {
    [(TUIFeedView *)self->_feedView setContentInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(TUIFeedView *)self->_feedView setContentOffset:CGPointZero.x, CGPointZero.y];
  }

  [(TUIEmbeddedCollectionView *)self _updateInsets:v6];
  [(TUIFeedView *)self->_feedView contentInset];
  v8 = v7;
  v10 = v9;
  v11 = [(TUIEmbeddedCollectionView *)self _isRTL];
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v11)
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

  if (v4 && [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel scrollAxis]== &dword_0 + 1)
  {
    v15 = -v14;
    [(TUIFeedView *)self->_feedView contentOffset];
    if (v16 != v15)
    {
      v17 = TUIViewUpdateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v23 = [(TUIReusableBaseView *)self feedControllerHost];
        v24 = [v23 feedId];
        [(TUIFeedView *)self->_feedView contentOffset];
        v26 = 134218754;
        v27 = v24;
        v28 = 2112;
        v29 = self;
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

  v18 = [(TUIEmbeddedCollectionView *)self _collectionRenderModel];
  v19 = [v18 anchorSet];

  if (v19)
  {
    feedView = self->_feedView;
    [(TUIFeedView *)feedView contentOffset];
    [v19 proposeAnchorOffsetWithScrollView:feedView velocity:CGPointZero.x target:{CGPointZero.y, v21, v22}];
    [(TUIFeedView *)self->_feedView setContentOffset:?];
  }
}

- (void)applyUpdate:(id)a3 controller:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = TUIViewUpdateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_19A0EC(self, v8, v11);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  updateController = self->_updateController;

  if (updateController == v10)
  {
    v13 = [v8 to];
    [(TUIEmbeddedCollectionView *)self _updateInsets:v13];

    v14 = [(TUIReusableBaseView *)self feedControllerHost];
    v15 = [v14 hostingController];

    [v15 beginViewUpdates];
    [v8 applyToFeedView:self->_feedView completion:v9];
    [v15 endViewUpdates];
    [(TUIVisibilityCollector *)self->_visibilityCollector updateSections];
    v16 = [(TUIFeedView *)self->_feedView renderModel];
    [(TUIEmbeddedCollectionView *)self visibleBounds];
    [v16 updateVisibleBounds:?];
  }

  else if (v9)
  {
    v9[2](v9);
  }
}

- (void)configureWithModel:(id)a3
{
  v33 = a3;
  if (self->_renderModel != v33)
  {
    [(TUIVisibilityCollector *)self->_visibilityCollector teardown];
    visibilityCollector = self->_visibilityCollector;
    self->_visibilityCollector = 0;

    if (self->_pagedScrollable)
    {
      renderModel = self->_renderModel;
      if (renderModel)
      {
        v7 = [(TUIEmbeddedCollectionViewRenderModel *)renderModel identifier];
        v8 = [(TUIReusableBaseView *)self tui_querySectionUUID];
        v9 = [v7 tui_identifierByPrependingUUID:v8];

        v10 = [(TUIReusableBaseView *)self feedControllerHost];
        v11 = [v10 pagedScrollableController];
        [v11 unregisterPagedScrollableWithIdentifier:v9];

        pagedScrollable = self->_pagedScrollable;
        self->_pagedScrollable = 0;
      }
    }

    objc_storeStrong(&self->_renderModel, a3);
    self->_needsUpdateContentInsetAndOffset = 1;
    [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel prepare];
    [(TUIEmbeddedCollectionView *)self _updateModel];
    [(TUIEmbeddedCollectionView *)self _updateContentInsetAndOffsetIfNeeded];
    scrollPolicy = self->_scrollPolicy;
    v14 = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel scrollPolicy];

    if (scrollPolicy != v14)
    {
      [(TUIScrollableObserverInstance *)self->_scrollObserver reset];
      scrollObserver = self->_scrollObserver;
      self->_scrollObserver = 0;

      v16 = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel scrollPolicy];
      v17 = self->_scrollPolicy;
      self->_scrollPolicy = v16;

      if (objc_opt_respondsToSelector())
      {
        v18 = self->_scrollPolicy;
        feedView = self->_feedView;
        v20 = [(TUIReusableBaseView *)self feedControllerHost];
        v21 = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel UUID];
        v22 = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel uid];
        v23 = [(TUIScrollablePolicy *)v18 newScrollableObserverInstanceWithView:feedView host:v20 uuid:v21 uid:v22];
        v24 = self->_scrollObserver;
        self->_scrollObserver = v23;

        [(TUIEmbeddedCollectionView *)self _updateScrollObserver];
      }
    }

    [(TUIEmbeddedCollectionView *)self _updateVisibilityCollector];
    v25 = self->_renderModel;
    if (v25)
    {
      v26 = [(TUIEmbeddedCollectionViewRenderModel *)v25 identifier];
      v27 = [(TUIReusableBaseView *)self tui_querySectionUUID];
      v28 = [v26 tui_identifierByPrependingUUID:v27];

      v29 = [(TUIReusableBaseView *)self feedControllerHost];
      v30 = [v29 pagedScrollableController];
      v31 = [v30 registerPagedScrollableWithWithIdentifier:v28 action:self];
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

      v26 = [(TUIEmbeddedCollectionView *)self layer];
      v27 = [v26 allowsGroupBlending];

      if (v18 != v27)
      {
        v28 = [(TUIEmbeddedCollectionView *)self layer];
        [v28 setAllowsGroupBlending:v18];
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
      v32 = [(TUIReusableBaseView *)self feedControllerHost];
      v33 = [v32 viewVisibilityController];
      [v33 updatedVisibleBoundsOfScrollView:self->_feedView];

      renderModel = self->_renderModel;
    }

    else
    {
      renderModel = 0;
    }

    v35 = [(TUIEmbeddedCollectionViewRenderModel *)renderModel uid];
    [(TUIFeedView *)self->_feedView setRenderQueryUID:v35];

    v36 = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel UUID];
    [(TUIFeedView *)self->_feedView setRenderQueryUUID:v36];

    v37 = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel updateController];
    [(TUIEmbeddedCollectionView *)self setUpdateController:v37];

    [(TUIEmbeddedCollectionView *)self _updateVisibilityCollector];
  }
}

- (void)_updateVisibilityCollector
{
  v3 = [(TUIFeedView *)self->_feedView controllerHost];
  v13 = [v3 visibilityController];

  v4 = [(TUIEmbeddedCollectionView *)self _collectionRenderModel];
  if (v4 && (v5 = v4, [(TUIEmbeddedCollectionView *)self window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    if (!self->_visibilityCollector)
    {
      v7 = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel scrollIdentifier];
      v8 = [(TUIEmbeddedCollectionViewRenderModel *)self->_renderModel ancestorScrollIdentifier];
      v9 = [v13 newCollectorForProvider:self withIdentifier:v7 parentIdentifier:v8];
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

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  v9 = [(TUIEmbeddedCollectionView *)self _collectionRenderModel];
  v10 = [v9 anchorSet];

  if (a5 && v10)
  {
    [v10 proposeAnchorOffsetWithScrollView:v13 velocity:x target:{y, a5->x, a5->y}];
    a5->x = v11;
    a5->y = v12;
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  [(TUIEmbeddedCollectionView *)self _updateScrollObserver];
  [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
  visibilityCollector = self->_visibilityCollector;

  [(TUIVisibilityCollector *)visibilityCollector updateVisibleBounds];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(TUIEmbeddedCollectionView *)self _updateScrollObserver];
  [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
  visibilityCollector = self->_visibilityCollector;

  [(TUIVisibilityCollector *)visibilityCollector updateVisibleBounds];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(TUIEmbeddedCollectionView *)self _updateScrollObserver];
  [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
  visibilityCollector = self->_visibilityCollector;

  [(TUIVisibilityCollector *)visibilityCollector updateVisibleBounds];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(TUIEmbeddedCollectionView *)self _updateScrollObserver];
    [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
    visibilityCollector = self->_visibilityCollector;

    [(TUIVisibilityCollector *)visibilityCollector updateVisibleBounds];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v11 = a3;
  [(TUIVisibilityCollector *)self->_visibilityCollector updateVisibleBounds];
  [(TUIEmbeddedCollectionView *)self _updateScrollObserver];
  [(TUIEmbeddedCollectionView *)self _updatePagedScrollable];
  v4 = [(TUIReusableBaseView *)self feedControllerHost];
  v5 = [v4 viewVisibilityController];
  [v5 updatedVisibleBoundsOfScrollView:self->_feedView];

  v6 = [(TUIEmbeddedCollectionView *)self _collectionRenderModel];
  v7 = [v6 anchorSet];

  if (v7)
  {
    v8 = [v7 computeTriggerStatesInScrollView:v11 axis:1];
    v9 = [(TUIFeedView *)self->_feedView controllerHost];
    v10 = [v9 triggerStateManager];
    [v10 updateEmbeddedTriggerStatesWithNewStates:v8 updateEvent:3];
  }
}

- (void)_updateScrollObserver
{
  if (([(TUIFeedView *)self->_feedView isDragging]& 1) != 0)
  {
    v3 = &dword_0 + 1;
  }

  else
  {
    v3 = [(TUIFeedView *)self->_feedView isDecelerating];
  }

  [(TUIEmbeddedCollectionView *)self visibleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = [(TUIRenderUpdateCollectionController *)self->_updateController renderModel];
  if ([v13 layoutDirection] == &dword_0 + 2)
  {
    [v13 size];
    v5 = v12 - v9 - v5;
  }

  [(TUIScrollableObserverInstance *)self->_scrollObserver updateScrollingWithVisibleBounds:v3 active:v5, v7, v9, v11];
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

- (void)pagedScrollableActionChangeToPageIndex:(unint64_t)a3
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
  v20 = (v19 + v18) * a3;
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

- (void)parentFeedDidUpdateTriggerStatesWithEvent:(unint64_t)a3
{
  v5 = [(TUIEmbeddedCollectionView *)self _collectionRenderModel];
  v10 = [v5 anchorSet];

  v6 = v10;
  if (v10)
  {
    if (a3 == 1)
    {
      [v10 feedNotVisibleTriggerStatesForAxis:1];
    }

    else
    {
      [v10 computeTriggerStatesInScrollView:self->_feedView axis:1];
    }
    v7 = ;
    if ([v7 hasUpdates])
    {
      v8 = [(TUIFeedView *)self->_feedView controllerHost];
      v9 = [v8 triggerStateManager];
      [v9 updateEmbeddedTriggerStatesWithNewStates:v7 updateEvent:a3];
    }

    v6 = v10;
  }
}

- (id)viewFactoryDequeueReusableSubviewWithReuseIdentifier:(id)a3 indexPath:(id)a4 host:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  v12 = [WeakRetained viewFactoryDequeueReusableSubviewWithReuseIdentifier:v10 indexPath:v9 host:v8];

  return v12;
}

- (void)viewFactoryPrepareToReuseHost:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  v5 = [WeakRetained subviewPool];
  [v5 prepareToReuseHost:v4];
}

- (void)viewFactoryReuseSubviews:(id)a3 host:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  v8 = [WeakRetained subviewPool];
  [v8 reuseSubviews:v7 host:v6];
}

- (TUIReusableSubviewPool)subviewPool
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);
  v3 = [WeakRetained subviewPool];

  return v3;
}

- (id)viewStateSave
{
  v3 = objc_opt_new();
  [(TUIFeedView *)self->_feedView saveViewStateForVisibleViews];
  [(TUIFeedView *)self->_feedView contentOffset];
  [v3 setContentOffset:?];
  v4 = [(TUIFeedView *)self->_feedView currentViewState];
  v5 = [v4 copy];
  [v3 setEmbeddedState:v5];

  return v3;
}

- (void)viewStateRestore:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 contentOffset];
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
    v22 = [v4 embeddedState];

    v21 = [v22 mutableCopy];
    [(TUIFeedView *)self->_feedView setCurrentViewState:v21];
  }
}

- (id)visibilityProviderWindowLayer
{
  v2 = [(TUIFeedView *)self->_feedView window];
  v3 = [v2 layer];

  return v3;
}

- (CGRect)visibilityProviderVisibleBounds
{
  v2 = [(TUIFeedView *)self->_feedView layer];
  [v2 bounds];
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
  v2 = [(TUIEmbeddedCollectionView *)self _collectionRenderModel];
  v3 = [v2 sections];

  return v3;
}

- (BOOL)visibilityProviderIsVisible
{
  if (([(TUIEmbeddedCollectionView *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  v4 = [(TUIEmbeddedCollectionView *)self window];
  v3 = v4 != 0;

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

- (void)updateWithImpressionSnapshot:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(TUIFeedView *)self->_feedView setImpressionSnapshot:v4];
}

- (id)descendentViewWithIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TUIEmbeddedCollectionView;
  v5 = [(TUIReusableBaseView *)&v11 descendentViewWithIdentifier:v4];
  if (!v5)
  {
    renderModel = self->_renderModel;
    if (renderModel && (-[TUIEmbeddedCollectionViewRenderModel scrollIdentifier](renderModel, "scrollIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v4 isEqual:v7], v7, v8))
    {
      v9 = self;
    }

    else
    {
      v9 = [(TUIFeedView *)self->_feedView descendentViewWithIdentifier:v4];
    }

    v5 = v9;
  }

  return v5;
}

- (id)descendentViewWithRefId:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TUIEmbeddedCollectionView;
  v5 = [(TUIReusableBaseView *)&v7 descendentViewWithRefId:v4];
  if (!v5)
  {
    v5 = [(TUIFeedView *)self->_feedView descendentViewWithRefId:v4];
  }

  return v5;
}

- (TUIViewFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

@end