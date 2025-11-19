@interface CMMagnetometerDataInternal
- (CMMagnetometerDataInternal)initWithMagneticField:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CMMagnetometerDataInternal

- (CMMagnetometerDataInternal)initWithMagneticField:(id)a3
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v14.receiver = self;
  v14.super_class = CMMagnetometerDataInternal;
  v6 = [(CMMagnetometerDataInternal *)&v14 init];
  v12 = v6;
  if (v6)
  {
    *&v9 = var0;
    *&v10 = var1;
    *&v11 = var2;
    objc_msgSend_setMagneticField_(v6, v7, v8, v9, v10, v11);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  result = objc_msgSend_init(v7, v8, v9);
  if (result)
  {
    v11 = *&self->fMagneticField.x;
    *(result + 4) = LODWORD(self->fMagneticField.z);
    *(result + 1) = v11;
  }

  return result;
}

@end