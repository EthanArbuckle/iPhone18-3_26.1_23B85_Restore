@interface NFCCModule
- (id)contentViewControllerForContext:(id)context;
- (void)setContentModuleContext:(id)context;
@end

@implementation NFCCModule

- (void)setContentModuleContext:(id)context
{
  objc_storeStrong(&self->_context, context);
  contextCopy = context;
  [(NFCCContentViewController *)self->_contentViewController setContentModuleContext:contextCopy];
}

- (id)contentViewControllerForContext:(id)context
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