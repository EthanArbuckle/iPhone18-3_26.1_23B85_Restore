@interface GAXSBUIControllerOverride
- (void)_activateApplicationFromAccessibility:(id)accessibility;
@end

@implementation GAXSBUIControllerOverride

- (void)_activateApplicationFromAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  v5 = +[GAXSpringboard sharedInstanceIfExists];
  isActive = [v5 isActive];

  if (isActive)
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = accessibilityCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Blocking activation of application: %@", buf, 0xCu);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GAXSBUIControllerOverride;
    [(GAXSBUIControllerOverride *)&v8 _activateApplicationFromAccessibility:accessibilityCopy];
  }
}

@end