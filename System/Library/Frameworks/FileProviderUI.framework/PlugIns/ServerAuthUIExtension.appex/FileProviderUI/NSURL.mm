@interface NSURL
- (id)serverAuthUI_protocolFromScheme;
- (id)serverAuthUI_strippedDownURL;
@end

@implementation NSURL

- (id)serverAuthUI_strippedDownURL
{
  v2 = [NSURLComponents componentsWithURL:self resolvingAgainstBaseURL:0];
  [v2 setUser:0];
  [v2 setPassword:0];
  [v2 setPath:0];
  [v2 setQuery:0];
  [v2 setFragment:0];
  v3 = [v2 URL];

  return v3;
}

- (id)serverAuthUI_protocolFromScheme
{
  scheme = [(NSURL *)self scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"smb"])
  {
    v4 = kSecAttrProtocolSMB;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end