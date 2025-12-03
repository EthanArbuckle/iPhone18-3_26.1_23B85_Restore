@interface WKFrameInfo(SafariServicesExtras)
- (id)_sf_titleForJavaScriptDialog;
@end

@implementation WKFrameInfo(SafariServicesExtras)

- (id)_sf_titleForJavaScriptDialog
{
  securityOrigin = [self securityOrigin];
  host = [securityOrigin host];
  if ([host length])
  {
    v3 = MEMORY[0x1E696AD60];
    protocol = [securityOrigin protocol];
    host2 = [securityOrigin host];
    _webkit_decodeHostName = [host2 _webkit_decodeHostName];
    v7 = [v3 stringWithFormat:@"%@://%@", protocol, _webkit_decodeHostName];

    if ([securityOrigin port])
    {
      [v7 appendFormat:@":%ld", objc_msgSend(securityOrigin, "port")];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end