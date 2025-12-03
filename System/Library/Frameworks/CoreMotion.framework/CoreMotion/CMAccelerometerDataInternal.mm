@interface CMAccelerometerDataInternal
- (CMAccelerometerDataInternal)initWithAcceleration:(id)acceleration;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CMAccelerometerDataInternal

- (CMAccelerometerDataInternal)initWithAcceleration:(id)acceleration
{
  var2 = acceleration.var2;
  var1 = acceleration.var1;
  var0 = acceleration.var0;
  v14.receiver = self;
  v14.super_class = CMAccelerometerDataInternal;
  v6 = [(CMAccelerometerDataInternal *)&v14 init];
  v12 = v6;
  if (v6)
  {
    *&v9 = var0;
    *&v10 = var1;
    *&v11 = var2;
    objc_msgSend_setAcceleration_(v6, v7, v8, v9, v10, v11);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  result = objc_msgSend_init(v7, v8, v9);
  if (result)
  {
    v11 = *&self->fAcceleration.x;
    *(result + 4) = LODWORD(self->fAcceleration.z);
    *(result + 1) = v11;
  }

  return result;
}

@end