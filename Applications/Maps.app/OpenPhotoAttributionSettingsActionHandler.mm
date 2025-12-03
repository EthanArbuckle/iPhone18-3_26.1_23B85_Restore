@interface OpenPhotoAttributionSettingsActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation OpenPhotoAttributionSettingsActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  contextCopy = context;
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    coordinator = [contextCopy coordinator];
    [coordinator viewControllerPresentUserProfilePreferences:0 withTabType:2];
  }
}

@end