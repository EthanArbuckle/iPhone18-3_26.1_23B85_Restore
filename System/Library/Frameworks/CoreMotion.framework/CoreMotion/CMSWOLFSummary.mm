@interface CMSWOLFSummary
- (CMSWOLFSummary)initWithCLSWOLFSummary:(const CLSWOLFSummary *)summary;
- (CMSWOLFSummary)initWithCoder:(id)coder;
- (CMSWOLFSummary)initWithSessionId:(id)id sourceId:(id)sourceId startDate:(id)date endDate:(id)endDate SWOLF:(double)f freestyleSWOLF:(double)lF backstrokeSWOLF:(double)oLF breaststrokeSWOLF:(double)self0 butterflySWOLF:(double)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMSWOLFSummary

- (CMSWOLFSummary)initWithCLSWOLFSummary:(const CLSWOLFSummary *)summary
{
  v16.receiver = self;
  v16.super_class = CMSWOLFSummary;
  v4 = [(CMSWOLFSummary *)&v16 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v5, v6, v7, summary->var0);
    v8 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v8, v9, v10, summary->var1);
    v11 = objc_alloc(MEMORY[0x1E696AFB0]);
    v4->fSourceId = objc_msgSend_initWithUUIDBytes_(v11, v12, summary->var3);
    v13 = objc_alloc(MEMORY[0x1E696AFB0]);
    v4->fSessionId = objc_msgSend_initWithUUIDBytes_(v13, v14, summary->var2);
    v4->fSWOLF = summary->var4;
    v4->fFreestyleSWOLF = summary->var5;
    v4->fBackstrokeSWOLF = summary->var6;
    v4->fBreaststrokeSWOLF = summary->var7;
    v4->fButterflySWOLF = summary->var8;
  }

  return v4;
}

- (CMSWOLFSummary)initWithSessionId:(id)id sourceId:(id)sourceId startDate:(id)date endDate:(id)endDate SWOLF:(double)f freestyleSWOLF:(double)lF backstrokeSWOLF:(double)oLF breaststrokeSWOLF:(double)self0 butterflySWOLF:(double)self1
{
  v30.receiver = self;
  v30.super_class = CMSWOLFSummary;
  v22 = [(CMSWOLFSummary *)&v30 init];
  if (v22)
  {
    v22->fStartDate = objc_msgSend_copy(date, v20, v21);
    v22->fEndDate = objc_msgSend_copy(endDate, v23, v24);
    v22->fSourceId = objc_msgSend_copy(sourceId, v25, v26);
    v22->fSessionId = objc_msgSend_copy(id, v27, v28);
    v22->fSWOLF = f;
    v22->fFreestyleSWOLF = lF;
    v22->fBackstrokeSWOLF = oLF;
    v22->fBreaststrokeSWOLF = wOLF;
    v22->fButterflySWOLF = sWOLF;
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

- (CMSWOLFSummary)initWithCoder:(id)coder
{
  v30.receiver = self;
  v30.super_class = CMSWOLFSummary;
  v4 = [(CMSWOLFSummary *)&v30 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"kSWOLFSummaryCodingKeyStartDate");
    v4->fStartDate = objc_msgSend_copy(v7, v8, v9);
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kSWOLFSummaryCodingKeyEndDate");
    v4->fEndDate = objc_msgSend_copy(v12, v13, v14);
    v15 = objc_opt_class();
    v4->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"kSWOLFSummaryCodingKeySourceId");
    v17 = objc_opt_class();
    v4->fSessionId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v18, v17, @"kSWOLFSummaryCodingKeySessionId");
    objc_msgSend_decodeDoubleForKey_(coder, v19, @"kSWOLFSummaryCodingKeySWOLF");
    v4->fSWOLF = v20;
    objc_msgSend_decodeDoubleForKey_(coder, v21, @"kSWOLFSummaryCodingKeyFreestyleSWOLF");
    v4->fFreestyleSWOLF = v22;
    objc_msgSend_decodeDoubleForKey_(coder, v23, @"kSWOLFSummaryCodingKeyBackstrokeSWOLF");
    v4->fBackstrokeSWOLF = v24;
    objc_msgSend_decodeDoubleForKey_(coder, v25, @"kSWOLFSummaryCodingKeyBreaststrokeSWOLF");
    v4->fBreaststrokeSWOLF = v26;
    objc_msgSend_decodeDoubleForKey_(coder, v27, @"kSWOLFSummaryCodingKeyButterflySWOLF");
    v4->fButterflySWOLF = v28;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
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

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->fStartDate, @"kSWOLFSummaryCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->fEndDate, @"kSWOLFSummaryCodingKeyEndDate");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->fSourceId, @"kSWOLFSummaryCodingKeySourceId");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->fSessionId, @"kSWOLFSummaryCodingKeySessionId");
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"kSWOLFSummaryCodingKeySWOLF", self->fSWOLF);
  objc_msgSend_encodeDouble_forKey_(coder, v9, @"kSWOLFSummaryCodingKeyFreestyleSWOLF", self->fFreestyleSWOLF);
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"kSWOLFSummaryCodingKeyBackstrokeSWOLF", self->fBackstrokeSWOLF);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"kSWOLFSummaryCodingKeyBreaststrokeSWOLF", self->fBreaststrokeSWOLF);
  fButterflySWOLF = self->fButterflySWOLF;

  objc_msgSend_encodeDouble_forKey_(coder, v12, @"kSWOLFSummaryCodingKeyButterflySWOLF", fButterflySWOLF);
}

@end