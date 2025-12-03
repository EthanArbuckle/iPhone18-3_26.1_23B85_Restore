@interface FullscreenImageViewController
- (FullscreenImageViewController)initWithImage:(id)image scrollable:(BOOL)scrollable;
- (FullscreenImageViewController)initWithView:(id)view scrollable:(BOOL)scrollable;
- (id)viewForZoomingInScrollView:(id)view;
- (void)_close:(id)_close;
- (void)_updateMaxZoomScale;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)zoomToPoint:(id)point;
@end

@implementation FullscreenImageViewController

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  zoomingCopy = zooming;
  [zoomingCopy zoomScale];
  v8 = v7;
  [zoomingCopy minimumZoomScale];
  v10 = v9;

  self->_isZoomed = v8 != v10;
}

- (id)viewForZoomingInScrollView:(id)view
{
  if (self->_isScrollable)
  {
    return self->_contentView;
  }

  else
  {
    return 0;
  }
}

- (void)zoomToPoint:(id)point
{
  [point locationInView:self->_scrollView];
  if (self->_isZoomed)
  {
    self->_isZoomed = 0;
    scrollView = self->_scrollView;
    [(UIScrollView *)scrollView minimumZoomScale];

    [(UIScrollView *)scrollView setZoomScale:1 animated:?];
  }

  else
  {
    v7 = v4;
    v8 = v5;
    self->_isZoomed = 1;
    [(UIScrollView *)self->_scrollView frame];
    v10 = v9;
    [(UIScrollView *)self->_scrollView maximumZoomScale];
    v12 = v10 / v11;
    [(UIScrollView *)self->_scrollView frame];
    v14 = v13;
    [(UIScrollView *)self->_scrollView maximumZoomScale];
    v16 = v14 / v15;
    v17 = fmax(v8 - v16 * 0.5, 0.0);
    [(UIScrollView *)self->_scrollView frame];
    if (fmax(v7 - v12 * 0.5, 0.0) + v12 > v18)
    {
      [(UIScrollView *)self->_scrollView frame];
    }

    [(UIScrollView *)self->_scrollView frame];
    if (v17 + v16 > v19)
    {
      [(UIScrollView *)self->_scrollView frame];
    }

    v20 = self->_scrollView;

    [(UIScrollView *)v20 zoomToRect:1 animated:?];
  }
}

- (void)_close:(id)_close
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:4 onTarget:613 eventValue:0];

  presentingViewController = [(FullscreenImageViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillLayoutSubviews
{
  view = [(FullscreenImageViewController *)self view];
  [view bounds];
  [(UIView *)self->_contentView setFrame:?];

  [(FullscreenImageViewController *)self _updateMaxZoomScale];
  v4.receiver = self;
  v4.super_class = FullscreenImageViewController;
  [(FullscreenImageViewController *)&v4 viewWillLayoutSubviews];
}

- (void)_updateMaxZoomScale
{
  [(UIImage *)self->_image size];
  v4 = v3;
  view = [(FullscreenImageViewController *)self view];
  [view bounds];
  v7 = v4 / v6;

  [(UIImage *)self->_image size];
  v9 = v8;
  view2 = [(FullscreenImageViewController *)self view];
  [view2 bounds];
  v12 = v9 / v11;

  v13 = fmax(fmax(v7, v12), 3.0);
  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setMaximumZoomScale:v13];
}

- (void)viewDidLoad
{
  v72.receiver = self;
  v72.super_class = FullscreenImageViewController;
  [(FullscreenImageViewController *)&v72 viewDidLoad];
  v3 = +[UIColor blackColor];
  view = [(FullscreenImageViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = objc_alloc_init(UIScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView setDecelerationRate:0.850000024];
  [(UIScrollView *)self->_scrollView setMaximumZoomScale:3.0];
  [(UIScrollView *)self->_scrollView setMinimumZoomScale:1.0];
  view2 = [(FullscreenImageViewController *)self view];
  [view2 addSubview:self->_scrollView];

  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  view3 = [(FullscreenImageViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v11 setActive:1];

  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  view4 = [(FullscreenImageViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v15 setActive:1];

  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  view5 = [(FullscreenImageViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v19 setActive:1];

  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  view6 = [(FullscreenImageViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v23 setActive:1];

  contentView = self->_contentView;
  if (!contentView)
  {
    v25 = objc_alloc_init(UIImageView);
    [(UIView *)v25 setImage:self->_image];
    v26 = +[UIColor clearColor];
    [(UIView *)v25 setBackgroundColor:v26];

    [(UIView *)v25 setContentMode:1];
    v27 = self->_contentView;
    self->_contentView = v25;

    contentView = self->_contentView;
  }

  [(UIScrollView *)self->_scrollView addSubview:contentView];
  v28 = [MapsTheme visualEffectViewAllowingBlur:1];
  v29 = [UIBlurEffect effectWithStyle:2];
  [v28 setEffect:v29];

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  view7 = [(FullscreenImageViewController *)self view];
  [view7 addSubview:v28];

  v31 = objc_alloc_init(UINavigationBar);
  topBar = self->_topBar;
  self->_topBar = v31;

  [(UINavigationBar *)self->_topBar setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UINavigationBar *)self->_topBar setBarStyle:1];
  [(UINavigationBar *)self->_topBar setTranslucent:1];
  v33 = objc_alloc_init(UIImage);
  [(UINavigationBar *)self->_topBar setBackgroundImage:v33 forBarMetrics:0];
  [(UINavigationBar *)self->_topBar setShadowImage:v33];
  v34 = +[UIColor whiteColor];
  [(UINavigationBar *)self->_topBar setTintColor:v34];

  view8 = [(FullscreenImageViewController *)self view];
  [view8 addSubview:self->_topBar];

  leadingAnchor3 = [(UINavigationBar *)self->_topBar leadingAnchor];
  view9 = [(FullscreenImageViewController *)self view];
  leadingAnchor4 = [view9 leadingAnchor];
  v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v39 setActive:1];

  trailingAnchor3 = [(UINavigationBar *)self->_topBar trailingAnchor];
  view10 = [(FullscreenImageViewController *)self view];
  trailingAnchor4 = [view10 trailingAnchor];
  v43 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v43 setActive:1];

  topAnchor3 = [(UINavigationBar *)self->_topBar topAnchor];
  view11 = [(FullscreenImageViewController *)self view];
  safeAreaLayoutGuide = [view11 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  v48 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v48 setActive:1];

  topAnchor5 = [v28 topAnchor];
  view12 = [(FullscreenImageViewController *)self view];
  topAnchor6 = [view12 topAnchor];
  v52 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v52 setActive:1];

  leadingAnchor5 = [v28 leadingAnchor];
  view13 = [(FullscreenImageViewController *)self view];
  leadingAnchor6 = [view13 leadingAnchor];
  v56 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v56 setActive:1];

  trailingAnchor5 = [v28 trailingAnchor];
  view14 = [(FullscreenImageViewController *)self view];
  trailingAnchor6 = [view14 trailingAnchor];
  v60 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v60 setActive:1];

  bottomAnchor3 = [v28 bottomAnchor];
  bottomAnchor4 = [(UINavigationBar *)self->_topBar bottomAnchor];
  v63 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v63 setActive:1];

  v64 = [UINavigationItem alloc];
  title = [(FullscreenImageViewController *)self title];
  v66 = [v64 initWithTitle:title];

  v67 = [UIBarButtonItem alloc];
  v68 = [UIImage _mapkit_imageNamed:@"UI_close"];
  v69 = [v67 initWithImage:v68 style:0 target:self action:"_close:"];

  [v66 setRightBarButtonItem:v69];
  [(UINavigationBar *)self->_topBar pushNavigationItem:v66 animated:0];
  v70 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"zoomToPoint:"];
  [v70 setNumberOfTapsRequired:2];
  [v70 setDelaysTouchesBegan:1];
  view15 = [(FullscreenImageViewController *)self view];
  [view15 addGestureRecognizer:v70];
}

- (FullscreenImageViewController)initWithView:(id)view scrollable:(BOOL)scrollable
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = FullscreenImageViewController;
  v8 = [(FullscreenImageViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contentView, view);
    v9->_isScrollable = scrollable;
  }

  return v9;
}

- (FullscreenImageViewController)initWithImage:(id)image scrollable:(BOOL)scrollable
{
  imageCopy = image;
  v12.receiver = self;
  v12.super_class = FullscreenImageViewController;
  v8 = [(FullscreenImageViewController *)&v12 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_image, image);
    v9->_isScrollable = scrollable;
    v10 = v9;
  }

  return v9;
}

@end