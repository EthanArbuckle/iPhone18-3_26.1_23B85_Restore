@interface MTATimerPresetsCell
- (MTATimerPresetsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)localSetup;
- (void)setDelegate:(id)delegate;
- (void)setupLayoutConstraints;
@end

@implementation MTATimerPresetsCell

- (MTATimerPresetsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTATimerPresetsCell;
  v4 = [(MTATimerPresetsCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTATimerPresetsCell *)v4 localSetup];
    [(MTATimerPresetsCell *)v5 setupLayoutConstraints];
  }

  return v5;
}

- (void)localSetup
{
  v3 = [[MTAPresetsViewController alloc] initWithDelegate:0];
  [(MTATimerPresetsCell *)self setPresetsController:v3];

  presetsController = [(MTATimerPresetsCell *)self presetsController];
  view = [presetsController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(MTATimerPresetsCell *)self contentView];
  presetsController2 = [(MTATimerPresetsCell *)self presetsController];
  view2 = [presetsController2 view];
  [contentView addSubview:view2];

  v9 = +[UIColor clearColor];
  [(MTATimerPresetsCell *)self setBackgroundColor:v9];
}

- (void)setupLayoutConstraints
{
  v25 = objc_opt_new();
  presetsController = [(MTATimerPresetsCell *)self presetsController];
  view = [presetsController view];

  leadingAnchor = [view leadingAnchor];
  contentView = [(MTATimerPresetsCell *)self contentView];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v25 addObject:v9];

  trailingAnchor = [view trailingAnchor];
  contentView2 = [(MTATimerPresetsCell *)self contentView];
  safeAreaLayoutGuide2 = [contentView2 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v25 addObject:v14];

  topAnchor = [view topAnchor];
  contentView3 = [(MTATimerPresetsCell *)self contentView];
  safeAreaLayoutGuide3 = [contentView3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v25 addObject:v19];

  bottomAnchor = [view bottomAnchor];
  contentView4 = [(MTATimerPresetsCell *)self contentView];
  safeAreaLayoutGuide4 = [contentView4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v25 addObject:v24];

  [NSLayoutConstraint activateConstraints:v25];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  presetsController = [(MTATimerPresetsCell *)self presetsController];
  [presetsController setDelegate:delegateCopy];
}

@end