@interface GAXSBUIControllerOverride
- (void)_activateApplicationFromAccessibility:(id)a3;
@end

@implementation GAXSBUIControllerOverride

- (void)_activateApplicationFromAccessibility:(id)a3
{
  v4 = a3;
  v5 = +[GAXSpringboard sharedInstanceIfExists];
  v6 = [v5 isActive];

  if (v6)
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Blocking activation of application: %@", buf, 0xCu);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GAXSBUIControllerOverride;
    [(GAXSBUIControllerOverride *)&v8 _activateApplicationFromAccessibility:v4];
  }
}

@end