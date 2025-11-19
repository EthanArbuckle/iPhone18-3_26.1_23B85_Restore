@interface NFCCModule
- (id)contentViewControllerForContext:(id)a3;
- (void)setContentModuleContext:(id)a3;
@end

@implementation NFCCModule

- (void)setContentModuleContext:(id)a3
{
  objc_storeStrong(&self->_context, a3);
  v5 = a3;
  [(NFCCContentViewController *)self->_contentViewController setContentModuleContext:v5];
}

- (id)contentViewControllerForContext:(id)a3
{
  contentViewController = self->_contentViewController;
  if (!contentViewController)
  {
    v5 = objc_alloc_init(NFCCContentViewController);
    v6 = self->_contentViewController;
    self->_contentViewController = v5;

    [(NFCCContentViewController *)self->_contentViewController setContentModuleContext:self->_context];
    contentViewController = self->_contentViewController;
  }

  return contentViewController;
}

@end