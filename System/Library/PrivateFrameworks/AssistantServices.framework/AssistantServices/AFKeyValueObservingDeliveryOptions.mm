@interface AFKeyValueObservingDeliveryOptions
- (AFKeyValueObservingDeliveryOptions)initWithQueue:(id)queue qosClass:(unsigned int)class asynchronous:(BOOL)asynchronous;
@end

@implementation AFKeyValueObservingDeliveryOptions

- (AFKeyValueObservingDeliveryOptions)initWithQueue:(id)queue qosClass:(unsigned int)class asynchronous:(BOOL)asynchronous
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = AFKeyValueObservingDeliveryOptions;
  v10 = [(AFKeyValueObservingDeliveryOptions *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, queue);
    v11->_qosClass = class;
    v11->_asynchronous = asynchronous;
  }

  return v11;
}

@end