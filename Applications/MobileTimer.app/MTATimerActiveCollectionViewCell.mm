@interface MTATimerActiveCollectionViewCell
- (MTATimerActiveCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)titleForTimer:(id)timer;
- (void)cancelTimer:(id)timer;
- (void)didSelectPresetWithDuration:(double)duration;
- (void)pauseResumeTimer:(id)timer;
- (void)refreshUI:(id)i animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)startTimer:(id)timer;
@end

@implementation MTATimerActiveCollectionViewCell

- (MTATimerActiveCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MTATimerActiveCollectionViewCell;
  v3 = [(MTATimerBaseCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    timerControlsView = [(MTATimerBaseCollectionViewCell *)v3 timerControlsView];
    v6 = +[UIColor clearColor];
    [timerControlsView applyBackgroundColor:v6];
  }

  return v4;
}

- (void)refreshUI:(id)i animated:(BOOL)animated
{
  iCopy = i;
  timerControlsView = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  [iCopy remainingTime];
  v8 = v7;
  [iCopy duration];
  v10 = v9;
  state = [iCopy state];
  v12 = [(MTATimerActiveCollectionViewCell *)self titleForTimer:iCopy];
  [timerControlsView setRemainingTime:state duration:v12 state:1 title:v8 forceRefresh:v10];

  timerControlsView2 = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  [iCopy remainingTime];
  v15 = v14;

  [timerControlsView2 setTime:v15];

  [(MTATimerActiveCollectionViewCell *)self setNeedsLayout];
}

- (id)titleForTimer:(id)timer
{
  timerCopy = timer;
  if ([timerCopy hasDefaultTitle])
  {
    [timerCopy duration];
    v5 = v4;

    title = [MTAUtilities durationStringFromInterval:v5];
  }

  else
  {
    title = [timerCopy title];
  }

  return title;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v9.receiver = self;
  v9.super_class = MTATimerActiveCollectionViewCell;
  [(MTATimerActiveCollectionViewCell *)&v9 setHighlighted:?];
  if (highlighted || [(MTATimerActiveCollectionViewCell *)self isSelected])
  {
    v5 = +[UIColor mtui_cellHighlightColor];
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v5 = +[UIColor mtui_foregroundColor];
    v7 = 0;
    v6 = 1;
  }

  contentView = [(MTATimerActiveCollectionViewCell *)self contentView];
  [contentView setBackgroundColor:v5];

  if (v6)
  {
  }

  if (v7)
  {
  }
}

- (void)setSelected:(BOOL)selected
{
  v9.receiver = self;
  v9.super_class = MTATimerActiveCollectionViewCell;
  [(MTATimerActiveCollectionViewCell *)&v9 setSelected:?];
  if (selected || [(MTATimerActiveCollectionViewCell *)self isHighlighted])
  {
    v5 = +[UIColor mtui_cellHighlightColor];
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v5 = +[UIColor mtui_foregroundColor];
    v7 = 0;
    v6 = 1;
  }

  contentView = [(MTATimerActiveCollectionViewCell *)self contentView];
  [contentView setBackgroundColor:v5];

  if (v6)
  {
  }

  if (v7)
  {
  }
}

- (void)startTimer:(id)timer
{
  delegate = [(MTATimerBaseCollectionViewCell *)self delegate];
  timerControlsView = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  [timerControlsView countDownDuration];
  [delegate startTimerForCell:self withDuration:?];
}

- (void)cancelTimer:(id)timer
{
  delegate = [(MTATimerBaseCollectionViewCell *)self delegate];
  [delegate cancelTimerForCell:self];
}

- (void)pauseResumeTimer:(id)timer
{
  delegate = [(MTATimerBaseCollectionViewCell *)self delegate];
  [delegate pauseResumeTimerForCell:self];
}

- (void)didSelectPresetWithDuration:(double)duration
{
  delegate = [(MTATimerBaseCollectionViewCell *)self delegate];
  [delegate startTimerForCell:self withDuration:duration];
}

@end