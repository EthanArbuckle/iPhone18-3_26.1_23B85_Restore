@interface CMAltitudeDataInternal
- (CMAltitudeDataInternal)initWithAltitude:(float)a3 andPressure:(float)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CMAltitudeDataInternal

- (CMAltitudeDataInternal)initWithAltitude:(float)a3 andPressure:(float)a4
{
  v13.receiver = self;
  v13.super_class = CMAltitudeDataInternal;
  v6 = [(CMAltitudeDataInternal *)&v13 init];
  v11 = v6;
  if (v6)
  {
    *&v9 = a3;
    *&v10 = a4;
    objc_msgSend_setAltitude_andPressure_(v6, v7, v8, v9, v10);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  result = objc_msgSend_init(v7, v8, v9);
  if (result)
  {
    *(result + 2) = LODWORD(self->fAltitude);
    *(result + 3) = LODWORD(self->fPressure);
  }

  return result;
}

@end