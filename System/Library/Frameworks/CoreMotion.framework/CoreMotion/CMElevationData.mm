@interface CMElevationData
+ (id)sourceName:(int64_t)name;
- (CMElevationData)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (CMElevationData)initWithCoder:(id)coder;
- (CMElevationData)initWithSignificantElevationSample:(id)sample;
- (CMElevationData)initWithStartDate:(id)date endDate:(id)endDate elevationAscended:(unint64_t)ascended elevationDescended:(unint64_t)descended source:(int64_t)source recordId:(unint64_t)id sourceId:(id)sourceId;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMElevationData

- (CMElevationData)initWithSignificantElevationSample:(id)sample
{
  if (!sample)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CMElevationData.mm", 34, @"Invalid parameter not satisfying: %@", @"sample");
  }

  started = objc_msgSend_startDate(sample, a2, sample);
  v8 = objc_msgSend_endDate(sample, v6, v7);
  v11 = objc_msgSend_elevationAscended(sample, v9, v10);
  objc_msgSend_doubleValue(v11, v12, v13);
  v15 = (v14 * 100.0);
  v18 = objc_msgSend_elevationDescended(sample, v16, v17);
  objc_msgSend_doubleValue(v18, v19, v20);
  v22 = (v21 * 100.0);
  v25 = objc_msgSend_recordId(sample, v23, v24);
  v28 = objc_msgSend_sourceId(sample, v26, v27);
  return objc_msgSend_initWithStartDate_endDate_elevationAscended_elevationDescended_source_recordId_sourceId_(self, v29, started, v8, v15, v22, 1000, v25, v28);
}

- (CMElevationData)initWithStartDate:(id)date endDate:(id)endDate elevationAscended:(unint64_t)ascended elevationDescended:(unint64_t)descended source:(int64_t)source recordId:(unint64_t)id sourceId:(id)sourceId
{
  if (date)
  {
    if (endDate)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CMElevationData.mm", 52, @"Invalid parameter not satisfying: %@", @"startDate");
    if (endDate)
    {
      goto LABEL_3;
    }
  }

  v21 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, date);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CMElevationData.mm", 53, @"Invalid parameter not satisfying: %@", @"endDate");
LABEL_3:
  v23.receiver = self;
  v23.super_class = CMElevationData;
  v17 = [(CMElevationData *)&v23 init];
  if (v17)
  {
    v17->fStartDate = date;
    v17->fEndDate = endDate;
    v17->fElevationAscended = ascended;
    v17->fElevationDescended = descended;
    v17->fSource = source;
    v17->fRecordId = id;
    v17->fSourceId = sourceId;
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMElevationData;
  [(CMElevationData *)&v3 dealloc];
}

- (CMElevationData)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = CMElevationData;
  v5 = [(CMElevationData *)&v16 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMElevationDataCodingKeyRecordId");
    v6 = objc_opt_class();
    v5->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v7, v6, @"kCMElevationDataCodingKeySourceId");
    v8 = objc_opt_class();
    v5->fStartDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCMElevationDataCodingKeyStartDate");
    v10 = objc_opt_class();
    v5->fEndDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kCMElevationDataCodingKeyEndDate");
    v5->fElevationAscended = objc_msgSend_decodeIntegerForKey_(coder, v12, @"kCMElevationDataCodingKeyElevationAscended");
    v5->fElevationDescended = objc_msgSend_decodeIntegerForKey_(coder, v13, @"kCMElevationDataCodingKeyElevationDescended");
    v5->fSource = objc_msgSend_decodeIntegerForKey_(coder, v14, @"kCMElevationDataCodingKeySource");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  return objc_msgSend_initWithStartDate_endDate_elevationAscended_elevationDescended_source_recordId_sourceId_(v7, v8, self->fStartDate, self->fEndDate, self->fElevationAscended, self->fElevationDescended, self->fSource, self->fRecordId, self->fSourceId);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->fRecordId, @"kCMElevationDataCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->fSourceId, @"kCMElevationDataCodingKeySourceId");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->fStartDate, @"kCMElevationDataCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->fEndDate, @"kCMElevationDataCodingKeyEndDate");
  objc_msgSend_encodeInteger_forKey_(coder, v8, self->fElevationAscended, @"kCMElevationDataCodingKeyElevationAscended");
  objc_msgSend_encodeInteger_forKey_(coder, v9, self->fElevationDescended, @"kCMElevationDataCodingKeyElevationDescended");
  fSource = self->fSource;

  objc_msgSend_encodeInteger_forKey_(coder, v10, fSource, @"kCMElevationDataCodingKeySource");
}

+ (id)sourceName:(int64_t)name
{
  v3 = @"WatchDEM";
  v4 = @"WatchGPS";
  v5 = @"None";
  if (name != 1000)
  {
    v5 = 0;
  }

  if (name != 3)
  {
    v4 = v5;
  }

  if (name != 2)
  {
    v3 = v4;
  }

  v6 = @"Phone";
  v7 = @"Watch";
  if (name != 1)
  {
    v7 = 0;
  }

  if (name)
  {
    v6 = v7;
  }

  if (name <= 1)
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

- (CMElevationData)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if (objc_msgSend_length(representation, a2, representation, metadata, timestamp))
  {
    v14.receiver = self;
    v14.super_class = CMElevationData;
    v7 = [(CMElevationData *)&v14 init];
    if (v7)
    {
      v8 = MEMORY[0x1E696ACD0];
      v9 = objc_opt_class();
      v11 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v8, v10, v9, representation, 0);
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