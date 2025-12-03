@interface BackgroundSoundsCCContentModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation BackgroundSoundsCCContentModule

- (id)contentViewControllerForContext:(id)context
{
  moduleViewController = self->_moduleViewController;
  if (!moduleViewController)
  {
    v5 = objc_alloc_init(BackgroundSoundsCCModuleViewController);
    v6 = self->_moduleViewController;
    self->_moduleViewController = v5;

    moduleViewController = self->_moduleViewController;
  }

  contentModuleContext = [(BackgroundSoundsCCContentModule *)self contentModuleContext];
  [(BackgroundSoundsCCModuleViewController *)moduleViewController setContentModuleContext:contentModuleContext];

  v8 = self->_moduleViewController;

  return v8;
}

@end