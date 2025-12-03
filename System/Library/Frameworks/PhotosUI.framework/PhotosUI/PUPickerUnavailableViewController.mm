@interface PUPickerUnavailableViewController
+ (id)unavailableViewController:(unint64_t)controller configuration:(id)configuration error:(id)error delegate:(id)delegate;
- (PUPickerUnavailableViewController)initWithCoder:(id)coder;
- (PUPickerUnavailableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PUPickerUnavailableViewController)initWithReason:(unint64_t)reason configuration:(id)configuration error:(id)error;
- (_PUPickerUnavailableViewControllerDelegate)delegate;
- (id)reasonDebugDescription;
- (id)unavailableButtonTitle;
- (id)unavailableKey;
- (id)unavailableMessage;
- (id)unavailableTitle;
- (void)askDelegateToCancel;
- (void)askDelegateToRetry;
- (void)setDelegate:(id)delegate;
- (void)updateReason:(unint64_t)reason error:(id)error;
- (void)updateUnavailableView;
- (void)viewDidLoad;
@end

@implementation PUPickerUnavailableViewController

- (_PUPickerUnavailableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)askDelegateToRetry
{
  delegate = [(PUPickerUnavailableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _pickerUnavailableViewControllerRetryButtonTapped:self];
  }
}

- (void)askDelegateToCancel
{
  delegate = [(PUPickerUnavailableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _pickerUnavailableViewControllerCancelButtonTapped:self];
  }
}

- (id)unavailableKey
{
  configuration = [(PUPickerUnavailableViewController *)self configuration];
  filter = [configuration filter];
  _puPickerFilter = [filter _puPickerFilter];
  generatedPossibleAssetTypes = [_puPickerFilter generatedPossibleAssetTypes];

  v6 = @"VIDEOS";
  if ((generatedPossibleAssetTypes & 0x3FE) != 0)
  {
    v6 = @"ITEMS";
  }

  if ((generatedPossibleAssetTypes & 0x1FC00) == 0)
  {
    v6 = @"PHOTOS";
  }

  if (generatedPossibleAssetTypes)
  {
    return v6;
  }

  else
  {
    return @"ITEMS";
  }
}

- (id)reasonDebugDescription
{
  reason = [(PUPickerUnavailableViewController *)self reason];
  if (reason - 1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E83F75A8[reason - 1];
  }
}

- (id)unavailableButtonTitle
{
  reason = [(PUPickerUnavailableViewController *)self reason];
  if (reason - 3 < 2 || reason == 1)
  {
    v4 = 0;
  }

  else
  {
    if (reason != 2)
    {
      MEMORY[0x1D3897370]();
    }

    v4 = PLServicesLocalizedFrameworkString();
  }

  return v4;
}

- (id)unavailableMessage
{
  unavailableKey = [(PUPickerUnavailableViewController *)self unavailableKey];
  reason = [(PUPickerUnavailableViewController *)self reason];
  if (reason != 1)
  {
    if (reason == 4)
    {
      error = [MEMORY[0x1E696AEC0] stringWithFormat:@"PHOTO_PICKER_CONTENT_UNAVAILABLE_MESSAGE_REASON_CANNOT_OPEN_PHOTO_LIBRARY_%@", unavailableKey];
      v5 = PLServicesLocalizedFrameworkString();
LABEL_8:

      goto LABEL_10;
    }

    if (reason == 3)
    {
      v5 = PLServicesLocalizedFrameworkString();
      goto LABEL_10;
    }

    if (MEMORY[0x1D3897370]())
    {
      error = [(PUPickerUnavailableViewController *)self error];
      reasonDebugDescription = [(PUPickerUnavailableViewController *)self reasonDebugDescription];
      v5 = PFStringWithValidatedFormat();

      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)unavailableTitle
{
  unavailableKey = [(PUPickerUnavailableViewController *)self unavailableKey];
  reason = [(PUPickerUnavailableViewController *)self reason];
  if (reason <= 2)
  {
    if (reason == 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PHOTO_PICKER_CONTENT_UNAVAILABLE_TITLE_REASON_LOADING_%@", unavailableKey];
      goto LABEL_10;
    }

    if (reason == 2)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PHOTO_PICKER_CONTENT_UNAVAILABLE_TITLE_REASON_CRASHED_%@", unavailableKey];
      v5 = LABEL_10:;
      v6 = PLServicesLocalizedFrameworkString();

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (reason != 3)
  {
    if (reason == 4)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PHOTO_PICKER_CONTENT_UNAVAILABLE_TITLE_REASON_CANNOT_OPEN_PHOTO_LIBRARY_%@", unavailableKey];
      goto LABEL_10;
    }

LABEL_8:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"PHOTO_PICKER_CONTENT_UNAVAILABLE_TITLE_REASON_UNKNOWN_%@", unavailableKey];
    goto LABEL_10;
  }

  v6 = PLServicesLocalizedFrameworkString();
LABEL_11:

  return v6;
}

- (void)updateUnavailableView
{
  if ([(PUPickerUnavailableViewController *)self reason]== 1)
  {
    loadingConfiguration = [MEMORY[0x1E69DC8C8] loadingConfiguration];
  }

  else
  {
    loadingConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
    unavailableTitle = [(PUPickerUnavailableViewController *)self unavailableTitle];
    [loadingConfiguration setText:unavailableTitle];

    unavailableMessage = [(PUPickerUnavailableViewController *)self unavailableMessage];
    [loadingConfiguration setSecondaryText:unavailableMessage];

    unavailableButtonTitle = [(PUPickerUnavailableViewController *)self unavailableButtonTitle];
    if (unavailableButtonTitle && (v7 = unavailableButtonTitle, [(PUPickerUnavailableViewController *)self delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
    {
      objc_initWeak(&location, self);
      unavailableButtonTitle2 = [(PUPickerUnavailableViewController *)self unavailableButtonTitle];
      buttonProperties = [loadingConfiguration buttonProperties];
      configuration = [buttonProperties configuration];
      [configuration setTitle:unavailableButtonTitle2];

      v13 = MEMORY[0x1E69DC628];
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __58__PUPickerUnavailableViewController_updateUnavailableView__block_invoke;
      v22 = &unk_1E83F7588;
      objc_copyWeak(&v23, &location);
      v14 = [v13 actionWithHandler:&v19];
      buttonProperties2 = [loadingConfiguration buttonProperties];
      [buttonProperties2 setPrimaryAction:v14];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    else
    {
      buttonProperties3 = [loadingConfiguration buttonProperties];
      configuration2 = [buttonProperties3 configuration];
      [configuration2 setTitle:0];

      buttonProperties4 = [loadingConfiguration buttonProperties];
      [buttonProperties4 setPrimaryAction:0];
    }
  }

  [(PUPickerUnavailableViewController *)self _setContentUnavailableConfiguration:loadingConfiguration];
}

void __58__PUPickerUnavailableViewController_updateUnavailableView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained askDelegateToRetry];
}

- (void)updateReason:(unint64_t)reason error:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  self->_reason = reason;
  objc_storeStrong(&self->_error, error);
  [(PUPickerUnavailableViewController *)self updateUnavailableView];
  reason = [(PUPickerUnavailableViewController *)self reason];
  v6 = PLPickerGetLog();
  v7 = v6;
  if (reason == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1D2128000, v7, OS_LOG_TYPE_DEBUG, "Showing picker loading UI (updated).", &v11, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    reasonDebugDescription = [(PUPickerUnavailableViewController *)self reasonDebugDescription];
    error = [(PUPickerUnavailableViewController *)self error];
    v11 = 138412546;
    v12 = reasonDebugDescription;
    v13 = 2112;
    v14 = error;
    _os_log_impl(&dword_1D2128000, v7, OS_LOG_TYPE_ERROR, "Showing picker unavailable UI (updated) (reason: %@) with error: %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(PUPickerUnavailableViewController *)self updateUnavailableView];
}

- (void)viewDidLoad
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PUPickerUnavailableViewController;
  [(PUPickerUnavailableViewController *)&v13 viewDidLoad];
  [(PUPickerUnavailableViewController *)self updateUnavailableView];
  view = [(PUPickerUnavailableViewController *)self view];
  configuration = [(PUPickerUnavailableViewController *)self configuration];
  _disabledPrivateCapabilities = [configuration _disabledPrivateCapabilities];

  if ((_disabledPrivateCapabilities & 0x10) != 0)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v6 = ;
  [view setBackgroundColor:v6];

  reason = [(PUPickerUnavailableViewController *)self reason];
  v8 = PLPickerGetLog();
  v9 = v8;
  if (reason == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2128000, v9, OS_LOG_TYPE_DEBUG, "Showing picker loading UI.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    reasonDebugDescription = [(PUPickerUnavailableViewController *)self reasonDebugDescription];
    error = [(PUPickerUnavailableViewController *)self error];
    *buf = 138412546;
    v15 = reasonDebugDescription;
    v16 = 2112;
    v17 = error;
    _os_log_impl(&dword_1D2128000, v9, OS_LOG_TYPE_ERROR, "Showing picker unavailable UI (reason: %@) with error: %@", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (PUPickerUnavailableViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = _PFAssertFailHandler();
  return [(PUPickerUnavailableViewController *)v4 initWithNibName:v5 bundle:v6, v7];
}

- (PUPickerUnavailableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v7 = _PFAssertFailHandler();
  return [(PUPickerUnavailableViewController *)v7 init];
}

- (PUPickerUnavailableViewController)initWithReason:(unint64_t)reason configuration:(id)configuration error:(id)error
{
  configurationCopy = configuration;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = PUPickerUnavailableViewController;
  v10 = [(PUPickerUnavailableViewController *)&v14 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    v10->_reason = reason;
    objc_storeStrong(&v10->_error, error);
    v12 = configurationCopy;
    if (!configurationCopy)
    {
      v12 = objc_alloc_init(PHPickerConfiguration);
    }

    objc_storeStrong(&v11->_configuration, v12);
    if (!configurationCopy)
    {
    }
  }

  return v11;
}

+ (id)unavailableViewController:(unint64_t)controller configuration:(id)configuration error:(id)error delegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  errorCopy = error;
  v12 = [[PUPickerUnavailableViewController alloc] initWithReason:controller configuration:configurationCopy error:errorCopy];

  [(PUPickerUnavailableViewController *)v12 setDelegate:delegateCopy];
  LOBYTE(errorCopy) = objc_opt_respondsToSelector();

  if (errorCopy & 1) == 0 || ([configurationCopy disabledCapabilities] & 8) != 0 || (objc_msgSend(configurationCopy, "edgesWithoutContentMargins"))
  {
    v19 = v12;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v12 action:sel_cancelButtonTapped_];
    navigationItem = [(PUPickerUnavailableViewController *)v12 navigationItem];
    [navigationItem setLeftBarButtonItem:v13];

    v15 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v12];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v18 = [bundleIdentifier isEqualToString:@"com.apple.Preferences"];

    if (v18)
    {
      v19 = v15;
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x1E69DD258]);
      v19 = [objc_alloc(MEMORY[0x1E69DCF78]) initWithStyle:1];
      [(PUPickerUnavailableViewController *)v19 setViewController:v21 forColumn:0];
      [(PUPickerUnavailableViewController *)v19 setViewController:v15 forColumn:2];
      [(PUPickerUnavailableViewController *)v19 setViewController:v15 forColumn:3];
      [(PUPickerUnavailableViewController *)v19 setPrimaryBackgroundStyle:1];
      [(PUPickerUnavailableViewController *)v19 setPreferredSplitBehavior:1];
      [(PUPickerUnavailableViewController *)v19 setPresentsWithGesture:0];
      [(PUPickerUnavailableViewController *)v19 setPreferredDisplayMode:1];
    }
  }

  return v19;
}

@end