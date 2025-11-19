@interface BKContentViewController
- (BKContentLoadingView)loadingView;
- (BKContentReloadView)reloadView;
- (BKContentViewController)init;
- (BKContentViewControllerDelegate)delegate;
- (BKContentViewControllerLayoutDelegate)layoutDelegate;
- (BKPageLocation)assignedPageLocation;
- (BOOL)hasHighlightedText;
- (CGRect)cachedRectForAnnotation:(id)a3;
- (CGRect)cachedVisibleRectForAnnotation:(id)a3;
- (CGRect)rectForAnnotation:(id)a3;
- (CGRect)rectForAnnotation:(id)a3 visible:(BOOL)a4;
- (CGRect)rectForLocation:(id)a3;
- (CGRect)visibleRectForLocation:(id)a3;
- (CGSize)estimatedContentSize;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)separatorInsets;
- (id)snapshot;
- (int)pageProgressionDirection;
- (void)_setThemeIfNeeded:(id)a3;
- (void)addHighlightView:(id)a3 forWK2:(BOOL)a4;
- (void)applyPageColor;
- (void)contentLoadFailed;
- (void)contentReady;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)ensureLocationVisible:(id)a3 adjustForSearchResultRevealMode:(BOOL)a4 completion:(id)a5;
- (void)ensureLocationVisible:(id)a3 completion:(id)a4;
- (void)hideLoadingViewAnimated:(BOOL)a3;
- (void)hideReloadUIAnimated:(BOOL)a3;
- (void)highlightSearchLocation:(id)a3;
- (void)isLocationVisible:(id)a3 annotation:(id)a4 completion:(id)a5;
- (void)load;
- (void)pageOffsetRangeForLocation:(id)a3 completion:(id)a4;
- (void)prepareForReuse;
- (void)rectForAnnotation:(id)a3 visible:(BOOL)a4 withCompletion:(id)a5;
- (void)rectForAnnotation:(id)a3 withCompletion:(id)a4;
- (void)rectForLocation:(id)a3 completion:(id)a4;
- (void)releaseViews;
- (void)reloadViewDidBeginReloading:(id)a3;
- (void)removeHighlightView:(id)a3;
- (void)selectLocation:(id)a3 completion:(id)a4;
- (void)setContentLoaded:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setHighlightViews:(id)a3;
- (void)setSelectionHighlightsVisible:(BOOL)a3;
- (void)showLoadingViewAnimated:(BOOL)a3;
- (void)showReloadUIAnimated:(BOOL)a3;
- (void)updateSelectionHighlights;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)visibleRectForLocation:(id)a3 completion:(id)a4;
@end

@implementation BKContentViewController

- (BKContentViewController)init
{
  v3.receiver = self;
  v3.super_class = BKContentViewController;
  result = [(BKContentViewController *)&v3 init];
  if (result)
  {
    result->_totalPages = -1;
    result->_ordinal = -1;
    result->_pageOffset = -1;
    result->_selectionHighlightType = 0;
  }

  return result;
}

- (void)dealloc
{
  [(BKContentViewController *)self releaseViews];
  [(BKContentViewController *)self setBook:0];
  [(BKContentViewController *)self setDocument:0];
  style = self->_style;
  self->_style = 0;

  [(BKContentViewController *)self setSearchLocation:0];
  [(IMBaseRenderingCache *)self->_contentViewImageCache cancelRenderingCacheOperationsForTarget:self];
  contentViewImageCache = self->_contentViewImageCache;
  self->_contentViewImageCache = 0;

  v5.receiver = self;
  v5.super_class = BKContentViewController;
  [(BKViewController *)&v5 dealloc];
}

- (void)releaseViews
{
  highlightViews = self->_highlightViews;
  self->_highlightViews = 0;

  [(BKContentReloadView *)self->_reloadView removeFromSuperview];
  reloadView = self->_reloadView;
  self->_reloadView = 0;

  [(BKContentLoadingView *)self->_loadingView removeFromSuperview];
  loadingView = self->_loadingView;
  self->_loadingView = 0;

  v6.receiver = self;
  v6.super_class = BKContentViewController;
  [(BKViewController *)&v6 releaseViews];
}

- (void)didReceiveMemoryWarning
{
  v6.receiver = self;
  v6.super_class = BKContentViewController;
  [(BKContentViewController *)&v6 didReceiveMemoryWarning];
  if ([(BKContentViewController *)self isViewLoaded])
  {
    v3 = [(BKContentViewController *)self view];
    v4 = [v3 window];
    if (v4)
    {
    }

    else
    {
      v5 = [(BKContentViewController *)self isContentLoaded];

      if ((v5 & 1) == 0)
      {
        [(BKContentViewController *)self contentLoadFailed];
      }
    }
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BKContentViewController;
  [(BKContentViewController *)&v3 viewDidLoad];
  [(BKContentViewController *)self applyPageColor];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKContentViewController;
  [(BKContentViewController *)&v4 viewDidAppear:a3];
  if ([(BKContentViewController *)self showsLoadingIndicator])
  {
    if (![(BKContentViewController *)self isContentLoaded])
    {
      [(BKContentViewController *)self showLoadingViewAnimated:1];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKContentViewController;
  [(BKContentViewController *)&v4 viewWillDisappear:a3];
  [(BKContentViewController *)self clearSelection];
  [(IMBaseRenderingCache *)self->_contentViewImageCache cancelRenderingCacheOperationsForTarget:self];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKContentViewController;
  [(BKContentViewController *)&v4 viewDidDisappear:a3];
  [(BKContentViewController *)self clearHighlightsForSearchResults];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    if (v6)
    {
      v7 = v6;
      v8 = [(BKContentViewController *)self isContentLoaded];

      if ((v8 & 1) == 0)
      {
        [(BKContentViewController *)self contentLoadFailed];
      }
    }

    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)prepareForReuse
{
  [(BKContentViewController *)self setSearchLocation:0];
  [(BKContentViewController *)self setPageOffset:-1];
  self->_contentLoaded = 0;
  self->_contentLoadPending = 0;

  [(BKContentViewController *)self setDocument:0];
}

- (void)isLocationVisible:(id)a3 annotation:(id)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0);
    v5 = v6;
  }
}

- (CGRect)cachedRectForAnnotation:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BKContentViewController cachedRectForAnnotation:]"];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (CGRect)cachedVisibleRectForAnnotation:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BKContentViewController cachedVisibleRectForAnnotation:]"];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)pageOffsetRangeForLocation:(id)a3 completion:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, 0x7FFFFFFFFFFFFFFFLL, 0);
    v4 = v5;
  }
}

- (void)ensureLocationVisible:(id)a3 completion:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

- (void)ensureLocationVisible:(id)a3 adjustForSearchResultRevealMode:(BOOL)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    v5[2]();
    v5 = v6;
  }
}

- (void)load
{
  [(BKContentViewController *)self setContentLoadPending:1];
  if (([(BKContentViewController *)self isViewLoaded]& 1) == 0)
  {
    v3 = [(BKContentViewController *)self view];
  }
}

- (void)setContentLoaded:(BOOL)a3
{
  if (self->_contentLoaded != a3)
  {
    self->_contentLoaded = a3;
    if (a3)
    {
      if (self->_loadingView)
      {

        [(BKContentViewController *)self hideLoadingViewAnimated:1];
      }
    }

    else if ([(BKContentViewController *)self showsLoadingIndicator]&& [(BKContentViewController *)self isViewLoaded])
    {

      [(BKContentViewController *)self showLoadingViewAnimated:0];
    }
  }
}

- (void)contentReady
{
  [(BKContentViewController *)self hideLoadingViewAnimated:1];
  if (![(BKContentViewController *)self isContentLoaded])
  {
    [(BKContentViewController *)self setContentLoaded:1];
    [(BKContentViewController *)self setContentLoadPending:0];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:BKContentReadyNotification object:self];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contentViewReady:self];
  }
}

- (void)contentLoadFailed
{
  [(BKContentViewController *)self setContentLoadPending:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:BKContentFAILNotification object:self];
}

- (void)applyPageColor
{
  if ([(BKContentViewController *)self isViewLoaded])
  {
    if ([(BKContentViewController *)self shouldApplyPageColor])
    {
      v13 = [(BKContentViewController *)self themePage];
      v3 = [v13 backgroundColorForTraitEnvironment:self];
      v4 = [CAFilter alloc];
      v5 = [v4 initWithType:kCAFilterMultiplyColor];
      [v5 setValue:objc_msgSend(v3 forKeyPath:{"CGColor"), @"inputColor"}];
      v6 = [NSArray arrayWithObject:v5];
      v7 = [(BKContentViewController *)self view];
      v8 = [v7 layer];
      [v8 setFilters:v6];

      v9 = [(BKContentViewController *)self view];
      v10 = [v9 layer];
      [v10 setCreatesCompositingGroup:1];
    }

    else
    {
      v11 = [(BKContentViewController *)self view];
      v12 = [v11 layer];
      [v12 setFilters:0];

      v13 = [(BKContentViewController *)self view];
      v3 = [v13 layer];
      [v3 setCreatesCompositingGroup:0];
    }
  }
}

- (void)_setThemeIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(BKContentViewController *)self theme];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = BKContentViewController;
    [(BKContentViewController *)&v8 setTheme:v4];
    [(BKContentViewController *)self applyPageColor];
    v7 = [(BKContentViewController *)self themePage];
    [(BKContentLoadingView *)self->_loadingView setTheme:v7];
    [(BKContentReloadView *)self->_reloadView setTheme:v7];
  }
}

- (id)snapshot
{
  if ([(BKContentViewController *)self isViewLoaded])
  {
    v3 = [(BKContentViewController *)self view];
    v4 = [v3 im_snapshotInContext];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BKPageLocation)assignedPageLocation
{
  v3 = [(BKContentViewController *)self pageOffset];
  if (v3 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v4 = [[BKPageLocation alloc] initWithOrdinal:[(BKContentViewController *)self ordinal] andOffset:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)pageProgressionDirection
{
  v2 = [(BKContentViewController *)self book];
  v3 = [v2 bkPageProgressionDirection];

  return v3;
}

- (void)selectLocation:(id)a3 completion:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, 0);
    v4 = v5;
  }
}

- (CGRect)rectForLocation:(id)a3
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)rectForLocation:(id)a3 completion:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v5 = v4;
    v4[2](CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
    v4 = v5;
  }
}

- (CGRect)visibleRectForLocation:(id)a3
{
  [(BKContentViewController *)self rectForLocation:a3];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (!CGRectIsNull(v17))
  {
    v8 = [(BKContentViewController *)self view];
    [v8 bounds];
    v21.origin.x = v9;
    v21.origin.y = v10;
    v21.size.width = v11;
    v21.size.height = v12;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v19 = CGRectIntersection(v18, v21);
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)visibleRectForLocation:(id)a3 completion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_636F8;
  v6[3] = &unk_1E3208;
  v7 = self;
  v8 = a4;
  v5 = v8;
  [(BKContentViewController *)v7 rectForLocation:a3 completion:v6];
}

- (CGRect)rectForAnnotation:(id)a3
{
  [(BKContentViewController *)self rectForAnnotation:a3 visible:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)rectForAnnotation:(id)a3 withCompletion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_638A4;
  v7[3] = &unk_1E41C8;
  v8 = a4;
  v6 = v8;
  [(BKContentViewController *)self rectForAnnotation:a3 visible:1 withCompletion:v7];
}

- (void)rectForAnnotation:(id)a3 visible:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [a3 location];
  if (v5)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_63A48;
    v15[3] = &unk_1E41C8;
    v10 = &v16;
    v16 = v8;
    v11 = v8;
    [(BKContentViewController *)self visibleRectForLocation:v9 completion:v15];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_63AC4;
    v13[3] = &unk_1E41C8;
    v10 = &v14;
    v14 = v8;
    v12 = v8;
    [(BKContentViewController *)self rectForLocation:v9 completion:v13];
  }
}

- (CGRect)rectForAnnotation:(id)a3 visible:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 location];
  if (v4)
  {
    [(BKContentViewController *)self visibleRectForLocation:v6];
  }

  else
  {
    [(BKContentViewController *)self rectForLocation:v6];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)highlightSearchLocation:(id)a3
{
  v5 = a3;
  v4 = [(BKContentViewController *)self ordinal];
  if (v4 == [v5 ordinal])
  {
    [(BKContentViewController *)self setSearchLocation:v5];
  }
}

- (void)setHighlightViews:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_highlightViews isEqualToArray:v4]& 1) == 0)
  {
    highlightViews = self->_highlightViews;
    if (highlightViews != v4 && ([(NSMutableArray *)highlightViews count]|| [(NSMutableArray *)v4 count]))
    {
      if ([(NSMutableArray *)self->_highlightViews count])
      {
        v6 = [(NSMutableArray *)self->_highlightViews copy];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          do
          {
            v11 = 0;
            do
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [(BKContentViewController *)self removeHighlightView:*(*(&v23 + 1) + 8 * v11)];
              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
          }

          while (v9);
        }
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = v4;
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          v16 = 0;
          do
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v19 + 1) + 8 * v16);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [v17 copy];
              [(BKContentViewController *)self addHighlightView:v18 forWK2:1];
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v14);
      }
    }
  }
}

- (void)addHighlightView:(id)a3 forWK2:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    v12 = v6;
    if (!self->_highlightViews)
    {
      v7 = [[NSMutableArray alloc] initWithCapacity:30];
      highlightViews = self->_highlightViews;
      self->_highlightViews = v7;
    }

    if (a4)
    {
      [(BKContentViewController *)self highlightViewContainerWK2];
    }

    else
    {
      [(BKContentViewController *)self highlightViewContainer];
    }
    v9 = ;
    v10 = [(BKContentViewController *)self view];

    if (v10 != v9)
    {
      v11 = [(BKContentViewController *)self view];
      [v12 frame];
      [v11 convertRect:v9 toView:?];
      [v12 setFrame:?];
    }

    [v9 addSubview:v12];
    [(NSMutableArray *)self->_highlightViews addObject:v12];

    v6 = v12;
  }
}

- (void)removeHighlightView:(id)a3
{
  if (a3)
  {
    highlightViews = self->_highlightViews;
    v4 = a3;
    [(NSMutableArray *)highlightViews removeObject:v4];
    [v4 removeFromSuperview];
  }
}

- (void)updateSelectionHighlights
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(BKContentViewController *)self highlightViews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) updateHighlightImage];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setSelectionHighlightsVisible:(BOOL)a3
{
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(BKContentViewController *)self highlightViews];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) setHidden:!v3];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)hasHighlightedText
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(BKContentViewController *)self highlightViews:0];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)showLoadingViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKContentViewController *)self loadingView];
  v6 = 0.0;
  [v5 setAlpha:0.0];
  v7 = [v5 superview];

  if (!v7)
  {
    v8 = [(BKContentViewController *)self view];
    [v8 addSubview:v5];
  }

  v9 = [(BKContentViewController *)self view];
  [v9 bounds];
  [v5 setFrame:?];

  if (v3)
  {
    v6 = 0.2;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_64450;
  v11[3] = &unk_1E2BD0;
  v12 = v5;
  v10 = v5;
  [UIView animateWithDuration:v11 animations:v6];
}

- (void)hideLoadingViewAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(BKContentViewController *)self loadingView];
  if (v3)
  {
    v5 = 0.2;
  }

  else
  {
    v5 = 0.0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6456C;
  v9[3] = &unk_1E2BD0;
  v10 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_64578;
  v7[3] = &unk_1E2C20;
  v8 = v10;
  v6 = v10;
  [UIView animateWithDuration:v9 animations:v7 completion:v5];
}

- (BKContentLoadingView)loadingView
{
  loadingView = self->_loadingView;
  if (!loadingView)
  {
    v4 = [BKContentLoadingView alloc];
    v5 = [(BKContentViewController *)self view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(BKContentViewController *)self themePage];
    v15 = [(BKContentLoadingView *)v4 initWithFrame:v14 theme:v7, v9, v11, v13];
    v16 = self->_loadingView;
    self->_loadingView = v15;

    [(BKContentLoadingView *)self->_loadingView setAutoresizingMask:18];
    loadingView = self->_loadingView;
  }

  return loadingView;
}

- (void)showReloadUIAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKContentViewController *)self reloadView];
  v6 = 0.0;
  [v5 setAlpha:0.0];
  v7 = [v5 superview];

  if (!v7)
  {
    v8 = [(BKContentViewController *)self view];
    [v8 addSubview:v5];
  }

  v9 = [(BKContentViewController *)self view];
  [v9 bounds];
  [v5 setFrame:?];

  if (v3)
  {
    v6 = 0.2;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_64798;
  v11[3] = &unk_1E2BD0;
  v12 = v5;
  v10 = v5;
  [UIView animateWithDuration:v11 animations:v6];
}

- (void)hideReloadUIAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(BKContentViewController *)self reloadView];
  if (v3)
  {
    v5 = 0.2;
  }

  else
  {
    v5 = 0.0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_648B4;
  v9[3] = &unk_1E2BD0;
  v10 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_648C0;
  v7[3] = &unk_1E2C20;
  v8 = v10;
  v6 = v10;
  [UIView animateWithDuration:v9 animations:v7 completion:v5];
}

- (BKContentReloadView)reloadView
{
  reloadView = self->_reloadView;
  if (!reloadView)
  {
    v4 = [BKContentReloadView alloc];
    v5 = [(BKContentViewController *)self view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(BKContentViewController *)self themePage];
    v15 = [(BKContentReloadView *)v4 initWithFrame:v14 theme:self delegate:v7, v9, v11, v13];
    v16 = self->_reloadView;
    self->_reloadView = v15;

    [(BKContentReloadView *)self->_reloadView setAutoresizingMask:18];
    reloadView = self->_reloadView;
  }

  return reloadView;
}

- (void)reloadViewDidBeginReloading:(id)a3
{
  [(BKContentViewController *)self hideReloadUIAnimated:1];
  [(BKContentViewController *)self reload];

  [(BKContentViewController *)self showLoadingViewAnimated:1];
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BKContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BKContentViewControllerLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)separatorInsets
{
  top = self->_separatorInsets.top;
  left = self->_separatorInsets.left;
  bottom = self->_separatorInsets.bottom;
  right = self->_separatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)estimatedContentSize
{
  width = self->_estimatedContentSize.width;
  height = self->_estimatedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end