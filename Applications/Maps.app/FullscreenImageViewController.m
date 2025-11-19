@interface FullscreenImageViewController
- (FullscreenImageViewController)initWithImage:(id)a3 scrollable:(BOOL)a4;
- (FullscreenImageViewController)initWithView:(id)a3 scrollable:(BOOL)a4;
- (id)viewForZoomingInScrollView:(id)a3;
- (void)_close:(id)a3;
- (void)_updateMaxZoomScale;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)zoomToPoint:(id)a3;
@end

@implementation FullscreenImageViewController

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  v6 = a3;
  [v6 zoomScale];
  v8 = v7;
  [v6 minimumZoomScale];
  v10 = v9;

  self->_isZoomed = v8 != v10;
}

- (id)viewForZoomingInScrollView:(id)a3
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

- (void)zoomToPoint:(id)a3
{
  [a3 locationInView:self->_scrollView];
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

- (void)_close:(id)a3
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:4 onTarget:613 eventValue:0];

  v5 = [(FullscreenImageViewController *)self presentingViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(FullscreenImageViewController *)self view];
  [v3 bounds];
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
  v5 = [(FullscreenImageViewController *)self view];
  [v5 bounds];
  v7 = v4 / v6;

  [(UIImage *)self->_image size];
  v9 = v8;
  v10 = [(FullscreenImageViewController *)self view];
  [v10 bounds];
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
  v4 = [(FullscreenImageViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(UIScrollView);
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(UIScrollView *)self->_scrollView setDecelerationRate:0.850000024];
  [(UIScrollView *)self->_scrollView setMaximumZoomScale:3.0];
  [(UIScrollView *)self->_scrollView setMinimumZoomScale:1.0];
  v7 = [(FullscreenImageViewController *)self view];
  [v7 addSubview:self->_scrollView];

  v8 = [(UIScrollView *)self->_scrollView topAnchor];
  v9 = [(FullscreenImageViewController *)self view];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v13 = [(FullscreenImageViewController *)self view];
  v14 = [v13 leadingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v17 = [(FullscreenImageViewController *)self view];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v21 = [(FullscreenImageViewController *)self view];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
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
  v30 = [(FullscreenImageViewController *)self view];
  [v30 addSubview:v28];

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

  v35 = [(FullscreenImageViewController *)self view];
  [v35 addSubview:self->_topBar];

  v36 = [(UINavigationBar *)self->_topBar leadingAnchor];
  v37 = [(FullscreenImageViewController *)self view];
  v38 = [v37 leadingAnchor];
  v39 = [v36 constraintEqualToAnchor:v38];
  [v39 setActive:1];

  v40 = [(UINavigationBar *)self->_topBar trailingAnchor];
  v41 = [(FullscreenImageViewController *)self view];
  v42 = [v41 trailingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  [v43 setActive:1];

  v44 = [(UINavigationBar *)self->_topBar topAnchor];
  v45 = [(FullscreenImageViewController *)self view];
  v46 = [v45 safeAreaLayoutGuide];
  v47 = [v46 topAnchor];
  v48 = [v44 constraintEqualToAnchor:v47];
  [v48 setActive:1];

  v49 = [v28 topAnchor];
  v50 = [(FullscreenImageViewController *)self view];
  v51 = [v50 topAnchor];
  v52 = [v49 constraintEqualToAnchor:v51];
  [v52 setActive:1];

  v53 = [v28 leadingAnchor];
  v54 = [(FullscreenImageViewController *)self view];
  v55 = [v54 leadingAnchor];
  v56 = [v53 constraintEqualToAnchor:v55];
  [v56 setActive:1];

  v57 = [v28 trailingAnchor];
  v58 = [(FullscreenImageViewController *)self view];
  v59 = [v58 trailingAnchor];
  v60 = [v57 constraintEqualToAnchor:v59];
  [v60 setActive:1];

  v61 = [v28 bottomAnchor];
  v62 = [(UINavigationBar *)self->_topBar bottomAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];
  [v63 setActive:1];

  v64 = [UINavigationItem alloc];
  v65 = [(FullscreenImageViewController *)self title];
  v66 = [v64 initWithTitle:v65];

  v67 = [UIBarButtonItem alloc];
  v68 = [UIImage _mapkit_imageNamed:@"UI_close"];
  v69 = [v67 initWithImage:v68 style:0 target:self action:"_close:"];

  [v66 setRightBarButtonItem:v69];
  [(UINavigationBar *)self->_topBar pushNavigationItem:v66 animated:0];
  v70 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"zoomToPoint:"];
  [v70 setNumberOfTapsRequired:2];
  [v70 setDelaysTouchesBegan:1];
  v71 = [(FullscreenImageViewController *)self view];
  [v71 addGestureRecognizer:v70];
}

- (FullscreenImageViewController)initWithView:(id)a3 scrollable:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FullscreenImageViewController;
  v8 = [(FullscreenImageViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contentView, a3);
    v9->_isScrollable = a4;
  }

  return v9;
}

- (FullscreenImageViewController)initWithImage:(id)a3 scrollable:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = FullscreenImageViewController;
  v8 = [(FullscreenImageViewController *)&v12 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_image, a3);
    v9->_isScrollable = a4;
    v10 = v9;
  }

  return v9;
}

@end