@interface RPVideoEffectsModule
- (RPVideoEffectsModule)init;
- (id)contentViewControllerForContext:(id)context;
- (void)dealloc;
@end

@implementation RPVideoEffectsModule

- (RPVideoEffectsModule)init
{
  v3.receiver = self;
  v3.super_class = RPVideoEffectsModule;
  return [(RPVideoEffectsModule *)&v3 init];
}

- (id)contentViewControllerForContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(_TtC34VideoConferenceControlCenterModule26VideoEffectsViewController);
  environment = [contextCopy environment];

  [(VideoEffectsViewController *)v5 setShouldLoadFromSensor:environment != &dword_0 + 2];
  [(VideoEffectsViewController *)v5 setContentModuleContext:self->_contentModuleContext];
  objc_storeStrong(&self->_currentContentViewController, v5);

  return v5;
}

- (void)dealloc
{
  currentContentViewController = self->_currentContentViewController;
  self->_currentContentViewController = 0;

  contentModuleContext = self->_contentModuleContext;
  self->_contentModuleContext = 0;

  v5.receiver = self;
  v5.super_class = RPVideoEffectsModule;
  [(RPVideoEffectsModule *)&v5 dealloc];
}

@end