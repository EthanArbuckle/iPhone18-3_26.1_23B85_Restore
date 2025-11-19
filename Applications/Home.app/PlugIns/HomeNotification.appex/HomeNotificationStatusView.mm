@interface HomeNotificationStatusView
- (HomeNotificationStatusView)initWithFrame:(CGRect)a3;
- (NSString)statusText;
- (UIImage)accessoryImage;
- (void)setAccessoryImage:(id)a3;
- (void)setStatusText:(id)a3;
- (void)updateConstraints;
@end

@implementation HomeNotificationStatusView

- (HomeNotificationStatusView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = HomeNotificationStatusView;
  v3 = [(HomeNotificationStatusView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(HomeNotificationStatusView *)v3 setStatusLabel:v4];

    v5 = [(HomeNotificationStatusView *)v3 statusLabel];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [UIFont boldSystemFontOfSize:15.0];
    v7 = [(HomeNotificationStatusView *)v3 statusLabel];
    [v7 setFont:v6];

    v8 = +[UIColor systemWhiteColor];
    v9 = [(HomeNotificationStatusView *)v3 statusLabel];
    [v9 setTextColor:v8];

    v10 = [(HomeNotificationStatusView *)v3 statusLabel];
    [v10 setTextAlignment:1];

    v11 = [(HomeNotificationStatusView *)v3 statusLabel];
    [(HomeNotificationStatusView *)v3 addSubview:v11];

    v12 = objc_alloc_init(UIImageView);
    [(HomeNotificationStatusView *)v3 setStatusAccessoryImageView:v12];

    v13 = [(HomeNotificationStatusView *)v3 statusAccessoryImageView];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = +[UIColor systemWhiteColor];
    v15 = [(HomeNotificationStatusView *)v3 statusAccessoryImageView];
    [v15 setTintColor:v14];

    v16 = [(HomeNotificationStatusView *)v3 statusAccessoryImageView];
    [(HomeNotificationStatusView *)v3 addSubview:v16];
  }

  return v3;
}

- (NSString)statusText
{
  v2 = [(HomeNotificationStatusView *)self statusLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setStatusText:(id)a3
{
  v4 = a3;
  v5 = [(HomeNotificationStatusView *)self statusLabel];
  [v5 setText:v4];
}

- (UIImage)accessoryImage
{
  v2 = [(HomeNotificationStatusView *)self statusAccessoryImageView];
  v3 = [v2 image];

  return v3;
}

- (void)setAccessoryImage:(id)a3
{
  v4 = a3;
  v5 = [(HomeNotificationStatusView *)self accessoryImage];
  v6 = v5 != 0;

  v7 = [v4 imageWithRenderingMode:2];

  v8 = [(HomeNotificationStatusView *)self statusAccessoryImageView];
  [v8 setImage:v7];

  if ((((v4 == 0) ^ v6) & 1) == 0)
  {

    [(HomeNotificationStatusView *)self setNeedsUpdateConstraints];
  }
}

- (void)updateConstraints
{
  v33 = [(HomeNotificationStatusView *)self statusLabel];
  v32 = [v33 firstBaselineAnchor];
  v31 = [(HomeNotificationStatusView *)self topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31 constant:19.0];
  v36[0] = v30;
  v3 = [(HomeNotificationStatusView *)self statusLabel];
  v4 = [v3 lastBaselineAnchor];
  v5 = [(HomeNotificationStatusView *)self bottomAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:-10.0];
  v36[1] = v6;
  v7 = [(HomeNotificationStatusView *)self statusLabel];
  v8 = [v7 trailingAnchor];
  v9 = [(HomeNotificationStatusView *)self trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v36[2] = v10;
  v11 = [NSArray arrayWithObjects:v36 count:3];
  v34 = [v11 mutableCopy];

  v12 = [(HomeNotificationStatusView *)self accessoryImage];

  if (v12)
  {
    v13 = [(HomeNotificationStatusView *)self statusAccessoryImageView];
    v14 = [v13 trailingAnchor];
    v15 = [(HomeNotificationStatusView *)self statusLabel];
    v16 = [v15 leadingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16 constant:-8.0];
    v18 = v34;
    [v34 addObject:v17];

    v19 = [(HomeNotificationStatusView *)self statusAccessoryImageView];
    v20 = [v19 leadingAnchor];
    v21 = [(HomeNotificationStatusView *)self leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v34 addObject:v22];

    v23 = [(HomeNotificationStatusView *)self statusAccessoryImageView];
    v24 = [v23 centerYAnchor];
    v25 = [(HomeNotificationStatusView *)self statusLabel];
    v26 = [v25 centerYAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    [v34 addObject:v27];
  }

  else
  {
    v23 = [(HomeNotificationStatusView *)self statusLabel];
    v24 = [v23 leadingAnchor];
    v25 = [(HomeNotificationStatusView *)self leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v18 = v34;
    [v34 addObject:v26];
  }

  v28 = [(HomeNotificationStatusView *)self constraints];

  if (v28)
  {
    v29 = [(HomeNotificationStatusView *)self constraints];
    [NSLayoutConstraint deactivateConstraints:v29];
  }

  [(HomeNotificationStatusView *)self setConstraints:v18];
  [NSLayoutConstraint activateConstraints:v18];
  v35.receiver = self;
  v35.super_class = HomeNotificationStatusView;
  [(HomeNotificationStatusView *)&v35 updateConstraints];
}

@end