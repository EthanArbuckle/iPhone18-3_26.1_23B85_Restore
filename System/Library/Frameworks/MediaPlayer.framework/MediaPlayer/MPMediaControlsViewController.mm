@interface MPMediaControlsViewController
- (MPMediaControlsConfiguration)configuration;
- (MPMediaControlsViewController)initWithConfiguration:(id)a3;
- (MPMediaControlsViewControllerDelegate)delegate;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_createMediaControlsIfNeeded;
- (void)_present;
- (void)setMediaControls:(id)a3;
- (void)setOverrideRouteSharingPolicy:(unint64_t)a3 routingContextUID:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MPMediaControlsViewController

- (MPMediaControlsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[_MPMediaControlsPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v6];

  return v8;
}

- (void)setOverrideRouteSharingPolicy:(unint64_t)a3 routingContextUID:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134349314;
    v10 = a3;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Creating override MediaControls configuration with routeSharingPolicy=%{public}lu routingContextUID=%{public}@", &v9, 0x16u);
  }

  v8 = [[MPMediaControls alloc] initWithRouteSharingPolicy:a3 routingContextUID:v6];
  [(MPMediaControlsViewController *)self setMediaControls:v8];
}

- (void)_present
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_INFO, "Attempting to present media controls using a deprecated class: %@", &v6, 0xCu);
  }

  v5 = [(MPMediaControlsViewController *)self mediaControls];
  [v5 present];
}

- (void)_createMediaControlsIfNeeded
{
  if (!self->_mediaControls)
  {
    if (self->_configuration)
    {
      v4 = [MPMediaControls alloc];
      v6 = [(MPMediaControlsViewController *)self configuration];
      v5 = [(MPMediaControls *)v4 initWithConfiguration:?];
      [(MPMediaControlsViewController *)self setMediaControls:v5];
    }

    else
    {
      v6 = objc_alloc_init(MPMediaControls);
      [(MPMediaControlsViewController *)self setMediaControls:?];
    }
  }
}

- (void)setMediaControls:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_mediaControls, a3);
  configuration = self->_configuration;
  if (configuration)
  {
    v7 = [(MPMediaControlsConfiguration *)configuration sortByIsVideoRoute];
    v8 = [v5 configuration];
    [v8 setSortByIsVideoRoute:v7];
  }

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__MPMediaControlsViewController_setMediaControls___block_invoke;
  v9[3] = &unk_1E76825E8;
  objc_copyWeak(&v10, &location);
  [(MPMediaControls *)self->_mediaControls setDismissHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __50__MPMediaControlsViewController_setMediaControls___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:0 completion:0];
  v1 = [WeakRetained didDismissHandler];

  if (v1)
  {
    v2 = [WeakRetained didDismissHandler];
    v2[2]();
  }
}

- (MPMediaControlsConfiguration)configuration
{
  [(MPMediaControlsViewController *)self _createMediaControlsIfNeeded];
  mediaControls = self->_mediaControls;

  return [(MPMediaControls *)mediaControls configuration];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MPMediaControlsViewController;
  [(MPMediaControlsViewController *)&v4 viewWillAppear:a3];
  [(MPMediaControlsViewController *)self _present];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MPMediaControlsViewController;
  [(MPMediaControlsViewController *)&v3 viewDidLoad];
  [(MPMediaControlsViewController *)self _createMediaControlsIfNeeded];
}

- (MPMediaControlsViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPMediaControlsViewController;
  v6 = [(MPMediaControlsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    [(MPMediaControlsViewController *)v7 setTransitioningDelegate:v7];
    [(MPMediaControlsViewController *)v7 setModalPresentationStyle:4];
  }

  return v7;
}

@end