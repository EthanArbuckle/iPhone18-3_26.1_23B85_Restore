@interface MTATimerTableViewCell
+ (double)estimatedCellHeightForTimerWithTitle:(id)title;
- (MTATimerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (MTATimerTableViewCellDelegate)delegate;
- (void)didSendPauseAction;
- (void)didSendResumeAction;
- (void)localSetup;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setRemainingTime:(double)time duration:(double)duration state:(unint64_t)state title:(id)title forceRefresh:(BOOL)refresh;
- (void)setupLayoutConstraints;
- (void)tickWithTimer:(id)timer;
@end

@implementation MTATimerTableViewCell

+ (double)estimatedCellHeightForTimerWithTitle:(id)title
{
  [MTATimerCellView estimatedHeightForTimerWithTitle:title];
  if (result <= 110.0)
  {
    return 110.0;
  }

  return result;
}

- (MTATimerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTATimerTableViewCell;
  v4 = [(MTATimerTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTATimerTableViewCell *)v4 localSetup];
    [(MTATimerTableViewCell *)v5 setupLayoutConstraints];
  }

  return v5;
}

- (void)localSetup
{
  v3 = [[MTATimerCellView alloc] initWithDelegate:self];
  [(MTATimerTableViewCell *)self setTimerCellView:v3];

  timerCellView = [(MTATimerTableViewCell *)self timerCellView];
  [timerCellView setTranslatesAutoresizingMaskIntoConstraints:0];

  [(MTATimerTableViewCell *)self setEditingAccessoryType:1];
  contentView = [(MTATimerTableViewCell *)self contentView];
  timerCellView2 = [(MTATimerTableViewCell *)self timerCellView];
  [contentView addSubview:timerCellView2];
}

- (void)setupLayoutConstraints
{
  v27 = objc_opt_new();
  timerCellView = [(MTATimerTableViewCell *)self timerCellView];
  leadingAnchor = [timerCellView leadingAnchor];
  contentView = [(MTATimerTableViewCell *)self contentView];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v27 addObject:v8];

  timerCellView2 = [(MTATimerTableViewCell *)self timerCellView];
  trailingAnchor = [timerCellView2 trailingAnchor];
  contentView2 = [(MTATimerTableViewCell *)self contentView];
  safeAreaLayoutGuide2 = [contentView2 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v27 addObject:v14];

  timerCellView3 = [(MTATimerTableViewCell *)self timerCellView];
  topAnchor = [timerCellView3 topAnchor];
  contentView3 = [(MTATimerTableViewCell *)self contentView];
  safeAreaLayoutGuide3 = [contentView3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v27 addObject:v20];

  timerCellView4 = [(MTATimerTableViewCell *)self timerCellView];
  bottomAnchor = [timerCellView4 bottomAnchor];
  contentView4 = [(MTATimerTableViewCell *)self contentView];
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
  v9[2] = sub_100048028;
  v9[3] = &unk_1000ADEA8;
  v9[4] = self;
  v10 = editingCopy;
  [UIView animateWithDuration:v9 animations:v7];
  v8.receiver = self;
  v8.super_class = MTATimerTableViewCell;
  [(MTATimerTableViewCell *)&v8 setEditing:editingCopy animated:animatedCopy];
}

- (void)tickWithTimer:(id)timer
{
  timerCopy = timer;
  timerCellView = [(MTATimerTableViewCell *)self timerCellView];
  [timerCellView tickWithTimer:timerCopy];
}

- (void)setRemainingTime:(double)time duration:(double)duration state:(unint64_t)state title:(id)title forceRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  titleCopy = title;
  timerCellView = [(MTATimerTableViewCell *)self timerCellView];
  [timerCellView setRemainingTime:state duration:titleCopy state:refreshCopy title:time forceRefresh:duration];
}

- (void)didSendPauseAction
{
  delegate = [(MTATimerTableViewCell *)self delegate];
  [delegate didSendPauseAction:self];
}

- (void)didSendResumeAction
{
  delegate = [(MTATimerTableViewCell *)self delegate];
  [delegate didSendResumeAction:self];
}

- (MTATimerTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end