@interface NSObject
- (id)HSProxy_conformsToProtocol:(id)a3;
- (id)HSProxy_isKindOfClass:(id)a3;
- (id)HSProxy_respondsToSelector:(id)a3;
@end

@implementation NSObject

- (id)HSProxy_isKindOfClass:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    NSClassFromString(v3);
    v5 = [NSNumber numberWithBool:objc_opt_isKindOfClass() & 1];
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v7);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [NSObject(HSProxyPrivate) HSProxy_isKindOfClass:];
    }

    v5 = 0;
  }

  return v5;
}

- (id)HSProxy_respondsToSelector:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    NSSelectorFromString(v3);
    v5 = [NSNumber numberWithBool:objc_opt_respondsToSelector() & 1];
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v7);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [NSObject(HSProxyPrivate) HSProxy_respondsToSelector:];
    }

    v5 = 0;
  }

  return v5;
}

- (id)HSProxy_conformsToProtocol:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = NSProtocolFromString(v4);
    v7 = [NSNumber numberWithBool:[self conformsToProtocol:v6]];
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRemoteObject.mm", v9);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [NSObject(HSProxyPrivate) HSProxy_conformsToProtocol:];
    }

    v7 = 0;
  }

  return v7;
}

@end