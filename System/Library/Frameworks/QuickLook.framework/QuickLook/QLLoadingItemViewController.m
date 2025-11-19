@interface QLLoadingItemViewController
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)setDelegate:(id)a3;
@end

@implementation QLLoadingItemViewController

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v6 = [MEMORY[0x277D75390] loadingConfiguration];
  loadingConfig = self->_loadingConfig;
  self->_loadingConfig = v6;

  [(QLLoadingItemViewController *)self setContentUnavailableConfiguration:self->_loadingConfig];
  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 0);
    v8 = v9;
  }
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = QLLoadingItemViewController;
  [(QLItemViewController *)&v3 setDelegate:a3];
}

@end