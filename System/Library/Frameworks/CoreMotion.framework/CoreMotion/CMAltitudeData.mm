@interface CMAltitudeData
- (CMAltitudeData)initWithAltitude:(float)altitude andTimestamp:(double)timestamp atBaseAltitude:(float)baseAltitude;
- (CMAltitudeData)initWithCoder:(id)coder;
- (CMAltitudeData)initWithTimestamp:(double)timestamp pressure:(float)pressure relativeAltitude:(float)altitude;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMAltitudeData

- (CMAltitudeData)initWithAltitude:(float)altitude andTimestamp:(double)timestamp atBaseAltitude:(float)baseAltitude
{
  v15.receiver = self;
  v15.super_class = CMAltitudeData;
  v7 = [(CMLogItem *)&v15 initWithTimestamp:timestamp];
  if (v7)
  {
    v8 = (1.0 - powf(altitude / 101320.0, 0.19026)) * 44331.0;
    v9 = [CMAltitudeDataInternal alloc];
    *&v10 = v8 - baseAltitude;
    *&v11 = altitude;
    v7->_internal = objc_msgSend_initWithAltitude_andPressure_(v9, v12, v13, v10, v11);
  }

  return v7;
}

- (CMAltitudeData)initWithTimestamp:(double)timestamp pressure:(float)pressure relativeAltitude:(float)altitude
{
  v14.receiver = self;
  v14.super_class = CMAltitudeData;
  v7 = [(CMLogItem *)&v14 initWithTimestamp:timestamp];
  if (v7)
  {
    v8 = [CMAltitudeDataInternal alloc];
    *&v9 = altitude;
    *&v10 = pressure;
    v7->_internal = objc_msgSend_initWithAltitude_andPressure_(v8, v11, v12, v9, v10);
  }

  return v7;
}

- (CMAltitudeData)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = CMAltitudeData;
  v4 = [(CMLogItem *)&v15 initWithCoder:?];
  if (v4)
  {
    v5 = [CMAltitudeDataInternal alloc];
    v4->_internal = v5;
    objc_msgSend_decodeDoubleForKey_(coder, v6, @"kCMAltitudeCodingKeyAltitude");
    v8 = v7;
    objc_msgSend_decodeDoubleForKey_(coder, v9, @"kCMAltitudeCodingKeyPressure");
    *&v11 = v10;
    *&v10 = v8;
    objc_msgSend_setAltitude_andPressure_(v5, v12, v13, v10, v11);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CMAltitudeData;
  [(CMLogItem *)&v8 encodeWithCoder:?];
  internal = self->_internal;
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCMAltitudeCodingKeyAltitude", internal[2]);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"kCMAltitudeCodingKeyPressure", internal[3]);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMAltitudeData;
  [(CMLogItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CMAltitudeData;
  v6 = [(CMLogItem *)&v8 copyWithZone:?];
  if (v6)
  {
    v6[2] = objc_msgSend_copyWithZone_(self->_internal, v5, zone);
  }

  return v6;
}

- (id)description
{
  internal = self->_internal;
  v3 = MEMORY[0x1E696AEC0];
  v4 = internal[2];
  v5 = internal[3];
  v9.receiver = self;
  v9.super_class = CMAltitudeData;
  [(CMLogItem *)&v9 timestamp];
  return objc_msgSend_stringWithFormat_(v3, v6, @"Altitude %f Pressure %f @ %f", *&v4, *&v5, v7);
}

@end