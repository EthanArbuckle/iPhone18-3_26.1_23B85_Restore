@interface MPMediaControlsStatusBarStyleOverridesCoordinator
- (MPMediaControlsStatusBarStyleOverridesCoordinator)init;
- (void)presentMediaControlsWithCompletion:(id)a3;
@end

@implementation MPMediaControlsStatusBarStyleOverridesCoordinator

- (void)presentMediaControlsWithCompletion:(id)a3
{
  v4 = a3;
  if (MRAVOutputContextGetSharedAudioPresentationContext())
  {
    v5 = MRAVOutputContextCopyUniqueIdentifier();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(MPMediaControlsConfiguration);
  [(MPMediaControlsConfiguration *)v6 setRoutingContextUID:v5];
  [(MPMediaControlsConfiguration *)v6 setStyle:6];
  [(MPMediaControlsConfiguration *)v6 setSurface:9];
  [(MPMediaControlsConfiguration *)v6 setAllowsNowPlayingApplicationLaunch:1];
  v7 = [[MPMediaControls alloc] initWithConfiguration:v6];
  mediaControls = self->_mediaControls;
  self->_mediaControls = v7;

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __88__MPMediaControlsStatusBarStyleOverridesCoordinator_presentMediaControlsWithCompletion___block_invoke;
  v14 = &unk_1E76824C8;
  v15 = self;
  v16 = v4;
  v9 = self->_mediaControls;
  v10 = v4;
  [(MPMediaControls *)v9 setDismissHandler:&v11];
  [(MPMediaControls *)self->_mediaControls present:v11];
}

uint64_t __88__MPMediaControlsStatusBarStyleOverridesCoordinator_presentMediaControlsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (MPMediaControlsStatusBarStyleOverridesCoordinator)init
{
  v6.receiver = self;
  v6.super_class = MPMediaControlsStatusBarStyleOverridesCoordinator;
  v2 = [(MPMediaControlsStatusBarStyleOverridesCoordinator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D42E8]);
    coordinator = v2->_coordinator;
    v2->_coordinator = v3;

    [(SBSStatusBarStyleOverridesCoordinator *)v2->_coordinator setDelegate:v2];
    [(SBSStatusBarStyleOverridesCoordinator *)v2->_coordinator setRegisteredStyleOverrides:12582912 reply:&__block_literal_global_58831];
  }

  return v2;
}

void __57__MPMediaControlsStatusBarStyleOverridesCoordinator_init__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "Could not register tap handler for status bar override", v3, 2u);
    }
  }
}

@end