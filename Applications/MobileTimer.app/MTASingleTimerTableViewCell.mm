@interface MTASingleTimerTableViewCell
- (MTASingleTimerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setupControlsView;
- (void)setupLayoutConstraints;
- (void)updateDelegate:(id)delegate;
- (void)updateWithLatestDuration:(id)duration;
@end

@implementation MTASingleTimerTableViewCell

- (MTASingleTimerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTASingleTimerTableViewCell;
  v4 = [(MTASingleTimerTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTASingleTimerTableViewCell *)v4 setupControlsView];
    [(MTASingleTimerTableViewCell *)v5 setupLayoutConstraints];
  }

  return v5;
}

- (void)setupControlsView
{
  v3 = [[MTATimerControlsView alloc] initWithDelegate:0 style:2 timerControlState:0];
  [(MTASingleTimerTableViewCell *)self setControlsView:v3];

  controlsView = [(MTASingleTimerTableViewCell *)self controlsView];
  [controlsView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(MTASingleTimerTableViewCell *)self contentView];
  controlsView2 = [(MTASingleTimerTableViewCell *)self controlsView];
  [contentView addSubview:controlsView2];
}

- (void)setupLayoutConstraints
{
  v27 = objc_opt_new();
  controlsView = [(MTASingleTimerTableViewCell *)self controlsView];
  leadingAnchor = [controlsView leadingAnchor];
  contentView = [(MTASingleTimerTableViewCell *)self contentView];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v27 addObject:v8];

  controlsView2 = [(MTASingleTimerTableViewCell *)self controlsView];
  trailingAnchor = [controlsView2 trailingAnchor];
  contentView2 = [(MTASingleTimerTableViewCell *)self contentView];
  safeAreaLayoutGuide2 = [contentView2 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v27 addObject:v14];

  controlsView3 = [(MTASingleTimerTableViewCell *)self controlsView];
  topAnchor = [controlsView3 topAnchor];
  contentView3 = [(MTASingleTimerTableViewCell *)self contentView];
  safeAreaLayoutGuide3 = [contentView3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v27 addObject:v20];

  controlsView4 = [(MTASingleTimerTableViewCell *)self controlsView];
  bottomAnchor = [controlsView4 bottomAnchor];
  contentView4 = [(MTASingleTimerTableViewCell *)self contentView];
  safeAreaLayoutGuide4 = [contentView4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v27 addObject:v26];

  [NSLayoutConstraint activateConstraints:v27];
}

- (void)updateWithLatestDuration:(id)duration
{
  [duration duration];
  v5 = v4;
  controlsView = [(MTASingleTimerTableViewCell *)self controlsView];
  [controlsView setCountDownDuration:v5];
}

- (void)updateDelegate:(id)delegate
{
  delegateCopy = delegate;
  controlsView = [(MTASingleTimerTableViewCell *)self controlsView];
  [controlsView setControlsViewDelegate:delegateCopy];
}

@end