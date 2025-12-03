@interface RPVideoEditorHostViewController
- (RPPreviewViewController)previewViewController;
- (void)extensionDidFinishWithActivityTypes:(id)types;
@end

@implementation RPVideoEditorHostViewController

- (void)extensionDidFinishWithActivityTypes:(id)types
{
  typesCopy = types;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPVideoEditorHostViewController:extensionsDidFinish", v6, 2u);
  }

  previewViewController = [(RPVideoEditorHostViewController *)self previewViewController];
  [previewViewController extensionDidFinishWithActivityTypes:typesCopy];
}

- (RPPreviewViewController)previewViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_previewViewController);

  return WeakRetained;
}

@end