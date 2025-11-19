@interface HomeNotificationContentView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HomeNotificationContentView)initWithContent:(id)a3;
- (void)_updateStatusText:(id)a3 accessoryImage:(id)a4 animated:(BOOL)a5;
- (void)dealloc;
- (void)updateConstraints;
@end

@implementation HomeNotificationContentView

- (HomeNotificationContentView)initWithContent:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = HomeNotificationContentView;
  v5 = [(HomeNotificationContentView *)&v38 init];
  if (v5)
  {
    v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(HomeNotificationContentView *)v5 setSpinner:v6];

    v7 = [(HomeNotificationContentView *)v5 spinner];
    [v7 setHidesWhenStopped:1];

    v8 = [(HomeNotificationContentView *)v5 spinner];
    [v8 stopAnimating];

    v9 = objc_alloc_init(HULayeredVisualEffectView);
    [(HomeNotificationContentView *)v5 setStatusBarView:v9];

    v10 = objc_alloc_init(HomeNotificationStatusView);
    [(HomeNotificationContentView *)v5 setStatusView:v10];

    v11 = [(HomeNotificationContentView *)v5 statusBarView];
    v12 = [v11 contentView];
    v13 = [(HomeNotificationContentView *)v5 statusView];
    [v12 addSubview:v13];

    v14 = [HUCameraView alloc];
    v15 = [[HUCameraBadgeView alloc] initWithSize:0];
    v16 = [v14 initWithBadgeView:v15];
    [(HomeNotificationContentView *)v5 setCameraView:v16];

    v17 = [UIColor colorWithWhite:0.7 alpha:1.0];
    v18 = [(HomeNotificationContentView *)v5 cameraView];
    [v18 setTintColor:v17];

    v19 = [(HomeNotificationContentView *)v5 cameraView];
    [v19 setBadgeOffset:{16.0, 16.0}];

    v20 = [(HomeNotificationContentView *)v5 statusBarView];
    v40[0] = v20;
    v21 = [(HomeNotificationContentView *)v5 statusView];
    v40[1] = v21;
    v22 = [(HomeNotificationContentView *)v5 cameraView];
    v40[2] = v22;
    v23 = [(HomeNotificationContentView *)v5 spinner];
    v40[3] = v23;
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

    v30 = [(HomeNotificationContentView *)v5 cameraView];
    [(HomeNotificationContentView *)v5 addSubview:v30];

    v31 = [(HomeNotificationContentView *)v5 statusBarView];
    [(HomeNotificationContentView *)v5 addSubview:v31];

    v32 = [(HomeNotificationContentView *)v5 spinner];
    [(HomeNotificationContentView *)v5 addSubview:v32];

    [(HomeNotificationContentView *)v5 setContent:v4];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(HomeNotificationContentView *)self statusTextOverrideCancellationToken];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = HomeNotificationContentView;
  [(HomeNotificationContentView *)&v4 dealloc];
}

- (void)_updateStatusText:(id)a3 accessoryImage:(id)a4 animated:(BOOL)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(HomeNotificationContentView *)self statusView];
  [v9 setStatusText:v8];

  v10 = [(HomeNotificationContentView *)self statusView];
  [v10 setAccessoryImage:v7];
}

- (void)updateConstraints
{
  v3 = [(HomeNotificationContentView *)self constraints];

  if (!v3)
  {
    v66 = [(HomeNotificationContentView *)self cameraView];
    v65 = [v66 topAnchor];
    v64 = [(HomeNotificationContentView *)self topAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v68[0] = v63;
    v62 = [(HomeNotificationContentView *)self cameraView];
    v61 = [v62 bottomAnchor];
    v60 = [(HomeNotificationContentView *)self bottomAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v68[1] = v59;
    v58 = [(HomeNotificationContentView *)self cameraView];
    v57 = [v58 leadingAnchor];
    v56 = [(HomeNotificationContentView *)self leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v68[2] = v55;
    v54 = [(HomeNotificationContentView *)self cameraView];
    v53 = [v54 trailingAnchor];
    v52 = [(HomeNotificationContentView *)self trailingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v68[3] = v51;
    v50 = [(HomeNotificationContentView *)self spinner];
    v48 = [v50 centerXAnchor];
    v49 = [(HomeNotificationContentView *)self cameraView];
    v47 = [v49 centerXAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v68[4] = v46;
    v45 = [(HomeNotificationContentView *)self spinner];
    v43 = [v45 centerYAnchor];
    v44 = [(HomeNotificationContentView *)self cameraView];
    v42 = [v44 centerYAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v68[5] = v41;
    v40 = [(HomeNotificationContentView *)self statusBarView];
    v38 = [v40 leadingAnchor];
    v39 = [(HomeNotificationContentView *)self cameraView];
    v37 = [v39 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v68[6] = v36;
    v35 = [(HomeNotificationContentView *)self statusBarView];
    v33 = [v35 trailingAnchor];
    v34 = [(HomeNotificationContentView *)self cameraView];
    v32 = [v34 trailingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v68[7] = v31;
    v30 = [(HomeNotificationContentView *)self statusBarView];
    v28 = [v30 bottomAnchor];
    v29 = [(HomeNotificationContentView *)self cameraView];
    v27 = [v29 bottomAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v68[8] = v26;
    v25 = [(HomeNotificationContentView *)self statusView];
    v23 = [v25 centerXAnchor];
    v24 = [(HomeNotificationContentView *)self statusBarView];
    v22 = [v24 centerXAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v68[9] = v21;
    v20 = [(HomeNotificationContentView *)self statusView];
    v18 = [v20 centerYAnchor];
    v19 = [(HomeNotificationContentView *)self statusBarView];
    v17 = [v19 centerYAnchor];
    v16 = [v18 constraintEqualToAnchor:v17];
    v68[10] = v16;
    v15 = [(HomeNotificationContentView *)self statusView];
    v14 = [v15 widthAnchor];
    v4 = [(HomeNotificationContentView *)self statusBarView];
    v5 = [v4 widthAnchor];
    v6 = [v14 constraintLessThanOrEqualToAnchor:v5];
    v68[11] = v6;
    v7 = [(HomeNotificationContentView *)self statusView];
    v8 = [v7 heightAnchor];
    v9 = [(HomeNotificationContentView *)self statusBarView];
    v10 = [v9 heightAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    v68[12] = v11;
    v12 = [NSArray arrayWithObjects:v68 count:13];
    [(HomeNotificationContentView *)self setConstraints:v12];

    v13 = [(HomeNotificationContentView *)self constraints];
    [NSLayoutConstraint activateConstraints:v13];
  }

  v67.receiver = self;
  v67.super_class = HomeNotificationContentView;
  [(HomeNotificationContentView *)&v67 updateConstraints];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v7.receiver = self;
  v7.super_class = HomeNotificationContentView;
  [(HomeNotificationContentView *)&v7 systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
  if (v6 >= v5 * 16.0 / 9.0)
  {
    v6 = v5 * 16.0 / 9.0;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

@end