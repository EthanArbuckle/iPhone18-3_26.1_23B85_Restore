@interface VMPlayerViewController
- (VMPlayerController)playerController;
- (VMPlayerControlsView)playerControlsView;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation VMPlayerViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = VMPlayerViewController;
  [(VMPlayerViewController *)&v10 viewDidLoad];
  v3 = [(VMPlayerViewController *)self view];
  v4 = +[UIColor whiteColor];
  [v3 setBackgroundColor:v4];

  v5 = [(VMPlayerViewController *)self playerController];
  [v5 setDelegate:self];
  v6 = [(VMPlayerViewController *)self playerControlsView];
  [v6 setDelegate:self];
  [v6 setEnabled:0];
  [v5 duration];
  v8 = v7;
  v9 = [v6 timelineSlider];
  [v9 setDuration:v8];

  if ([v5 status] == 1)
  {
    [v6 setEnabled:1];
  }

  [v3 addSubview:v6];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VMPlayerViewController;
  [(VMPlayerViewController *)&v4 viewWillDisappear:a3];
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