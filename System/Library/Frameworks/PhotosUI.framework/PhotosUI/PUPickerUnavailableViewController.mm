@interface PUPickerUnavailableViewController
+ (id)unavailableViewController:(unint64_t)a3 configuration:(id)a4 error:(id)a5 delegate:(id)a6;
- (PUPickerUnavailableViewController)initWithCoder:(id)a3;
- (PUPickerUnavailableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PUPickerUnavailableViewController)initWithReason:(unint64_t)a3 configuration:(id)a4 error:(id)a5;
- (_PUPickerUnavailableViewControllerDelegate)delegate;
- (id)reasonDebugDescription;
- (id)unavailableButtonTitle;
- (id)unavailableKey;
- (id)unavailableMessage;
- (id)unavailableTitle;
- (void)askDelegateToCancel;
- (void)askDelegateToRetry;
- (void)setDelegate:(id)a3;
- (void)updateReason:(unint64_t)a3 error:(id)a4;
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
  v3 = [(PUPickerUnavailableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 _pickerUnavailableViewControllerRetryButtonTapped:self];
  }
}

- (void)askDelegateToCancel
{
  v3 = [(PUPickerUnavailableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 _pickerUnavailableViewControllerCancelButtonTapped:self];
  }
}

- (id)unavailableKey
{
  v2 = [(PUPickerUnavailableViewController *)self configuration];
  v3 = [v2 filter];
  v4 = [v3 _puPickerFilter];
  v5 = [v4 generatedPossibleAssetTypes];

  v6 = @"VIDEOS";
  if ((v5 & 0x3FE) != 0)
  {
    v6 = @"ITEMS";
  }

  if ((v5 & 0x1FC00) == 0)
  {
    v6 = @"PHOTOS";
  }

  if (v5)
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
  v2 = [(PUPickerUnavailableViewController *)self reason];
  if (v2 - 1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E83F75A8[v2 - 1];
  }
}

- (id)unavailableButtonTitle
{
  v2 = [(PUPickerUnavailableViewController *)self reason];
  if (v2 - 3 < 2 || v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    if (v2 != 2)
    {
      MEMORY[0x1D3897370]();
    }

    v4 = PLServicesLocalizedFrameworkString();
  }

  return v4;
}

- (id)unavailableMessage
{
  v3 = [(PUPickerUnavailableViewController *)self unavailableKey];
  v4 = [(PUPickerUnavailableViewController *)self reason];
  if (v4 != 1)
  {
    if (v4 == 4)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PHOTO_PICKER_CONTENT_UNAVAILABLE_MESSAGE_REASON_CANNOT_OPEN_PHOTO_LIBRARY_%@", v3];
      v5 = PLServicesLocalizedFrameworkString();
LABEL_8:

      goto LABEL_10;
    }

    if (v4 == 3)
    {
      v5 = PLServicesLocalizedFrameworkString();
      goto LABEL_10;
    }

    if (MEMORY[0x1D3897370]())
    {
      v6 = [(PUPickerUnavailableViewController *)self error];
      v8 = [(PUPickerUnavailableViewController *)self reasonDebugDescription];
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
  v3 = [(PUPickerUnavailableViewController *)self unavailableKey];
  v4 = [(PUPickerUnavailableViewController *)self reason];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PHOTO_PICKER_CONTENT_UNAVAILABLE_TITLE_REASON_LOADING_%@", v3];
      goto LABEL_10;
    }

    if (v4 == 2)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PHOTO_PICKER_CONTENT_UNAVAILABLE_TITLE_REASON_CRASHED_%@", v3];
      v5 = LABEL_10:;
      v6 = PLServicesLocalizedFrameworkString();

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"PHOTO_PICKER_CONTENT_UNAVAILABLE_TITLE_REASON_CANNOT_OPEN_PHOTO_LIBRARY_%@", v3];
      goto LABEL_10;
    }

LABEL_8:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"PHOTO_PICKER_CONTENT_UNAVAILABLE_TITLE_REASON_UNKNOWN_%@", v3];
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
    v3 = [MEMORY[0x1E69DC8C8] loadingConfiguration];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
    v4 = [(PUPickerUnavailableViewController *)self unavailableTitle];
    [v3 setText:v4];

    v5 = [(PUPickerUnavailableViewController *)self unavailableMessage];
    [v3 setSecondaryText:v5];

    v6 = [(PUPickerUnavailableViewController *)self unavailableButtonTitle];
    if (v6 && (v7 = v6, [(PUPickerUnavailableViewController *)self delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
    {
      objc_initWeak(&location, self);
      v10 = [(PUPickerUnavailableViewController *)self unavailableButtonTitle];
      v11 = [v3 buttonProperties];
      v12 = [v11 configuration];
      [v12 setTitle:v10];

      v13 = MEMORY[0x1E69DC628];
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __58__PUPickerUnavailableViewController_updateUnavailableView__block_invoke;
      v22 = &unk_1E83F7588;
      objc_copyWeak(&v23, &location);
      v14 = [v13 actionWithHandler:&v19];
      v15 = [v3 buttonProperties];
      [v15 setPrimaryAction:v14];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    else
    {
      v16 = [v3 buttonProperties];
      v17 = [v16 configuration];
      [v17 setTitle:0];

      v18 = [v3 buttonProperties];
      [v18 setPrimaryAction:0];
    }
  }

  [(PUPickerUnavailableViewController *)self _setContentUnavailableConfiguration:v3];
}

void __58__PUPickerUnavailableViewController_updateUnavailableView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained askDelegateToRetry];
}

- (void)updateReason:(unint64_t)a3 error:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  self->_reason = a3;
  objc_storeStrong(&self->_error, a4);
  [(PUPickerUnavailableViewController *)self updateUnavailableView];
  v5 = [(PUPickerUnavailableViewController *)self reason];
  v6 = PLPickerGetLog();
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1D2128000, v7, OS_LOG_TYPE_DEBUG, "Showing picker loading UI (updated).", &v11, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [(PUPickerUnavailableViewController *)self reasonDebugDescription];
    v9 = [(PUPickerUnavailableViewController *)self error];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_1D2128000, v7, OS_LOG_TYPE_ERROR, "Showing picker unavailable UI (updated) (reason: %@) with error: %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(PUPickerUnavailableViewController *)self updateUnavailableView];
}

- (void)viewDidLoad
{
  v18 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PUPickerUnavailableViewController;
  [(PUPickerUnavailableViewController *)&v13 viewDidLoad];
  [(PUPickerUnavailableViewController *)self updateUnavailableView];
  v3 = [(PUPickerUnavailableViewController *)self view];
  v4 = [(PUPickerUnavailableViewController *)self configuration];
  v5 = [v4 _disabledPrivateCapabilities];

  if ((v5 & 0x10) != 0)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v6 = ;
  [v3 setBackgroundColor:v6];

  v7 = [(PUPickerUnavailableViewController *)self reason];
  v8 = PLPickerGetLog();
  v9 = v8;
  if (v7 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2128000, v9, OS_LOG_TYPE_DEBUG, "Showing picker loading UI.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = [(PUPickerUnavailableViewController *)self reasonDebugDescription];
    v11 = [(PUPickerUnavailableViewController *)self error];
    *buf = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_1D2128000, v9, OS_LOG_TYPE_ERROR, "Showing picker unavailable UI (reason: %@) with error: %@", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (PUPickerUnavailableViewController)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = _PFAssertFailHandler();
  return [(PUPickerUnavailableViewController *)v4 initWithNibName:v5 bundle:v6, v7];
}

- (PUPickerUnavailableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _PFAssertFailHandler();
  return [(PUPickerUnavailableViewController *)v7 init];
}

- (PUPickerUnavailableViewController)initWithReason:(unint64_t)a3 configuration:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = PUPickerUnavailableViewController;
  v10 = [(PUPickerUnavailableViewController *)&v14 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    v10->_reason = a3;
    objc_storeStrong(&v10->_error, a5);
    v12 = v8;
    if (!v8)
    {
      v12 = objc_alloc_init(PHPickerConfiguration);
    }

    objc_storeStrong(&v11->_configuration, v12);
    if (!v8)
    {
    }
  }

  return v11;
}

+ (id)unavailableViewController:(unint64_t)a3 configuration:(id)a4 error:(id)a5 delegate:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a5;
  v12 = [[PUPickerUnavailableViewController alloc] initWithReason:a3 configuration:v9 error:v11];

  [(PUPickerUnavailableViewController *)v12 setDelegate:v10];
  LOBYTE(v11) = objc_opt_respondsToSelector();

  if (v11 & 1) == 0 || ([v9 disabledCapabilities] & 8) != 0 || (objc_msgSend(v9, "edgesWithoutContentMargins"))
  {
    v19 = v12;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v12 action:sel_cancelButtonTapped_];
    v14 = [(PUPickerUnavailableViewController *)v12 navigationItem];
    [v14 setLeftBarButtonItem:v13];

    v15 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v12];
    v16 = [MEMORY[0x1E696AAE8] mainBundle];
    v17 = [v16 bundleIdentifier];
    v18 = [v17 isEqualToString:@"com.apple.Preferences"];

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