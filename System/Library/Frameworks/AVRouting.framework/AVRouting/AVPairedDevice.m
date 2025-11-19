@interface AVPairedDevice
- (AVPairedDevice)initWithName:(id)a3 ID:(id)a4 modelID:(id)a5 playing:(BOOL)a6 productName:(id)a7;
- (void)dealloc;
@end

@implementation AVPairedDevice

- (void)dealloc
{
  ivars = self->_ivars;
  if (ivars)
  {

    ivars = self->_ivars;
  }

  v4.receiver = self;
  v4.super_class = AVPairedDevice;
  [(AVPairedDevice *)&v4 dealloc];
}

- (AVPairedDevice)initWithName:(id)a3 ID:(id)a4 modelID:(id)a5 playing:(BOOL)a6 productName:(id)a7
{
  v16.receiver = self;
  v16.super_class = AVPairedDevice;
  v12 = [(AVPairedDevice *)&v16 init];
  if (v12 && (v13 = objc_alloc_init(AVPairedDeviceInternal), (v12->_ivars = v13) != 0))
  {
    v12->_ivars->name = [a3 copy];
    v12->_ivars->ID = [a4 copy];
    v12->_ivars->modelID = [a5 copy];
    v12->_ivars->playing = a6;
    v12->_ivars->productName = [a7 copy];
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end