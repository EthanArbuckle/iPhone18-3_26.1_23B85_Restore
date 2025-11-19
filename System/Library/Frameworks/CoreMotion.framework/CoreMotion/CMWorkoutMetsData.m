@interface CMWorkoutMetsData
- (CMWorkoutMetsData)initWithCLWorkoutMets:(const CLWorkoutMets *)a3;
- (CMWorkoutMetsData)initWithCoder:(id)a3;
- (CMWorkoutMetsData)initWithSessionId:(id)a3 sourceId:(id)a4 startDate:(id)a5 endDate:(id)a6 mets:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMWorkoutMetsData

- (CMWorkoutMetsData)initWithCLWorkoutMets:(const CLWorkoutMets *)a3
{
  v19.receiver = self;
  v19.super_class = CMWorkoutMetsData;
  v4 = [(CMWorkoutMetsData *)&v19 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v5, v6, v7, a3->var0);
    v8 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v8, v9, v10, a3->var1);
    v11 = objc_alloc(MEMORY[0x1E696AD98]);
    v4->fMets = objc_msgSend_initWithDouble_(v11, v12, v13, a3->var4);
    v14 = objc_alloc(MEMORY[0x1E696AFB0]);
    v4->fSourceId = objc_msgSend_initWithUUIDBytes_(v14, v15, a3->var3);
    v16 = objc_alloc(MEMORY[0x1E696AFB0]);
    v4->fSessionId = objc_msgSend_initWithUUIDBytes_(v16, v17, a3->var2);
  }

  return v4;
}

- (CMWorkoutMetsData)initWithSessionId:(id)a3 sourceId:(id)a4 startDate:(id)a5 endDate:(id)a6 mets:(id)a7
{
  v24.receiver = self;
  v24.super_class = CMWorkoutMetsData;
  v14 = [(CMWorkoutMetsData *)&v24 init];
  if (v14)
  {
    v14->fStartDate = objc_msgSend_copy(a5, v12, v13);
    v14->fEndDate = objc_msgSend_copy(a6, v15, v16);
    v14->fMets = objc_msgSend_copy(a7, v17, v18);
    v14->fSourceId = objc_msgSend_copy(a4, v19, v20);
    v14->fSessionId = objc_msgSend_copy(a3, v21, v22);
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMWorkoutMetsData;
  [(CMWorkoutMetsData *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  started = objc_msgSend_startDate(self, v6, v7);
  v11 = objc_msgSend_endDate(self, v9, v10);
  v14 = objc_msgSend_mets(self, v12, v13);
  v17 = objc_msgSend_sessionId(self, v15, v16);
  v20 = objc_msgSend_sourceId(self, v18, v19);
  return objc_msgSend_stringWithFormat_(v3, v21, @"%@,<startDate, %@, endDate, %@, mets, %@, sessionId, %@, sourceId, %@>", v5, started, v11, v14, v17, v20);
}

- (CMWorkoutMetsData)initWithCoder:(id)a3
{
  v25.receiver = self;
  v25.super_class = CMWorkoutMetsData;
  v4 = [(CMWorkoutMetsData *)&v25 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kWorkoutMetsCodingKeyStartDate");
    v4->fStartDate = objc_msgSend_copy(v7, v8, v9);
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v11, v10, @"kWorkoutMetsCodingKeyEndDate");
    v4->fEndDate = objc_msgSend_copy(v12, v13, v14);
    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v16, v15, @"kWorkoutMetsCodingKeyMets");
    v4->fMets = objc_msgSend_copy(v17, v18, v19);
    v20 = objc_opt_class();
    v4->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v21, v20, @"kWorkoutMetsCodingKeySourceId");
    v22 = objc_opt_class();
    v4->fSessionId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v23, v22, @"kWorkoutMetsCodingKeySessionId");
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  fSourceId = self->fSourceId;
  fSessionId = self->fSessionId;
  fStartDate = self->fStartDate;
  fEndDate = self->fEndDate;
  fMets = self->fMets;

  return MEMORY[0x1EEE66B58](v7, sel_initWithSessionId_sourceId_startDate_endDate_mets_, fSessionId);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->fStartDate, @"kWorkoutMetsCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fEndDate, @"kWorkoutMetsCodingKeyEndDate");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fMets, @"kWorkoutMetsCodingKeyMets");
  objc_msgSend_encodeObject_forKey_(a3, v7, self->fSourceId, @"kWorkoutMetsCodingKeySourceId");
  fSessionId = self->fSessionId;

  objc_msgSend_encodeObject_forKey_(a3, v8, fSessionId, @"kWorkoutMetsCodingKeySessionId");
}

@end