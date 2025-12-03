@interface _WKAuthenticationExtensionsClientOutputs
- (_WKAuthenticationExtensionsClientOutputs)initWithAppid:(BOOL)appid;
@end

@implementation _WKAuthenticationExtensionsClientOutputs

- (_WKAuthenticationExtensionsClientOutputs)initWithAppid:(BOOL)appid
{
  v5.receiver = self;
  v5.super_class = _WKAuthenticationExtensionsClientOutputs;
  result = [(_WKAuthenticationExtensionsClientOutputs *)&v5 init];
  if (result)
  {
    result->_appid = appid;
  }

  return result;
}

@end