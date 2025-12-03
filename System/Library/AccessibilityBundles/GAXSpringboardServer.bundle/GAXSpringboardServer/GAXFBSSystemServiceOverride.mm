@interface GAXFBSSystemServiceOverride
- (BOOL)canOpenApplication:(id)application reason:(int64_t *)reason;
@end

@implementation GAXFBSSystemServiceOverride

- (BOOL)canOpenApplication:(id)application reason:(int64_t *)reason
{
  applicationCopy = application;
  v7 = +[GAXSpringboard sharedInstance];
  if ([v7 isActive])
  {
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = applicationCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Guided Access returning NO for workspace can open application: %{public}@", buf, 0xCu);
    }

    v9 = 0;
    if (reason)
    {
      *reason = 1;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GAXFBSSystemServiceOverride;
    v9 = [(GAXFBSSystemServiceOverride *)&v11 canOpenApplication:applicationCopy reason:reason];
  }

  return v9;
}

@end