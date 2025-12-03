@interface _HDHealthServiceDataUpdate
- (_HDHealthServiceDataUpdate)initWithSessionIdentifier:(unint64_t)identifier characteristic:(id)characteristic device:(id)device error:(id)error;
@end

@implementation _HDHealthServiceDataUpdate

- (_HDHealthServiceDataUpdate)initWithSessionIdentifier:(unint64_t)identifier characteristic:(id)characteristic device:(id)device error:(id)error
{
  characteristicCopy = characteristic;
  deviceCopy = device;
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = _HDHealthServiceDataUpdate;
  v14 = [(_HDHealthServiceDataUpdate *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_sessionIdentifier = identifier;
    objc_storeStrong(&v14->_characteristic, characteristic);
    objc_storeStrong(&v15->_device, device);
    objc_storeStrong(&v15->_error, error);
  }

  return v15;
}

@end