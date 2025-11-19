@interface FMDMovieProxCardViewController
- (CGSize)movieDimensions;
- (FMDMovieProxCardViewController)initWithMovieURL:(id)a3 adjustmentsURL:(id)a4 movieDimensions:(CGSize)a5 productHeight:(double)a6;
- (void)fadeInAuxiliaryViewsOverDuration:(double)a3 delay:(double)a4 completion:(id)a5;
- (void)setAuxiliaryViewsAlpha:(double)a3;
- (void)viewDidLoad;
@end

@implementation FMDMovieProxCardViewController

- (FMDMovieProxCardViewController)initWithMovieURL:(id)a3 adjustmentsURL:(id)a4 movieDimensions:(CGSize)a5 productHeight:(double)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = FMDMovieProxCardViewController;
  v13 = [(FMDMovieProxCardViewController *)&v18 initWithContentView:0];
  if (v13)
  {
    v14 = [[FMDMovieProxCardMovieView alloc] initWithMovieURL:v11 adjustmentsURL:v12];
    movieView = v13->_movieView;
    v13->_movieView = v14;

    v13->_movieDimensions.width = width;
    v13->_movieDimensions.height = height;
    v13->_productHeight = a6;
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
  v4 = [(FMDMovieProxCardViewController *)self contentView];
  [v4 setBackgroundColor:v3];

  v5 = [(FMDMovieProxCardViewController *)self movieView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(FMDMovieProxCardViewController *)self view];
  v7 = [(FMDMovieProxCardViewController *)self movieView];
  [v6 addSubview:v7];

  v8 = [(FMDMovieProxCardViewController *)self view];
  v9 = [(FMDMovieProxCardViewController *)self movieView];
  [v8 sendSubviewToBack:v9];

  v10 = objc_alloc_init(UILayoutGuide);
  [v10 setIdentifier:@"PRXMovieContentGuide"];
  v11 = [(FMDMovieProxCardViewController *)self contentView];
  [v11 addLayoutGuide:v10];

  v12 = [(FMDMovieProxCardViewController *)self contentView];
  v13 = [v12 mainContentGuide];

  v47 = [(FMDMovieProxCardViewController *)self movieView];
  v46 = [v47 heightAnchor];
  [(FMDMovieProxCardViewController *)self movieDimensions];
  v45 = [v46 constraintEqualToConstant:v14];
  v49[0] = v45;
  v44 = [(FMDMovieProxCardViewController *)self movieView];
  v43 = [v44 widthAnchor];
  [(FMDMovieProxCardViewController *)self movieDimensions];
  v42 = [v43 constraintEqualToConstant:?];
  v49[1] = v42;
  v41 = [(FMDMovieProxCardViewController *)self movieView];
  v40 = [v41 centerXAnchor];
  v39 = [v10 centerXAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v49[2] = v38;
  v37 = [(FMDMovieProxCardViewController *)self movieView];
  v36 = [v37 centerYAnchor];
  v35 = [v10 centerYAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v49[3] = v34;
  v33 = [v10 heightAnchor];
  [(FMDMovieProxCardViewController *)self productHeight];
  v32 = [v33 constraintEqualToConstant:?];
  v49[4] = v32;
  v30 = [v10 leadingAnchor];
  v29 = [v13 leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v49[5] = v28;
  v27 = [v10 trailingAnchor];
  v26 = [v13 trailingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v49[6] = v25;
  v24 = [v10 topAnchor];
  v15 = [v13 topAnchor];
  v16 = [v24 constraintGreaterThanOrEqualToAnchor:v15];
  v49[7] = v16;
  v17 = [v10 bottomAnchor];
  v31 = v13;
  v18 = [v13 bottomAnchor];
  v19 = [v17 constraintLessThanOrEqualToAnchor:v18];
  v49[8] = v19;
  v20 = [v10 centerYAnchor];
  v21 = [v13 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v49[9] = v22;
  v23 = [NSArray arrayWithObjects:v49 count:10];
  [NSLayoutConstraint activateConstraints:v23];
}

- (void)fadeInAuxiliaryViewsOverDuration:(double)a3 delay:(double)a4 completion:(id)a5
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
  v9 = a5;
  v7 = v9;
  [UIView animateWithDuration:2 delay:v10 options:v8 animations:a3 completion:a4];
}

- (void)setAuxiliaryViewsAlpha:(double)a3
{
  v5 = [(FMDMovieProxCardViewController *)self contentView];
  v6 = [v5 titleTextView];
  [v6 setAlpha:a3];

  v7 = [(FMDMovieProxCardViewController *)self contentView];
  v8 = [v7 subtitleLabel];
  [v8 setAlpha:a3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(FMDMovieProxCardViewController *)self contentView];
  v10 = [v9 auxiliaryViews];

  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) setAlpha:a3];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
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