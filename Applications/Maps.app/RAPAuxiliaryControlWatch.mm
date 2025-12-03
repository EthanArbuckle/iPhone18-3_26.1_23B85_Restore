@interface RAPAuxiliaryControlWatch
- (BOOL)isSameControlAsControl:(id)control;
- (RAPAuxiliaryControlWatch)initWithPropertiesOfDevice:(id)device;
@end

@implementation RAPAuxiliaryControlWatch

- (BOOL)isSameControlAsControl:(id)control
{
  controlCopy = control;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = controlCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = [v6[1] isEqual:self->_serialNumber];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (RAPAuxiliaryControlWatch)initWithPropertiesOfDevice:(id)device
{
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = RAPAuxiliaryControlWatch;
  v5 = [(RAPAuxiliaryControlWatch *)&v19 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [deviceCopy valueForProperty:NRDevicePropertySerialNumber];
  serialNumber = v5->_serialNumber;
  v5->_serialNumber = v6;

  v8 = [deviceCopy valueForProperty:NRDevicePropertyIsActive];
  v5->_active = [v8 BOOLValue];

  v9 = [deviceCopy valueForProperty:NRDevicePropertyProductType];
  v10 = [deviceCopy valueForProperty:NRDevicePropertySystemVersion];
  v11 = [deviceCopy valueForProperty:NRDevicePropertySystemBuildVersion];
  v12 = v11;
  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && v11 != 0)
  {
    v16 = objc_alloc_init(GEORPWatchAuxiliaryControl);
    reportAProblemControlMessage = v5->_reportAProblemControlMessage;
    v5->_reportAProblemControlMessage = v16;

    [(GEORPWatchAuxiliaryControl *)v5->_reportAProblemControlMessage setHardwareIdentifier:v9];
    [(GEORPWatchAuxiliaryControl *)v5->_reportAProblemControlMessage setOsVersion:v10];
    [(GEORPWatchAuxiliaryControl *)v5->_reportAProblemControlMessage setOsBuild:v12];

LABEL_11:
    v15 = v5;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

@end