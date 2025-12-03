@interface MTATimerRecentCell
+ (double)estimatedCellHeightForTimerWithTitle:(id)title;
- (MTATimerRecentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)localSetup;
- (void)setDelegate:(id)delegate duration:(id)duration;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setupLayoutConstraints;
@end

@implementation MTATimerRecentCell

+ (double)estimatedCellHeightForTimerWithTitle:(id)title
{
  [MTATimerRecentView estimatedHeightForTimerWithTitle:title];
  if (result <= 110.0)
  {
    return 110.0;
  }

  return result;
}

- (MTATimerRecentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTATimerRecentCell;
  v4 = [(MTATimerRecentCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTATimerRecentCell *)v4 localSetup];
    [(MTATimerRecentCell *)v5 setupLayoutConstraints];
  }

  return v5;
}

- (void)localSetup
{
  v3 = objc_opt_new();
  [(MTATimerRecentCell *)self setRecentView:v3];

  recentView = [(MTATimerRecentCell *)self recentView];
  [recentView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(MTATimerRecentCell *)self contentView];
  recentView2 = [(MTATimerRecentCell *)self recentView];
  [contentView addSubview:recentView2];

  v7 = +[UIColor clearColor];
  [(MTATimerRecentCell *)self setBackgroundColor:v7];
}

- (void)setupLayoutConstraints
{
  v27 = objc_opt_new();
  recentView = [(MTATimerRecentCell *)self recentView];
  leadingAnchor = [recentView leadingAnchor];
  contentView = [(MTATimerRecentCell *)self contentView];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v27 addObject:v8];

  recentView2 = [(MTATimerRecentCell *)self recentView];
  trailingAnchor = [recentView2 trailingAnchor];
  contentView2 = [(MTATimerRecentCell *)self contentView];
  safeAreaLayoutGuide2 = [contentView2 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v27 addObject:v14];

  recentView3 = [(MTATimerRecentCell *)self recentView];
  topAnchor = [recentView3 topAnchor];
  contentView3 = [(MTATimerRecentCell *)self contentView];
  safeAreaLayoutGuide3 = [contentView3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v27 addObject:v20];

  recentView4 = [(MTATimerRecentCell *)self recentView];
  bottomAnchor = [recentView4 bottomAnchor];
  contentView4 = [(MTATimerRecentCell *)self contentView];
  safeAreaLayoutGuide4 = [contentView4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v27 addObject:v26];

  [NSLayoutConstraint activateConstraints:v27];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7 = 0.0;
  if (animated)
  {
    +[CATransaction animationDuration];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003A7C8;
  v9[3] = &unk_1000ADEA8;
  v9[4] = self;
  v10 = editingCopy;
  [UIView animateWithDuration:v9 animations:v7];
  v8.receiver = self;
  v8.super_class = MTATimerRecentCell;
  [(MTATimerRecentCell *)&v8 setEditing:editingCopy animated:animatedCopy];
}

- (void)setDelegate:(id)delegate duration:(id)duration
{
  durationCopy = duration;
  delegateCopy = delegate;
  recentView = [(MTATimerRecentCell *)self recentView];
  [recentView setDelegate:delegateCopy duration:durationCopy];
}

@end