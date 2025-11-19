@interface _HMPrivacySettingsProvider
- (unint64_t)cachedAuthorizationStatus;
- (unint64_t)queryAuthorizationStatus;
@end

@implementation _HMPrivacySettingsProvider

- (unint64_t)queryAuthorizationStatus
{
  result = HMPrivacyGetAuthorizationStatusForHomeKit();
  self->_cachedAuthorizationStatus = result;
  return result;
}

- (unint64_t)cachedAuthorizationStatus
{
  result = self->_cachedAuthorizationStatus;
  if ((result & 1) == 0)
  {
    result = [(_HMPrivacySettingsProvider *)self queryAuthorizationStatus];
    self->_cachedAuthorizationStatus = result;
  }

  return result;
}

@end