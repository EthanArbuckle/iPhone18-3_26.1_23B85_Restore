@interface ACSettingsSnippetViewControllerFactory
- (id)viewControllerForSnippet:(id)a3 error:(id *)a4;
@end

@implementation ACSettingsSnippetViewControllerFactory

- (id)viewControllerForSnippet:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = ACSettingsSwitchUIController;
LABEL_5:
    v7 = [(__objc2_class *)v6 snippetViewController];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = ACSettingsSliderUIController;
    goto LABEL_5;
  }

  if (a4)
  {
    [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_6:

  return v7;
}

@end