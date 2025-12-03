@interface CMDyskineticSymptomResult
- (CMDyskineticSymptomResult)initWithCoder:(id)coder;
- (CMDyskineticSymptomResult)initWithParkinsonsResult:(const ParkinsonsResult *)result;
- (CMDyskineticSymptomResult)initWithStartDate:(id)date endDate:(id)endDate percentDyskinesiaUnlikely:(float)unlikely percentDyskinesiaLikely:(float)likely;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMDyskineticSymptomResult

- (CMDyskineticSymptomResult)initWithStartDate:(id)date endDate:(id)endDate percentDyskinesiaUnlikely:(float)unlikely percentDyskinesiaLikely:(float)likely
{
  v12.receiver = self;
  v12.super_class = CMDyskineticSymptomResult;
  v10 = [(CMDyskineticSymptomResult *)&v12 init];
  if (v10)
  {
    v10->_startDate = date;
    v10->_endDate = endDate;
    v10->_percentUnlikely = unlikely;
    v10->_percentLikely = likely;
  }

  return v10;
}

- (CMDyskineticSymptomResult)initWithParkinsonsResult:(const ParkinsonsResult *)result
{
  v12.receiver = self;
  v12.super_class = CMDyskineticSymptomResult;
  v4 = [(CMDyskineticSymptomResult *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->_startDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v5, v6, v7, result->var0);
    v8 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->_endDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v8, v9, v10, result->var1);
    v4->_percentUnlikely = 1.0 - result->var3;
    v4->_percentLikely = result->var3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMDyskineticSymptomResult;
  [(CMDyskineticSymptomResult *)&v3 dealloc];
}

- (CMDyskineticSymptomResult)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = CMDyskineticSymptomResult;
  v4 = [(CMDyskineticSymptomResult *)&v14 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_startDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kCMMovementDisorderResultCodingKeyStartDate");
    v7 = objc_opt_class();
    v4->_endDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"kCMMovementDisorderResultCodingKeyEndDate");
    objc_msgSend_decodeFloatForKey_(coder, v9, @"kCMMovementDisorderResultCodingKeyNoObservation");
    v4->_percentUnlikely = v10;
    objc_msgSend_decodeFloatForKey_(coder, v11, @"kCMMovementDisorderResultCodingKeyDyskinesiaLikely");
    v4->_percentLikely = v12;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  startDate = self->_startDate;
  endDate = self->_endDate;
  percentUnlikely = self->_percentUnlikely;
  percentLikely = self->_percentLikely;

  return MEMORY[0x1EEE66B58](v7, sel_initWithStartDate_endDate_percentDyskinesiaUnlikely_percentDyskinesiaLikely_, startDate);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_startDate, @"kCMMovementDisorderResultCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_endDate, @"kCMMovementDisorderResultCodingKeyEndDate");
  *&v6 = self->_percentUnlikely;
  objc_msgSend_encodeFloat_forKey_(coder, v7, @"kCMMovementDisorderResultCodingKeyNoObservation", v6);
  *&v9 = self->_percentLikely;

  objc_msgSend_encodeFloat_forKey_(coder, v8, @"kCMMovementDisorderResultCodingKeyDyskinesiaLikely", v9);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  started = objc_msgSend_startDate(self, v6, v7);
  v11 = objc_msgSend_endDate(self, v9, v10);
  objc_msgSend_percentUnlikely(self, v12, v13);
  v15 = v14;
  objc_msgSend_percentLikely(self, v16, v17);
  return objc_msgSend_stringWithFormat_(v3, v19, @"%@, <startDate %@, endDate %@, percentUnlikely %.2f, percentLikely %.2f", v5, started, v11, *&v15, v18);
}

@end