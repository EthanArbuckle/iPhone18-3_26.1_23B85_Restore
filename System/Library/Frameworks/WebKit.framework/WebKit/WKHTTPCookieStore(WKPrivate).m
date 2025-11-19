@interface WKHTTPCookieStore(WKPrivate)
- (uint64_t)_flushCookiesToDiskWithCompletionHandler:()WKPrivate;
- (uint64_t)_getCookiesForURL:()WKPrivate completionHandler:;
- (uint64_t)_setCookieAcceptPolicy:()WKPrivate completionHandler:;
@end

@implementation WKHTTPCookieStore(WKPrivate)

- (uint64_t)_getCookiesForURL:()WKPrivate completionHandler:
{
  v2 = *(a1 + 8);
  v3 = coreCookiesToNSCookies(a2);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (uint64_t)_setCookieAcceptPolicy:()WKPrivate completionHandler:
{
  *a1 = &unk_1F10F6780;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)_flushCookiesToDiskWithCompletionHandler:()WKPrivate
{
  *a1 = &unk_1F10F67A8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

@end