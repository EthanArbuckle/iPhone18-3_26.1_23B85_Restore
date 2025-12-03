@interface VMPlayerViewController
- (VMPlayerController)playerController;
- (VMPlayerControlsView)playerControlsView;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VMPlayerViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = VMPlayerViewController;
  [(VMPlayerViewController *)&v10 viewDidLoad];
  view = [(VMPlayerViewController *)self view];
  v4 = +[UIColor whiteColor];
  [view setBackgroundColor:v4];

  playerController = [(VMPlayerViewController *)self playerController];
  [playerController setDelegate:self];
  playerControlsView = [(VMPlayerViewController *)self playerControlsView];
  [playerControlsView setDelegate:self];
  [playerControlsView setEnabled:0];
  [playerController duration];
  v8 = v7;
  timelineSlider = [playerControlsView timelineSlider];
  [timelineSlider setDuration:v8];

  if ([playerController status] == 1)
  {
    [playerControlsView setEnabled:1];
  }

  [view addSubview:playerControlsView];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VMPlayerViewController;
  [(VMPlayerViewController *)&v4 viewWillDisappear:disappear];
  [(VMViewController *)self stop];
}

- (VMPlayerController)playerController
{
  playerController = self->_playerController;
  if (!playerController)
  {
    v4 = objc_alloc_init(VMPlayerController);
    v5 = self->_playerController;
    self->_playerController = v4;

    playerController = self->_playerController;
  }

  return playerController;
}

- (VMPlayerControlsView)playerControlsView
{
  playerControlsView = self->_playerControlsView;
  if (!playerControlsView)
  {
    v4 = objc_alloc_init(VMPlayerControlsView);
    v5 = self->_playerControlsView;
    self->_playerControlsView = v4;

    playerControlsView = self->_playerControlsView;
  }

  return playerControlsView;
}

@end