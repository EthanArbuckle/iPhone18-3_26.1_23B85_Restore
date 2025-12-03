@interface CMSignificantElevationSample
- (CMSignificantElevationSample)initWithCoder:(id)coder;
- (CMSignificantElevationSample)initWithFilteredElevation:(const CLElevationChangeEntry *)elevation;
- (CMSignificantElevationSample)initWithRecordId:(unint64_t)id sourceId:(id)sourceId startDate:(id)date endDate:(id)endDate elevationAscended:(id)ascended elevationDescended:(id)descended;
- (CMSignificantElevationSample)initWithSignificantElevation:(const CLSignificantElevation *)elevation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMSignificantElevationSample

- (CMSignificantElevationSample)initWithRecordId:(unint64_t)id sourceId:(id)sourceId startDate:(id)date endDate:(id)endDate elevationAscended:(id)ascended elevationDescended:(id)descended
{
  if (!sourceId || !date || !endDate || !ascended || !descended)
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CMAltitude.mm", 201, @"Invalid parameter not satisfying: %@", @"sourceId && startDate && endDate && elevationAscended && elevationDescended");
  }

  v21.receiver = self;
  v21.super_class = CMSignificantElevationSample;
  v16 = [(CMSignificantElevationSample *)&v21 init];
  v17 = v16;
  if (v16)
  {
    v16->fRecordId = id;
    v16->fSourceId = sourceId;
    v17->fStartDate = date;
    v17->fEndDate = endDate;
    v17->fElevationAscended = ascended;
    v17->fElevationDescended = descended;
  }

  return v17;
}

- (CMSignificantElevationSample)initWithSignificantElevation:(const CLSignificantElevation *)elevation
{
  v23.receiver = self;
  v23.super_class = CMSignificantElevationSample;
  v4 = [(CMSignificantElevationSample *)&v23 init];
  v5 = v4;
  if (v4)
  {
    v4->fRecordId = elevation->var0;
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v5->fSourceId = objc_msgSend_initWithUUIDBytes_(v6, v7, elevation->var1);
    v8 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v8, v9, v10, elevation->var2);
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v11, v12, v13, elevation->var3);
    v14 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v15) = elevation->var4;
    v5->fElevationAscended = objc_msgSend_initWithDouble_(v14, v16, v17, v15 / 100.0);
    v18 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v19) = elevation->var5;
    v5->fElevationDescended = objc_msgSend_initWithDouble_(v18, v20, v21, v19 / 100.0);
  }

  return v5;
}

- (CMSignificantElevationSample)initWithFilteredElevation:(const CLElevationChangeEntry *)elevation
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
    v5->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v6, v7, v8, elevation->var1);
    v9 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v9, v10, v11, elevation->var1);
    v12 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v13) = elevation->var2;
    v5->fElevationAscended = objc_msgSend_initWithDouble_(v12, v14, v15, v13 / 100.0);
    v16 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v17) = elevation->var3;
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

- (CMSignificantElevationSample)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = CMSignificantElevationSample;
  v5 = [(CMSignificantElevationSample *)&v17 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMSignificantElevationCodingKeyRecordId");
    v6 = objc_opt_class();
    v5->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v7, v6, @"kCMSignificantElevationCodingKeySourceId");
    v8 = objc_opt_class();
    v5->fStartDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCMSignificantElevationCodingKeyStartDate");
    v10 = objc_opt_class();
    v5->fEndDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kCMSignificantElevationCodingKeyEndDate");
    v12 = objc_opt_class();
    v5->fElevationAscended = objc_msgSend_decodeObjectOfClass_forKey_(coder, v13, v12, @"kCMSignificantElevationCodingKeyElevationAscended");
    v14 = objc_opt_class();
    v5->fElevationDescended = objc_msgSend_decodeObjectOfClass_forKey_(coder, v15, v14, @"kCMSignificantElevationCodingKeyElevationDescended");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  fRecordId = self->fRecordId;
  fSourceId = self->fSourceId;
  fStartDate = self->fStartDate;
  fEndDate = self->fEndDate;
  fElevationAscended = self->fElevationAscended;
  fElevationDescended = self->fElevationDescended;

  return objc_msgSend_initWithRecordId_sourceId_startDate_endDate_elevationAscended_elevationDescended_(v7, v8, fRecordId, fSourceId, fStartDate, fEndDate, fElevationAscended, fElevationDescended);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->fRecordId, @"kCMSignificantElevationCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->fSourceId, @"kCMSignificantElevationCodingKeySourceId");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->fStartDate, @"kCMSignificantElevationCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->fEndDate, @"kCMSignificantElevationCodingKeyEndDate");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->fElevationAscended, @"kCMSignificantElevationCodingKeyElevationAscended");
  fElevationDescended = self->fElevationDescended;

  objc_msgSend_encodeObject_forKey_(coder, v9, fElevationDescended, @"kCMSignificantElevationCodingKeyElevationDescended");
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