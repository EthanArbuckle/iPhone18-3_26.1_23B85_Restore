@interface IUIRTIInputSystemSourceSession
- (id)sessionIndependentPayloadDelegate;
@end

@implementation IUIRTIInputSystemSourceSession

- (id)sessionIndependentPayloadDelegate
{
  payloadDelegate = [(IUIRTIInputSystemSourceSession *)self payloadDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    payloadDelegate2 = [(IUIRTIInputSystemSourceSession *)self payloadDelegate];
    dataTransportDelegate = [payloadDelegate2 dataTransportDelegate];
  }

  else
  {
    dataTransportDelegate = 0;
  }

  serviceSessionPayloadDelegate = [dataTransportDelegate serviceSessionPayloadDelegate];

  return serviceSessionPayloadDelegate;
}

@end