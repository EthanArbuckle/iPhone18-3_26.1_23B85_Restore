@interface CMDeviceImpact
- (CMDeviceImpact)initWithCoder:(id)coder;
- (CMDeviceImpact)initWithImpactType:(int64_t)type peakAcceleration:(double)acceleration simulated:(BOOL)simulated date:(id)date timestamp:(double)timestamp;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMDeviceImpact

- (CMDeviceImpact)initWithImpactType:(int64_t)type peakAcceleration:(double)acceleration simulated:(BOOL)simulated date:(id)date timestamp:(double)timestamp
{
  v12.receiver = self;
  v12.super_class = CMDeviceImpact;
  result = [(CMLogItem *)&v12 initWithTimestamp:timestamp];
  if (result)
  {
    result->_impactType = type;
    result->_peakAcceleration = acceleration;
    result->_simulated = simulated;
    result->_date = date;
  }

  return result;
}

- (CMDeviceImpact)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CMDeviceImpact;
  v5 = [(CMLogItem *)&v11 initWithCoder:?];
  if (v5)
  {
    v5->_impactType = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMDeviceImpactCodingKeyImpactType");
    objc_msgSend_decodeDoubleForKey_(coder, v6, @"kCMDeviceImpactCodingKeyPeakAcceleration");
    v5->_peakAcceleration = v7;
    v5->_simulated = objc_msgSend_decodeBoolForKey_(coder, v8, @"kCMDeviceImpactCodingKeySimulated");
    v5->_date = objc_msgSend_decodeObjectForKey_(coder, v9, @"kCMDeviceImpactCodingKeyDate");
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CMDeviceImpact;
  [(CMLogItem *)&v9 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_impactType, @"kCMDeviceImpactCodingKeyImpactType");
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCMDeviceImpactCodingKeyPeakAcceleration", self->_peakAcceleration);
  objc_msgSend_encodeBool_forKey_(coder, v7, self->_simulated, @"kCMDeviceImpactCodingKeySimulated");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->_date, @"kCMDeviceImpactCodingKeyDate");
}

- (int64_t)compare:(id)compare
{
  v4 = objc_msgSend_date(self, a2, compare);
  v8 = objc_msgSend_date(compare, v5, v6);

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