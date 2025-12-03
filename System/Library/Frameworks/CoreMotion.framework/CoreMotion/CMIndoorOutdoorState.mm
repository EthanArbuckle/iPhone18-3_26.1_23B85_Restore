@interface CMIndoorOutdoorState
- (CMIndoorOutdoorState)initWithCoder:(id)coder;
- (CMIndoorOutdoorState)initWithStartDate:(id)date type:(int64_t)type confidence:(int64_t)confidence;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMIndoorOutdoorState

- (CMIndoorOutdoorState)initWithStartDate:(id)date type:(int64_t)type confidence:(int64_t)confidence
{
  v10.receiver = self;
  v10.super_class = CMIndoorOutdoorState;
  v8 = [(CMIndoorOutdoorState *)&v10 init];
  if (v8)
  {
    v8->fStartDate = date;
    v8->fType = type;
    v8->fConfidence = confidence;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIndoorOutdoorState;
  [(CMIndoorOutdoorState *)&v3 dealloc];
}

- (CMIndoorOutdoorState)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CMIndoorOutdoorState;
  v4 = [(CMIndoorOutdoorState *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->fStartDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kIndoorOutdoorStateCodingKeyStartDate");
    v4->fType = objc_msgSend_decodeIntegerForKey_(coder, v7, @"kIndoorOutdoorStateCodingKeyType");
    v4->fConfidence = objc_msgSend_decodeIntegerForKey_(coder, v8, @"kIndoorOutdoorStateCodingKeyConfidence");
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  fStartDate = self->fStartDate;
  fType = self->fType;
  fConfidence = self->fConfidence;

  return MEMORY[0x1EEE66B58](v7, sel_initWithStartDate_type_confidence_, fStartDate);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->fStartDate, @"kIndoorOutdoorStateCodingKeyStartDate");
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->fType, @"kIndoorOutdoorStateCodingKeyType");
  fConfidence = self->fConfidence;

  objc_msgSend_encodeInteger_forKey_(coder, v6, fConfidence, @"kIndoorOutdoorStateCodingKeyConfidence");
}

- (id)description
{
  if (qword_1ED71D7B8 != -1)
  {
    dispatch_once(&qword_1ED71D7B8, &unk_1F0E2A600);
  }

  v4 = qword_1ED71D7B0;
  started = objc_msgSend_startDate(self, a2, v2);
  v7 = objc_msgSend_stringFromDate_(v4, v6, started);
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v13 = objc_msgSend_type(self, v11, v12);
  v16 = objc_msgSend_confidence(self, v14, v15);
  return objc_msgSend_stringWithFormat_(v8, v17, @"%@, <startDate %@, type %ld, confidence %ld>", v10, v7, v13, v16);
}

@end