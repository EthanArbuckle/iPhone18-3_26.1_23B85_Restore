@interface CMSkiData
- (CMSkiData)initWithCoder:(id)coder;
- (CMSkiData)initWithRecordId:(unint64_t)id sourceId:(id)sourceId sessionId:(id)sessionId startDate:(id)date endDate:(id)endDate runDistance:(double)distance runAvgSpeed:(double)speed runMaxSpeed:(double)self0 runSlope:(double)self1 runElevationDescent:(double)self2;
- (CMSkiData)initWithSessionId:(id)id;
- (CMSkiData)initWithSkiEntry:(const CLSkiEntry *)entry;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)convertToSkiEntry:(CLSkiEntry *)entry;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMSkiData

- (CMSkiData)initWithRecordId:(unint64_t)id sourceId:(id)sourceId sessionId:(id)sessionId startDate:(id)date endDate:(id)endDate runDistance:(double)distance runAvgSpeed:(double)speed runMaxSpeed:(double)self0 runSlope:(double)self1 runElevationDescent:(double)self2
{
  if (!sourceId || !sessionId || !date || !endDate)
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CMSkiData.mm", 49, @"Invalid parameter not satisfying: %@", @"sourceId && sessionId && startDate && endDate");
  }

  v29.receiver = self;
  v29.super_class = CMSkiData;
  v24 = [(CMSkiData *)&v29 init];
  v25 = v24;
  if (v24)
  {
    v24->fRecordId = id;
    v24->fSourceId = sourceId;
    v25->fSessionId = sessionId;
    v25->fStartDate = date;
    v25->fEndDate = endDate;
    v25->fRunDistance = distance;
    v25->fRunAvgSpeed = speed;
    v25->fRunMaxSpeed = maxSpeed;
    v25->fRunSlope = slope;
    v25->fRunElevationDescent = descent;
  }

  return v25;
}

- (CMSkiData)initWithSessionId:(id)id
{
  if (!id)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CMSkiData.mm", 67, @"Invalid parameter not satisfying: %@", @"sessionId");
  }

  v11.receiver = self;
  v11.super_class = CMSkiData;
  v5 = [(CMSkiData *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->fRecordId = 0;
    v5->fSourceId = 0;
    v5->fSessionId = id;
    *&v6->fStartDate = 0u;
    *&v6->fRunDistance = 0u;
    *&v6->fRunMaxSpeed = 0u;
    v6->fRunElevationDescent = 0.0;
  }

  return v6;
}

- (CMSkiData)initWithSkiEntry:(const CLSkiEntry *)entry
{
  v18.receiver = self;
  v18.super_class = CMSkiData;
  v4 = [(CMSkiData *)&v18 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = objc_msgSend_initWithUUIDBytes_(v5, v6, entry->var1);
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v10 = objc_msgSend_initWithUUIDBytes_(v8, v9, entry->var2);
    v4->fRecordId = entry->var0;
    v4->fSourceId = v7;
    v4->fSessionId = v10;
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v11, v12, v13, entry->var3);
    v14 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v14, v15, v16, entry->var4);
    v4->fRunDistance = entry->var5;
    v4->fRunAvgSpeed = entry->var6;
    v4->fRunMaxSpeed = entry->var7;
    v4->fRunSlope = entry->var8;
    v4->fRunElevationDescent = entry->var9;
  }

  return v4;
}

- (void)convertToSkiEntry:(CLSkiEntry *)entry
{
  v16 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  memset(src, 0, sizeof(src));
  uuid_clear(uu);
  uuid_clear(src);
  objc_msgSend_getUUIDBytes_(self->fSourceId, v5, uu);
  objc_msgSend_getUUIDBytes_(self->fSessionId, v6, src);
  entry->var0 = self->fRecordId;
  uuid_copy(entry->var1, uu);
  uuid_copy(entry->var2, src);
  objc_msgSend_timeIntervalSinceReferenceDate(self->fStartDate, v7, v8);
  entry->var3 = v9;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fEndDate, v10, v11);
  entry->var4 = v12;
  entry->var5 = self->fRunDistance;
  entry->var6 = self->fRunAvgSpeed;
  entry->var7 = self->fRunMaxSpeed;
  entry->var8 = self->fRunSlope;
  entry->var9 = self->fRunElevationDescent;
  v13 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMSkiData;
  [(CMSkiData *)&v3 dealloc];
}

- (CMSkiData)initWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = CMSkiData;
  v5 = [(CMSkiData *)&v25 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMSkiDataCodingKeyRecordId");
    v6 = objc_opt_class();
    v5->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v7, v6, @"kCMSkiDataCodingKeySourceId");
    v8 = objc_opt_class();
    v5->fSessionId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCMSkiDataCodingKeySessionId");
    v10 = objc_opt_class();
    v5->fStartDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kCMSkiDataCodingKeyStartDate");
    v12 = objc_opt_class();
    v5->fEndDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v13, v12, @"kCMSkiDataCodingKeyEndDate");
    objc_msgSend_decodeDoubleForKey_(coder, v14, @"kCMSkiDataCodingKeyRunDistance");
    v5->fRunDistance = v15;
    objc_msgSend_decodeDoubleForKey_(coder, v16, @"kCMSkiDataCodingKeyRunAvgSpeed");
    v5->fRunAvgSpeed = v17;
    objc_msgSend_decodeDoubleForKey_(coder, v18, @"kCMSkiDataCodingKeyRunMaxSpeed");
    v5->fRunMaxSpeed = v19;
    objc_msgSend_decodeDoubleForKey_(coder, v20, @"kCMSkiDataCodingKeyRunSlope");
    v5->fRunSlope = v21;
    objc_msgSend_decodeDoubleForKey_(coder, v22, @"kCMSkiDataCodingKeyRunElevationDescent");
    v5->fRunElevationDescent = v23;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  fRecordId = self->fRecordId;
  fSourceId = self->fSourceId;
  fSessionId = self->fSessionId;
  fStartDate = self->fStartDate;
  fEndDate = self->fEndDate;
  fRunDistance = self->fRunDistance;
  fRunAvgSpeed = self->fRunAvgSpeed;
  fRunMaxSpeed = self->fRunMaxSpeed;
  fRunSlope = self->fRunSlope;
  fRunElevationDescent = self->fRunElevationDescent;

  return objc_msgSend_initWithRecordId_sourceId_sessionId_startDate_endDate_runDistance_runAvgSpeed_runMaxSpeed_runSlope_runElevationDescent_(v7, v8, fRecordId, fSourceId, fSessionId, fStartDate, fEndDate, fRunDistance, fRunAvgSpeed, fRunMaxSpeed, fRunSlope, fRunElevationDescent);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->fRecordId, @"kCMSkiDataCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->fSourceId, @"kCMSkiDataCodingKeySourceId");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->fSessionId, @"kCMSkiDataCodingKeySessionId");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->fStartDate, @"kCMSkiDataCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->fEndDate, @"kCMSkiDataCodingKeyEndDate");
  objc_msgSend_encodeDouble_forKey_(coder, v9, @"kCMSkiDataCodingKeyRunDistance", self->fRunDistance);
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"kCMSkiDataCodingKeyRunAvgSpeed", self->fRunAvgSpeed);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"kCMSkiDataCodingKeyRunMaxSpeed", self->fRunMaxSpeed);
  objc_msgSend_encodeDouble_forKey_(coder, v12, @"kCMSkiDataCodingKeyRunSlope", self->fRunSlope);
  fRunElevationDescent = self->fRunElevationDescent;

  objc_msgSend_encodeDouble_forKey_(coder, v13, @"kCMSkiDataCodingKeyRunElevationDescent", fRunElevationDescent);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_sessionId(self, v6, v7);
  started = objc_msgSend_startDate(self, v9, v10);
  v14 = objc_msgSend_endDate(self, v12, v13);
  objc_msgSend_runDistance(self, v15, v16);
  v18 = v17;
  objc_msgSend_runAvgSpeed(self, v19, v20);
  v22 = v21;
  objc_msgSend_runMaxSpeed(self, v23, v24);
  v26 = v25;
  objc_msgSend_runSlope(self, v27, v28);
  v30 = v29;
  objc_msgSend_runElevationDescent(self, v31, v32);
  return objc_msgSend_stringWithFormat_(v3, v33, @"%@, <sessionId %@, startDate %@, endDate %@, runDistance %.2f, runAvgSpeed %.2f, runMaxSpeed %.2f, runSlope %.2f, runElevationDescent %.2f>", v5, v8, started, v14, v18, v22, v26, v30, v34);
}

@end