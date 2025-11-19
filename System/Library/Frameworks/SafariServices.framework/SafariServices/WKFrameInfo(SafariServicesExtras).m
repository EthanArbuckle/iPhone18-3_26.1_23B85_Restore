@interface WKFrameInfo(SafariServicesExtras)
- (id)_sf_titleForJavaScriptDialog;
@end

@implementation WKFrameInfo(SafariServicesExtras)

- (id)_sf_titleForJavaScriptDialog
{
  v1 = [a1 securityOrigin];
  v2 = [v1 host];
  if ([v2 length])
  {
    v3 = MEMORY[0x1E696AD60];
    v4 = [v1 protocol];
    v5 = [v1 host];
    v6 = [v5 _webkit_decodeHostName];
    v7 = [v3 stringWithFormat:@"%@://%@", v4, v6];

    if ([v1 port])
    {
      [v7 appendFormat:@":%ld", objc_msgSend(v1, "port")];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end