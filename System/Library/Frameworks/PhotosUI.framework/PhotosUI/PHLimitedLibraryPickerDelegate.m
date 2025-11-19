@interface PHLimitedLibraryPickerDelegate
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation PHLimitedLibraryPickerDelegate

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLBackendGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1D2128000, v8, OS_LOG_TYPE_DEBUG, "[Limited Library Picker] picker: %@ didFinishPicking: %@", buf, 0x16u);
  }

  v9 = [(PHLimitedLibraryPickerDelegate *)self finishedPickingBlock];

  if (v9)
  {
    v10 = PFMap();
    v11 = [(PHLimitedLibraryPickerDelegate *)self finishedPickingBlock];
    v12 = [v10 copy];
    (v11)[2](v11, v12);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__PHLimitedLibraryPickerDelegate_picker_didFinishPicking___block_invoke_2;
  v14[3] = &unk_1E83F7818;
  v14[4] = self;
  [v6 dismissViewControllerAnimated:1 completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __58__PHLimitedLibraryPickerDelegate_picker_didFinishPicking___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dismissalBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) dismissalBlock];
    v3[2]();
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1D2128000, v5, OS_LOG_TYPE_DEBUG, "[Limited Library Picker] presentationControllerDidDismiss: %@", &v11, 0xCu);
  }

  v6 = [(PHLimitedLibraryPickerDelegate *)self finishedPickingBlock];

  if (v6)
  {
    v7 = [(PHLimitedLibraryPickerDelegate *)self finishedPickingBlock];
    v7[2](v7, MEMORY[0x1E695E0F0]);
  }

  v8 = [(PHLimitedLibraryPickerDelegate *)self dismissalBlock];

  if (v8)
  {
    v9 = [(PHLimitedLibraryPickerDelegate *)self dismissalBlock];
    v9[2]();
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end