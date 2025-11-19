@interface HMDeviceSetupSessionExchangeDataRequest
- (HMDeviceSetupSessionExchangeDataRequest)initWithExchangeData:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation HMDeviceSetupSessionExchangeDataRequest

- (HMDeviceSetupSessionExchangeDataRequest)initWithExchangeData:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = HMDeviceSetupSessionExchangeDataRequest;
  v10 = [(HMDeviceSetupSessionExchangeDataRequest *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    exchangeData = v10->_exchangeData;
    v10->_exchangeData = v11;

    v10->_qos = a4;
    v13 = _Block_copy(v9);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v13;
  }

  return v10;
}

@end