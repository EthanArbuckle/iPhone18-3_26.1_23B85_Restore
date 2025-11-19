@interface BackgroundSoundsCCContentModule
- (id)contentViewControllerForContext:(id)a3;
@end

@implementation BackgroundSoundsCCContentModule

- (id)contentViewControllerForContext:(id)a3
{
  moduleViewController = self->_moduleViewController;
  if (!moduleViewController)
  {
    v5 = objc_alloc_init(BackgroundSoundsCCModuleViewController);
    v6 = self->_moduleViewController;
    self->_moduleViewController = v5;

    moduleViewController = self->_moduleViewController;
  }

  v7 = [(BackgroundSoundsCCContentModule *)self contentModuleContext];
  [(BackgroundSoundsCCModuleViewController *)moduleViewController setContentModuleContext:v7];

  v8 = self->_moduleViewController;

  return v8;
}

@end