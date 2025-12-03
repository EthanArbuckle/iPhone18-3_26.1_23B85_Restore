@interface FMDMovieProxCardViewController
- (CGSize)movieDimensions;
- (FMDMovieProxCardViewController)initWithMovieURL:(id)l adjustmentsURL:(id)rL movieDimensions:(CGSize)dimensions productHeight:(double)height;
- (void)fadeInAuxiliaryViewsOverDuration:(double)duration delay:(double)delay completion:(id)completion;
- (void)setAuxiliaryViewsAlpha:(double)alpha;
- (void)viewDidLoad;
@end

@implementation FMDMovieProxCardViewController

- (FMDMovieProxCardViewController)initWithMovieURL:(id)l adjustmentsURL:(id)rL movieDimensions:(CGSize)dimensions productHeight:(double)height
{
  height = dimensions.height;
  width = dimensions.width;
  lCopy = l;
  rLCopy = rL;
  v18.receiver = self;
  v18.super_class = FMDMovieProxCardViewController;
  v13 = [(FMDMovieProxCardViewController *)&v18 initWithContentView:0];
  if (v13)
  {
    v14 = [[FMDMovieProxCardMovieView alloc] initWithMovieURL:lCopy adjustmentsURL:rLCopy];
    movieView = v13->_movieView;
    v13->_movieView = v14;

    v13->_movieDimensions.width = width;
    v13->_movieDimensions.height = height;
    v13->_productHeight = height;
    v16 = v13;
  }

  return v13;
}

- (void)viewDidLoad
{
  v48.receiver = self;
  v48.super_class = FMDMovieProxCardViewController;
  [(FMDMovieProxCardViewController *)&v48 viewDidLoad];
  v3 = +[UIColor clearColor];
  contentView = [(FMDMovieProxCardViewController *)self contentView];
  [contentView setBackgroundColor:v3];

  movieView = [(FMDMovieProxCardViewController *)self movieView];
  [movieView setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(FMDMovieProxCardViewController *)self view];
  movieView2 = [(FMDMovieProxCardViewController *)self movieView];
  [view addSubview:movieView2];

  view2 = [(FMDMovieProxCardViewController *)self view];
  movieView3 = [(FMDMovieProxCardViewController *)self movieView];
  [view2 sendSubviewToBack:movieView3];

  v10 = objc_alloc_init(UILayoutGuide);
  [v10 setIdentifier:@"PRXMovieContentGuide"];
  contentView2 = [(FMDMovieProxCardViewController *)self contentView];
  [contentView2 addLayoutGuide:v10];

  contentView3 = [(FMDMovieProxCardViewController *)self contentView];
  mainContentGuide = [contentView3 mainContentGuide];

  movieView4 = [(FMDMovieProxCardViewController *)self movieView];
  heightAnchor = [movieView4 heightAnchor];
  [(FMDMovieProxCardViewController *)self movieDimensions];
  v45 = [heightAnchor constraintEqualToConstant:v14];
  v49[0] = v45;
  movieView5 = [(FMDMovieProxCardViewController *)self movieView];
  widthAnchor = [movieView5 widthAnchor];
  [(FMDMovieProxCardViewController *)self movieDimensions];
  v42 = [widthAnchor constraintEqualToConstant:?];
  v49[1] = v42;
  movieView6 = [(FMDMovieProxCardViewController *)self movieView];
  centerXAnchor = [movieView6 centerXAnchor];
  centerXAnchor2 = [v10 centerXAnchor];
  v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v49[2] = v38;
  movieView7 = [(FMDMovieProxCardViewController *)self movieView];
  centerYAnchor = [movieView7 centerYAnchor];
  centerYAnchor2 = [v10 centerYAnchor];
  v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v49[3] = v34;
  heightAnchor2 = [v10 heightAnchor];
  [(FMDMovieProxCardViewController *)self productHeight];
  v32 = [heightAnchor2 constraintEqualToConstant:?];
  v49[4] = v32;
  leadingAnchor = [v10 leadingAnchor];
  leadingAnchor2 = [mainContentGuide leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[5] = v28;
  trailingAnchor = [v10 trailingAnchor];
  trailingAnchor2 = [mainContentGuide trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v49[6] = v25;
  topAnchor = [v10 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v16 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v49[7] = v16;
  bottomAnchor = [v10 bottomAnchor];
  v31 = mainContentGuide;
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v19 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v49[8] = v19;
  centerYAnchor3 = [v10 centerYAnchor];
  centerYAnchor4 = [mainContentGuide centerYAnchor];
  v22 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v49[9] = v22;
  v23 = [NSArray arrayWithObjects:v49 count:10];
  [NSLayoutConstraint activateConstraints:v23];
}

- (void)fadeInAuxiliaryViewsOverDuration:(double)duration delay:(double)delay completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001644C;
  v10[3] = &unk_100038780;
  v10[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100016458;
  v8[3] = &unk_100039A78;
  completionCopy = completion;
  v7 = completionCopy;
  [UIView animateWithDuration:2 delay:v10 options:v8 animations:duration completion:delay];
}

- (void)setAuxiliaryViewsAlpha:(double)alpha
{
  contentView = [(FMDMovieProxCardViewController *)self contentView];
  titleTextView = [contentView titleTextView];
  [titleTextView setAlpha:alpha];

  contentView2 = [(FMDMovieProxCardViewController *)self contentView];
  subtitleLabel = [contentView2 subtitleLabel];
  [subtitleLabel setAlpha:alpha];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  contentView3 = [(FMDMovieProxCardViewController *)self contentView];
  auxiliaryViews = [contentView3 auxiliaryViews];

  v11 = [auxiliaryViews countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(auxiliaryViews);
        }

        [*(*(&v15 + 1) + 8 * v14) setAlpha:alpha];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [auxiliaryViews countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (CGSize)movieDimensions
{
  width = self->_movieDimensions.width;
  height = self->_movieDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

@end