@interface AVMobileFullscreenController
- (AVMobileFullscreenController)initWithPlayerViewController:(id)controller;
- (AVMobileFullscreenControllerDelegate)delegate;
- (void)enterFullscreen:(id)fullscreen;
- (void)exitFullscreen:(id)fullscreen;
- (void)updatePresentationStateTo:(unint64_t)to;
@end

@implementation AVMobileFullscreenController

- (AVMobileFullscreenControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updatePresentationStateTo:(unint64_t)to
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_presentationState != to)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      presentationState = self->_presentationState;
      v10 = 136315650;
      v11 = "[AVMobileFullscreenController updatePresentationStateTo:]";
      v12 = 2048;
      v13 = presentationState;
      v14 = 2048;
      toCopy = to;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s current presentation state: %ld -> new presentation state: %ld", &v10, 0x20u);
    }

    self->_presentationState = to;
    delegate = [(AVMobileFullscreenController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(AVMobileFullscreenController *)self delegate];
      [delegate2 fullscreenControllerDidChangePresentationState:self];
    }
  }
}

- (void)enterFullscreen:(id)fullscreen
{
  fullscreenCopy = fullscreen;
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);
  [WeakRetained enterFullScreen:fullscreenCopy];
}

- (void)exitFullscreen:(id)fullscreen
{
  fullscreenCopy = fullscreen;
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);
  [WeakRetained exitFullscreen:fullscreenCopy];
}

- (AVMobileFullscreenController)initWithPlayerViewController:(id)controller
{
  if (self)
  {
    objc_storeWeak(&self->_playerViewController, controller);
  }

  return self;
}

@end