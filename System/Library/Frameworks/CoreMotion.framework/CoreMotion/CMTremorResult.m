@interface CMTremorResult
- (CMTremorResult)initWithCoder:(id)a3;
- (CMTremorResult)initWithParkinsonsResult:(const ParkinsonsResult *)a3;
- (CMTremorResult)initWithStartDate:(id)a3 endDate:(id)a4 percentUnknown:(float)a5 percentNone:(float)a6 percentSlight:(float)a7 percentMild:(float)a8 percentModerate:(float)a9 percentStrong:(float)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMTremorResult

- (CMTremorResult)initWithStartDate:(id)a3 endDate:(id)a4 percentUnknown:(float)a5 percentNone:(float)a6 percentSlight:(float)a7 percentMild:(float)a8 percentModerate:(float)a9 percentStrong:(float)a10
{
  v20.receiver = self;
  v20.super_class = CMTremorResult;
  v18 = [(CMTremorResult *)&v20 init];
  if (v18)
  {
    v18->_startDate = a3;
    v18->_endDate = a4;
    v18->_percentUnknown = a5;
    v18->_percentNone = a6;
    v18->_percentSlight = a7;
    v18->_percentMild = a8;
    v18->_percentModerate = a9;
    v18->_percentStrong = a10;
  }

  return v18;
}

- (CMTremorResult)initWithParkinsonsResult:(const ParkinsonsResult *)a3
{
  v12.receiver = self;
  v12.super_class = CMTremorResult;
  v4 = [(CMTremorResult *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->_startDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v5, v6, v7, a3->var0);
    v8 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->_endDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v8, v9, v10, a3->var1);
    v4->_percentUnknown = a3->var2 + a3->var3;
    v4->_percentNone = a3->var4;
    v4->_percentSlight = a3->var5;
    v4->_percentMild = a3->var6;
    v4->_percentModerate = a3->var7;
    v4->_percentStrong = a3->var8;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMTremorResult;
  [(CMTremorResult *)&v3 dealloc];
}

- (CMTremorResult)initWithCoder:(id)a3
{
  v22.receiver = self;
  v22.super_class = CMTremorResult;
  v4 = [(CMTremorResult *)&v22 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_startDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMMovementDisorderResultCodingKeyStartDate");
    v7 = objc_opt_class();
    v4->_endDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"kCMMovementDisorderResultCodingKeyEndDate");
    objc_msgSend_decodeFloatForKey_(a3, v9, @"kCMMovementDisorderResultCodingKeyNoObservation");
    v4->_percentUnknown = v10;
    objc_msgSend_decodeFloatForKey_(a3, v11, @"kCMMovementDisorderResultCodingKeyPercTremorAbsent");
    v4->_percentNone = v12;
    objc_msgSend_decodeFloatForKey_(a3, v13, @"kCMMovementDisorderResultCodingKeyPercTremorSlight");
    v4->_percentSlight = v14;
    objc_msgSend_decodeFloatForKey_(a3, v15, @"kCMMovementDisorderResultCodingKeyPercTremorMild");
    v4->_percentMild = v16;
    objc_msgSend_decodeFloatForKey_(a3, v17, @"kCMMovementDisorderResultCodingKeyPercTremorModerate");
    v4->_percentModerate = v18;
    objc_msgSend_decodeFloatForKey_(a3, v19, @"kCMMovementDisorderResultCodingKeyPercTremorStrong");
    v4->_percentStrong = v20;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  startDate = self->_startDate;
  endDate = self->_endDate;
  percentUnknown = self->_percentUnknown;
  percentNone = self->_percentNone;
  percentSlight = self->_percentSlight;
  percentMild = self->_percentMild;
  percentModerate = self->_percentModerate;
  percentStrong = self->_percentStrong;

  return MEMORY[0x1EEE66B58](v7, sel_initWithStartDate_endDate_percentUnknown_percentNone_percentSlight_percentMild_percentModerate_percentStrong_, startDate);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_startDate, @"kCMMovementDisorderResultCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->_endDate, @"kCMMovementDisorderResultCodingKeyEndDate");
  *&v6 = self->_percentUnknown;
  objc_msgSend_encodeFloat_forKey_(a3, v7, @"kCMMovementDisorderResultCodingKeyNoObservation", v6);
  *&v8 = self->_percentNone;
  objc_msgSend_encodeFloat_forKey_(a3, v9, @"kCMMovementDisorderResultCodingKeyPercTremorAbsent", v8);
  *&v10 = self->_percentSlight;
  objc_msgSend_encodeFloat_forKey_(a3, v11, @"kCMMovementDisorderResultCodingKeyPercTremorSlight", v10);
  *&v12 = self->_percentMild;
  objc_msgSend_encodeFloat_forKey_(a3, v13, @"kCMMovementDisorderResultCodingKeyPercTremorMild", v12);
  *&v14 = self->_percentModerate;
  objc_msgSend_encodeFloat_forKey_(a3, v15, @"kCMMovementDisorderResultCodingKeyPercTremorModerate", v14);
  *&v17 = self->_percentStrong;

  objc_msgSend_encodeFloat_forKey_(a3, v16, @"kCMMovementDisorderResultCodingKeyPercTremorStrong", v17);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  started = objc_msgSend_startDate(self, v6, v7);
  v11 = objc_msgSend_endDate(self, v9, v10);
  objc_msgSend_percentUnknown(self, v12, v13);
  v15 = v14;
  objc_msgSend_percentNone(self, v16, v17);
  v19 = v18;
  objc_msgSend_percentSlight(self, v20, v21);
  v23 = v22;
  objc_msgSend_percentMild(self, v24, v25);
  v27 = v26;
  objc_msgSend_percentModerate(self, v28, v29);
  v31 = v30;
  objc_msgSend_percentStrong(self, v32, v33);
  return objc_msgSend_stringWithFormat_(v3, v35, @"%@, <startDate %@, endDate %@, percentUnknown %.2f, percentNone %.2f, percentSlight %.2f, percentMild %.2f, percentModerate %.2f, percentStrong %.2f", v5, started, v11, *&v15, *&v19, *&v23, *&v27, *&v31, v34);
}

@end