@interface CMElevationData
+ (id)sourceName:(int64_t)a3;
- (CMElevationData)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMElevationData)initWithCoder:(id)a3;
- (CMElevationData)initWithSignificantElevationSample:(id)a3;
- (CMElevationData)initWithStartDate:(id)a3 endDate:(id)a4 elevationAscended:(unint64_t)a5 elevationDescended:(unint64_t)a6 source:(int64_t)a7 recordId:(unint64_t)a8 sourceId:(id)a9;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMElevationData

- (CMElevationData)initWithSignificantElevationSample:(id)a3
{
  if (!a3)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CMElevationData.mm", 34, @"Invalid parameter not satisfying: %@", @"sample");
  }

  started = objc_msgSend_startDate(a3, a2, a3);
  v8 = objc_msgSend_endDate(a3, v6, v7);
  v11 = objc_msgSend_elevationAscended(a3, v9, v10);
  objc_msgSend_doubleValue(v11, v12, v13);
  v15 = (v14 * 100.0);
  v18 = objc_msgSend_elevationDescended(a3, v16, v17);
  objc_msgSend_doubleValue(v18, v19, v20);
  v22 = (v21 * 100.0);
  v25 = objc_msgSend_recordId(a3, v23, v24);
  v28 = objc_msgSend_sourceId(a3, v26, v27);
  return objc_msgSend_initWithStartDate_endDate_elevationAscended_elevationDescended_source_recordId_sourceId_(self, v29, started, v8, v15, v22, 1000, v25, v28);
}

- (CMElevationData)initWithStartDate:(id)a3 endDate:(id)a4 elevationAscended:(unint64_t)a5 elevationDescended:(unint64_t)a6 source:(int64_t)a7 recordId:(unint64_t)a8 sourceId:(id)a9
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CMElevationData.mm", 52, @"Invalid parameter not satisfying: %@", @"startDate");
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v21 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CMElevationData.mm", 53, @"Invalid parameter not satisfying: %@", @"endDate");
LABEL_3:
  v23.receiver = self;
  v23.super_class = CMElevationData;
  v17 = [(CMElevationData *)&v23 init];
  if (v17)
  {
    v17->fStartDate = a3;
    v17->fEndDate = a4;
    v17->fElevationAscended = a5;
    v17->fElevationDescended = a6;
    v17->fSource = a7;
    v17->fRecordId = a8;
    v17->fSourceId = a9;
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMElevationData;
  [(CMElevationData *)&v3 dealloc];
}

- (CMElevationData)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = CMElevationData;
  v5 = [(CMElevationData *)&v16 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMElevationDataCodingKeyRecordId");
    v6 = objc_opt_class();
    v5->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"kCMElevationDataCodingKeySourceId");
    v8 = objc_opt_class();
    v5->fStartDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v9, v8, @"kCMElevationDataCodingKeyStartDate");
    v10 = objc_opt_class();
    v5->fEndDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v11, v10, @"kCMElevationDataCodingKeyEndDate");
    v5->fElevationAscended = objc_msgSend_decodeIntegerForKey_(a3, v12, @"kCMElevationDataCodingKeyElevationAscended");
    v5->fElevationDescended = objc_msgSend_decodeIntegerForKey_(a3, v13, @"kCMElevationDataCodingKeyElevationDescended");
    v5->fSource = objc_msgSend_decodeIntegerForKey_(a3, v14, @"kCMElevationDataCodingKeySource");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  return objc_msgSend_initWithStartDate_endDate_elevationAscended_elevationDescended_source_recordId_sourceId_(v7, v8, self->fStartDate, self->fEndDate, self->fElevationAscended, self->fElevationDescended, self->fSource, self->fRecordId, self->fSourceId);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->fRecordId, @"kCMElevationDataCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fSourceId, @"kCMElevationDataCodingKeySourceId");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fStartDate, @"kCMElevationDataCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v7, self->fEndDate, @"kCMElevationDataCodingKeyEndDate");
  objc_msgSend_encodeInteger_forKey_(a3, v8, self->fElevationAscended, @"kCMElevationDataCodingKeyElevationAscended");
  objc_msgSend_encodeInteger_forKey_(a3, v9, self->fElevationDescended, @"kCMElevationDataCodingKeyElevationDescended");
  fSource = self->fSource;

  objc_msgSend_encodeInteger_forKey_(a3, v10, fSource, @"kCMElevationDataCodingKeySource");
}

+ (id)sourceName:(int64_t)a3
{
  v3 = @"WatchDEM";
  v4 = @"WatchGPS";
  v5 = @"None";
  if (a3 != 1000)
  {
    v5 = 0;
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 != 2)
  {
    v3 = v4;
  }

  v6 = @"Phone";
  v7 = @"Watch";
  if (a3 != 1)
  {
    v7 = 0;
  }

  if (a3)
  {
    v6 = v7;
  }

  if (a3 <= 1)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  started = objc_msgSend_startDate(self, v6, v7);
  v11 = objc_msgSend_endDate(self, v9, v10);
  v14 = objc_msgSend_elevationAscended(self, v12, v13);
  v17 = objc_msgSend_elevationDescended(self, v15, v16);
  v20 = objc_msgSend_source(self, v18, v19);
  v22 = objc_msgSend_sourceName_(CMElevationData, v21, v20);
  return objc_msgSend_stringWithFormat_(v3, v23, @"%@, <startDate, %@, endDate, %@, elevationAscended, %lu, elevationDescended, %lu, source, %@>", v5, started, v11, v14, v17, v22);
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMElevationData)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v14.receiver = self;
    v14.super_class = CMElevationData;
    v7 = [(CMElevationData *)&v14 init];
    if (v7)
    {
      v8 = MEMORY[0x1E696ACD0];
      v9 = objc_opt_class();
      v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v8, v10, v9, a3, 0);
      if (v11)
      {
        v12 = v11;

        return v12;
      }
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

@end