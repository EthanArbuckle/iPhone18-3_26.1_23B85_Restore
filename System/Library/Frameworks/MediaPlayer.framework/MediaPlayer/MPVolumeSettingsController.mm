@interface MPVolumeSettingsController
- (MPVolumeSettingsController)initWithAudioCategory:(id)a3;
- (UIWindow)hostingWindow;
- (UIWindow)previousWindow;
- (void)_flip;
- (void)_keyWindowDidChange:(id)a3;
- (void)dealloc;
- (void)dismissAlertController;
- (void)presentAlertControllerInWindow:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
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
  v3 = [(MPAVRoutingViewController *)v7 view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [(MPAVRoutingViewController *)v7 _tableView];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v6];

  [(UIAlertController *)self->_alertController setContentViewController:v7];
}

- (void)_keyWindowDidChange:(id)a3
{
  obj = [a3 object];
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

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = MPVolumeSettingsController;
  [(MPVolumeSettingsController *)&v16 viewDidAppear:?];
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:1];
  alertController = self->_alertController;
  self->_alertController = v5;

  v7 = objc_alloc_init(MPVolumeViewController);
  v8 = [(MPVolumeViewController *)v7 volumeView];
  v9 = [v8 _routeButton];
  [v9 removeTarget:v8 action:0 forControlEvents:64];

  v10 = [v8 _routeButton];
  [v10 addTarget:self action:sel__flip forControlEvents:64];

  [(UIAlertController *)self->_alertController setContentViewController:v7];
  v11 = self->_alertController;
  v12 = MEMORY[0x1E69DC648];
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v14 = [v13 localizedStringForKey:@"DONE" value:&stru_1F149ECA8 table:@"MediaPlayer"];
  v15 = [v12 actionWithTitle:v14 style:0 handler:&__block_literal_global_57545];
  [(UIAlertController *)v11 addAction:v15];

  [(MPVolumeSettingsController *)self presentViewController:self->_alertController animated:v3 completion:0];
}

- (void)presentAlertControllerInWindow:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_hostingWindow, v4);
  [v4 setRootViewController:self];
  [v4 makeKeyAndVisible];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MPVolumeSettingsController;
  [(MPVolumeSettingsController *)&v4 dealloc];
}

- (MPVolumeSettingsController)initWithAudioCategory:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MPVolumeSettingsController;
  v6 = [(MPVolumeSettingsController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioCategory, a3);
    v8 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
    objc_storeWeak(&v7->_previousWindow, v8);

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v7 selector:sel__keyWindowDidChange_ name:*MEMORY[0x1E69DE7B0] object:0];
  }

  return v7;
}

@end