@interface GAXFBSSystemServiceOverride
- (BOOL)canOpenApplication:(id)a3 reason:(int64_t *)a4;
@end

@implementation GAXFBSSystemServiceOverride

- (BOOL)canOpenApplication:(id)a3 reason:(int64_t *)a4
{
  v6 = a3;
  v7 = +[GAXSpringboard sharedInstance];
  if ([v7 isActive])
  {
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Guided Access returning NO for workspace can open application: %{public}@", buf, 0xCu);
    }

    v9 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GAXFBSSystemServiceOverride;
    v9 = [(GAXFBSSystemServiceOverride *)&v11 canOpenApplication:v6 reason:a4];
  }

  return v9;
}

@end