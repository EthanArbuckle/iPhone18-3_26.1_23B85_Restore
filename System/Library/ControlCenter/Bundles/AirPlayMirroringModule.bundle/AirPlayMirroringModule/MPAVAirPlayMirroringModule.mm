@interface MPAVAirPlayMirroringModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation MPAVAirPlayMirroringModule

- (id)contentViewControllerForContext:(id)context
{
  mirroringViewController = self->_mirroringViewController;
  if (!mirroringViewController)
  {
    v5 = objc_alloc_init(MRUMirroringViewController);
    v6 = self->_mirroringViewController;
    self->_mirroringViewController = v5;

    [(CCUIMenuModuleViewController *)self->_mirroringViewController setContentModuleContext:self->_contentModuleContext];
    mirroringViewController = self->_mirroringViewController;
  }

  return mirroringViewController;
}

@end