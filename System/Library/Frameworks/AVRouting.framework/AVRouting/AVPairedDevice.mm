@interface AVPairedDevice
- (AVPairedDevice)initWithName:(id)name ID:(id)d modelID:(id)iD playing:(BOOL)playing productName:(id)productName;
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

- (AVPairedDevice)initWithName:(id)name ID:(id)d modelID:(id)iD playing:(BOOL)playing productName:(id)productName
{
  v16.receiver = self;
  v16.super_class = AVPairedDevice;
  v12 = [(AVPairedDevice *)&v16 init];
  if (v12 && (v13 = objc_alloc_init(AVPairedDeviceInternal), (v12->_ivars = v13) != 0))
  {
    v12->_ivars->name = [name copy];
    v12->_ivars->ID = [d copy];
    v12->_ivars->modelID = [iD copy];
    v12->_ivars->playing = playing;
    v12->_ivars->productName = [productName copy];
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end