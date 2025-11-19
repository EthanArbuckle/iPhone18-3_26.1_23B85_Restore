@interface CLMiLoPredictionCloseDeviceList
- (CLMiLoPredictionCloseDeviceList)initWithCloseDeviceList:(id)a3;
- (CLMiLoPredictionCloseDeviceList)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation CLMiLoPredictionCloseDeviceList

- (CLMiLoPredictionCloseDeviceList)initWithCloseDeviceList:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLMiLoPredictionCloseDeviceList;
  v4 = [(CLMiLoPredictionCloseDeviceList *)&v6 init];
  if (v4)
  {
    v4->_devices = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoPredictionCloseDeviceList;
  [(CLMiLoPredictionCloseDeviceList *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  devices = self->_devices;

  return MEMORY[0x1EEE66B58](v4, sel_initWithCloseDeviceList_);
}

- (CLMiLoPredictionCloseDeviceList)initWithCoder:(id)a3
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyPredictionCloseDeviceListDevices"}];

  return MEMORY[0x1EEE66B58](self, sel_initWithCloseDeviceList_);
}

@end