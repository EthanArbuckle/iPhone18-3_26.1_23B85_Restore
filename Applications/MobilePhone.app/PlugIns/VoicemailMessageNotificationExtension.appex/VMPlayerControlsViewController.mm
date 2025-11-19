@interface VMPlayerControlsViewController
- (void)setURL:(id)a3;
- (void)viewDidLoad;
@end

@implementation VMPlayerControlsViewController

- (void)setURL:(id)a3
{
  v5 = a3;
  URL = self->_URL;
  if (v5 | URL)
  {
    v13 = v5;
    if (([(NSURL *)URL isEqual:v5]& 1) == 0)
    {
      objc_storeStrong(&self->_URL, a3);
      v7 = [(VMPlayerViewController *)self playerController];
      [v7 setURL:v13];

      v8 = [(VMPlayerViewController *)self playerController];
      [v8 duration];
      v10 = v9;
      v11 = [(VMPlayerViewController *)self playerControlsView];
      v12 = [v11 timelineSlider];
      [v12 setDuration:v10];
    }
  }

  _objc_release_x1();
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = VMPlayerControlsViewController;
  [(VMPlayerViewController *)&v17 viewDidLoad];
  v3 = [(VMPlayerControlsViewController *)self view];
  v4 = [(VMPlayerViewController *)self playerControlsView];
  v5 = [v4 bottomAnchor];
  v6 = [v3 bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [v4 leadingAnchor];
  v9 = [v3 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [v4 topAnchor];
  v12 = [v3 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [v4 trailingAnchor];
  v15 = [v3 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v16 setActive:1];
}

@end