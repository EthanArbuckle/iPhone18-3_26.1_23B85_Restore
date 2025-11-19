@interface MPMediaPickerController_Appex
- (MPMediaPickerController)mediaPickerController;
- (void)dealloc;
- (void)requestRemoteViewController;
- (void)synchronizeSettings;
@end

@implementation MPMediaPickerController_Appex

- (MPMediaPickerController)mediaPickerController
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaPickerController);

  return WeakRetained;
}

- (void)dealloc
{
  remoteViewContainerViewController = self->_remoteViewContainerViewController;
  if (remoteViewContainerViewController)
  {
    v4 = [(_UIResilientRemoteViewContainerViewController *)remoteViewContainerViewController remoteViewController];
    [v4 setMediaPickerController:0];

    [(_UIResilientRemoteViewContainerViewController *)self->_remoteViewContainerViewController willMoveToParentViewController:0];
    if ([(_UIResilientRemoteViewContainerViewController *)self->_remoteViewContainerViewController isViewLoaded])
    {
      v5 = [(_UIResilientRemoteViewContainerViewController *)self->_remoteViewContainerViewController view];
      [v5 removeFromSuperview];
    }

    [(_UIResilientRemoteViewContainerViewController *)self->_remoteViewContainerViewController removeFromParentViewController];
  }

  v6.receiver = self;
  v6.super_class = MPMediaPickerController_Appex;
  [(MPMediaPickerController_Appex *)&v6 dealloc];
}

- (void)synchronizeSettings
{
  v5 = [(MPMediaPickerController_Appex *)self serviceController];
  WeakRetained = objc_loadWeakRetained(&self->_mediaPickerController);
  v4 = [WeakRetained configuration];
  [v5 updateWithConfiguration:v4];
}

- (void)requestRemoteViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaPickerController);
  [WeakRetained _beginDelayingPresentation:&__block_literal_global_49925 cancellationHandler:3.0];
  v5 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:@"com.apple.Music.MediaPicker" error:0];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__49928;
  v22 = __Block_byref_object_dispose__49929;
  v23 = 0;
  v6 = MEMORY[0x1E69DD678];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __60__MPMediaPickerController_Appex_requestRemoteViewController__block_invoke_191;
  v13 = &unk_1E7680280;
  v17 = a2;
  v14 = self;
  v7 = WeakRetained;
  v15 = v7;
  v16 = &v18;
  v8 = [v6 instantiateWithExtension:v5 completion:&v10];
  v9 = v19[5];
  v19[5] = v8;

  [v19[5] delayDisplayOfRemoteController];
  objc_storeStrong(&self->_remoteViewContainerViewController, v19[5]);
  _Block_object_dispose(&v18, 8);
}

@end