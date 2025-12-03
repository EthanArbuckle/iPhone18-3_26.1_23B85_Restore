@interface CMHighFrequencyHeartRateData
- (CMHighFrequencyHeartRateData)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (CMHighFrequencyHeartRateData)initWithCoder:(id)coder;
- (CMHighFrequencyHeartRateData)initWithHeartRateData:(id)data;
- (CMHighFrequencyHeartRateDataConfidence)confidence;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMHighFrequencyHeartRateData

- (CMHighFrequencyHeartRateData)initWithHeartRateData:(id)data
{
  objc_msgSend_frequency(data, a2, data);
  if (v7 >= 1.0 && (objc_msgSend_confidence(data, v5, v6), v10 >= 0.4))
  {
    objc_msgSend_timestamp(data, v8, v9);
    v19.receiver = self;
    v19.super_class = CMHighFrequencyHeartRateData;
    v11 = [(CMLogItem *)&v19 initWithTimestamp:?];
    if (v11)
    {
      started = data;
      goto LABEL_7;
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CMHighFrequencyHeartRateData;
    v11 = [(CMLogItem *)&v20 initWithTimestamp:0.0];
    if (v11)
    {
      v12 = [CMHeartRateData alloc];
      v15 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v13, v14, 0.0);
      started = objc_msgSend_initWithHeartRate_confidence_timestamp_startDate_error_dataSource_mode_(v12, v16, v15, 0, 3, 1, 0.0, 0.0, 0.0);
LABEL_7:
      v11->_heartRateData = started;
    }
  }

  return v11;
}

- (void)dealloc
{
  self->_heartRateData = 0;
  v3.receiver = self;
  v3.super_class = CMHighFrequencyHeartRateData;
  [(CMLogItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CMHighFrequencyHeartRateData;
  v6 = [(CMLogItem *)&v8 copyWithZone:zone];
  if (v6)
  {
    v6[2] = objc_msgSend_copy(self->_heartRateData, v4, v5);
  }

  return v6;
}

- (CMHighFrequencyHeartRateData)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CMHighFrequencyHeartRateData;
  v4 = [(CMLogItem *)&v8 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_heartRateData = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCMHighFrequencyHeartRateDataCodingKeyData");
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CMHighFrequencyHeartRateData;
  [(CMLogItem *)&v6 encodeWithCoder:?];
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_heartRateData, @"kCMHighFrequencyHeartRateDataCodingKeyData");
}

- (CMHighFrequencyHeartRateDataConfidence)confidence
{
  objc_msgSend_confidence(self->_heartRateData, a2, v2);
  if (v6 < 0.6)
  {
    return 0;
  }

  objc_msgSend_confidence(self->_heartRateData, v4, v5);
  if (v10 < 0.8)
  {
    return 1;
  }

  objc_msgSend_confidence(self->_heartRateData, v8, v9);
  if (v11 >= 1.0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMHighFrequencyHeartRateData)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if (!objc_msgSend_length(representation, a2, representation, metadata, timestamp))
  {
    goto LABEL_7;
  }

  v22.receiver = self;
  v22.super_class = CMHighFrequencyHeartRateData;
  self = [(CMHighFrequencyHeartRateData *)&v22 init];
  if (!self)
  {
    return self;
  }

  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_alloc(MEMORY[0x1E695DFD8]);
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_initWithObjects_(v8, v11, v9, v10, 0);
  v14 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v7, v13, v12, representation, 0);
  if (!v14)
  {
LABEL_7:

    return 0;
  }

  v15 = v14;
  v16 = objc_opt_class();
  if (v16 == objc_opt_class())
  {

    return v15;
  }

  v17 = objc_opt_class();
  if (v17 == objc_opt_class())
  {

    v18 = [CMHighFrequencyHeartRateData alloc];
    return objc_msgSend_initWithHeartRateData_(v18, v19, v15);
  }

  return self;
}

- (id)sr_dictionaryRepresentation
{
  v24[3] = *MEMORY[0x1E69E9840];
  v23[0] = @"heartRate";
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_heartRate(self, a2, v2);
  v24[0] = objc_msgSend_numberWithDouble_(v4, v5, v6);
  v23[1] = @"confidence";
  v7 = MEMORY[0x1E696AD98];
  v10 = objc_msgSend_confidence(self, v8, v9);
  v24[1] = objc_msgSend_numberWithInteger_(v7, v11, v10);
  v23[2] = @"startTime";
  v12 = MEMORY[0x1E696AD98];
  v15 = objc_msgSend_date(self, v13, v14);
  objc_msgSend_timeIntervalSinceReferenceDate(v15, v16, v17);
  v24[2] = objc_msgSend_numberWithDouble_(v12, v18, v19);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, v24, v23, 3);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

@end