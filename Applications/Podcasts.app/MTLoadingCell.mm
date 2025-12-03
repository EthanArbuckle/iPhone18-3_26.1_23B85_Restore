@interface MTLoadingCell
- (void)layoutSubviews;
- (void)setupCell;
@end

@implementation MTLoadingCell

- (void)setupCell
{
  v7.receiver = self;
  v7.super_class = MTLoadingCell;
  [(MTTableViewCell *)&v7 setupCell];
  v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(MTLoadingCell *)self setActivityIndicator:v3];

  contentView = [(MTLoadingCell *)self contentView];
  activityIndicator = [(MTLoadingCell *)self activityIndicator];
  [contentView addSubview:activityIndicator];

  activityIndicator2 = [(MTLoadingCell *)self activityIndicator];
  [activityIndicator2 startAnimating];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = MTLoadingCell;
  [(MTTableViewCell *)&v13 layoutSubviews];
  activityIndicator = [(MTLoadingCell *)self activityIndicator];
  [activityIndicator frame];
  v5 = v4;
  v7 = v6;

  contentView = [(MTLoadingCell *)self contentView];
  [contentView frame];
  v9 = CGRectGetMidX(v14) - v5 * 0.5;
  contentView2 = [(MTLoadingCell *)self contentView];
  [contentView2 frame];
  v11 = CGRectGetMidY(v15) - v7 * 0.5;
  activityIndicator2 = [(MTLoadingCell *)self activityIndicator];
  [activityIndicator2 setFrame:{v9, v11, v5, v7}];
}

@end