@interface GAX_UIStatusBarBreadcrumbItemViewOverride
- (void)userDidActivateButton:(id)a3;
@end

@implementation GAX_UIStatusBarBreadcrumbItemViewOverride

- (void)userDidActivateButton:(id)a3
{
  v4 = a3;
  v5 = +[GAXClient sharedInstance];
  v6 = [v5 isActive];

  if (v6)
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Guided Access active. disallowing breadcrumb navigation via status bar item tap", buf, 2u);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GAX_UIStatusBarBreadcrumbItemViewOverride;
    [(GAX_UIStatusBarBreadcrumbItemViewOverride *)&v8 userDidActivateButton:v4];
  }
}

@end