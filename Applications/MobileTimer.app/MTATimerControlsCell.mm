@interface MTATimerControlsCell
- (BOOL)edited;
- (MTATimerControlsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (unint64_t)timerViewStyle;
- (void)localSetup;
- (void)setDelegate:(id)delegate;
- (void)setDuration:(double)duration;
- (void)setTimerToneName:(id)name;
- (void)setupLayoutConstraints;
@end

@implementation MTATimerControlsCell

- (MTATimerControlsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTATimerControlsCell;
  v4 = [(MTATimerControlsCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTATimerControlsCell *)v4 localSetup];
    [(MTATimerControlsCell *)v5 setupLayoutConstraints];
  }

  return v5;
}

- (void)localSetup
{
  v3 = [[MTATimerControlsView alloc] initWithDelegate:0 style:[(MTATimerControlsCell *)self timerViewStyle] timerControlState:0];
  [(MTATimerControlsCell *)self setControlsView:v3];

  controlsView = [(MTATimerControlsCell *)self controlsView];
  [controlsView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(MTATimerControlsCell *)self contentView];
  controlsView2 = [(MTATimerControlsCell *)self controlsView];
  [contentView addSubview:controlsView2];

  v7 = +[UIColor clearColor];
  [(MTATimerControlsCell *)self setBackgroundColor:v7];
}

- (void)setupLayoutConstraints
{
  v27 = objc_opt_new();
  controlsView = [(MTATimerControlsCell *)self controlsView];
  leadingAnchor = [controlsView leadingAnchor];
  contentView = [(MTATimerControlsCell *)self contentView];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v27 addObject:v8];

  controlsView2 = [(MTATimerControlsCell *)self controlsView];
  trailingAnchor = [controlsView2 trailingAnchor];
  contentView2 = [(MTATimerControlsCell *)self contentView];
  safeAreaLayoutGuide2 = [contentView2 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v27 addObject:v14];

  controlsView3 = [(MTATimerControlsCell *)self controlsView];
  topAnchor = [controlsView3 topAnchor];
  contentView3 = [(MTATimerControlsCell *)self contentView];
  safeAreaLayoutGuide3 = [contentView3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v27 addObject:v20];

  controlsView4 = [(MTATimerControlsCell *)self controlsView];
  bottomAnchor = [controlsView4 bottomAnchor];
  contentView4 = [(MTATimerControlsCell *)self contentView];
  safeAreaLayoutGuide4 = [contentView4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v27 addObject:v26];

  [NSLayoutConstraint activateConstraints:v27];
}

- (BOOL)edited
{
  controlsView = [(MTATimerControlsCell *)self controlsView];
  edited = [controlsView edited];

  return edited;
}

- (unint64_t)timerViewStyle
{
  traitCollection = [(MTATimerControlsCell *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  controlsView = [(MTATimerControlsCell *)self controlsView];
  [controlsView setControlsViewDelegate:delegateCopy];
}

- (void)setDuration:(double)duration
{
  controlsView = [(MTATimerControlsCell *)self controlsView];
  [controlsView setCountDownDuration:duration];
}

- (void)setTimerToneName:(id)name
{
  nameCopy = name;
  controlsView = [(MTATimerControlsCell *)self controlsView];
  [controlsView setTimerToneName:nameCopy];
}

@end