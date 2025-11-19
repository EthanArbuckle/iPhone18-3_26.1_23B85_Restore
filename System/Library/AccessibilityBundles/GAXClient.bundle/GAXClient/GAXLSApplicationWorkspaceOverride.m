@interface GAXLSApplicationWorkspaceOverride
- (BOOL)openSensitiveURL:(id)a3 withOptions:(id)a4;
- (BOOL)openURL:(id)a3 withOptions:(id)a4;
@end

@implementation GAXLSApplicationWorkspaceOverride

- (BOOL)openURL:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[GAXClient sharedInstance];
  if ([v8 serverMode] == 2)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 bundleIdentifier];

    if (GAXAppIsMobilePhoneOrFacetime(v10) && GAXURLSchemeIsPhoneRelated(v6))
    {
      v15.receiver = self;
      v15.super_class = GAXLSApplicationWorkspaceOverride;
      v11 = [(GAXLSApplicationWorkspaceOverride *)&v15 openURL:v6 withOptions:v7];
    }

    else
    {
      v12 = GAXLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v6;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Guided Access returning NO for open URL: %{public}@", buf, 0xCu);
      }

      [v8 asynchronouslyPresentGuidedAccessActiveBanner];
      v11 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = GAXLSApplicationWorkspaceOverride;
    v11 = [(GAXLSApplicationWorkspaceOverride *)&v14 openURL:v6 withOptions:v7];
  }

  return v11;
}

- (BOOL)openSensitiveURL:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[GAXClient sharedInstance];
  if ([v8 serverMode] == 2)
  {
    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Guided Access returning NO for open sensitive URL: %{public}@", buf, 0xCu);
    }

    [v8 asynchronouslyPresentGuidedAccessActiveBanner];
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = GAXLSApplicationWorkspaceOverride;
    v10 = [(GAXLSApplicationWorkspaceOverride *)&v12 openSensitiveURL:v6 withOptions:v7];
  }

  return v10;
}

@end