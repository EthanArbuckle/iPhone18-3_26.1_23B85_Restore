@interface BKPageScrollerPageView
- (BKImageResizerDelegate)imageResizerDelegate;
- (BKPageNavigationDelegate)navigationDelegate;
- (BKPageScrollerPageView)initWithFrame:(CGRect)a3 pageNumber:(unint64_t)a4 navigationDelegate:(id)a5 thumbnailingDelegate:(id)a6 imageResizerDelegate:(id)a7;
- (BKPageScrollerThumbnailingDelegate)thumbnailingDelegate;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)snapshot;
- (void)_contentIsReady:(id)a3;
- (void)_exposeContentView;
- (void)_teardownContentView;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setScrollState:(int)a3;
- (void)teardown;
@end

@implementation BKPageScrollerPageView

- (BKPageScrollerPageView)initWithFrame:(CGRect)a3 pageNumber:(unint64_t)a4 navigationDelegate:(id)a5 thumbnailingDelegate:(id)a6 imageResizerDelegate:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v39.receiver = self;
  v39.super_class = BKPageScrollerPageView;
  v18 = [(BKPageScrollerPageView *)&v39 initWithFrame:x, y, width, height];
  v19 = v18;
  if (v18)
  {
    v18->_pageNumber = a4;
    objc_storeWeak(&v18->_navigationDelegate, v15);
    objc_storeWeak(&v19->_thumbnailingDelegate, v16);
    objc_storeWeak(&v19->_imageResizerDelegate, v17);
    WeakRetained = objc_loadWeakRetained(&v19->_thumbnailingDelegate);

    if (WeakRetained)
    {
      v21 = [[UIImageView alloc] initWithFrame:{CGPointZero.x, CGPointZero.y, width, height}];
      thumbnailView = v19->_thumbnailView;
      v19->_thumbnailView = v21;

      v23 = +[UIColor whiteColor];
      [(UIImageView *)v19->_thumbnailView setBackgroundColor:v23];

      [(UIImageView *)v19->_thumbnailView setAutoresizingMask:18];
      [(BKPageScrollerPageView *)v19 addSubview:v19->_thumbnailView];
      objc_initWeak(&location, v19->_thumbnailView);
      objc_initWeak(&from, v19);
      CGSizeScaleToScreen();
      v25 = v24;
      v27 = v26;
      v28 = objc_loadWeakRetained(&v19->_thumbnailingDelegate);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_A7020;
      v34[3] = &unk_1E5080;
      objc_copyWeak(&v35, &location);
      objc_copyWeak(v36, &from);
      v36[1] = v25;
      v36[2] = v27;
      [v28 thumbnailingGenerateImageForPageNumber:a4 size:v34 callbackBlock:{*&v25, *&v27}];

      objc_destroyWeak(v36);
      objc_destroyWeak(&v35);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {
      v29 = objc_loadWeakRetained(&v19->_navigationDelegate);
      v30 = [v29 contentViewControllerForPageNumber:v19->_pageNumber];
      contentViewController = v19->_contentViewController;
      v19->_contentViewController = v30;

      v32 = [(BKContentViewController *)v19->_contentViewController view];
      [(BKPageScrollerPageView *)v19 addSubview:v32];
    }
  }

  return v19;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:BKContentReadyNotification object:self->_contentViewController];

  v4.receiver = self;
  v4.super_class = BKPageScrollerPageView;
  [(BKPageScrollerPageView *)&v4 dealloc];
}

- (void)teardown
{
  v3 = [(BKPageScrollerPageView *)self _resizeOperation];
  [v3 cancel];

  [(BKPageScrollerPageView *)self set_resizeOperation:0];
  v4 = [(BKPageScrollerPageView *)self _thumbnailingOperation];
  [v4 cancel];

  [(BKPageScrollerPageView *)self set_thumbnailingOperation:0];
  objc_storeWeak(&self->_navigationDelegate, 0);

  objc_storeWeak(&self->_thumbnailingDelegate, 0);
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = BKPageScrollerPageView;
  [(BKPageScrollerPageView *)&v4 didMoveToSuperview];
  v3 = [(BKPageScrollerPageView *)self superview];

  if (!v3)
  {
    [(BKPageScrollerPageView *)self _teardownContentView];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailingDelegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_thumbnailingDelegate);
    [v7 thumbnailingContentSizeForPageNumber:self->_pageNumber];
    goto LABEL_6;
  }

  contentViewController = self->_contentViewController;
  if (contentViewController)
  {
    v11 = [(BKContentViewController *)contentViewController view];
    v7 = v11;
    if (!v11)
    {
      sub_138408();
      goto LABEL_7;
    }

    [v11 sizeThatFits:{width, height}];
LABEL_6:
    width = v8;
    height = v9;
LABEL_7:
  }

  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = BKPageScrollerPageView;
  [(BKPageScrollerPageView *)&v8 layoutSubviews];
  [(BKPageScrollerPageView *)self bounds];
  v10 = CGRectIntegral(v9);
  [(UIImageView *)self->_thumbnailView setFrame:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
  [(BKPageScrollerPageView *)self bounds];
  v12 = CGRectIntegral(v11);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v7 = [(BKContentViewController *)self->_contentViewController view];
  [v7 setFrame:{x, y, width, height}];
}

- (id)snapshot
{
  v3 = [(UIImageView *)self->_thumbnailView image];

  if (v3)
  {
    [(UIImageView *)self->_thumbnailView image];
  }

  else
  {
    [(BKContentViewController *)self->_contentViewController snapshot];
  }
  v4 = ;

  return v4;
}

- (void)setScrollState:(int)a3
{
  if (self->_scrollState != a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_thumbnailingDelegate);

    if (WeakRetained)
    {
      if (a3 == 3)
      {
        [(BKPageScrollerPageView *)self _teardownContentView];
      }

      else if (a3 == 2)
      {
        contentViewController = self->_contentViewController;
        if (contentViewController)
        {
          if (![(BKContentViewController *)contentViewController isLoading])
          {
            [(BKPageScrollerPageView *)self _exposeContentView];
          }
        }

        else
        {
          v7 = objc_loadWeakRetained(&self->_navigationDelegate);
          v8 = [v7 contentViewControllerForPageNumber:self->_pageNumber];
          v9 = self->_contentViewController;
          self->_contentViewController = v8;

          v10 = [(BKContentViewController *)self->_contentViewController view];
          [(BKPageScrollerPageView *)self addSubview:v10];

          if ([(BKContentViewController *)self->_contentViewController isLoading])
          {
            v11 = [(BKContentViewController *)self->_contentViewController view];
            [v11 setAlpha:0.0];

            v12 = +[NSNotificationCenter defaultCenter];
            [v12 addObserver:self selector:"_contentIsReady:" name:BKContentReadyNotification object:self->_contentViewController];
          }

          else
          {
            [(BKPageScrollerPageView *)self _exposeContentView];
          }

          [(BKPageScrollerPageView *)self setNeedsLayout];
        }
      }
    }

    self->_scrollState = a3;
  }
}

- (void)_contentIsReady:(id)a3
{
  if (self->_scrollState == 2)
  {
    [(BKPageScrollerPageView *)self _exposeContentView];
  }
}

- (void)_exposeContentView
{
  v3 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A78FC;
  block[3] = &unk_1E2BD0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)_teardownContentView
{
  contentViewController = self->_contentViewController;
  if (contentViewController)
  {
    v4 = [(BKContentViewController *)contentViewController view];
    [v4 setAlpha:1.0];

    [(UIImageView *)self->_thumbnailView setAlpha:1.0];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:BKContentReadyNotification object:self->_contentViewController];

    if ([(BKContentViewController *)self->_contentViewController isViewLoaded])
    {
      v6 = [(BKContentViewController *)self->_contentViewController view];
      v7 = [v6 superview];

      if (v7 == self)
      {
        v8 = [(BKContentViewController *)self->_contentViewController view];
        [v8 removeFromSuperview];
      }
    }

    v9 = self->_contentViewController;
    self->_contentViewController = 0;

    WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
    [WeakRetained pageNavigationDidRemoveContentForPageNumber:self->_pageNumber];
  }
}

- (BKPageNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  return WeakRetained;
}

- (BKPageScrollerThumbnailingDelegate)thumbnailingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailingDelegate);

  return WeakRetained;
}

- (BKImageResizerDelegate)imageResizerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_imageResizerDelegate);

  return WeakRetained;
}

@end