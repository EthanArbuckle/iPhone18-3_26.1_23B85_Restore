@interface HMDeviceSetupSessionExchangeDataRequest
- (HMDeviceSetupSessionExchangeDataRequest)initWithExchangeData:(id)data qualityOfService:(int64_t)service completionHandler:(id)handler;
@end

@implementation HMDeviceSetupSessionExchangeDataRequest

- (HMDeviceSetupSessionExchangeDataRequest)initWithExchangeData:(id)data qualityOfService:(int64_t)service completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = HMDeviceSetupSessionExchangeDataRequest;
  v10 = [(HMDeviceSetupSessionExchangeDataRequest *)&v16 init];
  if (v10)
  {
    v11 = [dataCopy copy];
    exchangeData = v10->_exchangeData;
    v10->_exchangeData = v11;

    v10->_qos = service;
    v13 = _Block_copy(handlerCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v13;
  }

  return v10;
}

@end