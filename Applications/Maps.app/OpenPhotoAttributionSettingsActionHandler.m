@interface OpenPhotoAttributionSettingsActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation OpenPhotoAttributionSettingsActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v8 = a4;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v8 coordinator];
    [v7 viewControllerPresentUserProfilePreferences:0 withTabType:2];
  }
}

@end