@interface RPVideoEditorHostViewController
- (RPPreviewViewController)previewViewController;
- (void)extensionDidFinishWithActivityTypes:(id)a3;
@end

@implementation RPVideoEditorHostViewController

- (void)extensionDidFinishWithActivityTypes:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPVideoEditorHostViewController:extensionsDidFinish", v6, 2u);
  }

  v5 = [(RPVideoEditorHostViewController *)self previewViewController];
  [v5 extensionDidFinishWithActivityTypes:v4];
}

- (RPPreviewViewController)previewViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_previewViewController);

  return WeakRetained;
}

@end