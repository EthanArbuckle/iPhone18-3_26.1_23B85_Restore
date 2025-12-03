@interface SASettingShowAndPerformSettingsAction
- (id)_ad_aceSettingsResponseCommandRepresentationForSiriResponse:(id)response;
- (id)_ad_settingsRequestRepresentation;
@end

@implementation SASettingShowAndPerformSettingsAction

- (id)_ad_aceSettingsResponseCommandRepresentationForSiriResponse:(id)response
{
  responseCopy = response;
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
  settingsAction = [(SASettingShowAndPerformSettingsAction *)self settingsAction];
  _ad_settingsRequestRepresentation = [settingsAction _ad_settingsRequestRepresentation];

  return _ad_settingsRequestRepresentation;
}

@end