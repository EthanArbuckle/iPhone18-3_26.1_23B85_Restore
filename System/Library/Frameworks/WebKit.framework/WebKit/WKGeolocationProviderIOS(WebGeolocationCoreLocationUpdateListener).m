@interface WKGeolocationProviderIOS(WebGeolocationCoreLocationUpdateListener)
- (uint64_t)geolocationAuthorizationGranted;
- (void)geolocationAuthorizationGranted;
@end

@implementation WKGeolocationProviderIOS(WebGeolocationCoreLocationUpdateListener)

- (uint64_t)geolocationAuthorizationGranted
{
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  v2 = *(a1 + 16);

  return [v2 geolocationAuthorizationGranted];
}

- (void)geolocationAuthorizationGranted
{
  *a1 = &unk_1F110D868;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

@end