@interface DisplayViewController
- (CGRect)frameForConfirmation;
- (DKResponder)diagnosticResponder;
- (id)imageViewForPage:(int)page;
- (int)maxNumPages;
- (void)loadLeading;
- (void)loadTrailing;
- (void)moveLeading;
- (void)moveTrailing;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setNeedsUpdateResponder;
- (void)setupView;
- (void)unloadLeading;
- (void)unloadTrailing;
@end

@implementation DisplayViewController

- (void)setupView
{
  v3 = [UIScrollView alloc];
  view = [(DisplayViewController *)self view];
  [view frame];
  v5 = [v3 initWithFrame:?];
  [(DisplayViewController *)self setScrollView:v5];

  scrollView = [(DisplayViewController *)self scrollView];
  [scrollView setPagingEnabled:1];

  scrollView2 = [(DisplayViewController *)self scrollView];
  [scrollView2 setShowsHorizontalScrollIndicator:0];

  scrollView3 = [(DisplayViewController *)self scrollView];
  [scrollView3 setShowsVerticalScrollIndicator:0];

  scrollView4 = [(DisplayViewController *)self scrollView];
  [scrollView4 setScrollsToTop:0];

  scrollView5 = [(DisplayViewController *)self scrollView];
  [scrollView5 setDelegate:self];

  v11 = [_UIContentUnavailableView alloc];
  [(DisplayViewController *)self frameForConfirmation];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  labelForConfirmation = [(DisplayViewController *)self labelForConfirmation];
  v21 = [v11 initWithFrame:labelForConfirmation title:1 style:{v13, v15, v17, v19}];
  [(DisplayViewController *)self setConfirmPageView:v21];

  v22 = +[UIColor whiteColor];
  confirmPageView = [(DisplayViewController *)self confirmPageView];
  [confirmPageView setBackgroundColor:v22];

  scrollView6 = [(DisplayViewController *)self scrollView];
  confirmPageView2 = [(DisplayViewController *)self confirmPageView];
  [scrollView6 addSubview:confirmPageView2];

  v26 = objc_opt_new();
  [(DisplayViewController *)self setLeadingImageViews:v26];

  v27 = objc_opt_new();
  [(DisplayViewController *)self setTrailingImageViews:v27];

  if ([(DisplayViewController *)self maxNumPages]>= 1)
  {
    v28 = [(DisplayViewController *)self imageViewForPage:0];
    [(DisplayViewController *)self setCurrentImageView:v28];

    scrollView7 = [(DisplayViewController *)self scrollView];
    currentImageView = [(DisplayViewController *)self currentImageView];
    [scrollView7 addSubview:currentImageView];

    currentImageView2 = [(DisplayViewController *)self currentImageView];
    [(DisplayViewController *)self didUpdateCurrentImageView:currentImageView2];
  }

  if ([(DisplayViewController *)self maxNumPages]> 1)
  {
    [(DisplayViewController *)self loadTrailing];
  }

  view2 = [(DisplayViewController *)self view];
  scrollView8 = [(DisplayViewController *)self scrollView];
  [view2 addSubview:scrollView8];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  objc_initWeak(&location, self);
  animatedScrollingQueue = [(DisplayViewController *)self animatedScrollingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001520;
  block[3] = &unk_100010320;
  objc_copyWeak(&v9, &location);
  v8 = scrollCopy;
  v6 = scrollCopy;
  dispatch_async(animatedScrollingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  [(DisplayViewController *)self handleViewDidEndDecelerating:deceleratingCopy];
  objc_initWeak(&location, self);
  animatedScrollingQueue = [(DisplayViewController *)self animatedScrollingQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000188C;
  v6[3] = &unk_100010348;
  objc_copyWeak(&v7, &location);
  dispatch_async(animatedScrollingQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)setNeedsUpdateResponder
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001944;
  block[3] = &unk_100010370;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)moveTrailing
{
  currentImageView = [(DisplayViewController *)self currentImageView];

  if (currentImageView)
  {
    leadingImageViews = [(DisplayViewController *)self leadingImageViews];
    currentImageView2 = [(DisplayViewController *)self currentImageView];
    [leadingImageViews addObject:currentImageView2];
  }

  if ([(DisplayViewController *)self page]< 0 || (v6 = [(DisplayViewController *)self page], v6 >= [(DisplayViewController *)self maxNumPages]))
  {
    [(DisplayViewController *)self setCurrentImageView:0];
  }

  else
  {
    trailingImageViews = [(DisplayViewController *)self trailingImageViews];
    v8 = [trailingImageViews objectAtIndexedSubscript:0];
    [(DisplayViewController *)self setCurrentImageView:v8];

    trailingImageViews2 = [(DisplayViewController *)self trailingImageViews];
    [trailingImageViews2 removeObjectAtIndex:0];
  }

  page = [(DisplayViewController *)self page];
  if (page < [(DisplayViewController *)self maxNumPages]- 1)
  {
    [(DisplayViewController *)self loadTrailing];
  }

  leadingImageViews2 = [(DisplayViewController *)self leadingImageViews];
  v12 = [leadingImageViews2 count];

  if (v12 >= 2)
  {
    [(DisplayViewController *)self unloadLeading];
  }

  currentImageView3 = [(DisplayViewController *)self currentImageView];
  [(DisplayViewController *)self didUpdateCurrentImageView:currentImageView3];
}

- (void)loadTrailing
{
  v5 = [(DisplayViewController *)self imageViewForPage:[(DisplayViewController *)self page]+ 1];
  trailingImageViews = [(DisplayViewController *)self trailingImageViews];
  [trailingImageViews addObject:v5];

  scrollView = [(DisplayViewController *)self scrollView];
  [scrollView addSubview:v5];
}

- (void)unloadTrailing
{
  trailingImageViews = [(DisplayViewController *)self trailingImageViews];
  v4 = [trailingImageViews count];

  if (v4)
  {
    trailingImageViews2 = [(DisplayViewController *)self trailingImageViews];
    v6 = [trailingImageViews2 objectAtIndexedSubscript:0];
    [v6 removeFromSuperview];

    trailingImageViews3 = [(DisplayViewController *)self trailingImageViews];
    [trailingImageViews3 removeObjectAtIndex:0];
  }
}

- (void)moveLeading
{
  currentImageView = [(DisplayViewController *)self currentImageView];

  if (currentImageView)
  {
    trailingImageViews = [(DisplayViewController *)self trailingImageViews];
    currentImageView2 = [(DisplayViewController *)self currentImageView];
    [trailingImageViews addObject:currentImageView2];
  }

  if ([(DisplayViewController *)self page]< 0 || (v6 = [(DisplayViewController *)self page], v6 >= [(DisplayViewController *)self maxNumPages]))
  {
    [(DisplayViewController *)self setCurrentImageView:0];
  }

  else
  {
    leadingImageViews = [(DisplayViewController *)self leadingImageViews];
    v8 = [leadingImageViews objectAtIndexedSubscript:0];
    [(DisplayViewController *)self setCurrentImageView:v8];

    leadingImageViews2 = [(DisplayViewController *)self leadingImageViews];
    [leadingImageViews2 removeObjectAtIndex:0];
  }

  if ([(DisplayViewController *)self page]>= 1)
  {
    page = [(DisplayViewController *)self page];
    if (page != [(DisplayViewController *)self maxNumPages])
    {
      [(DisplayViewController *)self loadLeading];
    }
  }

  trailingImageViews2 = [(DisplayViewController *)self trailingImageViews];
  v12 = [trailingImageViews2 count];

  if (v12 >= 2)
  {
    [(DisplayViewController *)self unloadTrailing];
  }

  currentImageView3 = [(DisplayViewController *)self currentImageView];
  [(DisplayViewController *)self didUpdateCurrentImageView:currentImageView3];
}

- (void)loadLeading
{
  v5 = [(DisplayViewController *)self imageViewForPage:[(DisplayViewController *)self page]- 1];
  leadingImageViews = [(DisplayViewController *)self leadingImageViews];
  [leadingImageViews addObject:v5];

  scrollView = [(DisplayViewController *)self scrollView];
  [scrollView addSubview:v5];
}

- (void)unloadLeading
{
  leadingImageViews = [(DisplayViewController *)self leadingImageViews];
  v4 = [leadingImageViews count];

  if (v4)
  {
    leadingImageViews2 = [(DisplayViewController *)self leadingImageViews];
    v6 = [leadingImageViews2 objectAtIndexedSubscript:0];
    [v6 removeFromSuperview];

    leadingImageViews3 = [(DisplayViewController *)self leadingImageViews];
    [leadingImageViews3 removeObjectAtIndex:0];
  }
}

- (CGRect)frameForConfirmation
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass", v2];

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

- (id)imageViewForPage:(int)page
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass", v3];

  return 0;
}

- (int)maxNumPages
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass", v2];

  return 0;
}

- (DKResponder)diagnosticResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_diagnosticResponder);

  return WeakRetained;
}

@end