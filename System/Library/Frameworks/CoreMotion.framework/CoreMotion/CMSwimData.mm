@interface CMSwimData
+ (id)strokeTypeName:(int64_t)a3;
- (CMSwimData)initWithCoder:(id)a3;
- (CMSwimData)initWithRecordId:(unint64_t)a3 sourceId:(id)a4 sessionId:(id)a5 startDate:(id)a6 endDate:(id)a7 strokeCount:(unint64_t)a8 distance:(double)a9 distanceTimestamp:(id)a10 avgPace:(double)a11 lapCount:(unint64_t)a12 strokeType:(int64_t)a13 segment:(unint64_t)a14 SWOLF:(double)a15 segmentSWOLF:(double)a16;
- (CMSwimData)initWithSessionId:(id)a3;
- (CMSwimData)initWithSwimEntry:(const CLSwimEntry *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)convertToSwimEntry:(CLSwimEntry *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMSwimData

- (void)convertToSwimEntry:(CLSwimEntry *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  memset(src, 0, sizeof(src));
  uuid_clear(uu);
  uuid_clear(src);
  objc_msgSend_getUUIDBytes_(self->fSourceId, v5, uu);
  objc_msgSend_getUUIDBytes_(self->fSessionId, v6, src);
  a3->var0 = self->fRecordId;
  uuid_copy(a3->var2, uu);
  uuid_copy(a3->var1, src);
  objc_msgSend_timeIntervalSinceReferenceDate(self->fStartDate, v7, v8);
  a3->var3 = v9;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fEndDate, v10, v11);
  a3->var4 = v12;
  a3->var12 = self->fStrokeCount;
  a3->var7 = self->fDistance;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fDistanceTimestamp, v13, v14);
  fStrokeType = self->fStrokeType;
  a3->var13 = self->fLapCount;
  a3->var8 = v16;
  a3->var6 = self->fAvgPace;
  a3->var11 = fStrokeType;
  a3->var16 = self->fSegment;
  a3->var18 = self->fSWOLF;
  a3->var19 = self->fSegmentSWOLF;
  v17 = *MEMORY[0x1E69E9840];
}

- (CMSwimData)initWithRecordId:(unint64_t)a3 sourceId:(id)a4 sessionId:(id)a5 startDate:(id)a6 endDate:(id)a7 strokeCount:(unint64_t)a8 distance:(double)a9 distanceTimestamp:(id)a10 avgPace:(double)a11 lapCount:(unint64_t)a12 strokeType:(int64_t)a13 segment:(unint64_t)a14 SWOLF:(double)a15 segmentSWOLF:(double)a16
{
  if (!a4 || !a5 || !a6 || !a7 || a13 >= 7)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, self, @"CMSwimData.mm", 88, @"Invalid parameter not satisfying: %@", @"sourceId && sessionId && startDate && endDate && strokeType < kCMSwimStrokeTypeMax");
  }

  v33.receiver = self;
  v33.super_class = CMSwimData;
  v28 = [(CMSwimData *)&v33 init];
  v29 = v28;
  if (v28)
  {
    v28->fRecordId = a3;
    v28->fSourceId = a4;
    v29->fSessionId = a5;
    v29->fStartDate = a6;
    v29->fEndDate = a7;
    v29->fStrokeCount = a8;
    v29->fDistance = a9;
    v29->fDistanceTimestamp = a10;
    v29->fAvgPace = a11;
    v29->fLapCount = a12;
    v29->fStrokeType = a13;
    v29->fSegment = a14;
    v29->fSWOLF = a15;
    v29->fSegmentSWOLF = a16;
  }

  return v29;
}

- (CMSwimData)initWithSessionId:(id)a3
{
  if (!a3)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CMSwimData.mm", 110, @"Invalid parameter not satisfying: %@", @"sessionId");
  }

  v11.receiver = self;
  v11.super_class = CMSwimData;
  v5 = [(CMSwimData *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->fRecordId = 0;
    v5->fSourceId = 0;
    v5->fSessionId = a3;
    *&v6->fStartDate = 0u;
    *&v6->fStrokeCount = 0u;
    *&v6->fDistanceTimestamp = 0u;
    v6->fLapCount = 0;
    v6->fStrokeType = 7;
    v6->fSWOLF = 0.0;
    v6->fSegmentSWOLF = 0.0;
    v6->fSegment = 0;
  }

  return v6;
}

- (CMSwimData)initWithSwimEntry:(const CLSwimEntry *)a3
{
  v22.receiver = self;
  v22.super_class = CMSwimData;
  v4 = [(CMSwimData *)&v22 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = objc_msgSend_initWithUUIDBytes_(v5, v6, a3->var2);
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v10 = objc_msgSend_initWithUUIDBytes_(v8, v9, a3->var1);
    v4->fRecordId = a3->var0;
    v4->fSourceId = v7;
    v4->fSessionId = v10;
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v11, v12, v13, a3->var3);
    v14 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v14, v15, v16, a3->var4);
    v4->fStrokeCount = a3->var12;
    v4->fDistance = a3->var7;
    v17 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fDistanceTimestamp = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v17, v18, v19, a3->var8);
    v4->fAvgPace = a3->var6;
    var11 = a3->var11;
    v4->fLapCount = a3->var13;
    v4->fStrokeType = var11;
    v4->fSegment = a3->var16;
    v4->fSWOLF = a3->var18;
    v4->fSegmentSWOLF = a3->var19;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMSwimData;
  [(CMSwimData *)&v3 dealloc];
}

- (CMSwimData)initWithCoder:(id)a3
{
  v29.receiver = self;
  v29.super_class = CMSwimData;
  v5 = [(CMSwimData *)&v29 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMSwimDataCodingKeyRecordId");
    v6 = objc_opt_class();
    v5->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"kCMSwimDataCodingKeySourceId");
    v8 = objc_opt_class();
    v5->fSessionId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v9, v8, @"kCMSwimDataCodingKeySessionId");
    v10 = objc_opt_class();
    v5->fStartDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v11, v10, @"kCMSwimDataCodingKeyStartDate");
    v12 = objc_opt_class();
    v5->fEndDate = objc_msgSend_decodeObjectOfClass_forKey_(a3, v13, v12, @"kCMSwimDataCodingKeyEndDate");
    v5->fStrokeCount = objc_msgSend_decodeIntegerForKey_(a3, v14, @"kCMSwimDataCodingKeyStrokeCount");
    objc_msgSend_decodeDoubleForKey_(a3, v15, @"kCMSwimDataCodingKeyDistance");
    v5->fDistance = v16;
    v17 = objc_opt_class();
    v5->fDistanceTimestamp = objc_msgSend_decodeObjectOfClass_forKey_(a3, v18, v17, @"kCMSwimDataCodingKeyDistanceTimestamp");
    objc_msgSend_decodeDoubleForKey_(a3, v19, @"kCMSwimDataCodingKeyAvgPace");
    v5->fAvgPace = v20;
    v5->fLapCount = objc_msgSend_decodeIntegerForKey_(a3, v21, @"kCMSwimDataCodingKeyLapCount");
    v5->fStrokeType = objc_msgSend_decodeIntegerForKey_(a3, v22, @"kCMSwimDataCodingKeyStrokeType");
    v5->fSegment = objc_msgSend_decodeIntegerForKey_(a3, v23, @"kCMSwimDataCodingKeySegmentCount");
    objc_msgSend_decodeDoubleForKey_(a3, v24, @"kCMSwimDataCodingKeySWOLF");
    v5->fSWOLF = v25;
    objc_msgSend_decodeDoubleForKey_(a3, v26, @"kCMSwimDataCodingKeySegmentSWOLF");
    v5->fSegmentSWOLF = v27;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  fDistanceTimestamp = self->fDistanceTimestamp;
  fStrokeType = self->fStrokeType;
  return objc_msgSend_initWithRecordId_sourceId_sessionId_startDate_endDate_strokeCount_distance_distanceTimestamp_avgPace_lapCount_strokeType_segment_SWOLF_segmentSWOLF_(v7, v10, self->fRecordId, self->fSourceId, self->fSessionId, self->fStartDate, self->fEndDate, self->fStrokeCount, self->fDistance, self->fAvgPace, self->fSWOLF, self->fSegmentSWOLF, fDistanceTimestamp, self->fLapCount, fStrokeType, self->fSegment);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->fRecordId, @"kCMSwimDataCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fSourceId, @"kCMSwimDataCodingKeySourceId");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fSessionId, @"kCMSwimDataCodingKeySessionId");
  objc_msgSend_encodeObject_forKey_(a3, v7, self->fStartDate, @"kCMSwimDataCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v8, self->fEndDate, @"kCMSwimDataCodingKeyEndDate");
  objc_msgSend_encodeInteger_forKey_(a3, v9, self->fStrokeCount, @"kCMSwimDataCodingKeyStrokeCount");
  objc_msgSend_encodeDouble_forKey_(a3, v10, @"kCMSwimDataCodingKeyDistance", self->fDistance);
  objc_msgSend_encodeObject_forKey_(a3, v11, self->fDistanceTimestamp, @"kCMSwimDataCodingKeyDistanceTimestamp");
  objc_msgSend_encodeDouble_forKey_(a3, v12, @"kCMSwimDataCodingKeyAvgPace", self->fAvgPace);
  objc_msgSend_encodeInteger_forKey_(a3, v13, self->fLapCount, @"kCMSwimDataCodingKeyLapCount");
  objc_msgSend_encodeInteger_forKey_(a3, v14, self->fStrokeType, @"kCMSwimDataCodingKeyStrokeType");
  objc_msgSend_encodeInteger_forKey_(a3, v15, self->fSegment, @"kCMSwimDataCodingKeySegmentCount");
  objc_msgSend_encodeDouble_forKey_(a3, v16, @"kCMSwimDataCodingKeySWOLF", self->fSWOLF);
  fSegmentSWOLF = self->fSegmentSWOLF;

  objc_msgSend_encodeDouble_forKey_(a3, v17, @"kCMSwimDataCodingKeySegmentSWOLF", fSegmentSWOLF);
}

+ (id)strokeTypeName:(int64_t)a3
{
  if (a3 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7535F58[a3];
  }
}

- (id)description
{
  v48 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v7 = objc_msgSend_sessionId(self, v5, v6);
  started = objc_msgSend_startDate(self, v8, v9);
  v13 = objc_msgSend_endDate(self, v11, v12);
  v16 = objc_msgSend_strokeCount(self, v14, v15);
  objc_msgSend_distance(self, v17, v18);
  v20 = v19;
  v23 = objc_msgSend_distanceTimestamp(self, v21, v22);
  objc_msgSend_avgPace(self, v24, v25);
  v27 = v26;
  v30 = objc_msgSend_lapCount(self, v28, v29);
  v33 = objc_msgSend_strokeType(self, v31, v32);
  v35 = objc_msgSend_strokeTypeName_(CMSwimData, v34, v33);
  v38 = objc_msgSend_segment(self, v36, v37);
  objc_msgSend_SWOLF(self, v39, v40);
  v42 = v41;
  objc_msgSend_segmentSWOLF(self, v43, v44);
  return objc_msgSend_stringWithFormat_(v48, v45, @"%@, <sessionId %@, startDate %@, endDate %@, strokeCount %lu, distance %.2f, distanceTimestamp, %@, avgPace %.2f, lapCount %lu, strokeType %@, segment %lu>, SWOLF %.2f, segmentSWOLF %.2f", v4, v7, started, v13, v16, v20, v23, v27, v30, v35, v38, v42, v46);
}

@end