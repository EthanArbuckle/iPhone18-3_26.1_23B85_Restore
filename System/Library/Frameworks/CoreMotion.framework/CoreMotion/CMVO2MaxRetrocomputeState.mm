@interface CMVO2MaxRetrocomputeState
- (CMVO2MaxRetrocomputeState)initWithCoder:(id)coder;
- (CMVO2MaxRetrocomputeState)initWithStatus:(int64_t)status startDate:(id)date endDate:(id)endDate meanDelta:(id)delta;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMVO2MaxRetrocomputeState

- (CMVO2MaxRetrocomputeState)initWithStatus:(int64_t)status startDate:(id)date endDate:(id)endDate meanDelta:(id)delta
{
  v12.receiver = self;
  v12.super_class = CMVO2MaxRetrocomputeState;
  v10 = [(CMVO2MaxRetrocomputeState *)&v12 init];
  if (v10)
  {
    v10->_startDate = date;
    v10->_endDate = endDate;
    v10->_meanDelta = delta;
    v10->_status = status;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMVO2MaxRetrocomputeState;
  [(CMVO2MaxRetrocomputeState *)&v3 dealloc];
}

- (CMVO2MaxRetrocomputeState)initWithCoder:(id)coder
{
  v22.receiver = self;
  v22.super_class = CMVO2MaxRetrocomputeState;
  v4 = [(CMVO2MaxRetrocomputeState *)&v22 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kMetMinuteDataCodingKeyStartDate");
    v4->_startDate = objc_msgSend_copy(v7, v8, v9);
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kMetMinuteDataCodingKeyEndDate");
    v4->_endDate = objc_msgSend_copy(v12, v13, v14);
    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"kMetMinuteDataCodingKeyMeanDelta");
    v4->_meanDelta = objc_msgSend_copy(v17, v18, v19);
    v4->_status = objc_msgSend_decodeInt64ForKey_(coder, v20, @"kMetMinuteDataCodingKeyStatus");
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  status = self->_status;
  startDate = self->_startDate;
  endDate = self->_endDate;
  meanDelta = self->_meanDelta;

  return MEMORY[0x1EEE66B58](v7, sel_initWithStatus_startDate_endDate_meanDelta_, status);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_startDate, @"kMetMinuteDataCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_endDate, @"kMetMinuteDataCodingKeyEndDate");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->_meanDelta, @"kMetMinuteDataCodingKeyMeanDelta");
  status = self->_status;

  objc_msgSend_encodeInt64_forKey_(coder, v7, status, @"kMetMinuteDataCodingKeyStatus");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  started = objc_msgSend_startDate(self, v6, v7);
  v11 = objc_msgSend_endDate(self, v9, v10);
  v14 = objc_msgSend_meanDelta(self, v12, v13);
  v17 = objc_msgSend_status(self, v15, v16);
  return objc_msgSend_stringWithFormat_(v3, v18, @"%@, <startDate, %@, endDate, %@, meanDelta, %@, status %ld>", v5, started, v11, v14, v17);
}

@end