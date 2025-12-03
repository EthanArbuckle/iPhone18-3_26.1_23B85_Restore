@interface RAPAuxiliaryControlCarPlay
- (BOOL)isSameControlAsControl:(id)control;
- (RAPAuxiliaryControlCarPlay)initWithInformationFromDevice:(id)device accessory:(id)accessory displayController:(id)controller;
@end

@implementation RAPAuxiliaryControlCarPlay

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
  if (v6)
  {
    v7 = [(NSString *)self->_ID isEqual:v6[1]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (RAPAuxiliaryControlCarPlay)initWithInformationFromDevice:(id)device accessory:(id)accessory displayController:(id)controller
{
  deviceCopy = device;
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = RAPAuxiliaryControlCarPlay;
  v10 = [(RAPAuxiliaryControlCarPlay *)&v19 init];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = 0;
  if (deviceCopy && accessory && controllerCopy)
  {
    v12 = [deviceCopy ID];
    v13 = [v12 copy];
    ID = v10->_ID;
    v10->_ID = v13;

    connectedCarMainScreenInfo = [controllerCopy connectedCarMainScreenInfo];
    v16 = objc_alloc_init(GEORPCarPlayAuxiliaryControl);
    reportAProblemControlMessage = v10->_reportAProblemControlMessage;
    v10->_reportAProblemControlMessage = v16;

    [(GEORPCarPlayAuxiliaryControl *)v10->_reportAProblemControlMessage setCarInfo:connectedCarMainScreenInfo];
LABEL_6:
    v11 = v10;
  }

  return v11;
}

@end