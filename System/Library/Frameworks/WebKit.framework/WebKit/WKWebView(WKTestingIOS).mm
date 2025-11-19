@interface WKWebView(WKTestingIOS)
- (uint64_t)_setDeviceOrientationUserPermissionHandlerForTesting:()WKTestingIOS;
- (void)_doAfterNextVisibleContentRectAndStablePresentationUpdate:;
@end

@implementation WKWebView(WKTestingIOS)

- (void)_doAfterNextVisibleContentRectAndStablePresentationUpdate:
{
  _Block_release(*(a1 + 40));
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
  }
}

- (uint64_t)_setDeviceOrientationUserPermissionHandlerForTesting:()WKTestingIOS
{
  *a1 = &unk_1F10FD648;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

@end