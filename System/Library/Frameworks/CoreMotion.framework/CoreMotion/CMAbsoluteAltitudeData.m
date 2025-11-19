@interface CMAbsoluteAltitudeData
- (CMAbsoluteAltitudeData)initWithAltitude:(double)a3 accuracy:(double)a4 precision:(double)a5 filteredPressure:(double)a6 status:(int64_t)a7 timestamp:(double)a8;
- (CMAbsoluteAltitudeData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAltitudeData:(double)a3 accuracy:(double)a4 precision:(double)a5 filteredPressure:(double)a6 status:(int64_t)a7;
@end

@implementation CMAbsoluteAltitudeData

- (CMAbsoluteAltitudeData)initWithAltitude:(double)a3 accuracy:(double)a4 precision:(double)a5 filteredPressure:(double)a6 status:(int64_t)a7 timestamp:(double)a8
{
  v14.receiver = self;
  v14.super_class = CMAbsoluteAltitudeData;
  result = [(CMLogItem *)&v14 initWithTimestamp:a8];
  if (result)
  {
    result->_altitudePrivate = a3;
    result->_absoluteAltitudeAccuracy = a4;
    result->_absoluteAltitudePrecision = a5;
    result->_absoluteAltitudeStatusInfo = a7;
    result->_filteredPressure = a6;
    result->_altitude = a3;
    result->_precision = a5;
    result->_accuracy = a4;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMAbsoluteAltitudeData;
  [(CMLogItem *)&v2 dealloc];
}

- (CMAbsoluteAltitudeData)initWithCoder:(id)a3
{
  v21.receiver = self;
  v21.super_class = CMAbsoluteAltitudeData;
  v5 = [(CMLogItem *)&v21 initWithCoder:?];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(a3, v4, @"kCMAbsoluteAltitudeCodingKeyAltitude");
    v7 = v6;
    objc_msgSend_decodeDoubleForKey_(a3, v8, @"kCMAbsoluteAltitudeCodingKeyAccuracy");
    v10 = v9;
    objc_msgSend_decodeDoubleForKey_(a3, v11, @"kCMAbsoluteAltitudeCodingKeyPrecision");
    v13 = v12;
    objc_msgSend_decodeDoubleForKey_(a3, v14, @"kCMAbsoluteAltitudeCodingKeyFilteredPressure");
    v16 = v15;
    v18 = objc_msgSend_decodeIntegerForKey_(a3, v17, @"kCMAbsoluteAltitudeCodingKeyStatusInfo");
    objc_msgSend_setAltitudeData_accuracy_precision_filteredPressure_status_(v5, v19, v18, v7, v10, v13, v16);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = CMAbsoluteAltitudeData;
  [(CMLogItem *)&v13 encodeWithCoder:?];
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"kCMAbsoluteAltitudeCodingKeyAltitude", self->_altitudePrivate);
  objc_msgSend_encodeDouble_forKey_(a3, v6, @"kCMAbsoluteAltitudeCodingKeyAccuracy", self->_absoluteAltitudeAccuracy);
  objc_msgSend_encodeDouble_forKey_(a3, v7, @"kCMAbsoluteAltitudeCodingKeyPrecision", self->_absoluteAltitudePrecision);
  objc_msgSend_encodeDouble_forKey_(a3, v8, @"kCMAbsoluteAltitudeCodingKeyFilteredPressure", self->_filteredPressure);
  objc_msgSend_encodeInteger_forKey_(a3, v9, self->_absoluteAltitudeStatusInfo, @"kCMAbsoluteAltitudeCodingKeyStatusInfo");
  objc_msgSend_encodeDouble_forKey_(a3, v10, @"altitude", self->_altitude);
  objc_msgSend_encodeDouble_forKey_(a3, v11, @"accuracy", self->_accuracy);
  objc_msgSend_encodeDouble_forKey_(a3, v12, @"precision", self->_precision);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CMAbsoluteAltitudeData;
  v4 = [(CMLogItem *)&v8 copyWithZone:a3];
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

- (void)setAltitudeData:(double)a3 accuracy:(double)a4 precision:(double)a5 filteredPressure:(double)a6 status:(int64_t)a7
{
  self->_altitudePrivate = a3;
  self->_absoluteAltitudeAccuracy = a4;
  self->_absoluteAltitudePrecision = a5;
  self->_filteredPressure = a6;
  self->_absoluteAltitudeStatusInfo = a7;
  self->_altitude = a3;
  self->_accuracy = a4;
  self->_precision = a5;
}

@end