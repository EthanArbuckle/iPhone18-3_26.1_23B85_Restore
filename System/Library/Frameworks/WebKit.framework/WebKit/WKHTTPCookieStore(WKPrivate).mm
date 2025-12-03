@interface WKHTTPCookieStore(WKPrivate)
- (uint64_t)_flushCookiesToDiskWithCompletionHandler:()WKPrivate;
- (uint64_t)_getCookiesForURL:()WKPrivate completionHandler:;
- (uint64_t)_setCookieAcceptPolicy:()WKPrivate completionHandler:;
@end

@implementation WKHTTPCookieStore(WKPrivate)

- (uint64_t)_getCookiesForURL:()WKPrivate completionHandler:
{
  v2 = *(self + 8);
  v3 = coreCookiesToNSCookies(a2);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (uint64_t)_setCookieAcceptPolicy:()WKPrivate completionHandler:
{
  *self = &unk_1F10F6780;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_flushCookiesToDiskWithCompletionHandler:()WKPrivate
{
  *self = &unk_1F10F67A8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

@end