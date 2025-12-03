@interface BKContentViewController
- (BKContentLoadingView)loadingView;
- (BKContentReloadView)reloadView;
- (BKContentViewController)init;
- (BKContentViewControllerDelegate)delegate;
- (BKContentViewControllerLayoutDelegate)layoutDelegate;
- (BKPageLocation)assignedPageLocation;
- (BOOL)hasHighlightedText;
- (CGRect)cachedRectForAnnotation:(id)annotation;
- (CGRect)cachedVisibleRectForAnnotation:(id)annotation;
- (CGRect)rectForAnnotation:(id)annotation;
- (CGRect)rectForAnnotation:(id)annotation visible:(BOOL)visible;
- (CGRect)rectForLocation:(id)location;
- (CGRect)visibleRectForLocation:(id)location;
- (CGSize)estimatedContentSize;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)separatorInsets;
- (id)snapshot;
- (int)pageProgressionDirection;
- (void)_setThemeIfNeeded:(id)needed;
- (void)addHighlightView:(id)view forWK2:(BOOL)k2;
- (void)applyPageColor;
- (void)contentLoadFailed;
- (void)contentReady;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)ensureLocationVisible:(id)visible adjustForSearchResultRevealMode:(BOOL)mode completion:(id)completion;
- (void)ensureLocationVisible:(id)visible completion:(id)completion;
- (void)hideLoadingViewAnimated:(BOOL)animated;
- (void)hideReloadUIAnimated:(BOOL)animated;
- (void)highlightSearchLocation:(id)location;
- (void)isLocationVisible:(id)visible annotation:(id)annotation completion:(id)completion;
- (void)load;
- (void)pageOffsetRangeForLocation:(id)location completion:(id)completion;
- (void)prepareForReuse;
- (void)rectForAnnotation:(id)annotation visible:(BOOL)visible withCompletion:(id)completion;
- (void)rectForAnnotation:(id)annotation withCompletion:(id)completion;
- (void)rectForLocation:(id)location completion:(id)completion;
- (void)releaseViews;
- (void)reloadViewDidBeginReloading:(id)reloading;
- (void)removeHighlightView:(id)view;
- (void)selectLocation:(id)location completion:(id)completion;
- (void)setContentLoaded:(BOOL)loaded;
- (void)setDelegate:(id)delegate;
- (void)setHighlightViews:(id)views;
- (void)setSelectionHighlightsVisible:(BOOL)visible;
- (void)showLoadingViewAnimated:(BOOL)animated;
- (void)showReloadUIAnimated:(BOOL)animated;
- (void)updateSelectionHighlights;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)visibleRectForLocation:(id)location completion:(id)completion;
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
    view = [(BKContentViewController *)self view];
    window = [view window];
    if (window)
    {
    }

    else
    {
      isContentLoaded = [(BKContentViewController *)self isContentLoaded];

      if ((isContentLoaded & 1) == 0)
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BKContentViewController;
  [(BKContentViewController *)&v4 viewDidAppear:appear];
  if ([(BKContentViewController *)self showsLoadingIndicator])
  {
    if (![(BKContentViewController *)self isContentLoaded])
    {
      [(BKContentViewController *)self showLoadingViewAnimated:1];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BKContentViewController;
  [(BKContentViewController *)&v4 viewWillDisappear:disappear];
  [(BKContentViewController *)self clearSelection];
  [(IMBaseRenderingCache *)self->_contentViewImageCache cancelRenderingCacheOperationsForTarget:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BKContentViewController;
  [(BKContentViewController *)&v4 viewDidDisappear:disappear];
  [(BKContentViewController *)self clearHighlightsForSearchResults];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    if (v6)
    {
      v7 = v6;
      isContentLoaded = [(BKContentViewController *)self isContentLoaded];

      if ((isContentLoaded & 1) == 0)
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

- (void)isLocationVisible:(id)visible annotation:(id)annotation completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0);
    v5 = v6;
  }
}

- (CGRect)cachedRectForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v4 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BKContentViewController cachedRectForAnnotation:]"];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (CGRect)cachedVisibleRectForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v4 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[BKContentViewController cachedVisibleRectForAnnotation:]"];
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)pageOffsetRangeForLocation:(id)location completion:(id)completion
{
  v4 = objc_retainBlock(completion);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, 0x7FFFFFFFFFFFFFFFLL, 0);
    v4 = v5;
  }
}

- (void)ensureLocationVisible:(id)visible completion:(id)completion
{
  v4 = objc_retainBlock(completion);
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

- (void)ensureLocationVisible:(id)visible adjustForSearchResultRevealMode:(BOOL)mode completion:(id)completion
{
  v5 = objc_retainBlock(completion);
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
    view = [(BKContentViewController *)self view];
  }
}

- (void)setContentLoaded:(BOOL)loaded
{
  if (self->_contentLoaded != loaded)
  {
    self->_contentLoaded = loaded;
    if (loaded)
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
      themePage = [(BKContentViewController *)self themePage];
      layer4 = [themePage backgroundColorForTraitEnvironment:self];
      v4 = [CAFilter alloc];
      v5 = [v4 initWithType:kCAFilterMultiplyColor];
      [v5 setValue:objc_msgSend(layer4 forKeyPath:{"CGColor"), @"inputColor"}];
      v6 = [NSArray arrayWithObject:v5];
      view = [(BKContentViewController *)self view];
      layer = [view layer];
      [layer setFilters:v6];

      view2 = [(BKContentViewController *)self view];
      layer2 = [view2 layer];
      [layer2 setCreatesCompositingGroup:1];
    }

    else
    {
      view3 = [(BKContentViewController *)self view];
      layer3 = [view3 layer];
      [layer3 setFilters:0];

      themePage = [(BKContentViewController *)self view];
      layer4 = [themePage layer];
      [layer4 setCreatesCompositingGroup:0];
    }
  }
}

- (void)_setThemeIfNeeded:(id)needed
{
  neededCopy = needed;
  theme = [(BKContentViewController *)self theme];
  v6 = [neededCopy isEqual:theme];

  if ((v6 & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = BKContentViewController;
    [(BKContentViewController *)&v8 setTheme:neededCopy];
    [(BKContentViewController *)self applyPageColor];
    themePage = [(BKContentViewController *)self themePage];
    [(BKContentLoadingView *)self->_loadingView setTheme:themePage];
    [(BKContentReloadView *)self->_reloadView setTheme:themePage];
  }
}

- (id)snapshot
{
  if ([(BKContentViewController *)self isViewLoaded])
  {
    view = [(BKContentViewController *)self view];
    im_snapshotInContext = [view im_snapshotInContext];
  }

  else
  {
    im_snapshotInContext = 0;
  }

  return im_snapshotInContext;
}

- (BKPageLocation)assignedPageLocation
{
  pageOffset = [(BKContentViewController *)self pageOffset];
  if (pageOffset <= 0x7FFFFFFFFFFFFFFELL)
  {
    v4 = [[BKPageLocation alloc] initWithOrdinal:[(BKContentViewController *)self ordinal] andOffset:pageOffset];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)pageProgressionDirection
{
  book = [(BKContentViewController *)self book];
  bkPageProgressionDirection = [book bkPageProgressionDirection];

  return bkPageProgressionDirection;
}

- (void)selectLocation:(id)location completion:(id)completion
{
  v4 = objc_retainBlock(completion);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, 0);
    v4 = v5;
  }
}

- (CGRect)rectForLocation:(id)location
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

- (void)rectForLocation:(id)location completion:(id)completion
{
  v4 = objc_retainBlock(completion);
  if (v4)
  {
    v5 = v4;
    v4[2](CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
    v4 = v5;
  }
}

- (CGRect)visibleRectForLocation:(id)location
{
  [(BKContentViewController *)self rectForLocation:location];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (!CGRectIsNull(v17))
  {
    view = [(BKContentViewController *)self view];
    [view bounds];
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

- (void)visibleRectForLocation:(id)location completion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_636F8;
  v6[3] = &unk_1E3208;
  selfCopy = self;
  completionCopy = completion;
  v5 = completionCopy;
  [(BKContentViewController *)selfCopy rectForLocation:location completion:v6];
}

- (CGRect)rectForAnnotation:(id)annotation
{
  [(BKContentViewController *)self rectForAnnotation:annotation visible:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)rectForAnnotation:(id)annotation withCompletion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_638A4;
  v7[3] = &unk_1E41C8;
  completionCopy = completion;
  v6 = completionCopy;
  [(BKContentViewController *)self rectForAnnotation:annotation visible:1 withCompletion:v7];
}

- (void)rectForAnnotation:(id)annotation visible:(BOOL)visible withCompletion:(id)completion
{
  visibleCopy = visible;
  completionCopy = completion;
  location = [annotation location];
  if (visibleCopy)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_63A48;
    v15[3] = &unk_1E41C8;
    v10 = &v16;
    v16 = completionCopy;
    v11 = completionCopy;
    [(BKContentViewController *)self visibleRectForLocation:location completion:v15];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_63AC4;
    v13[3] = &unk_1E41C8;
    v10 = &v14;
    v14 = completionCopy;
    v12 = completionCopy;
    [(BKContentViewController *)self rectForLocation:location completion:v13];
  }
}

- (CGRect)rectForAnnotation:(id)annotation visible:(BOOL)visible
{
  visibleCopy = visible;
  location = [annotation location];
  if (visibleCopy)
  {
    [(BKContentViewController *)self visibleRectForLocation:location];
  }

  else
  {
    [(BKContentViewController *)self rectForLocation:location];
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

- (void)highlightSearchLocation:(id)location
{
  locationCopy = location;
  ordinal = [(BKContentViewController *)self ordinal];
  if (ordinal == [locationCopy ordinal])
  {
    [(BKContentViewController *)self setSearchLocation:locationCopy];
  }
}

- (void)setHighlightViews:(id)views
{
  viewsCopy = views;
  if (([(NSMutableArray *)self->_highlightViews isEqualToArray:viewsCopy]& 1) == 0)
  {
    highlightViews = self->_highlightViews;
    if (highlightViews != viewsCopy && ([(NSMutableArray *)highlightViews count]|| [(NSMutableArray *)viewsCopy count]))
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
      v12 = viewsCopy;
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

- (void)addHighlightView:(id)view forWK2:(BOOL)k2
{
  viewCopy = view;
  if (viewCopy)
  {
    v12 = viewCopy;
    if (!self->_highlightViews)
    {
      v7 = [[NSMutableArray alloc] initWithCapacity:30];
      highlightViews = self->_highlightViews;
      self->_highlightViews = v7;
    }

    if (k2)
    {
      [(BKContentViewController *)self highlightViewContainerWK2];
    }

    else
    {
      [(BKContentViewController *)self highlightViewContainer];
    }
    v9 = ;
    view = [(BKContentViewController *)self view];

    if (view != v9)
    {
      view2 = [(BKContentViewController *)self view];
      [v12 frame];
      [view2 convertRect:v9 toView:?];
      [v12 setFrame:?];
    }

    [v9 addSubview:v12];
    [(NSMutableArray *)self->_highlightViews addObject:v12];

    viewCopy = v12;
  }
}

- (void)removeHighlightView:(id)view
{
  if (view)
  {
    highlightViews = self->_highlightViews;
    viewCopy = view;
    [(NSMutableArray *)highlightViews removeObject:viewCopy];
    [viewCopy removeFromSuperview];
  }
}

- (void)updateSelectionHighlights
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  highlightViews = [(BKContentViewController *)self highlightViews];
  v3 = [highlightViews countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(highlightViews);
        }

        [*(*(&v7 + 1) + 8 * v6) updateHighlightImage];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [highlightViews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setSelectionHighlightsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  highlightViews = [(BKContentViewController *)self highlightViews];
  v5 = [highlightViews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(highlightViews);
        }

        [*(*(&v9 + 1) + 8 * v8) setHidden:!visibleCopy];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [highlightViews countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)showLoadingViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  loadingView = [(BKContentViewController *)self loadingView];
  v6 = 0.0;
  [loadingView setAlpha:0.0];
  superview = [loadingView superview];

  if (!superview)
  {
    view = [(BKContentViewController *)self view];
    [view addSubview:loadingView];
  }

  view2 = [(BKContentViewController *)self view];
  [view2 bounds];
  [loadingView setFrame:?];

  if (animatedCopy)
  {
    v6 = 0.2;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_64450;
  v11[3] = &unk_1E2BD0;
  v12 = loadingView;
  v10 = loadingView;
  [UIView animateWithDuration:v11 animations:v6];
}

- (void)hideLoadingViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  loadingView = [(BKContentViewController *)self loadingView];
  if (animatedCopy)
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
  v10 = loadingView;
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
    view = [(BKContentViewController *)self view];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    themePage = [(BKContentViewController *)self themePage];
    v15 = [(BKContentLoadingView *)v4 initWithFrame:themePage theme:v7, v9, v11, v13];
    v16 = self->_loadingView;
    self->_loadingView = v15;

    [(BKContentLoadingView *)self->_loadingView setAutoresizingMask:18];
    loadingView = self->_loadingView;
  }

  return loadingView;
}

- (void)showReloadUIAnimated:(BOOL)animated
{
  animatedCopy = animated;
  reloadView = [(BKContentViewController *)self reloadView];
  v6 = 0.0;
  [reloadView setAlpha:0.0];
  superview = [reloadView superview];

  if (!superview)
  {
    view = [(BKContentViewController *)self view];
    [view addSubview:reloadView];
  }

  view2 = [(BKContentViewController *)self view];
  [view2 bounds];
  [reloadView setFrame:?];

  if (animatedCopy)
  {
    v6 = 0.2;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_64798;
  v11[3] = &unk_1E2BD0;
  v12 = reloadView;
  v10 = reloadView;
  [UIView animateWithDuration:v11 animations:v6];
}

- (void)hideReloadUIAnimated:(BOOL)animated
{
  animatedCopy = animated;
  reloadView = [(BKContentViewController *)self reloadView];
  if (animatedCopy)
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
  v10 = reloadView;
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
    view = [(BKContentViewController *)self view];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    themePage = [(BKContentViewController *)self themePage];
    v15 = [(BKContentReloadView *)v4 initWithFrame:themePage theme:self delegate:v7, v9, v11, v13];
    v16 = self->_reloadView;
    self->_reloadView = v15;

    [(BKContentReloadView *)self->_reloadView setAutoresizingMask:18];
    reloadView = self->_reloadView;
  }

  return reloadView;
}

- (void)reloadViewDidBeginReloading:(id)reloading
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