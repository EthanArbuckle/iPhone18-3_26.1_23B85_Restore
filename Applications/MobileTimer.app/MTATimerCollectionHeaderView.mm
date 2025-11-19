@interface MTATimerCollectionHeaderView
- (MTATimerCollectionHeaderView)initWithFrame:(CGRect)a3;
- (void)setupConstraints;
- (void)setupHeaderTitle;
@end

@implementation MTATimerCollectionHeaderView

- (MTATimerCollectionHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MTATimerCollectionHeaderView;
  v3 = [(MTATimerCollectionHeaderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v4 = [(MTATimerCollectionHeaderView *)self headerTitle];
  v5 = [UIFont systemFontOfSize:18.0 weight:UIFontWeightMedium];
  [v4 setFont:v5];

  v6 = [(MTATimerCollectionHeaderView *)self headerTitle];
  v7 = +[UIColor whiteColor];
  [v6 setTextColor:v7];

  v8 = [(MTATimerCollectionHeaderView *)self headerTitle];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(MTATimerCollectionHeaderView *)self headerTitle];
  [(MTATimerCollectionHeaderView *)self addSubview:v9];
}

- (void)setupConstraints
{
  v15 = objc_opt_new();
  v3 = [(MTATimerCollectionHeaderView *)self headerTitle];
  v4 = [v3 leadingAnchor];
  v5 = [(MTATimerCollectionHeaderView *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:16.0];
  [v15 addObject:v6];

  v7 = [(MTATimerCollectionHeaderView *)self headerTitle];
  v8 = [v7 trailingAnchor];
  v9 = [(MTATimerCollectionHeaderView *)self trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-16.0];
  [v15 addObject:v10];

  v11 = [(MTATimerCollectionHeaderView *)self headerTitle];
  v12 = [v11 bottomAnchor];
  v13 = [(MTATimerCollectionHeaderView *)self bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-16.0];
  [v15 addObject:v14];

  [NSLayoutConstraint activateConstraints:v15];
}

@end