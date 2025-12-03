@interface VMPlayerControlsViewController
- (void)setURL:(id)l;
- (void)viewDidLoad;
@end

@implementation VMPlayerControlsViewController

- (void)setURL:(id)l
{
  lCopy = l;
  URL = self->_URL;
  if (lCopy | URL)
  {
    v13 = lCopy;
    if (([(NSURL *)URL isEqual:lCopy]& 1) == 0)
    {
      objc_storeStrong(&self->_URL, l);
      playerController = [(VMPlayerViewController *)self playerController];
      [playerController setURL:v13];

      playerController2 = [(VMPlayerViewController *)self playerController];
      [playerController2 duration];
      v10 = v9;
      playerControlsView = [(VMPlayerViewController *)self playerControlsView];
      timelineSlider = [playerControlsView timelineSlider];
      [timelineSlider setDuration:v10];
    }
  }

  _objc_release_x1();
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = VMPlayerControlsViewController;
  [(VMPlayerViewController *)&v17 viewDidLoad];
  view = [(VMPlayerControlsViewController *)self view];
  playerControlsView = [(VMPlayerViewController *)self playerControlsView];
  bottomAnchor = [playerControlsView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v7 setActive:1];

  leadingAnchor = [playerControlsView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v10 setActive:1];

  topAnchor = [playerControlsView topAnchor];
  topAnchor2 = [view topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v13 setActive:1];

  trailingAnchor = [playerControlsView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v16 setActive:1];
}

@end