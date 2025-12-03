@interface CMNatalieData
- (CMNatalieData)initWithCoder:(id)coder;
- (CMNatalieData)initWithStartDate:(double)date recordId:(int64_t)id activityType:(int64_t)type mets:(double)mets natalies:(double)natalies basalNatalies:(double)basalNatalies sourceId:(id)sourceId;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMNatalieData

- (CMNatalieData)initWithStartDate:(double)date recordId:(int64_t)id activityType:(int64_t)type mets:(double)mets natalies:(double)natalies basalNatalies:(double)basalNatalies sourceId:(id)sourceId
{
  v21.receiver = self;
  v21.super_class = CMNatalieData;
  v16 = [(CMLogItem *)&v21 initWithTimestamp:0.0];
  v19 = v16;
  if (v16)
  {
    v16->fStartDate = date;
    v16->fRecordId = id;
    v16->fActivityType = type;
    v16->fMets = mets;
    v16->fNatalies = natalies;
    v16->fBasalNatalies = basalNatalies;
    v16->fSourceId = objc_msgSend_copy(sourceId, v17, v18);
  }

  return v19;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMNatalieData;
  [(CMLogItem *)&v3 dealloc];
}

- (CMNatalieData)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = CMNatalieData;
  v5 = [(CMLogItem *)&v18 initWithCoder:?];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"kNatalieDataCodingKeyStartDate");
    v5->fStartDate = v6;
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(coder, v7, @"kNatalieDataCodingKeyRecordId");
    v5->fActivityType = objc_msgSend_decodeIntegerForKey_(coder, v8, @"kNatalieDataCodingKeySession");
    objc_msgSend_decodeDoubleForKey_(coder, v9, @"kNatalieDataCodingKeyMets");
    v5->fMets = v10;
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"kNatalieDataCodingKeyNatalies");
    v5->fNatalies = v12;
    objc_msgSend_decodeDoubleForKey_(coder, v13, @"kNatalieDataCodingKeyBasalNatalies");
    v5->fBasalNatalies = v14;
    v15 = objc_opt_class();
    v5->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"kNatalieDataCodingKeySourceId");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  fStartDate = self->fStartDate;
  fMets = self->fMets;
  fNatalies = self->fNatalies;
  fRecordId = self->fRecordId;
  fActivityType = self->fActivityType;
  fBasalNatalies = self->fBasalNatalies;
  fSourceId = self->fSourceId;

  return MEMORY[0x1EEE66B58](v7, sel_initWithStartDate_recordId_activityType_mets_natalies_basalNatalies_sourceId_, fRecordId);
}

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = CMNatalieData;
  [(CMLogItem *)&v12 encodeWithCoder:?];
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"kNatalieDataCodingKeyStartDate", self->fStartDate);
  objc_msgSend_encodeInteger_forKey_(coder, v6, self->fRecordId, @"kNatalieDataCodingKeyRecordId");
  objc_msgSend_encodeInteger_forKey_(coder, v7, self->fActivityType, @"kNatalieDataCodingKeySession");
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"kNatalieDataCodingKeyMets", self->fMets);
  objc_msgSend_encodeDouble_forKey_(coder, v9, @"kNatalieDataCodingKeyNatalies", self->fNatalies);
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"kNatalieDataCodingKeyBasalNatalies", self->fBasalNatalies);
  objc_msgSend_encodeObject_forKey_(coder, v11, self->fSourceId, @"kNatalieDataCodingKeySourceId");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_recordId(self, v6, v7);
  started = objc_msgSend_startDate(self, v9, v10);
  v13 = objc_msgSend_workoutName_(CMWorkout, v12, self->fActivityType);
  v16 = objc_msgSend_mets(self, v14, v15);
  v19 = objc_msgSend_stringValue(v16, v17, v18);
  v22 = objc_msgSend_natalies(self, v20, v21);
  v25 = objc_msgSend_stringValue(v22, v23, v24);
  v28 = objc_msgSend_basalNatalies(self, v26, v27);
  v31 = objc_msgSend_stringValue(v28, v29, v30);
  v34 = objc_msgSend_sourceId(self, v32, v33);
  return objc_msgSend_stringWithFormat_(v3, v35, @"%@, <recordId %lu, startDate %@, session %@, mets %@, natalies %@, basalNatalies %@, sourceId %@>", v5, v8, started, v13, v19, v25, v31, v34);
}

@end