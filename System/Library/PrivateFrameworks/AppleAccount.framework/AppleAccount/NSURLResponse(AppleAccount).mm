@interface NSURLResponse(AppleAccount)
- (BOOL)aa_isJSON;
- (BOOL)aa_isPlist;
@end

@implementation NSURLResponse(AppleAccount)

- (BOOL)aa_isJSON
{
  v1 = [a1 MIMEType];
  v2 = [v1 compare:@"application/json" options:0] == 0;

  return v2;
}

- (BOOL)aa_isPlist
{
  v1 = [a1 MIMEType];
  v2 = ![v1 compare:@"application/x-apple-plist" options:0] || !objc_msgSend(v1, "compare:options:", @"application/x-plist", 0) || objc_msgSend(v1, "compare:options:", @"application/xml", 0) == 0;

  return v2;
}

@end