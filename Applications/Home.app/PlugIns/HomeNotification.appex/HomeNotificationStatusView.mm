@interface HomeNotificationStatusView
- (HomeNotificationStatusView)initWithFrame:(CGRect)frame;
- (NSString)statusText;
- (UIImage)accessoryImage;
- (void)setAccessoryImage:(id)image;
- (void)setStatusText:(id)text;
- (void)updateConstraints;
@end

@implementation HomeNotificationStatusView

- (HomeNotificationStatusView)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = HomeNotificationStatusView;
  v3 = [(HomeNotificationStatusView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(HomeNotificationStatusView *)v3 setStatusLabel:v4];

    statusLabel = [(HomeNotificationStatusView *)v3 statusLabel];
    [statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [UIFont boldSystemFontOfSize:15.0];
    statusLabel2 = [(HomeNotificationStatusView *)v3 statusLabel];
    [statusLabel2 setFont:v6];

    v8 = +[UIColor systemWhiteColor];
    statusLabel3 = [(HomeNotificationStatusView *)v3 statusLabel];
    [statusLabel3 setTextColor:v8];

    statusLabel4 = [(HomeNotificationStatusView *)v3 statusLabel];
    [statusLabel4 setTextAlignment:1];

    statusLabel5 = [(HomeNotificationStatusView *)v3 statusLabel];
    [(HomeNotificationStatusView *)v3 addSubview:statusLabel5];

    v12 = objc_alloc_init(UIImageView);
    [(HomeNotificationStatusView *)v3 setStatusAccessoryImageView:v12];

    statusAccessoryImageView = [(HomeNotificationStatusView *)v3 statusAccessoryImageView];
    [statusAccessoryImageView setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = +[UIColor systemWhiteColor];
    statusAccessoryImageView2 = [(HomeNotificationStatusView *)v3 statusAccessoryImageView];
    [statusAccessoryImageView2 setTintColor:v14];

    statusAccessoryImageView3 = [(HomeNotificationStatusView *)v3 statusAccessoryImageView];
    [(HomeNotificationStatusView *)v3 addSubview:statusAccessoryImageView3];
  }

  return v3;
}

- (NSString)statusText
{
  statusLabel = [(HomeNotificationStatusView *)self statusLabel];
  text = [statusLabel text];

  return text;
}

- (void)setStatusText:(id)text
{
  textCopy = text;
  statusLabel = [(HomeNotificationStatusView *)self statusLabel];
  [statusLabel setText:textCopy];
}

- (UIImage)accessoryImage
{
  statusAccessoryImageView = [(HomeNotificationStatusView *)self statusAccessoryImageView];
  image = [statusAccessoryImageView image];

  return image;
}

- (void)setAccessoryImage:(id)image
{
  imageCopy = image;
  accessoryImage = [(HomeNotificationStatusView *)self accessoryImage];
  v6 = accessoryImage != 0;

  v7 = [imageCopy imageWithRenderingMode:2];

  statusAccessoryImageView = [(HomeNotificationStatusView *)self statusAccessoryImageView];
  [statusAccessoryImageView setImage:v7];

  if ((((imageCopy == 0) ^ v6) & 1) == 0)
  {

    [(HomeNotificationStatusView *)self setNeedsUpdateConstraints];
  }
}

- (void)updateConstraints
{
  statusLabel = [(HomeNotificationStatusView *)self statusLabel];
  firstBaselineAnchor = [statusLabel firstBaselineAnchor];
  topAnchor = [(HomeNotificationStatusView *)self topAnchor];
  v30 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:19.0];
  v36[0] = v30;
  statusLabel2 = [(HomeNotificationStatusView *)self statusLabel];
  lastBaselineAnchor = [statusLabel2 lastBaselineAnchor];
  bottomAnchor = [(HomeNotificationStatusView *)self bottomAnchor];
  v6 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-10.0];
  v36[1] = v6;
  statusLabel3 = [(HomeNotificationStatusView *)self statusLabel];
  trailingAnchor = [statusLabel3 trailingAnchor];
  trailingAnchor2 = [(HomeNotificationStatusView *)self trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[2] = v10;
  v11 = [NSArray arrayWithObjects:v36 count:3];
  v34 = [v11 mutableCopy];

  accessoryImage = [(HomeNotificationStatusView *)self accessoryImage];

  if (accessoryImage)
  {
    statusAccessoryImageView = [(HomeNotificationStatusView *)self statusAccessoryImageView];
    trailingAnchor3 = [statusAccessoryImageView trailingAnchor];
    statusLabel4 = [(HomeNotificationStatusView *)self statusLabel];
    leadingAnchor = [statusLabel4 leadingAnchor];
    v17 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor constant:-8.0];
    v18 = v34;
    [v34 addObject:v17];

    statusAccessoryImageView2 = [(HomeNotificationStatusView *)self statusAccessoryImageView];
    leadingAnchor2 = [statusAccessoryImageView2 leadingAnchor];
    leadingAnchor3 = [(HomeNotificationStatusView *)self leadingAnchor];
    v22 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    [v34 addObject:v22];

    statusAccessoryImageView3 = [(HomeNotificationStatusView *)self statusAccessoryImageView];
    centerYAnchor = [statusAccessoryImageView3 centerYAnchor];
    statusLabel5 = [(HomeNotificationStatusView *)self statusLabel];
    centerYAnchor2 = [statusLabel5 centerYAnchor];
    v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v34 addObject:v27];
  }

  else
  {
    statusAccessoryImageView3 = [(HomeNotificationStatusView *)self statusLabel];
    centerYAnchor = [statusAccessoryImageView3 leadingAnchor];
    statusLabel5 = [(HomeNotificationStatusView *)self leadingAnchor];
    centerYAnchor2 = [centerYAnchor constraintEqualToAnchor:statusLabel5];
    v18 = v34;
    [v34 addObject:centerYAnchor2];
  }

  constraints = [(HomeNotificationStatusView *)self constraints];

  if (constraints)
  {
    constraints2 = [(HomeNotificationStatusView *)self constraints];
    [NSLayoutConstraint deactivateConstraints:constraints2];
  }

  [(HomeNotificationStatusView *)self setConstraints:v18];
  [NSLayoutConstraint activateConstraints:v18];
  v35.receiver = self;
  v35.super_class = HomeNotificationStatusView;
  [(HomeNotificationStatusView *)&v35 updateConstraints];
}

@end