@interface PKImageGenerationController
- (BOOL)isGenerationModelAvailable;
- (BOOL)isGenerationToolEnabled;
- (BOOL)isImageGenerationAllowed;
- (BOOL)shouldShowImageGenerationUI;
- (PKImageGenerationController)init;
- (PKImageGenerationControllerDelegate)delegate;
- (void)_handleGenerationModelAvailabilityDidChangeNotification:(id)a3;
- (void)_handleManagedConfigurationEffectiveSettingsDidChangeNotification:(id)a3;
- (void)_notifyStateDidChangeIfNecessary;
@end

@implementation PKImageGenerationController

- (PKImageGenerationController)init
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKImageGenerationController;
  v2 = [(PKImageGenerationController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(PKImageGenerationController *)v2 isGenerationToolEnabled];
    v5 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v4;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "isGenerationToolEnabled: %{BOOL}d", buf, 8u);
    }

    if (v4)
    {
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      v7 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Observe generation model availability change notification", buf, 2u);
      }

      [v6 addObserver:v3 selector:sel__handleGenerationModelAvailabilityDidChangeNotification_ name:@"PKGenerationModelAvailabilityStatusDidChangeNotification" object:0];
      v8 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Observe managed configuration effective settings change notification", buf, 2u);
      }

      [v6 addObserver:v3 selector:sel__handleManagedConfigurationEffectiveSettingsDidChangeNotification_ name:*MEMORY[0x1E69ADD68] object:0];
    }

    v3->_cachedShouldShowImageGenerationUI = [(PKImageGenerationController *)v3 shouldShowImageGenerationUI];
  }

  return v3;
}

- (BOOL)isGenerationToolEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    if (PKIsDeviceLocked())
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      v3 = [MEMORY[0x1E696AAE8] mainBundle];
      v4 = [v3 bundleIdentifier];
      v5 = [v4 isEqualToString:@"com.apple.mobilenotes"];

      if (v5 && !PKIsQuickNoteOnPhone())
      {
        LOBYTE(v2) = 1;
      }

      else
      {

        LOBYTE(v2) = PKIsInternalTestApp();
      }
    }
  }

  return v2;
}

- (BOOL)shouldShowImageGenerationUI
{
  v3 = [(PKImageGenerationController *)self isGenerationToolEnabled];
  if (v3)
  {
    v3 = [(PKImageGenerationController *)self isImageGenerationAllowed];
    if (v3)
    {
      if ([(PKImageGenerationController *)self isGenerationModelAvailable])
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        v4 = +[PKGenerationModelAvailabilityController sharedInstance];
        v5 = [v4 shouldShowEnrollmentUI];

        LOBYTE(v3) = v5;
      }
    }
  }

  return v3;
}

- (BOOL)isImageGenerationAllowed
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isImageWandAllowed];

  return v3;
}

- (BOOL)isGenerationModelAvailable
{
  v2 = +[PKGenerationModelAvailabilityController sharedInstance];
  v3 = [v2 isGenerationModelAvailable];

  return v3;
}

- (void)_notifyStateDidChangeIfNecessary
{
  v3 = [(PKImageGenerationController *)self shouldShowImageGenerationUI];
  if (self->_cachedShouldShowImageGenerationUI != v3)
  {
    self->_cachedShouldShowImageGenerationUI = v3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = os_log_create("com.apple.pencilkit", "ToolPicker");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Notify generation tool controller's state did change", v8, 2u);
      }

      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 imageGenerationControllerShouldShowImageGenerationUIDidChange:self];
    }
  }
}

- (void)_handleGenerationModelAvailabilityDidChangeNotification:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(PKImageGenerationController *)self isGenerationModelAvailable];
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Handle model availability did change notification, isGenerationModelAvailable: %{BOOL}d", v5, 8u);
  }

  [(PKImageGenerationController *)self _notifyStateDidChangeIfNecessary];
}

- (void)_handleManagedConfigurationEffectiveSettingsDidChangeNotification:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.pencilkit", "ToolPicker");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(PKImageGenerationController *)self isImageGenerationAllowed];
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Handle managed configuration effective settings did change notification, isImageGenerationAllowed: %{BOOL}d", v5, 8u);
  }

  [(PKImageGenerationController *)self _notifyStateDidChangeIfNecessary];
}

- (PKImageGenerationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end