@interface NSURL
- (BOOL)th_shouldSharedAppDelegateHandleURL;
@end

@implementation NSURL

- (BOOL)th_shouldSharedAppDelegateHandleURL
{
  v3 = [(NSString *)[(NSURL *)self scheme] lowercaseString];
  v4 = [(NSString *)v3 isEqualToString:@"ibooks"];
  if ([+[NSURL assetIDFromURL:](NSURL assetIDFromURL:{self), "length"}] && (v4 & 1) != 0)
  {
    return 1;
  }

  if ((([(NSURL *)self host]== 0) & v4) != 0)
  {
    return 0;
  }

  v6 = [+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];

  return [v6 containsObject:v3];
}

@end