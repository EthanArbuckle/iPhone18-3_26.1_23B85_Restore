@interface CMAbsoluteAltitudeData
- (CMAbsoluteAltitudeData)initWithAltitude:(double)altitude accuracy:(double)accuracy precision:(double)precision filteredPressure:(double)pressure status:(int64_t)status timestamp:(double)timestamp;
- (CMAbsoluteAltitudeData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAltitudeData:(double)data accuracy:(double)accuracy precision:(double)precision filteredPressure:(double)pressure status:(int64_t)status;
@end

@implementation CMAbsoluteAltitudeData

- (CMAbsoluteAltitudeData)initWithAltitude:(double)altitude accuracy:(double)accuracy precision:(double)precision filteredPressure:(double)pressure status:(int64_t)status timestamp:(double)timestamp
{
  v14.receiver = self;
  v14.super_class = CMAbsoluteAltitudeData;
  result = [(CMLogItem *)&v14 initWithTimestamp:timestamp];
  if (result)
  {
    result->_altitudePrivate = altitude;
    result->_absoluteAltitudeAccuracy = accuracy;
    result->_absoluteAltitudePrecision = precision;
    result->_absoluteAltitudeStatusInfo = status;
    result->_filteredPressure = pressure;
    result->_altitude = altitude;
    result->_precision = precision;
    result->_accuracy = accuracy;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMAbsoluteAltitudeData;
  [(CMLogItem *)&v2 dealloc];
}

- (CMAbsoluteAltitudeData)initWithCoder:(id)coder
{
  v21.receiver = self;
  v21.super_class = CMAbsoluteAltitudeData;
  v5 = [(CMLogItem *)&v21 initWithCoder:?];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"kCMAbsoluteAltitudeCodingKeyAltitude");
    v7 = v6;
    objc_msgSend_decodeDoubleForKey_(coder, v8, @"kCMAbsoluteAltitudeCodingKeyAccuracy");
    v10 = v9;
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"kCMAbsoluteAltitudeCodingKeyPrecision");
    v13 = v12;
    objc_msgSend_decodeDoubleForKey_(coder, v14, @"kCMAbsoluteAltitudeCodingKeyFilteredPressure");
    v16 = v15;
    v18 = objc_msgSend_decodeIntegerForKey_(coder, v17, @"kCMAbsoluteAltitudeCodingKeyStatusInfo");
    objc_msgSend_setAltitudeData_accuracy_precision_filteredPressure_status_(v5, v19, v18, v7, v10, v13, v16);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = CMAbsoluteAltitudeData;
  [(CMLogItem *)&v13 encodeWithCoder:?];
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"kCMAbsoluteAltitudeCodingKeyAltitude", self->_altitudePrivate);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCMAbsoluteAltitudeCodingKeyAccuracy", self->_absoluteAltitudeAccuracy);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"kCMAbsoluteAltitudeCodingKeyPrecision", self->_absoluteAltitudePrecision);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"kCMAbsoluteAltitudeCodingKeyFilteredPressure", self->_filteredPressure);
  objc_msgSend_encodeInteger_forKey_(coder, v9, self->_absoluteAltitudeStatusInfo, @"kCMAbsoluteAltitudeCodingKeyStatusInfo");
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"altitude", self->_altitude);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"accuracy", self->_accuracy);
  objc_msgSend_encodeDouble_forKey_(coder, v12, @"precision", self->_precision);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CMAbsoluteAltitudeData;
  v4 = [(CMLogItem *)&v8 copyWithZone:zone];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setAltitudeData_accuracy_precision_filteredPressure_status_(v4, v5, self->_absoluteAltitudeStatusInfo, self->_altitudePrivate, self->_absoluteAltitudeAccuracy, self->_absoluteAltitudePrecision, self->_filteredPressure);
  }

  return v6;
}

- (id)description
{
  altitudePrivate = self->_altitudePrivate;
  absoluteAltitudeAccuracy = self->_absoluteAltitudeAccuracy;
  absoluteAltitudePrecision = self->_absoluteAltitudePrecision;
  v5 = MEMORY[0x1E696AEC0];
  filteredPressure = self->_filteredPressure;
  absoluteAltitudeStatusInfo = self->_absoluteAltitudeStatusInfo;
  v11.receiver = self;
  v11.super_class = CMAbsoluteAltitudeData;
  [(CMLogItem *)&v11 timestamp];
  return objc_msgSend_stringWithFormat_(v5, v8, @"AbsoluteAltitude: %f, Accuracy: %f, Precision %f, FilteredPressure %f, statusInfo: %ld, timestamp :%f", *&altitudePrivate, *&absoluteAltitudeAccuracy, *&absoluteAltitudePrecision, *&filteredPressure, absoluteAltitudeStatusInfo, v9);
}

- (void)setAltitudeData:(double)data accuracy:(double)accuracy precision:(double)precision filteredPressure:(double)pressure status:(int64_t)status
{
  self->_altitudePrivate = data;
  self->_absoluteAltitudeAccuracy = accuracy;
  self->_absoluteAltitudePrecision = precision;
  self->_filteredPressure = pressure;
  self->_absoluteAltitudeStatusInfo = status;
  self->_altitude = data;
  self->_accuracy = accuracy;
  self->_precision = precision;
}

@end