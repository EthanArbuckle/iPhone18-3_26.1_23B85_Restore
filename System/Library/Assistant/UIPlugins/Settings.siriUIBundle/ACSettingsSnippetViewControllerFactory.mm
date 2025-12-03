@interface ACSettingsSnippetViewControllerFactory
- (id)viewControllerForSnippet:(id)snippet error:(id *)error;
@end

@implementation ACSettingsSnippetViewControllerFactory

- (id)viewControllerForSnippet:(id)snippet error:(id *)error
{
  snippetCopy = snippet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = ACSettingsSwitchUIController;
LABEL_5:
    snippetViewController = [(__objc2_class *)v6 snippetViewController];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = ACSettingsSliderUIController;
    goto LABEL_5;
  }

  if (error)
  {
    [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:100 userInfo:0];
    *error = snippetViewController = 0;
  }

  else
  {
    snippetViewController = 0;
  }

LABEL_6:

  return snippetViewController;
}

@end