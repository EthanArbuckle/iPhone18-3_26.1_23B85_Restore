@interface _HDHealthServiceDataUpdate
- (_HDHealthServiceDataUpdate)initWithSessionIdentifier:(unint64_t)a3 characteristic:(id)a4 device:(id)a5 error:(id)a6;
@end

@implementation _HDHealthServiceDataUpdate

- (_HDHealthServiceDataUpdate)initWithSessionIdentifier:(unint64_t)a3 characteristic:(id)a4 device:(id)a5 error:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = _HDHealthServiceDataUpdate;
  v14 = [(_HDHealthServiceDataUpdate *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_sessionIdentifier = a3;
    objc_storeStrong(&v14->_characteristic, a4);
    objc_storeStrong(&v15->_device, a5);
    objc_storeStrong(&v15->_error, a6);
  }

  return v15;
}

@end