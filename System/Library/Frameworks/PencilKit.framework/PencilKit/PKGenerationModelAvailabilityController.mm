@interface PKGenerationModelAvailabilityController
+ (id)sharedInstance;
- (BOOL)isGenerationModelAvailable;
- (BOOL)presentEnrollmentScreenViewControllerIfNecessaryInWindow:(id)window;
- (BOOL)presentGreymatterAvailabilityAlertControllerInWindow:(id)window;
- (BOOL)shouldShowEnrollmentUI;
- (PKGenerationModelAvailabilityController)init;
- (id)nameAndAddressDescription;
- (id)stringRepresentationOfAvailabilityStatus:(int64_t)status;
- (void)_handleModelAvailabilityStatusDidChange:(int64_t)change completion:(id)completion;
- (void)queryGenerationModelAvailabilityStatus;
- (void)queryGenerationModelAvailabilityStatusWithCompletionHandler:(id)handler;
@end

@implementation PKGenerationModelAvailabilityController

+ (id)sharedInstance
{
  if (_MergedGlobals_122 != -1)
  {
    dispatch_once(&_MergedGlobals_122, &__block_literal_global_12);
  }

  v3 = qword_1ED6A4FD0;

  return v3;
}

void __57__PKGenerationModelAvailabilityController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKGenerationModelAvailabilityController);
  v1 = qword_1ED6A4FD0;
  qword_1ED6A4FD0 = v0;
}

- (PKGenerationModelAvailabilityController)init
{
  v5.receiver = self;
  v5.super_class = PKGenerationModelAvailabilityController;
  v2 = [(PKGenerationModelAvailabilityController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_generationModelAvailabilityStatus = 3;
    [(PKGenerationModelAvailabilityController *)v2 queryGenerationModelAvailabilityStatus];
  }

  return v3;
}

- (void)queryGenerationModelAvailabilityStatus
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __81__PKGenerationModelAvailabilityController_queryGenerationModelAvailabilityStatus__block_invoke;
  v2[3] = &unk_1E82D7738;
  v2[4] = self;
  [(PKGenerationModelAvailabilityController *)self queryGenerationModelAvailabilityStatusWithCompletionHandler:v2];
}

- (BOOL)isGenerationModelAvailable
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    if (PKIsDeviceLocked())
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v6 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

      if (v6 && !PKIsQuickNoteOnPhone() || (v3 = PKIsInternalTestApp()) != 0)
      {
        LOBYTE(v3) = (self->_generationModelAvailabilityStatus & 0xFFFFFFFFFFFFFFFDLL) == 0;
      }
    }
  }

  return v3;
}

- (BOOL)shouldShowEnrollmentUI
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return +[PKGenerationModelAvailabilityController shouldShowEnrollmentScreen];
}

- (id)nameAndAddressDescription
{
  selfCopy = self;
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@: %p>", v4, &selfCopy];

  return v5;
}

void __81__PKGenerationModelAvailabilityController_queryGenerationModelAvailabilityStatus__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.pencilkit", "ModelAvailability");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) nameAndAddressDescription];
    v6 = [*(a1 + 32) stringRepresentationOfAvailabilityStatus:a2];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "%@ New Status of Generation Model availability is: %@", &v7, 0x16u);
  }
}

- (void)queryGenerationModelAvailabilityStatusWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = os_log_create("com.apple.pencilkit", "ModelAvailability");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    nameAndAddressDescription = [(PKGenerationModelAvailabilityController *)self nameAndAddressDescription];
    v7 = [(PKGenerationModelAvailabilityController *)self stringRepresentationOfAvailabilityStatus:self->_generationModelAvailabilityStatus];
    *buf = 138412546;
    v17 = nameAndAddressDescription;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "%@ Current Generative Model availability status is %@", buf, 0x16u);
  }

  if (_os_feature_enabled_impl() && !PKIsDeviceLocked() && (([MEMORY[0x1E696AAE8] mainBundle], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "bundleIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"com.apple.mobilenotes"), v9, v8, v10) && !PKIsQuickNoteOnPhone() || PKIsInternalTestApp()) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = os_log_create("com.apple.pencilkit", "ModelAvailability");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      nameAndAddressDescription2 = [(PKGenerationModelAvailabilityController *)self nameAndAddressDescription];
      *buf = 138412290;
      v17 = nameAndAddressDescription2;
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "%@ Querying new Generative Model availability status", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __103__PKGenerationModelAvailabilityController_queryGenerationModelAvailabilityStatusWithCompletionHandler___block_invoke;
    v13[3] = &unk_1E82D7788;
    objc_copyWeak(&v15, buf);
    v14 = handlerCopy;
    [PKGenerationModelAvailabilityController generationModelAvailabilityForGenerationToolWithCompletionHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    self->_generationModelAvailabilityStatus = 1;
    (*(handlerCopy + 2))(handlerCopy, 1);
  }
}

void __103__PKGenerationModelAvailabilityController_queryGenerationModelAvailabilityStatusWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __103__PKGenerationModelAvailabilityController_queryGenerationModelAvailabilityStatusWithCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E82D7760;
  v6 = *(a1 + 32);
  v7 = a2;
  [WeakRetained _handleModelAvailabilityStatusDidChange:a2 completion:v5];
}

- (void)_handleModelAvailabilityStatusDidChange:(int64_t)change completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = os_log_create("com.apple.pencilkit", "ModelAvailability");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    nameAndAddressDescription = [(PKGenerationModelAvailabilityController *)self nameAndAddressDescription];
    v9 = [(PKGenerationModelAvailabilityController *)self stringRepresentationOfAvailabilityStatus:change];
    *buf = 138412546;
    v15 = nameAndAddressDescription;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "%@ Handling Model Availability status change to %@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__PKGenerationModelAvailabilityController__handleModelAvailabilityStatusDidChange_completion___block_invoke;
  v11[3] = &unk_1E82D77B0;
  v12 = completionCopy;
  changeCopy = change;
  v11[4] = self;
  v10 = completionCopy;
  PKPerformOnMainThread(v11);
}

void __94__PKGenerationModelAvailabilityController__handleModelAvailabilityStatusDidChange_completion___block_invoke(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  *(a1[4] + 8) = a1[6];
  v6 = @"PKGenerationModelAvailabilityStatusKey";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"PKGenerationModelAvailabilityStatusDidChangeNotification" object:a1[4] userInfo:v3];

  v5 = a1[5];
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (id)stringRepresentationOfAvailabilityStatus:(int64_t)status
{
  if (status > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E82D77D0[status];
  }
}

- (BOOL)presentGreymatterAvailabilityAlertControllerInWindow:(id)window
{
  windowCopy = window;
  if ([(PKGenerationModelAvailabilityController *)self presentEnrollmentScreenViewControllerIfNecessaryInWindow:windowCopy])
  {
    v5 = 1;
  }

  else if ([(PKGenerationModelAvailabilityController *)self isGenerationModelDisabled])
  {
    v6 = MEMORY[0x1E69DC650];
    v7 = _PencilKitBundle();
    v8 = [v7 localizedStringForKey:@"Image Wand Unavailable" value:@"Image Wand Unavailable" table:@"Localizable"];
    v9 = _PencilKitBundle();
    v10 = [v9 localizedStringForKey:@"Image Wand is unavailable at this time." value:@"Image Wand is unavailable at this time." table:@"Localizable"];
    v5 = 1;
    v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v12 = MEMORY[0x1E69DC648];
    v13 = _PencilKitBundle();
    v14 = [v13 localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
    v15 = [v12 actionWithTitle:v14 style:1 handler:0];
    [v11 addAction:v15];

    rootViewController = [windowCopy rootViewController];
    [rootViewController presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)presentEnrollmentScreenViewControllerIfNecessaryInWindow:(id)window
{
  windowCopy = window;
  if ([(PKGenerationModelAvailabilityController *)self shouldShowEnrollmentUI])
  {
    v5 = [PKToolPicker activeToolPickerForWindow:windowCopy];
    [v5 setKeyboardSceneDelegateVisibilityObserver:self];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (+[PKGenerationModelAvailabilityController enrollmentScreenViewController], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      rootViewController = [windowCopy rootViewController];
      v9 = 1;
      [rootViewController presentViewController:v7 animated:1 completion:0];
    }

    else
    {
      v7 = os_log_create("com.apple.pencilkit", "ModelAvailability");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_ERROR, "Unable to present Enrollment UI", v11, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end