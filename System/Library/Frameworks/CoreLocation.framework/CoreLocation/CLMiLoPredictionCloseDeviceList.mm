@interface CLMiLoPredictionCloseDeviceList
- (CLMiLoPredictionCloseDeviceList)initWithCloseDeviceList:(id)list;
- (CLMiLoPredictionCloseDeviceList)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation CLMiLoPredictionCloseDeviceList

- (CLMiLoPredictionCloseDeviceList)initWithCloseDeviceList:(id)list
{
  v6.receiver = self;
  v6.super_class = CLMiLoPredictionCloseDeviceList;
  v4 = [(CLMiLoPredictionCloseDeviceList *)&v6 init];
  if (v4)
  {
    v4->_devices = list;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPredictionCloseDeviceList;
  [(CLMiLoPredictionCloseDeviceList *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  devices = self->_devices;

  return MEMORY[0x1EEE66B58](v4, sel_initWithCloseDeviceList_);
}

- (CLMiLoPredictionCloseDeviceList)initWithCoder:(id)coder
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyPredictionCloseDeviceListDevices"}];

  return MEMORY[0x1EEE66B58](self, sel_initWithCloseDeviceList_);
}

@end