@interface SLAssistantTencentWeiboPostDelegate
- (NSBundle)locationPermissionBundle;
- (id)extractErrorDetailsFromResponseData:(id)data urlResponse:(id)response;
@end

@implementation SLAssistantTencentWeiboPostDelegate

- (NSBundle)locationPermissionBundle
{
  v2 = [@"/" stringByAppendingPathComponent:@"System/Library/Frameworks/Social.framework/XPCServices/com.apple.tencentweibo.xpc"];

  return [NSBundle bundleWithPath:v2];
}

- (id)extractErrorDetailsFromResponseData:(id)data urlResponse:(id)response
{
  if ([response statusCode] != &stru_158.reloff)
  {
    return 0;
  }

  v8 = 0;
  v5 = [NSJSONSerialization JSONObjectWithData:data options:0 error:&v8];
  if (!v5)
  {
    return 0;
  }

  v6 = objc_opt_class();
  if (![v6 isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  result = [v5 objectForKey:@"ret"];
  if (!result)
  {
    return 0;
  }

  return result;
}

@end