@interface CMGyroDataInternal
- (CMGyroDataInternal)initWithRotationRate:(id)rate;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CMGyroDataInternal

- (CMGyroDataInternal)initWithRotationRate:(id)rate
{
  var2 = rate.var2;
  var1 = rate.var1;
  var0 = rate.var0;
  v14.receiver = self;
  v14.super_class = CMGyroDataInternal;
  v6 = [(CMGyroDataInternal *)&v14 init];
  v12 = v6;
  if (v6)
  {
    *&v9 = var0;
    *&v10 = var1;
    *&v11 = var2;
    objc_msgSend_setRotationRate_(v6, v7, v8, v9, v10, v11);
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
    v11 = *&self->fRotationRate.x;
    *(result + 4) = LODWORD(self->fRotationRate.z);
    *(result + 1) = v11;
  }

  return result;
}

@end