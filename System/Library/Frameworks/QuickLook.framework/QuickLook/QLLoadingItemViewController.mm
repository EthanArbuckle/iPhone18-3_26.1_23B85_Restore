@interface QLLoadingItemViewController
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
@end

@implementation QLLoadingItemViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  loadingConfiguration = [MEMORY[0x277D75390] loadingConfiguration];
  loadingConfig = self->_loadingConfig;
  self->_loadingConfig = loadingConfiguration;

  [(QLLoadingItemViewController *)self setContentUnavailableConfiguration:self->_loadingConfig];
  v8 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v8 = handlerCopy;
  }
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = QLLoadingItemViewController;
  [(QLItemViewController *)&v3 setDelegate:delegate];
}

@end