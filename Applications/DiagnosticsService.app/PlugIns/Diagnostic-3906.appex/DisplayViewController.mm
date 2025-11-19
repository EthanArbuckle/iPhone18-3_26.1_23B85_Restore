@interface DisplayViewController
- (CGRect)frameForConfirmation;
- (DKResponder)diagnosticResponder;
- (id)imageViewForPage:(int)a3;
- (int)maxNumPages;
- (void)loadLeading;
- (void)loadTrailing;
- (void)moveLeading;
- (void)moveTrailing;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setNeedsUpdateResponder;
- (void)setupView;
- (void)unloadLeading;
- (void)unloadTrailing;
@end

@implementation DisplayViewController

- (void)setupView
{
  v3 = [UIScrollView alloc];
  v4 = [(DisplayViewController *)self view];
  [v4 frame];
  v5 = [v3 initWithFrame:?];
  [(DisplayViewController *)self setScrollView:v5];

  v6 = [(DisplayViewController *)self scrollView];
  [v6 setPagingEnabled:1];

  v7 = [(DisplayViewController *)self scrollView];
  [v7 setShowsHorizontalScrollIndicator:0];

  v8 = [(DisplayViewController *)self scrollView];
  [v8 setShowsVerticalScrollIndicator:0];

  v9 = [(DisplayViewController *)self scrollView];
  [v9 setScrollsToTop:0];

  v10 = [(DisplayViewController *)self scrollView];
  [v10 setDelegate:self];

  v11 = [_UIContentUnavailableView alloc];
  [(DisplayViewController *)self frameForConfirmation];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(DisplayViewController *)self labelForConfirmation];
  v21 = [v11 initWithFrame:v20 title:1 style:{v13, v15, v17, v19}];
  [(DisplayViewController *)self setConfirmPageView:v21];

  v22 = +[UIColor whiteColor];
  v23 = [(DisplayViewController *)self confirmPageView];
  [v23 setBackgroundColor:v22];

  v24 = [(DisplayViewController *)self scrollView];
  v25 = [(DisplayViewController *)self confirmPageView];
  [v24 addSubview:v25];

  v26 = objc_opt_new();
  [(DisplayViewController *)self setLeadingImageViews:v26];

  v27 = objc_opt_new();
  [(DisplayViewController *)self setTrailingImageViews:v27];

  if ([(DisplayViewController *)self maxNumPages]>= 1)
  {
    v28 = [(DisplayViewController *)self imageViewForPage:0];
    [(DisplayViewController *)self setCurrentImageView:v28];

    v29 = [(DisplayViewController *)self scrollView];
    v30 = [(DisplayViewController *)self currentImageView];
    [v29 addSubview:v30];

    v31 = [(DisplayViewController *)self currentImageView];
    [(DisplayViewController *)self didUpdateCurrentImageView:v31];
  }

  if ([(DisplayViewController *)self maxNumPages]> 1)
  {
    [(DisplayViewController *)self loadTrailing];
  }

  v33 = [(DisplayViewController *)self view];
  v32 = [(DisplayViewController *)self scrollView];
  [v33 addSubview:v32];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(DisplayViewController *)self animatedScrollingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001520;
  block[3] = &unk_100010320;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  [(DisplayViewController *)self handleViewDidEndDecelerating:v4];
  objc_initWeak(&location, self);
  v5 = [(DisplayViewController *)self animatedScrollingQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000188C;
  v6[3] = &unk_100010348;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

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
  v3 = [(DisplayViewController *)self currentImageView];

  if (v3)
  {
    v4 = [(DisplayViewController *)self leadingImageViews];
    v5 = [(DisplayViewController *)self currentImageView];
    [v4 addObject:v5];
  }

  if ([(DisplayViewController *)self page]< 0 || (v6 = [(DisplayViewController *)self page], v6 >= [(DisplayViewController *)self maxNumPages]))
  {
    [(DisplayViewController *)self setCurrentImageView:0];
  }

  else
  {
    v7 = [(DisplayViewController *)self trailingImageViews];
    v8 = [v7 objectAtIndexedSubscript:0];
    [(DisplayViewController *)self setCurrentImageView:v8];

    v9 = [(DisplayViewController *)self trailingImageViews];
    [v9 removeObjectAtIndex:0];
  }

  v10 = [(DisplayViewController *)self page];
  if (v10 < [(DisplayViewController *)self maxNumPages]- 1)
  {
    [(DisplayViewController *)self loadTrailing];
  }

  v11 = [(DisplayViewController *)self leadingImageViews];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    [(DisplayViewController *)self unloadLeading];
  }

  v13 = [(DisplayViewController *)self currentImageView];
  [(DisplayViewController *)self didUpdateCurrentImageView:v13];
}

- (void)loadTrailing
{
  v5 = [(DisplayViewController *)self imageViewForPage:[(DisplayViewController *)self page]+ 1];
  v3 = [(DisplayViewController *)self trailingImageViews];
  [v3 addObject:v5];

  v4 = [(DisplayViewController *)self scrollView];
  [v4 addSubview:v5];
}

- (void)unloadTrailing
{
  v3 = [(DisplayViewController *)self trailingImageViews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(DisplayViewController *)self trailingImageViews];
    v6 = [v5 objectAtIndexedSubscript:0];
    [v6 removeFromSuperview];

    v7 = [(DisplayViewController *)self trailingImageViews];
    [v7 removeObjectAtIndex:0];
  }
}

- (void)moveLeading
{
  v3 = [(DisplayViewController *)self currentImageView];

  if (v3)
  {
    v4 = [(DisplayViewController *)self trailingImageViews];
    v5 = [(DisplayViewController *)self currentImageView];
    [v4 addObject:v5];
  }

  if ([(DisplayViewController *)self page]< 0 || (v6 = [(DisplayViewController *)self page], v6 >= [(DisplayViewController *)self maxNumPages]))
  {
    [(DisplayViewController *)self setCurrentImageView:0];
  }

  else
  {
    v7 = [(DisplayViewController *)self leadingImageViews];
    v8 = [v7 objectAtIndexedSubscript:0];
    [(DisplayViewController *)self setCurrentImageView:v8];

    v9 = [(DisplayViewController *)self leadingImageViews];
    [v9 removeObjectAtIndex:0];
  }

  if ([(DisplayViewController *)self page]>= 1)
  {
    v10 = [(DisplayViewController *)self page];
    if (v10 != [(DisplayViewController *)self maxNumPages])
    {
      [(DisplayViewController *)self loadLeading];
    }
  }

  v11 = [(DisplayViewController *)self trailingImageViews];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    [(DisplayViewController *)self unloadTrailing];
  }

  v13 = [(DisplayViewController *)self currentImageView];
  [(DisplayViewController *)self didUpdateCurrentImageView:v13];
}

- (void)loadLeading
{
  v5 = [(DisplayViewController *)self imageViewForPage:[(DisplayViewController *)self page]- 1];
  v3 = [(DisplayViewController *)self leadingImageViews];
  [v3 addObject:v5];

  v4 = [(DisplayViewController *)self scrollView];
  [v4 addSubview:v5];
}

- (void)unloadLeading
{
  v3 = [(DisplayViewController *)self leadingImageViews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(DisplayViewController *)self leadingImageViews];
    v6 = [v5 objectAtIndexedSubscript:0];
    [v6 removeFromSuperview];

    v7 = [(DisplayViewController *)self leadingImageViews];
    [v7 removeObjectAtIndex:0];
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

- (id)imageViewForPage:(int)a3
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