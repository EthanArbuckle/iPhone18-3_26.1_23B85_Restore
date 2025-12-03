@interface NSObject
- (id)HSProxy_conformsToProtocol:(id)protocol;
- (id)HSProxy_isKindOfClass:(id)class;
- (id)HSProxy_respondsToSelector:(id)selector;
@end

@implementation NSObject

- (id)HSProxy_isKindOfClass:(id)class
{
  classCopy = class;
  v4 = classCopy;
  if (classCopy)
  {
    NSClassFromString(classCopy);
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

- (id)HSProxy_respondsToSelector:(id)selector
{
  selectorCopy = selector;
  v4 = selectorCopy;
  if (selectorCopy)
  {
    NSSelectorFromString(selectorCopy);
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

- (id)HSProxy_conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = protocolCopy;
  if (protocolCopy)
  {
    v6 = NSProtocolFromString(protocolCopy);
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