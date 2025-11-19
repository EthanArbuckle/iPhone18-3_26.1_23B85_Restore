@interface CMSignificantElevationSample
- (CMSignificantElevationSample)initWithCoder:(id)a3;
- (CMSignificantElevationSample)initWithFilteredElevation:(const CLElevationChangeEntry *)a3;
- (CMSignificantElevationSample)initWithRecordId:(unint64_t)a3 sourceId:(id)a4 startDate:(id)a5 endDate:(id)a6 elevationAscended:(id)a7 elevationDescended:(id)a8;
- (CMSignificantElevationSample)initWithSignificantElevation:(const CLSignificantElevation *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMSignificantElevationSample

- (CMSignificantElevationSample)initWithRecordId:(unint64_t)a3 sourceId:(id)a4 startDate:(id)a5 endDate:(id)a6 elevationAscended:(id)a7 elevationDescended:(id)a8
{
  if (!a4 || !a5 || !a6 || !a7 || !a8)
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CMAltitude.mm", 201, @"Invalid parameter not satisfying: %@", @"sourceId && startDate && endDate && elevationAscended && elevationDescended");
  }

  v21.receiver = self;
  v21.super_class = CMSignificantElevationSample;
  v16 = [(CMSignificantElevationSample *)&v21 init];
  v17 = v16;
  if (v16)
  {
    v16->fRecordId = a3;
    v16->fSourceId = a4;
    v17->fStartDate = a5;
    v17->fEndDate = a6;
    v17->fElevationAscended = a7;
    v17->fElevationDescended = a8;
  }

  return v17;
}

- (CMSignificantElevationSample)initWithSignificantElevation:(const CLSignificantElevation *)a3
{
  v23.receiver = self;
  v23.super_class = CMSignificantElevationSample;
  v4 = [(CMSignificantElevationSample *)&v23 init];
  v5 = v4;
  if (v4)
  {
    v4->fRecordId = a3->var0;
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v5->fSourceId = objc_msgSend_initWithUUIDBytes_(v6, v7, a3->var1);
    v8 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v8, v9, v10, a3->var2);
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v11, v12, v13, a3->var3);
    v14 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v15) = a3->var4;
    v5->fElevationAscended = objc_msgSend_initWithDouble_(v14, v16, v17, v15 / 100.0);
    v18 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v19) = a3->var5;
    v5->fElevationDescended = objc_msgSend_initWithDouble_(v18, v20, v21, v19 / 100.0);
  }

  return v5;
}

- (CMSignificantElevationSample)initWithFilteredElevation:(const CLElevationChangeEntry *)a3
{
  v21.receiver = self;
  v21.super_class = CMSignificantElevationSample;
  v4 = [(CMSignificantElevationSample *)&v21 init];
  v5 = v4;
  if (v4)
  {
    v4->fRecordId = 0;
    v4->fSourceId = 0;
    v6 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v6, v7, v8, a3->var1);
    v9 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v9, v10, v11, a3->var1);
    v12 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v13) = a3->var2;
    v5->fElevationAscended = objc_msgSend_initWithDouble_(v12, v14, v15, v13 / 100.0);
    v16 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v17) = a3->var3;
    v5->fElevationDescended = objc_msgSend_initWithDouble_(v16, v18, v19, v17 / 100.0);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMSignificantElevationSample;
  [(CMSignificantElevationSample *)&v3 dealloc];
}

- (CMSignificantElevationSample)initWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = CMSignificantElevationSample;
  v5 = [(CMSignificantElevationSample *)&v17 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMSignificantElevationCodingKeyRecordId");
    v6 = objc_opt_class();
    v5->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"kCMSignificantElevationCodingKeySourceId");
    v8 = objc_opt_class();
    v5->fStartDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v9, v8, @"kCMSignificantElevationCodingKeyStartDate");
    v10 = objc_opt_class();
    v5->fEndDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v11, v10, @"kCMSignificantElevationCodingKeyEndDate");
    v12 = objc_opt_class();
    v5->fElevationAscended = objc_msgSend_decodeObjectOfClass_forKey_(a3, v13, v12, @"kCMSignificantElevationCodingKeyElevationAscended");
    v14 = objc_opt_class();
    v5->fElevationDescended = objc_msgSend_decodeObjectOfClass_forKey_(a3, v15, v14, @"kCMSignificantElevationCodingKeyElevationDescended");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  fRecordId = self->fRecordId;
  fSourceId = self->fSourceId;
  fStartDate = self->fStartDate;
  fEndDate = self->fEndDate;
  fElevationAscended = self->fElevationAscended;
  fElevationDescended = self->fElevationDescended;

  return objc_msgSend_initWithRecordId_sourceId_startDate_endDate_elevationAscended_elevationDescended_(v7, v8, fRecordId, fSourceId, fStartDate, fEndDate, fElevationAscended, fElevationDescended);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->fRecordId, @"kCMSignificantElevationCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fSourceId, @"kCMSignificantElevationCodingKeySourceId");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fStartDate, @"kCMSignificantElevationCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v7, self->fEndDate, @"kCMSignificantElevationCodingKeyEndDate");
  objc_msgSend_encodeObject_forKey_(a3, v8, self->fElevationAscended, @"kCMSignificantElevationCodingKeyElevationAscended");
  fElevationDescended = self->fElevationDescended;

  objc_msgSend_encodeObject_forKey_(a3, v9, fElevationDescended, @"kCMSignificantElevationCodingKeyElevationDescended");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  started = objc_msgSend_startDate(self, v6, v7);
  v11 = objc_msgSend_endDate(self, v9, v10);
  v14 = objc_msgSend_elevationAscended(self, v12, v13);
  v17 = objc_msgSend_elevationDescended(self, v15, v16);
  return objc_msgSend_stringWithFormat_(v3, v18, @"%@, <startDate, %@, endDate, %@, elevationAscended, %@ elevationDescended, %@>", v5, started, v11, v14, v17);
}

@end