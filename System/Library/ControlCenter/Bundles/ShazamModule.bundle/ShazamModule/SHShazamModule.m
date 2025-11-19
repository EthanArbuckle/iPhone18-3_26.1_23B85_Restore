@interface SHShazamModule
- (id)contentViewControllerForContext:(id)a3;
- (void)setContentModuleContext:(id)a3;
@end

@implementation SHShazamModule

- (void)setContentModuleContext:(id)a3
{
  objc_storeStrong(&self->_contentModuleContext, a3);
  v5 = a3;
  [(SHShazamMenuModuleViewController *)self->_shazamMenuModuleViewController setContentModuleContext:v5];
}

- (id)contentViewControllerForContext:(id)a3
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