@interface VMViewController
- (VMViewController)init;
- (VMViewController)initWithCoder:(id)coder;
- (VMViewController)initWithManager:(id)manager;
- (VMViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)detailSlider:(id)slider didChangeValue:(float)value;
- (void)detailSliderTrackingDidCancel:(id)cancel;
- (void)pause;
- (void)play;
- (void)playbackControls:(id)controls didRequestState:(int64_t)state;
- (void)playerController:(id)controller didChangeToCurrentTime:(float)time;
- (void)playerController:(id)controller didChangeToDuration:(double)duration;
- (void)playerController:(id)controller didChangeToStatus:(int64_t)status;
- (void)playerController:(id)controller didChangeToTimeControlStatus:(int64_t)status;
- (void)playerController:(id)controller didSeekToTime:(float)time;
- (void)stop;
@end

@implementation VMViewController

- (VMViewController)initWithManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = VMViewController;
  v6 = [(PHViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
  }

  return v7;
}

- (VMViewController)init
{
  [(VMViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMViewController)initWithCoder:(id)coder
{
  [(VMViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMViewController)initWithNibName:(id)name bundle:(id)bundle
{
  [(VMViewController *)self doesNotRecognizeSelector:a2, bundle];

  return 0;
}

- (void)detailSliderTrackingDidCancel:(id)cancel
{
  playerController = [(VMViewController *)self playerController];
  [playerController currentTime];
  v5 = v4;
  playerControlsView = [(VMViewController *)self playerControlsView];
  [playerControlsView setElapsedTime:v5];
}

- (void)detailSlider:(id)slider didChangeValue:(float)value
{
  playerController = [(VMViewController *)self playerController];
  *&v5 = value;
  [playerController seekToTime:v5];
}

- (void)playerController:(id)controller didChangeToCurrentTime:(float)time
{
  playerControlsView = [(VMViewController *)self playerControlsView];
  [playerControlsView setElapsedTime:1 animated:time];
}

- (void)playerController:(id)controller didChangeToDuration:(double)duration
{
  controllerCopy = controller;
  playerControlsView = [(VMViewController *)self playerControlsView];
  timelineSlider = [playerControlsView timelineSlider];
  [timelineSlider setDuration:duration];

  status = [controllerCopy status];
  if (status == 1)
  {
    playerControlsView2 = [(VMViewController *)self playerControlsView];
    [playerControlsView2 setEnabled:1];
  }
}

- (void)playerController:(id)controller didChangeToStatus:(int64_t)status
{
  controllerCopy = controller;
  if (status)
  {
    if (status != 1)
    {
      goto LABEL_6;
    }

    v12 = controllerCopy;
    [controllerCopy duration];
    v8 = v7;
    playerControlsView = [(VMViewController *)self playerControlsView];
    [playerControlsView setDuration:v8];

    playerControlsView2 = [(VMViewController *)self playerControlsView];
    [playerControlsView2 setElapsedTime:0.0];

    status = 1;
  }

  else
  {
    v12 = controllerCopy;
  }

  playerControlsView3 = [(VMViewController *)self playerControlsView];
  [playerControlsView3 setEnabled:status];

  controllerCopy = v12;
LABEL_6:
}

- (void)playerController:(id)controller didChangeToTimeControlStatus:(int64_t)status
{
  controllerCopy = controller;
  if (status <= 2)
  {
    v7 = qword_100208878[status];
    v9 = controllerCopy;
    playerControlsView = [(VMViewController *)self playerControlsView];
    [playerControlsView setState:v7 animated:1];

    controllerCopy = v9;
  }
}

- (void)playerController:(id)controller didSeekToTime:(float)time
{
  playerControlsView = [(VMViewController *)self playerControlsView];
  [playerControlsView setElapsedTime:1 animated:time];
}

- (void)playbackControls:(id)controls didRequestState:(int64_t)state
{
  controlsCopy = controls;
  switch(state)
  {
    case 2:
      [(VMViewController *)self pause];
      break;
    case 1:
      [(VMViewController *)self play];
      break;
    case 0:
      [(VMViewController *)self stop];
      break;
  }

  [controlsCopy setState:state];
}

- (void)pause
{
  playerController = [(VMViewController *)self playerController];
  [playerController pause];
}

- (void)play
{
  playerController = [(VMViewController *)self playerController];
  [playerController play];
}

- (void)stop
{
  playerController = [(VMViewController *)self playerController];
  [playerController stop];
}

@end