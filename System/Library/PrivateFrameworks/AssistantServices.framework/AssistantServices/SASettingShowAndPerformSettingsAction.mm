@interface SASettingShowAndPerformSettingsAction
- (id)_ad_aceSettingsResponseCommandRepresentationForSiriResponse:(id)a3;
- (id)_ad_settingsRequestRepresentation;
@end

@implementation SASettingShowAndPerformSettingsAction

- (id)_ad_aceSettingsResponseCommandRepresentationForSiriResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_alloc_init(SACommandSucceeded);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_ad_settingsRequestRepresentation
{
  v2 = [(SASettingShowAndPerformSettingsAction *)self settingsAction];
  v3 = [v2 _ad_settingsRequestRepresentation];

  return v3;
}

@end