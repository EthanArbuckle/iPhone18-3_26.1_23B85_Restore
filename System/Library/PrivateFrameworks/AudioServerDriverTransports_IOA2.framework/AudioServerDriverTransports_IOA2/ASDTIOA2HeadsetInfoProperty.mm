@interface ASDTIOA2HeadsetInfoProperty
- (ASDTIOA2HeadsetInfoProperty)initWithIOA2Device:(id)device;
- (id)value;
@end

@implementation ASDTIOA2HeadsetInfoProperty

- (ASDTIOA2HeadsetInfoProperty)initWithIOA2Device:(id)device
{
  deviceCopy = device;
  v5 = [objc_alloc(MEMORY[0x277CEFB68]) initWithAddress:{0x676C6F6268656164, 0}];
  v9.receiver = self;
  v9.super_class = ASDTIOA2HeadsetInfoProperty;
  v6 = [(ASDCustomProperty *)&v9 initWithAddress:v5 propertyDataType:1886155636 qualifierDataType:0];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_device, deviceCopy);
  }

  return v7;
}

- (id)value
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v3 = [WeakRetained customPropertyWithKey:@"headset info"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

@end