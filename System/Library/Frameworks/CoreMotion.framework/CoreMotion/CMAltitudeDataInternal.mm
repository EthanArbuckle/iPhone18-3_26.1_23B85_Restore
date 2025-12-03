@interface CMAltitudeDataInternal
- (CMAltitudeDataInternal)initWithAltitude:(float)altitude andPressure:(float)pressure;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CMAltitudeDataInternal

- (CMAltitudeDataInternal)initWithAltitude:(float)altitude andPressure:(float)pressure
{
  v13.receiver = self;
  v13.super_class = CMAltitudeDataInternal;
  v6 = [(CMAltitudeDataInternal *)&v13 init];
  v11 = v6;
  if (v6)
  {
    *&v9 = altitude;
    *&v10 = pressure;
    objc_msgSend_setAltitude_andPressure_(v6, v7, v8, v9, v10);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  result = objc_msgSend_init(v7, v8, v9);
  if (result)
  {
    *(result + 2) = LODWORD(self->fAltitude);
    *(result + 3) = LODWORD(self->fPressure);
  }

  return result;
}

@end