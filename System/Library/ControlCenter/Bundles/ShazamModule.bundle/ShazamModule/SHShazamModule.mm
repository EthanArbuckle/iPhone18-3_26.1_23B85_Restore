@interface SHShazamModule
- (id)contentViewControllerForContext:(id)context;
- (void)setContentModuleContext:(id)context;
@end

@implementation SHShazamModule

- (void)setContentModuleContext:(id)context
{
  objc_storeStrong(&self->_contentModuleContext, context);
  contextCopy = context;
  [(SHShazamMenuModuleViewController *)self->_shazamMenuModuleViewController setContentModuleContext:contextCopy];
}

- (id)contentViewControllerForContext:(id)context
{
  shazamMenuModuleViewController = self->_shazamMenuModuleViewController;
  if (!shazamMenuModuleViewController)
  {
    v5 = objc_alloc_init(SHShazamMenuModuleViewController);
    v6 = self->_shazamMenuModuleViewController;
    self->_shazamMenuModuleViewController = v5;

    [(SHShazamMenuModuleViewController *)self->_shazamMenuModuleViewController setContentModuleContext:self->_contentModuleContext];
    shazamMenuModuleViewController = self->_shazamMenuModuleViewController;
  }

  return shazamMenuModuleViewController;
}

@end