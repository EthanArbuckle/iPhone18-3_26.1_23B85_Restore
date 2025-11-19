@interface RAPAuxiliaryControlCarPlay
- (BOOL)isSameControlAsControl:(id)a3;
- (RAPAuxiliaryControlCarPlay)initWithInformationFromDevice:(id)a3 accessory:(id)a4 displayController:(id)a5;
@end

@implementation RAPAuxiliaryControlCarPlay

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

- (RAPAuxiliaryControlCarPlay)initWithInformationFromDevice:(id)a3 accessory:(id)a4 displayController:(id)a5
{
  v8 = a3;
  v9 = a5;
  v19.receiver = self;
  v19.super_class = RAPAuxiliaryControlCarPlay;
  v10 = [(RAPAuxiliaryControlCarPlay *)&v19 init];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = 0;
  if (v8 && a4 && v9)
  {
    v12 = [v8 ID];
    v13 = [v12 copy];
    ID = v10->_ID;
    v10->_ID = v13;

    v15 = [v9 connectedCarMainScreenInfo];
    v16 = objc_alloc_init(GEORPCarPlayAuxiliaryControl);
    reportAProblemControlMessage = v10->_reportAProblemControlMessage;
    v10->_reportAProblemControlMessage = v16;

    [(GEORPCarPlayAuxiliaryControl *)v10->_reportAProblemControlMessage setCarInfo:v15];
LABEL_6:
    v11 = v10;
  }

  return v11;
}

@end