@interface AFKeyValueObservingDeliveryOptions
- (AFKeyValueObservingDeliveryOptions)initWithQueue:(id)a3 qosClass:(unsigned int)a4 asynchronous:(BOOL)a5;
@end

@implementation AFKeyValueObservingDeliveryOptions

- (AFKeyValueObservingDeliveryOptions)initWithQueue:(id)a3 qosClass:(unsigned int)a4 asynchronous:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = AFKeyValueObservingDeliveryOptions;
  v10 = [(AFKeyValueObservingDeliveryOptions *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, a3);
    v11->_qosClass = a4;
    v11->_asynchronous = a5;
  }

  return v11;
}

@end