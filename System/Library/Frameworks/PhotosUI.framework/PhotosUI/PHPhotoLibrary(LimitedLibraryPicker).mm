@interface PHPhotoLibrary(LimitedLibraryPicker)
- (void)presentLimitedLibraryPickerFromViewController:()LimitedLibraryPicker completionHandler:;
@end

@implementation PHPhotoLibrary(LimitedLibraryPicker)

- (void)presentLimitedLibraryPickerFromViewController:()LimitedLibraryPicker completionHandler:
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E69789A8] authorizationStatusForAccessLevel:2] == 4)
  {
    v8 = [v7 copy];
    [PHLimitedLibraryPicker presentLimitedLibraryPicker:&stru_1F4DA4820 waitForDismissal:0 viewController:v6 photoLibrary:self completionHandler:v8];
  }

  else
  {
    v9 = PLPickerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1D2128000, v9, OS_LOG_TYPE_DEFAULT, "Limited library picker requires PHAuthorizationStatusLimited", v10, 2u);
    }
  }
}

@end