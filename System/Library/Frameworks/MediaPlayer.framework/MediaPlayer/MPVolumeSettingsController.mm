@interface MPVolumeSettingsController
- (MPVolumeSettingsController)initWithAudioCategory:(id)category;
- (UIWindow)hostingWindow;
- (UIWindow)previousWindow;
- (void)_flip;
- (void)_keyWindowDidChange:(id)change;
- (void)dealloc;
- (void)dismissAlertController;
- (void)presentAlertControllerInWindow:(id)window;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation MPVolumeSettingsController

- (UIWindow)previousWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_previousWindow);

  return WeakRetained;
}

- (UIWindow)hostingWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingWindow);

  return WeakRetained;
}

- (void)_flip
{
  v7 = [[MPAVRoutingViewController alloc] initWithStyle:2];
  view = [(MPAVRoutingViewController *)v7 view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  _tableView = [(MPAVRoutingViewController *)v7 _tableView];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [_tableView setBackgroundColor:clearColor2];

  [(UIAlertController *)self->_alertController setContentViewController:v7];
}

- (void)_keyWindowDidChange:(id)change
{
  obj = [change object];
  WeakRetained = objc_loadWeakRetained(&self->_previousWindow);
  if (WeakRetained == obj)
  {
    goto LABEL_6;
  }

  v5 = objc_loadWeakRetained(&self->_hostingWindow);
  if (v5 == obj)
  {

LABEL_6:
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_storeWeak(&self->_previousWindow, obj);
  }

LABEL_7:
}

- (void)dismissAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingWindow);
  v3 = objc_loadWeakRetained(&self->_previousWindow);
  [WeakRetained resignKeyWindow];
  [v3 makeKeyAndVisible];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v16.receiver = self;
  v16.super_class = MPVolumeSettingsController;
  [(MPVolumeSettingsController *)&v16 viewDidAppear:?];
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:1];
  alertController = self->_alertController;
  self->_alertController = v5;

  v7 = objc_alloc_init(MPVolumeViewController);
  volumeView = [(MPVolumeViewController *)v7 volumeView];
  _routeButton = [volumeView _routeButton];
  [_routeButton removeTarget:volumeView action:0 forControlEvents:64];

  _routeButton2 = [volumeView _routeButton];
  [_routeButton2 addTarget:self action:sel__flip forControlEvents:64];

  [(UIAlertController *)self->_alertController setContentViewController:v7];
  v11 = self->_alertController;
  v12 = MEMORY[0x1E69DC648];
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v14 = [v13 localizedStringForKey:@"DONE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v15 = [v12 actionWithTitle:v14 style:0 handler:&__block_literal_global_57545];
  [(UIAlertController *)v11 addAction:v15];

  [(MPVolumeSettingsController *)self presentViewController:self->_alertController animated:appearCopy completion:0];
}

- (void)presentAlertControllerInWindow:(id)window
{
  windowCopy = window;
  objc_storeWeak(&self->_hostingWindow, windowCopy);
  [windowCopy setRootViewController:self];
  [windowCopy makeKeyAndVisible];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MPVolumeSettingsController;
  [(MPVolumeSettingsController *)&v4 dealloc];
}

- (MPVolumeSettingsController)initWithAudioCategory:(id)category
{
  categoryCopy = category;
  v11.receiver = self;
  v11.super_class = MPVolumeSettingsController;
  v6 = [(MPVolumeSettingsController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioCategory, category);
    _applicationKeyWindow = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
    objc_storeWeak(&v7->_previousWindow, _applicationKeyWindow);

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__keyWindowDidChange_ name:*MEMORY[0x1E69DE7B0] object:0];
  }

  return v7;
}

@end