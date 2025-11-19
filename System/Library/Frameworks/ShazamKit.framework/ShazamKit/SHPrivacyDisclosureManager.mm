@interface SHPrivacyDisclosureManager
- (BOOL)privacyDisclosureAcknowledgementRequired;
@end

@implementation SHPrivacyDisclosureManager

- (BOOL)privacyDisclosureAcknowledgementRequired
{
  v2 = sh_log_object();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Privacy acknowledgment status %i", v4, 8u);
  }

  return 0;
}

@end