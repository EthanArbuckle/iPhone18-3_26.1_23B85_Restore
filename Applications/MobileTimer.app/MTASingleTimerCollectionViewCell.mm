@interface MTASingleTimerCollectionViewCell
- (MTASingleTimerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setupControlsView;
- (void)setupLayoutConstraints;
@end

@implementation MTASingleTimerCollectionViewCell

- (MTASingleTimerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MTASingleTimerCollectionViewCell;
  v3 = [(MTASingleTimerCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTASingleTimerCollectionViewCell *)v3 setupControlsView];
    [(MTASingleTimerCollectionViewCell *)v4 setupLayoutConstraints];
  }

  [(MTASingleTimerCollectionViewCell *)v4 setHoverStyle:0];
  return v4;
}

- (void)setupControlsView
{
  v3 = [[MTATimerControlsView alloc] initWithDelegate:0 style:4 timerControlState:0];
  [(MTASingleTimerCollectionViewCell *)self setControlsView:v3];

  controlsView = [(MTASingleTimerCollectionViewCell *)self controlsView];
  [controlsView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(MTASingleTimerCollectionViewCell *)self contentView];
  controlsView2 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  [contentView addSubview:controlsView2];
}

- (void)setupLayoutConstraints
{
  v27 = objc_opt_new();
  controlsView = [(MTASingleTimerCollectionViewCell *)self controlsView];
  leadingAnchor = [controlsView leadingAnchor];
  contentView = [(MTASingleTimerCollectionViewCell *)self contentView];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v27 addObject:v8];

  controlsView2 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  trailingAnchor = [controlsView2 trailingAnchor];
  contentView2 = [(MTASingleTimerCollectionViewCell *)self contentView];
  safeAreaLayoutGuide2 = [contentView2 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v27 addObject:v14];

  controlsView3 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  topAnchor = [controlsView3 topAnchor];
  contentView3 = [(MTASingleTimerCollectionViewCell *)self contentView];
  safeAreaLayoutGuide3 = [contentView3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v27 addObject:v20];

  controlsView4 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  bottomAnchor = [controlsView4 bottomAnchor];
  contentView4 = [(MTASingleTimerCollectionViewCell *)self contentView];
  safeAreaLayoutGuide4 = [contentView4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v27 addObject:v26];

  [NSLayoutConstraint activateConstraints:v27];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = MTASingleTimerCollectionViewCell;
  [(MTASingleTimerCollectionViewCell *)&v5 prepareForReuse];
  controlsView = [(MTASingleTimerCollectionViewCell *)self controlsView];
  [controlsView setStateNeedsReset:1];

  controlsView2 = [(MTASingleTimerCollectionViewCell *)self controlsView];
  [controlsView2 resetLayout];
}

@end