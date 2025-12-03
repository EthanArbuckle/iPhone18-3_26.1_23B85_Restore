@interface WKWebView(WKTestingIOS)
- (uint64_t)_setDeviceOrientationUserPermissionHandlerForTesting:()WKTestingIOS;
- (void)_doAfterNextVisibleContentRectAndStablePresentationUpdate:;
@end

@implementation WKWebView(WKTestingIOS)

- (void)_doAfterNextVisibleContentRectAndStablePresentationUpdate:
{
  _Block_release(*(self + 40));
  v2 = *(self + 32);
  *(self + 32) = 0;
  if (v2)
  {
  }
}

- (uint64_t)_setDeviceOrientationUserPermissionHandlerForTesting:()WKTestingIOS
{
  *self = &unk_1F10FD648;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

@end