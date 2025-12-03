@interface MTATimerCollectionHeaderView
- (MTATimerCollectionHeaderView)initWithFrame:(CGRect)frame;
- (void)setupConstraints;
- (void)setupHeaderTitle;
@end

@implementation MTATimerCollectionHeaderView

- (MTATimerCollectionHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MTATimerCollectionHeaderView;
  v3 = [(MTATimerCollectionHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTATimerCollectionHeaderView *)v3 setupHeaderTitle];
    [(MTATimerCollectionHeaderView *)v4 setupConstraints];
  }

  return v4;
}

- (void)setupHeaderTitle
{
  v3 = objc_opt_new();
  [(MTATimerCollectionHeaderView *)self setHeaderTitle:v3];

  headerTitle = [(MTATimerCollectionHeaderView *)self headerTitle];
  v5 = [UIFont systemFontOfSize:18.0 weight:UIFontWeightMedium];
  [headerTitle setFont:v5];

  headerTitle2 = [(MTATimerCollectionHeaderView *)self headerTitle];
  v7 = +[UIColor whiteColor];
  [headerTitle2 setTextColor:v7];

  headerTitle3 = [(MTATimerCollectionHeaderView *)self headerTitle];
  [headerTitle3 setTranslatesAutoresizingMaskIntoConstraints:0];

  headerTitle4 = [(MTATimerCollectionHeaderView *)self headerTitle];
  [(MTATimerCollectionHeaderView *)self addSubview:headerTitle4];
}

- (void)setupConstraints
{
  v15 = objc_opt_new();
  headerTitle = [(MTATimerCollectionHeaderView *)self headerTitle];
  leadingAnchor = [headerTitle leadingAnchor];
  leadingAnchor2 = [(MTATimerCollectionHeaderView *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v15 addObject:v6];

  headerTitle2 = [(MTATimerCollectionHeaderView *)self headerTitle];
  trailingAnchor = [headerTitle2 trailingAnchor];
  trailingAnchor2 = [(MTATimerCollectionHeaderView *)self trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v15 addObject:v10];

  headerTitle3 = [(MTATimerCollectionHeaderView *)self headerTitle];
  bottomAnchor = [headerTitle3 bottomAnchor];
  bottomAnchor2 = [(MTATimerCollectionHeaderView *)self bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
  [v15 addObject:v14];

  [NSLayoutConstraint activateConstraints:v15];
}

@end