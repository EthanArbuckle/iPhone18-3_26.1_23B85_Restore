@interface MPSExternalPluginBase
- (MPSExternalPluginBase)init;
- (MPSExternalPluginBase)initWithDevice:(id)a3;
- (NSString)debugDescription;
@end

@implementation MPSExternalPluginBase

- (MPSExternalPluginBase)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, a2, v2, v3);

  return 0;
}

- (MPSExternalPluginBase)initWithDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSExternalPluginBase;
  result = [(MPSExternalPluginBase *)&v5 init];
  if (result)
  {
    result->_self = result;
    result->_device = a3;
  }

  return result;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = MPSExternalPluginBase;
  v4 = [(MPSExternalPluginBase *)&v15 debugDescription];
  device = self->_device;
  v10 = objc_msgSend_name(device, v6, v7, v8, v9);
  return objc_msgSend_stringWithFormat_(v3, v11, @"%@\n\tdevice:     %p %@\n", v12, v13, v4, device, v10);
}

@end