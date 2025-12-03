@interface CMSedentaryTimerData
- (CMSedentaryTimerData)initWithCoder:(id)coder;
- (CMSedentaryTimerData)initWithStartDate:(double)date firedDate:(double)firedDate alarmType:(int64_t)type didWake:(BOOL)wake;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMSedentaryTimerData

- (CMSedentaryTimerData)initWithStartDate:(double)date firedDate:(double)firedDate alarmType:(int64_t)type didWake:(BOOL)wake
{
  v11.receiver = self;
  v11.super_class = CMSedentaryTimerData;
  result = [(CMSedentaryTimerData *)&v11 init];
  if (result)
  {
    result->fStartDate = date;
    result->fFiredDate = firedDate;
    result->fAlarmType = type;
    result->fDidWake = wake;
  }

  return result;
}

- (CMSedentaryTimerData)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = CMSedentaryTimerData;
  v5 = [(CMSedentaryTimerData *)&v12 init];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"kSedentaryTimerDataCodingKeyStartDate");
    v5->fStartDate = v6;
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"kSedentaryTimerDataCodingKeyFiredDate");
    v5->fFiredDate = v8;
    v5->fAlarmType = objc_msgSend_decodeIntegerForKey_(coder, v9, @"kSedentaryTimerDataCodingKeyAlarmType");
    v5->fDidWake = objc_msgSend_decodeBoolForKey_(coder, v10, @"kSedentaryTimerDataCodingKeyDidWake");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  fStartDate = self->fStartDate;
  fFiredDate = self->fFiredDate;
  fAlarmType = self->fAlarmType;
  fDidWake = self->fDidWake;

  return MEMORY[0x1EEE66B58](v7, sel_initWithStartDate_firedDate_alarmType_didWake_, fAlarmType);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"kSedentaryTimerDataCodingKeyStartDate", self->fStartDate);
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"kSedentaryTimerDataCodingKeyFiredDate", self->fFiredDate);
  objc_msgSend_encodeInteger_forKey_(coder, v6, self->fAlarmType, @"kSedentaryTimerDataCodingKeyAlarmType");
  fDidWake = self->fDidWake;

  objc_msgSend_encodeBool_forKey_(coder, v7, fDidWake, @"kSedentaryTimerDataCodingKeyDidWake");
}

- (id)description
{
  if (qword_1ED71D1E8 != -1)
  {
    dispatch_once(&qword_1ED71D1E8, &unk_1F0E29480);
  }

  fAlarmType = self->fAlarmType;
  if (fAlarmType > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E7533CB8[fAlarmType];
  }

  v6 = qword_1ED71D1E0;
  started = objc_msgSend_startDate(self, a2, v2);
  v9 = objc_msgSend_stringFromDate_(v6, v8, started);
  v10 = qword_1ED71D1E0;
  v13 = objc_msgSend_firedDate(self, v11, v12);
  v15 = objc_msgSend_stringFromDate_(v10, v14, v13);
  v16 = MEMORY[0x1E696AEC0];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = MEMORY[0x1E696AD98];
  v22 = objc_msgSend_didWake(self, v20, v21);
  v24 = objc_msgSend_numberWithBool_(v19, v23, v22);
  return objc_msgSend_stringWithFormat_(v16, v25, @"%@, <startDate %@, firedDate %@, alarmType %@, didWake %@>", v18, v9, v15, v5, v24);
}

@end