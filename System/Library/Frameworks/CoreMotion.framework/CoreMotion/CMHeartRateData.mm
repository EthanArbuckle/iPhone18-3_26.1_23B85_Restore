@interface CMHeartRateData
+ (id)dataSourceName:(int64_t)name;
+ (id)modeName:(int64_t)name;
- (CMHeartRateData)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (CMHeartRateData)initWithCoder:(id)coder;
- (CMHeartRateData)initWithHeartRate:(double)rate confidence:(double)confidence timestamp:(double)timestamp startDate:(id)date error:(BOOL)error dataSource:(int64_t)source mode:(int64_t)mode;
- (CMHeartRateData)initWithHighFrequencyHeartRate:(id)rate;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMHeartRateData

- (CMHeartRateData)initWithHeartRate:(double)rate confidence:(double)confidence timestamp:(double)timestamp startDate:(id)date error:(BOOL)error dataSource:(int64_t)source mode:(int64_t)mode
{
  v18.receiver = self;
  v18.super_class = CMHeartRateData;
  v15 = [(CMLogItem *)&v18 initWithTimestamp:timestamp];
  v16 = v15;
  if (v15)
  {
    v15->_heartRate = rate;
    v15->_confidence = confidence;
    v15->_startDate = date;
    v16->_error = error;
    v16->_dataSource = source;
    v16->_mode = mode;
    v16->_frequency = -1.0;
  }

  return v16;
}

- (CMHeartRateData)initWithHighFrequencyHeartRate:(id)rate
{
  objc_msgSend_timestamp(rate, a2, rate);
  v12.receiver = self;
  v12.super_class = CMHeartRateData;
  v7 = [(CMLogItem *)&v12 initWithTimestamp:?];
  if (v7)
  {
    objc_msgSend_heartRate(rate, v5, v6);
    v7->_heartRate = v8;
    v7->_confidence = 1.0;
    v7->_startDate = objc_msgSend_date(rate, v9, v10);
    v7->_error = 0;
    v7->_dataSource = 3;
    v7->_mode = 1;
    v7->_frequency = 1.0;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMHeartRateData;
  [(CMLogItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CMHeartRateData;
  v4 = [(CMLogItem *)&v9 copyWithZone:zone];
  v7 = v4;
  if (v4)
  {
    v4[3] = *&self->_heartRate;
    v4[4] = *&self->_confidence;
    v4[5] = objc_msgSend_copy(self->_startDate, v5, v6);
    v7[16] = self->_error;
    *(v7 + 6) = self->_dataSource;
    *(v7 + 7) = self->_mode;
    *(v7 + 8) = *&self->_frequency;
  }

  return v7;
}

- (CMHeartRateData)initWithCoder:(id)coder
{
  v33.receiver = self;
  v33.super_class = CMHeartRateData;
  v4 = [(CMLogItem *)&v33 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCMHeartRateDataCodingKeyHeartRate");
    objc_msgSend_doubleValue(v7, v8, v9);
    v4->_heartRate = v10;
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"kCMHeartRateDataCodingKeyConfidence");
    objc_msgSend_doubleValue(v13, v14, v15);
    v4->_confidence = v16;
    v17 = objc_opt_class();
    v4->_startDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v18, v17, @"kCMHeartRateDataCodingKeyStartDate");
    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v20, v19, @"kCMHeartRateDataCodingKeyError");
    v4->_error = objc_msgSend_BOOLValue(v21, v22, v23);
    v4->_dataSource = objc_msgSend_decodeIntegerForKey_(coder, v24, @"kCMHeartRateDataCodingKeyDataSource");
    v4->_mode = objc_msgSend_decodeIntegerForKey_(coder, v25, @"kCMHeartRateDataCodingKeyMode");
    v26 = objc_opt_class();
    v28 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v27, v26, @"kCMHeartRateDataCodingKeyFrequency");
    objc_msgSend_doubleValue(v28, v29, v30);
    v4->_frequency = v31;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v23.receiver = self;
  v23.super_class = CMHeartRateData;
  [(CMLogItem *)&v23 encodeWithCoder:?];
  v7 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v5, v6, self->_heartRate);
  objc_msgSend_encodeObject_forKey_(coder, v8, v7, @"kCMHeartRateDataCodingKeyHeartRate");
  v11 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v9, v10, self->_confidence);
  objc_msgSend_encodeObject_forKey_(coder, v12, v11, @"kCMHeartRateDataCodingKeyConfidence");
  objc_msgSend_encodeObject_forKey_(coder, v13, self->_startDate, @"kCMHeartRateDataCodingKeyStartDate");
  v15 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v14, self->_error);
  objc_msgSend_encodeObject_forKey_(coder, v16, v15, @"kCMHeartRateDataCodingKeyError");
  objc_msgSend_encodeInteger_forKey_(coder, v17, self->_dataSource, @"kCMHeartRateDataCodingKeyDataSource");
  objc_msgSend_encodeInteger_forKey_(coder, v18, self->_mode, @"kCMHeartRateDataCodingKeyMode");
  v21 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v19, v20, self->_frequency);
  objc_msgSend_encodeObject_forKey_(coder, v22, v21, @"kCMHeartRateDataCodingKeyFrequency");
}

+ (id)dataSourceName:(int64_t)name
{
  if (name > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7535A90[name];
  }
}

+ (id)modeName:(int64_t)name
{
  if (name > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7535AB8[name];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  heartRate = self->_heartRate;
  confidence = self->_confidence;
  v18.receiver = self;
  v18.super_class = CMHeartRateData;
  [(CMLogItem *)&v18 timestamp];
  v10 = v9;
  startDate = self->_startDate;
  if (self->_error)
  {
    v12 = "true";
  }

  else
  {
    v12 = "false";
  }

  v13 = objc_msgSend_dataSourceName_(CMHeartRateData, v8, self->_dataSource);
  v15 = objc_msgSend_modeName_(CMHeartRateData, v14, self->_mode);
  return objc_msgSend_stringWithFormat_(v3, v16, @"%@,<heartRate %f, confidence %f, @ %f, startDate %@, error %s, dataSource %@, mode %@, frequency %f>", v5, *&heartRate, *&confidence, v10, startDate, v12, v13, v15, *&self->_frequency);
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMHeartRateData)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if (objc_msgSend_length(representation, a2, representation, metadata, timestamp))
  {
    v14.receiver = self;
    v14.super_class = CMHeartRateData;
    v7 = [(CMHeartRateData *)&v14 init];
    if (v7)
    {
      v8 = MEMORY[0x1E696ACD0];
      v9 = objc_opt_class();
      v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v8, v10, v9, representation, 0);
      if (v11)
      {
        v12 = v11;

        return v12;
      }
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

@end