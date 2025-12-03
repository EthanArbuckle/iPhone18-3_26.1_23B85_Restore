@interface HomeNotificationContentView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HomeNotificationContentView)initWithContent:(id)content;
- (void)_updateStatusText:(id)text accessoryImage:(id)image animated:(BOOL)animated;
- (void)dealloc;
- (void)updateConstraints;
@end

@implementation HomeNotificationContentView

- (HomeNotificationContentView)initWithContent:(id)content
{
  contentCopy = content;
  v38.receiver = self;
  v38.super_class = HomeNotificationContentView;
  v5 = [(HomeNotificationContentView *)&v38 init];
  if (v5)
  {
    v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(HomeNotificationContentView *)v5 setSpinner:v6];

    spinner = [(HomeNotificationContentView *)v5 spinner];
    [spinner setHidesWhenStopped:1];

    spinner2 = [(HomeNotificationContentView *)v5 spinner];
    [spinner2 stopAnimating];

    v9 = objc_alloc_init(HULayeredVisualEffectView);
    [(HomeNotificationContentView *)v5 setStatusBarView:v9];

    v10 = objc_alloc_init(HomeNotificationStatusView);
    [(HomeNotificationContentView *)v5 setStatusView:v10];

    statusBarView = [(HomeNotificationContentView *)v5 statusBarView];
    contentView = [statusBarView contentView];
    statusView = [(HomeNotificationContentView *)v5 statusView];
    [contentView addSubview:statusView];

    v14 = [HUCameraView alloc];
    v15 = [[HUCameraBadgeView alloc] initWithSize:0];
    v16 = [v14 initWithBadgeView:v15];
    [(HomeNotificationContentView *)v5 setCameraView:v16];

    v17 = [UIColor colorWithWhite:0.7 alpha:1.0];
    cameraView = [(HomeNotificationContentView *)v5 cameraView];
    [cameraView setTintColor:v17];

    cameraView2 = [(HomeNotificationContentView *)v5 cameraView];
    [cameraView2 setBadgeOffset:{16.0, 16.0}];

    statusBarView2 = [(HomeNotificationContentView *)v5 statusBarView];
    v40[0] = statusBarView2;
    statusView2 = [(HomeNotificationContentView *)v5 statusView];
    v40[1] = statusView2;
    cameraView3 = [(HomeNotificationContentView *)v5 cameraView];
    v40[2] = cameraView3;
    spinner3 = [(HomeNotificationContentView *)v5 spinner];
    v40[3] = spinner3;
    v24 = [NSArray arrayWithObjects:v40 count:4];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      do
      {
        v29 = 0;
        do
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v34 + 1) + 8 * v29) setTranslatesAutoresizingMaskIntoConstraints:{0, v34}];
          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v27);
    }

    cameraView4 = [(HomeNotificationContentView *)v5 cameraView];
    [(HomeNotificationContentView *)v5 addSubview:cameraView4];

    statusBarView3 = [(HomeNotificationContentView *)v5 statusBarView];
    [(HomeNotificationContentView *)v5 addSubview:statusBarView3];

    spinner4 = [(HomeNotificationContentView *)v5 spinner];
    [(HomeNotificationContentView *)v5 addSubview:spinner4];

    [(HomeNotificationContentView *)v5 setContent:contentCopy];
  }

  return v5;
}

- (void)dealloc
{
  statusTextOverrideCancellationToken = [(HomeNotificationContentView *)self statusTextOverrideCancellationToken];
  [statusTextOverrideCancellationToken cancel];

  v4.receiver = self;
  v4.super_class = HomeNotificationContentView;
  [(HomeNotificationContentView *)&v4 dealloc];
}

- (void)_updateStatusText:(id)text accessoryImage:(id)image animated:(BOOL)animated
{
  imageCopy = image;
  textCopy = text;
  statusView = [(HomeNotificationContentView *)self statusView];
  [statusView setStatusText:textCopy];

  statusView2 = [(HomeNotificationContentView *)self statusView];
  [statusView2 setAccessoryImage:imageCopy];
}

- (void)updateConstraints
{
  constraints = [(HomeNotificationContentView *)self constraints];

  if (!constraints)
  {
    cameraView = [(HomeNotificationContentView *)self cameraView];
    topAnchor = [cameraView topAnchor];
    topAnchor2 = [(HomeNotificationContentView *)self topAnchor];
    v63 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v68[0] = v63;
    cameraView2 = [(HomeNotificationContentView *)self cameraView];
    bottomAnchor = [cameraView2 bottomAnchor];
    bottomAnchor2 = [(HomeNotificationContentView *)self bottomAnchor];
    v59 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v68[1] = v59;
    cameraView3 = [(HomeNotificationContentView *)self cameraView];
    leadingAnchor = [cameraView3 leadingAnchor];
    leadingAnchor2 = [(HomeNotificationContentView *)self leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v68[2] = v55;
    cameraView4 = [(HomeNotificationContentView *)self cameraView];
    trailingAnchor = [cameraView4 trailingAnchor];
    trailingAnchor2 = [(HomeNotificationContentView *)self trailingAnchor];
    v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v68[3] = v51;
    spinner = [(HomeNotificationContentView *)self spinner];
    centerXAnchor = [spinner centerXAnchor];
    cameraView5 = [(HomeNotificationContentView *)self cameraView];
    centerXAnchor2 = [cameraView5 centerXAnchor];
    v46 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v68[4] = v46;
    spinner2 = [(HomeNotificationContentView *)self spinner];
    centerYAnchor = [spinner2 centerYAnchor];
    cameraView6 = [(HomeNotificationContentView *)self cameraView];
    centerYAnchor2 = [cameraView6 centerYAnchor];
    v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v68[5] = v41;
    statusBarView = [(HomeNotificationContentView *)self statusBarView];
    leadingAnchor3 = [statusBarView leadingAnchor];
    cameraView7 = [(HomeNotificationContentView *)self cameraView];
    leadingAnchor4 = [cameraView7 leadingAnchor];
    v36 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v68[6] = v36;
    statusBarView2 = [(HomeNotificationContentView *)self statusBarView];
    trailingAnchor3 = [statusBarView2 trailingAnchor];
    cameraView8 = [(HomeNotificationContentView *)self cameraView];
    trailingAnchor4 = [cameraView8 trailingAnchor];
    v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v68[7] = v31;
    statusBarView3 = [(HomeNotificationContentView *)self statusBarView];
    bottomAnchor3 = [statusBarView3 bottomAnchor];
    cameraView9 = [(HomeNotificationContentView *)self cameraView];
    bottomAnchor4 = [cameraView9 bottomAnchor];
    v26 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v68[8] = v26;
    statusView = [(HomeNotificationContentView *)self statusView];
    centerXAnchor3 = [statusView centerXAnchor];
    statusBarView4 = [(HomeNotificationContentView *)self statusBarView];
    centerXAnchor4 = [statusBarView4 centerXAnchor];
    v21 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v68[9] = v21;
    statusView2 = [(HomeNotificationContentView *)self statusView];
    centerYAnchor3 = [statusView2 centerYAnchor];
    statusBarView5 = [(HomeNotificationContentView *)self statusBarView];
    centerYAnchor4 = [statusBarView5 centerYAnchor];
    v16 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v68[10] = v16;
    statusView3 = [(HomeNotificationContentView *)self statusView];
    widthAnchor = [statusView3 widthAnchor];
    statusBarView6 = [(HomeNotificationContentView *)self statusBarView];
    widthAnchor2 = [statusBarView6 widthAnchor];
    v6 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v68[11] = v6;
    statusView4 = [(HomeNotificationContentView *)self statusView];
    heightAnchor = [statusView4 heightAnchor];
    statusBarView7 = [(HomeNotificationContentView *)self statusBarView];
    heightAnchor2 = [statusBarView7 heightAnchor];
    v11 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v68[12] = v11;
    v12 = [NSArray arrayWithObjects:v68 count:13];
    [(HomeNotificationContentView *)self setConstraints:v12];

    constraints2 = [(HomeNotificationContentView *)self constraints];
    [NSLayoutConstraint activateConstraints:constraints2];
  }

  v67.receiver = self;
  v67.super_class = HomeNotificationContentView;
  [(HomeNotificationContentView *)&v67 updateConstraints];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v7.receiver = self;
  v7.super_class = HomeNotificationContentView;
  [(HomeNotificationContentView *)&v7 systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  if (v6 >= v5 * 16.0 / 9.0)
  {
    v6 = v5 * 16.0 / 9.0;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

@end