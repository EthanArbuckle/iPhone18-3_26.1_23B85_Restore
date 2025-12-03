@interface CMExerciseMinuteData
- (CMExerciseMinuteData)initWithCoder:(id)coder;
- (CMExerciseMinuteData)initWithStartDate:(double)date recordId:(int64_t)id sourceId:(id)sourceId;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMExerciseMinuteData

- (CMExerciseMinuteData)initWithStartDate:(double)date recordId:(int64_t)id sourceId:(id)sourceId
{
  v13.receiver = self;
  v13.super_class = CMExerciseMinuteData;
  v8 = [(CMExerciseMinuteData *)&v13 init];
  v11 = v8;
  if (v8)
  {
    v8->fStartDate = date;
    v8->fRecordId = id;
    v8->fSourceId = objc_msgSend_copy(sourceId, v9, v10);
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMExerciseMinuteData;
  [(CMExerciseMinuteData *)&v3 dealloc];
}

- (CMExerciseMinuteData)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CMExerciseMinuteData;
  v5 = [(CMExerciseMinuteData *)&v11 init];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"kExerciseMinuteDataCodingKeyStartDate");
    v5->fStartDate = v6;
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(coder, v7, @"kExerciseMinuteDataCodingKeyRecordId");
    v8 = objc_opt_class();
    v5->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kExerciseMinuteDataCodingKeySourceId");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  fStartDate = self->fStartDate;
  fRecordId = self->fRecordId;
  fSourceId = self->fSourceId;

  return MEMORY[0x1EEE66B58](v7, sel_initWithStartDate_recordId_sourceId_, fRecordId);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"kExerciseMinuteDataCodingKeyStartDate", self->fStartDate);
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->fRecordId, @"kExerciseMinuteDataCodingKeyRecordId");
  fSourceId = self->fSourceId;

  objc_msgSend_encodeObject_forKey_(coder, v6, fSourceId, @"kExerciseMinuteDataCodingKeySourceId");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_recordId(self, v6, v7);
  started = objc_msgSend_startDate(self, v9, v10);
  v14 = objc_msgSend_sourceId(self, v12, v13);
  return objc_msgSend_stringWithFormat_(v3, v15, @"%@, <recordId %lu, startDate %@, sourceId %@>", v5, v8, started, v14);
}

@end