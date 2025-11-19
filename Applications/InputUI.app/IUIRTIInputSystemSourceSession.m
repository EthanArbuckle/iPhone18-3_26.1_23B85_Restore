@interface IUIRTIInputSystemSourceSession
- (id)sessionIndependentPayloadDelegate;
@end

@implementation IUIRTIInputSystemSourceSession

- (id)sessionIndependentPayloadDelegate
{
  v3 = [(IUIRTIInputSystemSourceSession *)self payloadDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(IUIRTIInputSystemSourceSession *)self payloadDelegate];
    v6 = [v5 dataTransportDelegate];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 serviceSessionPayloadDelegate];

  return v7;
}

@end