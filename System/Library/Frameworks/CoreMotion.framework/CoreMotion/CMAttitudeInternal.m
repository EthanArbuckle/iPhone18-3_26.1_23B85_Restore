@interface CMAttitudeInternal
- (BOOL)isEqual:(id)a3;
- (CMAttitudeInternal)initWithQuaternion:(id)a3;
@end

@implementation CMAttitudeInternal

- (CMAttitudeInternal)initWithQuaternion:(id)a3
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v12.receiver = self;
  v12.super_class = CMAttitudeInternal;
  v7 = [(CMAttitudeInternal *)&v12 init];
  v10 = v7;
  if (v7)
  {
    objc_msgSend_setQuaternion_(v7, v8, v9, var0, var1, var2, var3);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->fQuaternion.w == *(a3 + 1) && self->fQuaternion.x == *(a3 + 2) && self->fQuaternion.y == *(a3 + 3) && self->fQuaternion.z == *(a3 + 4);
}

@end