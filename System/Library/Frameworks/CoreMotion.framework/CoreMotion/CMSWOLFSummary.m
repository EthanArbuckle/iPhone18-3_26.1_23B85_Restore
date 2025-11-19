@interface CMSWOLFSummary
- (CMSWOLFSummary)initWithCLSWOLFSummary:(const CLSWOLFSummary *)a3;
- (CMSWOLFSummary)initWithCoder:(id)a3;
- (CMSWOLFSummary)initWithSessionId:(id)a3 sourceId:(id)a4 startDate:(id)a5 endDate:(id)a6 SWOLF:(double)a7 freestyleSWOLF:(double)a8 backstrokeSWOLF:(double)a9 breaststrokeSWOLF:(double)a10 butterflySWOLF:(double)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMSWOLFSummary

- (CMSWOLFSummary)initWithCLSWOLFSummary:(const CLSWOLFSummary *)a3
{
  v16.receiver = self;
  v16.super_class = CMSWOLFSummary;
  v4 = [(CMSWOLFSummary *)&v16 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v5, v6, v7, a3->var0);
    v8 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v8, v9, v10, a3->var1);
    v11 = objc_alloc(MEMORY[0x1E696AFB0]);
    v4->fSourceId = objc_msgSend_initWithUUIDBytes_(v11, v12, a3->var3);
    v13 = objc_alloc(MEMORY[0x1E696AFB0]);
    v4->fSessionId = objc_msgSend_initWithUUIDBytes_(v13, v14, a3->var2);
    v4->fSWOLF = a3->var4;
    v4->fFreestyleSWOLF = a3->var5;
    v4->fBackstrokeSWOLF = a3->var6;
    v4->fBreaststrokeSWOLF = a3->var7;
    v4->fButterflySWOLF = a3->var8;
  }

  return v4;
}

- (CMSWOLFSummary)initWithSessionId:(id)a3 sourceId:(id)a4 startDate:(id)a5 endDate:(id)a6 SWOLF:(double)a7 freestyleSWOLF:(double)a8 backstrokeSWOLF:(double)a9 breaststrokeSWOLF:(double)a10 butterflySWOLF:(double)a11
{
  v30.receiver = self;
  v30.super_class = CMSWOLFSummary;
  v22 = [(CMSWOLFSummary *)&v30 init];
  if (v22)
  {
    v22->fStartDate = objc_msgSend_copy(a5, v20, v21);
    v22->fEndDate = objc_msgSend_copy(a6, v23, v24);
    v22->fSourceId = objc_msgSend_copy(a4, v25, v26);
    v22->fSessionId = objc_msgSend_copy(a3, v27, v28);
    v22->fSWOLF = a7;
    v22->fFreestyleSWOLF = a8;
    v22->fBackstrokeSWOLF = a9;
    v22->fBreaststrokeSWOLF = a10;
    v22->fButterflySWOLF = a11;
  }

  return v22;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMSWOLFSummary;
  [(CMSWOLFSummary *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  started = objc_msgSend_startDate(self, v6, v7);
  v11 = objc_msgSend_endDate(self, v9, v10);
  v14 = objc_msgSend_sessionId(self, v12, v13);
  v17 = objc_msgSend_sourceId(self, v15, v16);
  objc_msgSend_SWOLF(self, v18, v19);
  v21 = v20;
  objc_msgSend_freestyleSWOLF(self, v22, v23);
  v25 = v24;
  objc_msgSend_backstrokeSWOLF(self, v26, v27);
  v29 = v28;
  objc_msgSend_breaststrokeSWOLF(self, v30, v31);
  v33 = v32;
  objc_msgSend_butterflySWOLF(self, v34, v35);
  return objc_msgSend_stringWithFormat_(v3, v36, @"%@,<startDate, %@, endDate, %@, sessionId, %@, sourceId, %@, SWOLF, %.02f, freestyleSWOLF, %.02f, backstrokeSWOLF, %.02f, breaststrokeSWOLF, %.02f, butterflySWOLF, %.02f>", v5, started, v11, v14, v17, v21, v25, v29, v33, v37);
}

- (CMSWOLFSummary)initWithCoder:(id)a3
{
  v30.receiver = self;
  v30.super_class = CMSWOLFSummary;
  v4 = [(CMSWOLFSummary *)&v30 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kSWOLFSummaryCodingKeyStartDate");
    v4->fStartDate = objc_msgSend_copy(v7, v8, v9);
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v11, v10, @"kSWOLFSummaryCodingKeyEndDate");
    v4->fEndDate = objc_msgSend_copy(v12, v13, v14);
    v15 = objc_opt_class();
    v4->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v16, v15, @"kSWOLFSummaryCodingKeySourceId");
    v17 = objc_opt_class();
    v4->fSessionId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v18, v17, @"kSWOLFSummaryCodingKeySessionId");
    objc_msgSend_decodeDoubleForKey_(a3, v19, @"kSWOLFSummaryCodingKeySWOLF");
    v4->fSWOLF = v20;
    objc_msgSend_decodeDoubleForKey_(a3, v21, @"kSWOLFSummaryCodingKeyFreestyleSWOLF");
    v4->fFreestyleSWOLF = v22;
    objc_msgSend_decodeDoubleForKey_(a3, v23, @"kSWOLFSummaryCodingKeyBackstrokeSWOLF");
    v4->fBackstrokeSWOLF = v24;
    objc_msgSend_decodeDoubleForKey_(a3, v25, @"kSWOLFSummaryCodingKeyBreaststrokeSWOLF");
    v4->fBreaststrokeSWOLF = v26;
    objc_msgSend_decodeDoubleForKey_(a3, v27, @"kSWOLFSummaryCodingKeyButterflySWOLF");
    v4->fButterflySWOLF = v28;
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
  fSWOLF = self->fSWOLF;
  fFreestyleSWOLF = self->fFreestyleSWOLF;
  fBackstrokeSWOLF = self->fBackstrokeSWOLF;
  fBreaststrokeSWOLF = self->fBreaststrokeSWOLF;
  fButterflySWOLF = self->fButterflySWOLF;

  return MEMORY[0x1EEE66B58](v7, sel_initWithSessionId_sourceId_startDate_endDate_SWOLF_freestyleSWOLF_backstrokeSWOLF_breaststrokeSWOLF_butterflySWOLF_, fSessionId);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->fStartDate, @"kSWOLFSummaryCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fEndDate, @"kSWOLFSummaryCodingKeyEndDate");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fSourceId, @"kSWOLFSummaryCodingKeySourceId");
  objc_msgSend_encodeObject_forKey_(a3, v7, self->fSessionId, @"kSWOLFSummaryCodingKeySessionId");
  objc_msgSend_encodeDouble_forKey_(a3, v8, @"kSWOLFSummaryCodingKeySWOLF", self->fSWOLF);
  objc_msgSend_encodeDouble_forKey_(a3, v9, @"kSWOLFSummaryCodingKeyFreestyleSWOLF", self->fFreestyleSWOLF);
  objc_msgSend_encodeDouble_forKey_(a3, v10, @"kSWOLFSummaryCodingKeyBackstrokeSWOLF", self->fBackstrokeSWOLF);
  objc_msgSend_encodeDouble_forKey_(a3, v11, @"kSWOLFSummaryCodingKeyBreaststrokeSWOLF", self->fBreaststrokeSWOLF);
  fButterflySWOLF = self->fButterflySWOLF;

  objc_msgSend_encodeDouble_forKey_(a3, v12, @"kSWOLFSummaryCodingKeyButterflySWOLF", fButterflySWOLF);
}

@end