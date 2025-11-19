@interface CMDyskineticSymptomResult
- (CMDyskineticSymptomResult)initWithCoder:(id)a3;
- (CMDyskineticSymptomResult)initWithParkinsonsResult:(const ParkinsonsResult *)a3;
- (CMDyskineticSymptomResult)initWithStartDate:(id)a3 endDate:(id)a4 percentDyskinesiaUnlikely:(float)a5 percentDyskinesiaLikely:(float)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMDyskineticSymptomResult

- (CMDyskineticSymptomResult)initWithStartDate:(id)a3 endDate:(id)a4 percentDyskinesiaUnlikely:(float)a5 percentDyskinesiaLikely:(float)a6
{
  v12.receiver = self;
  v12.super_class = CMDyskineticSymptomResult;
  v10 = [(CMDyskineticSymptomResult *)&v12 init];
  if (v10)
  {
    v10->_startDate = a3;
    v10->_endDate = a4;
    v10->_percentUnlikely = a5;
    v10->_percentLikely = a6;
  }

  return v10;
}

- (CMDyskineticSymptomResult)initWithParkinsonsResult:(const ParkinsonsResult *)a3
{
  v12.receiver = self;
  v12.super_class = CMDyskineticSymptomResult;
  v4 = [(CMDyskineticSymptomResult *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->_startDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v5, v6, v7, a3->var0);
    v8 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->_endDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v8, v9, v10, a3->var1);
    v4->_percentUnlikely = 1.0 - a3->var3;
    v4->_percentLikely = a3->var3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMDyskineticSymptomResult;
  [(CMDyskineticSymptomResult *)&v3 dealloc];
}

- (CMDyskineticSymptomResult)initWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = CMDyskineticSymptomResult;
  v4 = [(CMDyskineticSymptomResult *)&v14 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_startDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMMovementDisorderResultCodingKeyStartDate");
    v7 = objc_opt_class();
    v4->_endDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"kCMMovementDisorderResultCodingKeyEndDate");
    objc_msgSend_decodeFloatForKey_(a3, v9, @"kCMMovementDisorderResultCodingKeyNoObservation");
    v4->_percentUnlikely = v10;
    objc_msgSend_decodeFloatForKey_(a3, v11, @"kCMMovementDisorderResultCodingKeyDyskinesiaLikely");
    v4->_percentLikely = v12;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  startDate = self->_startDate;
  endDate = self->_endDate;
  percentUnlikely = self->_percentUnlikely;
  percentLikely = self->_percentLikely;

  return MEMORY[0x1EEE66B58](v7, sel_initWithStartDate_endDate_percentDyskinesiaUnlikely_percentDyskinesiaLikely_, startDate);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_startDate, @"kCMMovementDisorderResultCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->_endDate, @"kCMMovementDisorderResultCodingKeyEndDate");
  *&v6 = self->_percentUnlikely;
  objc_msgSend_encodeFloat_forKey_(a3, v7, @"kCMMovementDisorderResultCodingKeyNoObservation", v6);
  *&v9 = self->_percentLikely;

  objc_msgSend_encodeFloat_forKey_(a3, v8, @"kCMMovementDisorderResultCodingKeyDyskinesiaLikely", v9);
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