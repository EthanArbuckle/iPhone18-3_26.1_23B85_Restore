@interface PHPickerViewController
- (BOOL)_popViewController;
- (PHPickerViewController)init;
- (PHPickerViewController)initWithCoder:(NSCoder *)coder;
- (PHPickerViewController)initWithConfiguration:(PHPickerConfiguration *)configuration;
- (PHPickerViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (_UIRemoteViewController)_containedRemoteViewController;
- (id)childViewControllerForStatusBarHidden;
- (id)delegate;
- (void)_addOrReplaceChildUnavailableViewController:(unint64_t)a3 error:(id)a4;
- (void)_addOrReplaceChildViewController:(id)a3;
- (void)_cancelExistingExtensionRequestIfPossible;
- (void)_finishPickingWithResults:(id)a3 action:(int64_t)a4 error:(id)a5;
- (void)_handleRemoteViewControllerConnection:(id)a3 extension:(id)a4 extensionRequestIdentifier:(id)a5 error:(id)a6 completionHandler:(id)a7;
- (void)_overrideSelectedItemsWithIdentifiers:(id)a3;
- (void)_pickerDidFinishPicking:(id)a3 action:(int64_t)a4 error:(id)a5;
- (void)_pickerUnavailableViewControllerCancelButtonTapped:(id)a3;
- (void)_pickerUnavailableViewControllerRetryButtonTapped:(id)a3;
- (void)_searchWithString:(id)a3;
- (void)_setup:(id)a3;
- (void)_setupExtension:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)_startActivityIndicatorsForAssetsWithIdentifiers:(id)a3;
- (void)_stopActivityIndicatorsForAssetsWithIdentifiers:(id)a3;
- (void)dealloc;
- (void)deselectItemsWithIdentifiers:(id)a3;
- (void)moveItemWithIdentifier:(id)a3 afterItemWithIdentifier:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)scrollToInitialPosition;
- (void)updatePickerUsingConfiguration:(PHPickerUpdateConfiguration *)configuration;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation PHPickerViewController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)childViewControllerForStatusBarHidden
{
  v2 = [(PHPickerViewController *)self childViewControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  v2 = [(PHPickerViewController *)self childViewControllers];
  v3 = [v2 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_opt_class();
    if (!v4)
    {
      NSStringFromClass(v5);
      objc_claimAutoreleasedReturnValue();
      goto LABEL_10;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      NSStringFromClass(v6);
      objc_claimAutoreleasedReturnValue();
      v7 = objc_opt_class();
      NSStringFromClass(v7);
      objc_claimAutoreleasedReturnValue();
LABEL_10:
      v9 = _PFAssertFailHandler();
      [(PHPickerViewController *)v9 _pickerDidFinishPicking:v10 action:v11 error:v12, v13];
      return result;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_pickerDidFinishPicking:(id)a3 action:(int64_t)a4 error:(id)a5
{
  v12 = a3;
  v8 = a5;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(PHPickerViewController *)self _finishPickingWithResults:v12 action:a4 error:v8];
  }

  else
  {
    v9 = _PFAssertFailHandler();
    [(PHPickerViewController *)v9 _pickerDidSetModalInPresentation:v10, v11];
  }
}

- (void)_pickerUnavailableViewControllerRetryButtonTapped:(id)a3
{
  v7 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    _PFAssertFailHandler();
    goto LABEL_7;
  }

  if (!v7)
  {
LABEL_7:
    v4 = _PFAssertFailHandler();
    [(PHPickerViewController *)v4 _pickerUnavailableViewControllerCancelButtonTapped:v5, v6];
    return;
  }

  [v7 updateReason:1 error:0];
  [(PHPickerViewController *)self _setup:0];
}

- (void)_pickerUnavailableViewControllerCancelButtonTapped:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    _PFAssertFailHandler();
    goto LABEL_20;
  }

  if (!v4)
  {
LABEL_20:
    v20 = _PFAssertFailHandler();
    __77__PHPickerViewController__pickerUnavailableViewControllerCancelButtonTapped___block_invoke(v20);
    return;
  }

  v5 = MEMORY[0x1E695DFA0];
  v6 = [(PHPickerViewController *)self configuration];
  v7 = [v6 preselectedItemIdentifiers];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = [v5 orderedSetWithArray:v10];

  v12 = [v11 copy];
  v13 = PFMap();
  v14 = [v13 copy];

  v15 = [(PHPickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v9;
    }

    [v15 picker:self didFinishPicking:v16];
  }

  else
  {
    v17 = PLPickerGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D2128000, v17, OS_LOG_TYPE_ERROR, "PHPickerViewControllerDelegate doesn't respond to picker:didFinishPicking:", buf, 2u);
    }
  }

  v18 = v15;
  if (objc_opt_respondsToSelector())
  {
    [v18 _picker:self didFinishPicking:v14 error:0];
  }

  v19 = v18;
  if (objc_opt_respondsToSelector())
  {
    [v19 _pickerDidPerformCancelAction:self];
  }
}

id __77__PHPickerViewController__pickerUnavailableViewControllerCancelButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(PUPhotosFileProviderItemProvider);
  v4 = [[PHPickerResult alloc] _initWithItemProvider:v3 itemIdentifier:v2];

  return v4;
}

- (void)_addOrReplaceChildViewController:(id)a3
{
  v35[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHPickerViewController *)self childViewControllers];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    _PFAssertFailHandler();
  }

  v7 = [(PHPickerViewController *)self childViewControllers];
  v8 = [v7 firstObject];

  if (v8)
  {
    [v8 willMoveToParentViewController:0];
    v9 = [v8 view];
    [v9 removeFromSuperview];

    [v8 removeFromParentViewController];
  }

  v34 = v8;
  v10 = [(PHPickerViewController *)self configuration];
  v11 = [v10 _disabledPrivateCapabilities];

  if ((v11 & 0x1000) == 0)
  {
    [v4 preferredContentSize];
    [(PHPickerViewController *)self setPreferredContentSize:?];
  }

  [(PHPickerViewController *)self addChildViewController:v4];
  v12 = [(PHPickerViewController *)self view];
  v13 = v4;
  v33 = v4;
  v14 = v12;
  v15 = [v13 view];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 bounds];
  [v15 setFrame:?];
  [v14 addSubview:v15];
  v27 = MEMORY[0x1E696ACD8];
  v32 = [v15 topAnchor];
  v31 = [v14 topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v35[0] = v30;
  v29 = [v15 bottomAnchor];
  v28 = [v14 bottomAnchor];
  v26 = [v29 constraintEqualToAnchor:v28];
  v35[1] = v26;
  v16 = [v15 leadingAnchor];
  v17 = [v14 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v35[2] = v18;
  v19 = [v15 trailingAnchor];
  v20 = [v14 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v35[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
  [v27 activateConstraints:v22];

  [v33 didMoveToParentViewController:self];
  v23 = [v33 contentScrollViewForEdge:1];
  v24 = [v33 contentScrollViewForEdge:4];
  [(PHPickerViewController *)self setContentScrollView:v23 forEdge:1];
  [(PHPickerViewController *)self setContentScrollView:v24 forEdge:4];
  [(PHPickerViewController *)self setNeedsStatusBarAppearanceUpdate];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_addOrReplaceChildUnavailableViewController:(unint64_t)a3 error:(id)a4
{
  v10 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6 = [(PHPickerViewController *)self configuration];
    v7 = [PUPickerUnavailableViewController unavailableViewController:a3 configuration:v6 error:v10 delegate:self];

    [(PHPickerViewController *)self _addOrReplaceChildViewController:v7];
  }

  else
  {
    v8 = _PFAssertFailHandler();
    [(PHPickerViewController *)v8 _cancelExistingExtensionRequestIfPossible];
  }
}

- (void)_cancelExistingExtensionRequestIfPossible
{
  v7 = [(PHPickerViewController *)self _extensionRequestIdentifier];
  if (v7)
  {
    v3 = [(PHPickerViewController *)self _extension];
    [v3 setRequestCancellationBlock:0];

    v4 = [(PHPickerViewController *)self _extension];
    [v4 setRequestInterruptionBlock:0];

    v5 = [(PHPickerViewController *)self _extension];
    [v5 setRequestCompletionBlock:0];

    v6 = [(PHPickerViewController *)self _extension];
    [v6 cancelExtensionRequestWithIdentifier:v7];
  }

  [(PHPickerViewController *)self _setExtension:0];
  [(PHPickerViewController *)self _setExtensionRequestIdentifier:0];
  [(PHPickerViewController *)self _setExtensionContext:0];
  [(PHPickerViewController *)self _setRemoteViewController:0];
}

- (void)_finishPickingWithResults:(id)a3 action:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v10 = [(PHPickerViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();
    v12 = MEMORY[0x1E695E0F0];
    if (v11)
    {
      if (v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = MEMORY[0x1E695E0F0];
      }

      [v10 picker:self didFinishPicking:v13];
    }

    else
    {
      v14 = PLPickerGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v25[0] = 0;
        _os_log_impl(&dword_1D2128000, v14, OS_LOG_TYPE_ERROR, "PHPickerViewControllerDelegate doesn't respond to picker:didFinishPicking:", v25, 2u);
      }
    }

    v15 = v10;
    if (objc_opt_respondsToSelector())
    {
      if (v8)
      {
        v16 = v8;
      }

      else
      {
        v16 = v12;
      }

      [v15 _picker:self didFinishPicking:v16 error:v9];
    }

    v17 = v15;
    if ((a4 - 2) >= 2)
    {
      if (a4 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v17 _pickerDidPerformConfirmationAction:self];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v17 _pickerDidPerformCancelAction:self];
    }
  }

  else
  {
    v18 = _PFAssertFailHandler();
    [(PHPickerViewController *)v18 _handleRemoteViewControllerConnection:v19 extension:v20 extensionRequestIdentifier:v21 error:v22 completionHandler:v23, v24];
  }
}

- (void)_handleRemoteViewControllerConnection:(id)a3 extension:(id)a4 extensionRequestIdentifier:(id)a5 error:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    _PFAssertFailHandler();
LABEL_22:
    v33 = *(a7 + 502);
    v34 = objc_opt_class();
    NSStringFromClass(v34);
    objc_claimAutoreleasedReturnValue();
    v35 = objc_opt_class();
    NSStringFromClass(v35);
    objc_claimAutoreleasedReturnValue();
    _PFAssertFailHandler();
    goto LABEL_25;
  }

  if (v13)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  if (!v12 || !v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (v18)
    {
      [v13 cancelExtensionRequestWithIdentifier:v14];
    }

    [(PHPickerViewController *)self _addOrReplaceChildUnavailableViewController:0 error:v15];
    if (v16)
    {
      v16[2](v16);
    }

    goto LABEL_20;
  }

  [(PHPickerViewController *)self _cancelExistingExtensionRequestIfPossible];
  objc_initWeak(location, self);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke;
  v51[3] = &unk_1E83F7A38;
  objc_copyWeak(&v53, location);
  v19 = v13;
  v52 = v19;
  [v19 setRequestCancellationBlock:v51];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_3;
  v48[3] = &unk_1E83F7A88;
  objc_copyWeak(&v50, location);
  v20 = v19;
  v49 = v20;
  [v20 setRequestInterruptionBlock:v48];
  v39 = v15;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_5;
  v45[3] = &unk_1E83F7AB0;
  objc_copyWeak(&v47, location);
  v21 = v20;
  v46 = v21;
  [v21 setRequestCompletionBlock:v45];
  [(PHPickerViewController *)self _setExtension:v21];
  [(PHPickerViewController *)self _setExtensionRequestIdentifier:v14];
  v22 = v14;
  a7 = 0x1E696A000;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  v23 = [v21 _extensionContextForUUID:v22];

  if (v23)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PHPickerViewController *)self _setExtensionContext:v23];

      v24 = [(PHPickerViewController *)self _extensionContext];
      [v24 setDelegate:self];

      v25 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PHPickerViewController *)self _setRemoteViewController:v25];

        v26 = [(PHPickerViewController *)self _extensionContext];
        v27 = [v26 _auxiliaryConnection];
        v28 = [v27 exportedInterface];
        [(PUPickerExtensionContext *)PUPickerExtensionHostContext setAllowedClassesForExtensionAuxiliaryHostInterface:v28];

        objc_initWeak(&from, v25);
        v29 = [(PHPickerViewController *)self _extensionContext];
        v30 = [v29 _auxiliaryConnection];
        v31 = [v30 remoteObjectProxy];

        [v31 _hostModalInPresentationDidChange:{-[PHPickerViewController isModalInPresentation](self, "isModalInPresentation")}];
        v32 = [(PHPickerViewController *)self configuration];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_7;
        v40[3] = &unk_1E83F7B00;
        objc_copyWeak(&v42, location);
        objc_copyWeak(&v43, &from);
        v41 = v16;
        [v31 _updateConfiguration:v32 completionHandler:v40];
        v15 = v39;

        objc_destroyWeak(&v43);
        objc_destroyWeak(&v42);

        objc_destroyWeak(&from);
        objc_destroyWeak(&v47);

        objc_destroyWeak(&v50);
        objc_destroyWeak(&v53);
        objc_destroyWeak(location);
LABEL_20:

        return;
      }
    }

    v37 = objc_opt_class();
    NSStringFromClass(v37);
    objc_claimAutoreleasedReturnValue();
    v38 = objc_opt_class();
    NSStringFromClass(v38);
    objc_claimAutoreleasedReturnValue();
    _PFAssertFailHandler();
  }

  else
  {
    v36 = objc_opt_class();
    NSStringFromClass(v36);
    objc_claimAutoreleasedReturnValue();
    _PFAssertFailHandler();
  }

LABEL_25:
  __break(1u);
}

void __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_2;
  block[3] = &unk_1E83F7A10;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_4;
  v2[3] = &unk_1E83F7A60;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_5(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_6;
  v2[3] = &unk_1E83F7A60;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_7(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_8;
  block[3] = &unk_1E83F7AD8;
  objc_copyWeak(&v4, a1 + 5);
  objc_copyWeak(&v5, a1 + 6);
  v3 = a1[4];
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&v4);
}

uint64_t __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _addOrReplaceChildViewController:v3];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = objc_loadWeakRetained((a1 + 40));
  [v4 postNotificationName:@"PPT_PickerFinishedLoading" object:v5];

  result = *(a1 + 32);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _extension];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 _finishPickingWithResults:MEMORY[0x1E695E0F0] action:0 error:0];
  }
}

void __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _extension];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 _addOrReplaceChildUnavailableViewController:2 error:0];
  }
}

void __125__PHPickerViewController__handleRemoteViewControllerConnection_extension_extensionRequestIdentifier_error_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _extension];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    [v5 _addOrReplaceChildUnavailableViewController:0 error:*(a1 + 40)];
  }
}

- (void)_setupExtension:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__PHPickerViewController__setupExtension_error_completionHandler___block_invoke;
  v14[3] = &unk_1E83F79E8;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v18 = v10;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __66__PHPickerViewController__setupExtension_error_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    objc_initWeak(&location, *(a1 + 40));
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__PHPickerViewController__setupExtension_error_completionHandler___block_invoke_2;
    v11[3] = &unk_1E83F79C0;
    objc_copyWeak(&v14, &location);
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    [PUPickerRemoteViewController requestViewControllerForExtension:v2 proposedSize:v11 completionHandler:v5, v7];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);

    [v8 _handleRemoteViewControllerConnection:0 extension:0 extensionRequestIdentifier:0 error:v9 completionHandler:v10];
  }
}

void __66__PHPickerViewController__setupExtension_error_completionHandler___block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PHPickerViewController__setupExtension_error_completionHandler___block_invoke_3;
  v13[3] = &unk_1E83F7998;
  objc_copyWeak(&v19, a1 + 6);
  v14 = v8;
  v15 = a1[4];
  v16 = v7;
  v17 = v9;
  v18 = a1[5];
  v10 = v9;
  v11 = v7;
  v12 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v19);
}

void __66__PHPickerViewController__setupExtension_error_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _handleRemoteViewControllerConnection:*(a1 + 32) extension:*(a1 + 40) extensionRequestIdentifier:*(a1 + 48) error:*(a1 + 56) completionHandler:*(a1 + 64)];
}

- (void)_setup:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = *MEMORY[0x1E696A2E0];
  v14[0] = @"com.apple.mobileslideshow.photospicker";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E696ABD0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__PHPickerViewController__setup___block_invoke;
  v9[3] = &unk_1E83F7970;
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v10 = v7;
  [v6 extensionsWithMatchingAttributes:v5 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  v8 = *MEMORY[0x1E69E9840];
}

void __33__PHPickerViewController__setup___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 firstObject];

  [WeakRetained _setupExtension:v7 error:v5 completionHandler:*(a1 + 32)];
}

- (BOOL)_popViewController
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(PHPickerViewController *)self _extensionContext];
  v3 = [v2 _auxiliaryConnection];
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_830];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PHPickerViewController__popViewController__block_invoke_831;
  v6[3] = &unk_1E83F7948;
  v6[4] = &v7;
  [v4 _popViewControllerWithReply:v6];
  LOBYTE(v2) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v2;
}

void __44__PHPickerViewController__popViewController__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLPickerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1D2128000, v3, OS_LOG_TYPE_ERROR, "Error getting synchronous remote object proxy: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_searchWithString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    v5 = [(PHPickerViewController *)self _extensionContext];
    v6 = [v5 _auxiliaryConnection];
    v7 = [v6 remoteObjectProxy];

    [v7 _searchWithString:v11];
  }

  else
  {
    v8 = _PFAssertFailHandler();
    [(PHPickerViewController *)v8 _overrideSelectedItemsWithIdentifiers:v9, v10];
  }
}

- (void)_overrideSelectedItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = [(PHPickerViewController *)self _extensionContext];
    v6 = [v5 _auxiliaryConnection];
    v7 = [v6 remoteObjectProxy];

    [v7 _overrideSelectedItemsWithIdentifiers:v12];
  }

  else
  {
    v8 = _PFAssertFailHandler();
    [(PHPickerViewController *)v8 _moveAssetWithIdentifier:v9 afterIdentifier:v10, v11];
  }
}

- (void)_stopActivityIndicatorsForAssetsWithIdentifiers:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    v5 = [(PHPickerViewController *)self _extensionContext];
    v6 = [v5 _auxiliaryConnection];
    v7 = [v6 remoteObjectProxy];

    [v7 _stopActivityIndicatorsForAssetsWithIdentifiers:v11];
  }

  else
  {
    v8 = _PFAssertFailHandler();
    [(PHPickerViewController *)v8 _startActivityIndicatorsForAssetsWithIdentifiers:v9, v10];
  }
}

- (void)_startActivityIndicatorsForAssetsWithIdentifiers:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    v5 = [(PHPickerViewController *)self _extensionContext];
    v6 = [v5 _auxiliaryConnection];
    v7 = [v6 remoteObjectProxy];

    [v7 _startActivityIndicatorsForAssetsWithIdentifiers:v11];
  }

  else
  {
    v8 = _PFAssertFailHandler();
    [(PHPickerViewController *)v8 setModalInPresentation:v9, v10];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PHPickerViewController;
  [(PHPickerViewController *)&v7 preferredContentSizeDidChangeForChildContentContainer:v4];
  v5 = [(PHPickerViewController *)self configuration];
  v6 = [v5 _disabledPrivateCapabilities];

  if ((v6 & 0x1000) == 0)
  {
    [v4 preferredContentSize];
    [(PHPickerViewController *)self setPreferredContentSize:?];
  }
}

- (void)dealloc
{
  [(PHPickerViewController *)self _cancelExistingExtensionRequestIfPossible];
  v3.receiver = self;
  v3.super_class = PHPickerViewController;
  [(PHPickerViewController *)&v3 dealloc];
}

- (PHPickerViewController)initWithCoder:(NSCoder *)coder
{
  v3 = coder;
  v4 = _PFAssertFailHandler();
  return [(PHPickerViewController *)v4 initWithNibName:v5 bundle:v6, v7];
}

- (PHPickerViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  v5 = nibNameOrNil;
  v6 = nibBundleOrNil;
  v7 = _PFAssertFailHandler();
  return [(PHPickerViewController *)v7 init];
}

- (PHPickerViewController)init
{
  v2 = _PFAssertFailHandler();
  [(PHPickerViewController *)v2 zoomOut];
  return result;
}

- (void)zoomOut
{
  v2 = [(PHPickerViewController *)self _extensionContext];
  v3 = [v2 _auxiliaryConnection];
  v4 = [v3 remoteObjectProxy];

  [v4 _zoomOutContent];
}

- (void)zoomIn
{
  v2 = [(PHPickerViewController *)self _extensionContext];
  v3 = [v2 _auxiliaryConnection];
  v4 = [v3 remoteObjectProxy];

  [v4 _zoomInContent];
}

- (void)scrollToInitialPosition
{
  v2 = [(PHPickerViewController *)self _extensionContext];
  v3 = [v2 _auxiliaryConnection];
  v4 = [v3 remoteObjectProxy];

  [v4 _scrollContentToInitialPosition];
}

- (void)moveItemWithIdentifier:(id)a3 afterItemWithIdentifier:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v13)
  {
    v7 = [(PHPickerViewController *)self _extensionContext];
    v8 = [v7 _auxiliaryConnection];
    v9 = [v8 remoteObjectProxy];

    [v9 _moveItemWithIdentifier:v13 afterIdentifier:v6];
  }

  else
  {
    v10 = _PFAssertFailHandler();
    [(PHPickerViewController *)v10 deselectItemsWithIdentifiers:v11, v12];
  }
}

- (void)deselectItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _PFAssertFailHandler();
    goto LABEL_7;
  }

  v11 = v4;
  if (![v4 count])
  {
LABEL_7:
    v8 = _PFAssertFailHandler();
    [(PHPickerViewController *)v8 updatePickerUsingConfiguration:v9, v10];
    return;
  }

  v5 = [(PHPickerViewController *)self _extensionContext];
  v6 = [v5 _auxiliaryConnection];
  v7 = [v6 remoteObjectProxy];

  [v7 _deselectItemsWithIdentifiers:v11];
}

- (void)updatePickerUsingConfiguration:(PHPickerUpdateConfiguration *)configuration
{
  v10 = configuration;
  if (!v10)
  {
    _PFAssertFailHandler();
    goto LABEL_10;
  }

  if ([(PHPickerUpdateConfiguration *)v10 selectionLimit]< 0)
  {
LABEL_10:
    _PFAssertFailHandler();
    goto LABEL_11;
  }

  if ([(PHPickerUpdateConfiguration *)v10 minimumSelectionLimit]< 0)
  {
LABEL_11:
    _PFAssertFailHandler();
    goto LABEL_12;
  }

  if ([(PHPickerUpdateConfiguration *)v10 _primaryButtonType]< 0)
  {
LABEL_12:
    _PFAssertFailHandler();
    goto LABEL_13;
  }

  if ([(PHPickerUpdateConfiguration *)v10 _secondaryButtonType]< 0)
  {
LABEL_13:
    v7 = _PFAssertFailHandler();
    [(PHPickerViewController *)v7 initWithConfiguration:v8, v9];
    return;
  }

  v4 = [(PHPickerViewController *)self _extensionContext];
  v5 = [v4 _auxiliaryConnection];
  v6 = [v5 remoteObjectProxy];

  [v6 _updatePickerUsingUpdateConfiguration:v10];
}

- (PHPickerViewController)initWithConfiguration:(PHPickerConfiguration *)configuration
{
  v4 = configuration;
  if (!v4)
  {
    _PFAssertFailHandler();
LABEL_28:
    _PFAssertFailHandler();
    goto LABEL_29;
  }

  v5 = v4;
  v6 = [(PHPickerConfiguration *)v4 photoLibrary];
  if (v6)
  {
  }

  else if ([(PHPickerConfiguration *)v5 _onlyReturnsIdentifiers])
  {
LABEL_41:
    _PFAssertFailHandler();
    goto LABEL_42;
  }

  if ([(PHPickerConfiguration *)v5 preferredAssetRepresentationMode]< 0)
  {
    goto LABEL_28;
  }

  if ([(PHPickerConfiguration *)v5 preferredAssetRepresentationMode]>= (PHPickerConfigurationAssetRepresentationModeCompatible|PHPickerConfigurationAssetRepresentationModeCurrent))
  {
LABEL_29:
    _PFAssertFailHandler();
    goto LABEL_30;
  }

  if ([(PHPickerConfiguration *)v5 selection]< 0)
  {
LABEL_30:
    _PFAssertFailHandler();
    goto LABEL_31;
  }

  if ([(PHPickerConfiguration *)v5 selection]>= 4)
  {
LABEL_31:
    _PFAssertFailHandler();
    goto LABEL_32;
  }

  if ([(PHPickerConfiguration *)v5 selectionLimit]< 0)
  {
LABEL_32:
    _PFAssertFailHandler();
    goto LABEL_33;
  }

  if ([(PHPickerConfiguration *)v5 minimumSelectionLimit]< 0)
  {
LABEL_33:
    _PFAssertFailHandler();
    goto LABEL_34;
  }

  v7 = [(PHPickerConfiguration *)v5 preselectedAssetIdentifiers];

  if (!v7)
  {
LABEL_34:
    _PFAssertFailHandler();
    goto LABEL_35;
  }

  v8 = [(PHPickerConfiguration *)v5 preselectedItemIdentifiers];

  if (!v8)
  {
LABEL_35:
    _PFAssertFailHandler();
    goto LABEL_36;
  }

  v9 = [(PHPickerConfiguration *)v5 photoLibrary];
  if (v9 || (-[PHPickerConfiguration preselectedAssetIdentifiers](v5, "preselectedAssetIdentifiers"), v9 = objc_claimAutoreleasedReturnValue(), ![v9 count]))
  {

    goto LABEL_17;
  }

  v10 = [(PHPickerConfiguration *)v5 preselectedItemIdentifiers];
  v11 = [v10 count];

  if (!v11)
  {
LABEL_17:
    if (([(PHPickerConfiguration *)v5 mode]& 0x8000000000000000) == 0)
    {
      if ([(PHPickerConfiguration *)v5 mode]< 2)
      {
        if (([(PHPickerConfiguration *)v5 _sourceType]& 0x8000000000000000) == 0)
        {
          if ([(PHPickerConfiguration *)v5 _sourceType]< 7)
          {
            v23.receiver = self;
            v23.super_class = PHPickerViewController;
            v12 = [(PHPickerViewController *)&v23 initWithNibName:0 bundle:0];
            if (!v12)
            {
LABEL_26:

              return v12;
            }

            if (([(PHPickerViewController *)v12 isMemberOfClass:objc_opt_class()]& 1) != 0)
            {
              v13 = [(PHPickerConfiguration *)v5 copy];
              v14 = v12->_configuration;
              v12->_configuration = v13;

              v15 = PLServicesLocalizedFrameworkString();
              [(PHPickerViewController *)v12 setTitle:v15];

              [(PHPickerViewController *)v12 setModalPresentationStyle:2];
              [(PHPickerViewController *)v12 _addOrReplaceChildUnavailableViewController:1 error:0];
              v16 = 0;
              if (![(PHPickerConfiguration *)v5 _alwaysShowLoadingPlaceholder])
              {
                [(PHPickerViewController *)v12 _beginDelayingPresentation:0 cancellationHandler:3.0];
                objc_initWeak(&location, v12);
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 3221225472;
                aBlock[2] = __48__PHPickerViewController_initWithConfiguration___block_invoke;
                aBlock[3] = &unk_1E83F7900;
                v21 = 0;
                objc_copyWeak(&v20, &location);
                v16 = _Block_copy(aBlock);
                objc_destroyWeak(&v20);
                objc_destroyWeak(&location);
              }

              [(PHPickerViewController *)v12 _setup:v16];

              goto LABEL_26;
            }

            goto LABEL_40;
          }

LABEL_39:
          _PFAssertFailHandler();
LABEL_40:
          _PFAssertFailHandler();
          goto LABEL_41;
        }

LABEL_38:
        _PFAssertFailHandler();
        goto LABEL_39;
      }

LABEL_37:
      _PFAssertFailHandler();
      goto LABEL_38;
    }

LABEL_36:
    _PFAssertFailHandler();
    goto LABEL_37;
  }

LABEL_42:
  v18 = _PFAssertFailHandler();
  __48__PHPickerViewController_initWithConfiguration___block_invoke(v18);
  return result;
}

void __48__PHPickerViewController_initWithConfiguration___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _endDelayingPresentation];
  }
}

@end