@interface RAPAuxiliaryControlWatch
- (BOOL)isSameControlAsControl:(id)a3;
- (RAPAuxiliaryControlWatch)initWithPropertiesOfDevice:(id)a3;
@end

@implementation RAPAuxiliaryControlWatch

- (BOOL)isSameControlAsControl:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (RAPAuxiliaryControlWatch)initWithPropertiesOfDevice:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = RAPAuxiliaryControlWatch;
  v5 = [(RAPAuxiliaryControlWatch *)&v19 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v4 valueForProperty:NRDevicePropertySerialNumber];
  serialNumber = v5->_serialNumber;
  v5->_serialNumber = v6;

  v8 = [v4 valueForProperty:NRDevicePropertyIsActive];
  v5->_active = [v8 BOOLValue];

  v9 = [v4 valueForProperty:NRDevicePropertyProductType];
  v10 = [v4 valueForProperty:NRDevicePropertySystemVersion];
  v11 = [v4 valueForProperty:NRDevicePropertySystemBuildVersion];
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