@interface VMViewController
- (VMViewController)init;
- (VMViewController)initWithCoder:(id)a3;
- (VMViewController)initWithManager:(id)a3;
- (VMViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)detailSlider:(id)a3 didChangeValue:(float)a4;
- (void)detailSliderTrackingDidCancel:(id)a3;
- (void)pause;
- (void)play;
- (void)playbackControls:(id)a3 didRequestState:(int64_t)a4;
- (void)playerController:(id)a3 didChangeToCurrentTime:(float)a4;
- (void)playerController:(id)a3 didChangeToDuration:(double)a4;
- (void)playerController:(id)a3 didChangeToStatus:(int64_t)a4;
- (void)playerController:(id)a3 didChangeToTimeControlStatus:(int64_t)a4;
- (void)playerController:(id)a3 didSeekToTime:(float)a4;
- (void)stop;
@end

@implementation VMViewController

- (VMViewController)initWithManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VMViewController;
  v6 = [(PHViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, a3);
  }

  return v7;
}

- (VMViewController)init
{
  [(VMViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMViewController)initWithCoder:(id)a3
{
  [(VMViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  [(VMViewController *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (void)detailSliderTrackingDidCancel:(id)a3
{
  v7 = [(VMViewController *)self playerController];
  [v7 currentTime];
  v5 = v4;
  v6 = [(VMViewController *)self playerControlsView];
  [v6 setElapsedTime:v5];
}

- (void)detailSlider:(id)a3 didChangeValue:(float)a4
{
  v6 = [(VMViewController *)self playerController];
  *&v5 = a4;
  [v6 seekToTime:v5];
}

- (void)playerController:(id)a3 didChangeToCurrentTime:(float)a4
{
  v5 = [(VMViewController *)self playerControlsView];
  [v5 setElapsedTime:1 animated:a4];
}

- (void)playerController:(id)a3 didChangeToDuration:(double)a4
{
  v6 = a3;
  v7 = [(VMViewController *)self playerControlsView];
  v8 = [v7 timelineSlider];
  [v8 setDuration:a4];

  v9 = [v6 status];
  if (v9 == 1)
  {
    v10 = [(VMViewController *)self playerControlsView];
    [v10 setEnabled:1];
  }
}

- (void)playerController:(id)a3 didChangeToStatus:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v12 = v6;
    [v6 duration];
    v8 = v7;
    v9 = [(VMViewController *)self playerControlsView];
    [v9 setDuration:v8];

    v10 = [(VMViewController *)self playerControlsView];
    [v10 setElapsedTime:0.0];

    a4 = 1;
  }

  else
  {
    v12 = v6;
  }

  v11 = [(VMViewController *)self playerControlsView];
  [v11 setEnabled:a4];

  v6 = v12;
LABEL_6:
}

- (void)playerController:(id)a3 didChangeToTimeControlStatus:(int64_t)a4
{
  v6 = a3;
  if (a4 <= 2)
  {
    v7 = qword_100078D20[a4];
    v9 = v6;
    v8 = [(VMViewController *)self playerControlsView];
    [v8 setState:v7 animated:1];

    v6 = v9;
  }
}

- (void)playerController:(id)a3 didSeekToTime:(float)a4
{
  v5 = [(VMViewController *)self playerControlsView];
  [v5 setElapsedTime:1 animated:a4];
}

- (void)playbackControls:(id)a3 didRequestState:(int64_t)a4
{
  v6 = a3;
  switch(a4)
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

  [v6 setState:a4];
}

- (void)pause
{
  v2 = [(VMViewController *)self playerController];
  [v2 pause];
}

- (void)play
{
  v2 = [(VMViewController *)self playerController];
  [v2 play];
}

- (void)stop
{
  v2 = [(VMViewController *)self playerController];
  [v2 stop];
}

@end