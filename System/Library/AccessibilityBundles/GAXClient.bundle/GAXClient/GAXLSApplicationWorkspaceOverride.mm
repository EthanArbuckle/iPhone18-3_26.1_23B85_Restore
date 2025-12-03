@interface GAXLSApplicationWorkspaceOverride
- (BOOL)openSensitiveURL:(id)l withOptions:(id)options;
- (BOOL)openURL:(id)l withOptions:(id)options;
@end

@implementation GAXLSApplicationWorkspaceOverride

- (BOOL)openURL:(id)l withOptions:(id)options
{
  lCopy = l;
  optionsCopy = options;
  v8 = +[GAXClient sharedInstance];
  if ([v8 serverMode] == 2)
  {
    v9 = +[NSBundle mainBundle];
    bundleIdentifier = [v9 bundleIdentifier];

    if (GAXAppIsMobilePhoneOrFacetime(bundleIdentifier) && GAXURLSchemeIsPhoneRelated(lCopy))
    {
      v15.receiver = self;
      v15.super_class = GAXLSApplicationWorkspaceOverride;
      v11 = [(GAXLSApplicationWorkspaceOverride *)&v15 openURL:lCopy withOptions:optionsCopy];
    }

    else
    {
      v12 = GAXLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = lCopy;
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
    v11 = [(GAXLSApplicationWorkspaceOverride *)&v14 openURL:lCopy withOptions:optionsCopy];
  }

  return v11;
}

- (BOOL)openSensitiveURL:(id)l withOptions:(id)options
{
  lCopy = l;
  optionsCopy = options;
  v8 = +[GAXClient sharedInstance];
  if ([v8 serverMode] == 2)
  {
    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = lCopy;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Guided Access returning NO for open sensitive URL: %{public}@", buf, 0xCu);
    }

    [v8 asynchronouslyPresentGuidedAccessActiveBanner];
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = GAXLSApplicationWorkspaceOverride;
    v10 = [(GAXLSApplicationWorkspaceOverride *)&v12 openSensitiveURL:lCopy withOptions:optionsCopy];
  }

  return v10;
}

@end