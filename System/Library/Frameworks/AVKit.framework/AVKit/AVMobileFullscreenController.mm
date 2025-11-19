@interface AVMobileFullscreenController
- (AVMobileFullscreenController)initWithPlayerViewController:(id)a3;
- (AVMobileFullscreenControllerDelegate)delegate;
- (void)enterFullscreen:(id)a3;
- (void)exitFullscreen:(id)a3;
- (void)updatePresentationStateTo:(unint64_t)a3;
@end

@implementation AVMobileFullscreenController

- (AVMobileFullscreenControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updatePresentationStateTo:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_presentationState != a3)
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
      v15 = a3;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s current presentation state: %ld -> new presentation state: %ld", &v10, 0x20u);
    }

    self->_presentationState = a3;
    v7 = [(AVMobileFullscreenController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(AVMobileFullscreenController *)self delegate];
      [v9 fullscreenControllerDidChangePresentationState:self];
    }
  }
}

- (void)enterFullscreen:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);
  [WeakRetained enterFullScreen:v4];
}

- (void)exitFullscreen:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playerViewController);
  [WeakRetained exitFullscreen:v4];
}

- (AVMobileFullscreenController)initWithPlayerViewController:(id)a3
{
  if (self)
  {
    objc_storeWeak(&self->_playerViewController, a3);
  }

  return self;
}

@end