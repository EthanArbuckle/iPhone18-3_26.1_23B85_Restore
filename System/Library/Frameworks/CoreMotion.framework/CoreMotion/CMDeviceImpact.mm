@interface CMDeviceImpact
- (CMDeviceImpact)initWithCoder:(id)a3;
- (CMDeviceImpact)initWithImpactType:(int64_t)a3 peakAcceleration:(double)a4 simulated:(BOOL)a5 date:(id)a6 timestamp:(double)a7;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMDeviceImpact

- (CMDeviceImpact)initWithImpactType:(int64_t)a3 peakAcceleration:(double)a4 simulated:(BOOL)a5 date:(id)a6 timestamp:(double)a7
{
  v12.receiver = self;
  v12.super_class = CMDeviceImpact;
  result = [(CMLogItem *)&v12 initWithTimestamp:a7];
  if (result)
  {
    result->_impactType = a3;
    result->_peakAcceleration = a4;
    result->_simulated = a5;
    result->_date = a6;
  }

  return result;
}

- (CMDeviceImpact)initWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = CMDeviceImpact;
  v5 = [(CMLogItem *)&v11 initWithCoder:?];
  if (v5)
  {
    v5->_impactType = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMDeviceImpactCodingKeyImpactType");
    objc_msgSend_decodeDoubleForKey_(a3, v6, @"kCMDeviceImpactCodingKeyPeakAcceleration");
    v5->_peakAcceleration = v7;
    v5->_simulated = objc_msgSend_decodeBoolForKey_(a3, v8, @"kCMDeviceImpactCodingKeySimulated");
    v5->_date = objc_msgSend_decodeObjectForKey_(a3, v9, @"kCMDeviceImpactCodingKeyDate");
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CMDeviceImpact;
  [(CMLogItem *)&v9 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(a3, v5, self->_impactType, @"kCMDeviceImpactCodingKeyImpactType");
  objc_msgSend_encodeDouble_forKey_(a3, v6, @"kCMDeviceImpactCodingKeyPeakAcceleration", self->_peakAcceleration);
  objc_msgSend_encodeBool_forKey_(a3, v7, self->_simulated, @"kCMDeviceImpactCodingKeySimulated");
  objc_msgSend_encodeObject_forKey_(a3, v8, self->_date, @"kCMDeviceImpactCodingKeyDate");
}

- (int64_t)compare:(id)a3
{
  v4 = objc_msgSend_date(self, a2, a3);
  v8 = objc_msgSend_date(a3, v5, v6);

  return objc_msgSend_compare_(v4, v7, v8);
}

- (id)description
{
  v3 = objc_opt_new();
  objc_msgSend_setDateFormat_(v3, v4, @"yyyy-MM-dd HH:mm:ss Z");
  v7 = objc_msgSend_localTimeZone(MEMORY[0x1E695DFE8], v5, v6);
  objc_msgSend_setTimeZone_(v3, v8, v7);
  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_timestamp(self, v12, v13);
  v15 = v14;
  v18 = objc_msgSend_date(self, v16, v17);
  v20 = objc_msgSend_stringFromDate_(v3, v19, v18);
  v23 = objc_msgSend_impactType(self, v21, v22);
  isSimulated = objc_msgSend_isSimulated(self, v24, v25);
  objc_msgSend_peakAcceleration(self, v27, v28);
  return objc_msgSend_stringWithFormat_(v9, v29, @"%@ @ %f,date,%@,impactType,%ld,simulated,%d,acceleration,%f", v11, v15, v20, v23, isSimulated, v30);
}

@end