@interface WKGeolocationProviderIOS(WebGeolocationCoreLocationUpdateListener)
- (uint64_t)geolocationAuthorizationGranted;
- (void)geolocationAuthorizationGranted;
@end

@implementation WKGeolocationProviderIOS(WebGeolocationCoreLocationUpdateListener)

- (uint64_t)geolocationAuthorizationGranted
{
  (*(**(self + 8) + 16))(*(self + 8));
  v2 = *(self + 16);

  return [v2 geolocationAuthorizationGranted];
}

- (void)geolocationAuthorizationGranted
{
  *self = &unk_1F110D868;
  v2 = self[2];
  self[2] = 0;
  if (v2)
  {
  }

  v3 = self[1];
  self[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return self;
}

@end