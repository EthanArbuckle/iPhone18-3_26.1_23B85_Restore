@interface CMAttitudeInternal
- (BOOL)isEqual:(id)equal;
- (CMAttitudeInternal)initWithQuaternion:(id)quaternion;
@end

@implementation CMAttitudeInternal

- (CMAttitudeInternal)initWithQuaternion:(id)quaternion
{
  var3 = quaternion.var3;
  var2 = quaternion.var2;
  var1 = quaternion.var1;
  var0 = quaternion.var0;
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->fQuaternion.w == *(equal + 1) && self->fQuaternion.x == *(equal + 2) && self->fQuaternion.y == *(equal + 3) && self->fQuaternion.z == *(equal + 4);
}

@end