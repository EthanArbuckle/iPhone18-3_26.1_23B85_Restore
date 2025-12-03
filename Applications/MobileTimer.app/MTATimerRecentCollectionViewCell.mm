@interface MTATimerRecentCollectionViewCell
- (void)deleteRecent:(id)recent;
- (void)startTimer:(id)timer;
- (void)updateWithDuration:(id)duration;
@end

@implementation MTATimerRecentCollectionViewCell

- (void)updateWithDuration:(id)duration
{
  durationCopy = duration;
  timerControlsView = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  [durationCopy duration];
  v6 = v5;
  title = [durationCopy title];
  if (title)
  {
    [timerControlsView setDurationTime:title title:v6];
  }

  else
  {
    [durationCopy duration];
    v8 = [MTAUtilities durationStringFromInterval:?];
    [timerControlsView setDurationTime:v8 title:v6];
  }

  timerControlsView2 = [(MTATimerBaseCollectionViewCell *)self timerControlsView];
  [timerControlsView2 setState:0];
}

- (void)startTimer:(id)timer
{
  delegate = [(MTATimerBaseCollectionViewCell *)self delegate];
  [delegate startRecentTimerForCell:self];
}

- (void)deleteRecent:(id)recent
{
  delegate = [(MTATimerBaseCollectionViewCell *)self delegate];
  [delegate deleteRecentTimerForCell:self];
}

@end