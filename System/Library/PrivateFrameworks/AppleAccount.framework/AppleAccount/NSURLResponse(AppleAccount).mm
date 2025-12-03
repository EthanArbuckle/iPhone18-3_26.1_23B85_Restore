@interface NSURLResponse(AppleAccount)
- (BOOL)aa_isJSON;
- (BOOL)aa_isPlist;
@end

@implementation NSURLResponse(AppleAccount)

- (BOOL)aa_isJSON
{
  mIMEType = [self MIMEType];
  v2 = [mIMEType compare:@"application/json" options:0] == 0;

  return v2;
}

- (BOOL)aa_isPlist
{
  mIMEType = [self MIMEType];
  v2 = ![mIMEType compare:@"application/x-apple-plist" options:0] || !objc_msgSend(mIMEType, "compare:options:", @"application/x-plist", 0) || objc_msgSend(mIMEType, "compare:options:", @"application/xml", 0) == 0;

  return v2;
}

@end