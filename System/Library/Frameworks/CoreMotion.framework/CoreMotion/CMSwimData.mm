@interface CMSwimData
+ (id)strokeTypeName:(int64_t)name;
- (CMSwimData)initWithCoder:(id)coder;
- (CMSwimData)initWithRecordId:(unint64_t)id sourceId:(id)sourceId sessionId:(id)sessionId startDate:(id)date endDate:(id)endDate strokeCount:(unint64_t)count distance:(double)distance distanceTimestamp:(id)self0 avgPace:(double)self1 lapCount:(unint64_t)self2 strokeType:(int64_t)self3 segment:(unint64_t)self4 SWOLF:(double)self5 segmentSWOLF:(double)self6;
- (CMSwimData)initWithSessionId:(id)id;
- (CMSwimData)initWithSwimEntry:(const CLSwimEntry *)entry;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)convertToSwimEntry:(CLSwimEntry *)entry;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMSwimData

- (void)convertToSwimEntry:(CLSwimEntry *)entry
{
  v20 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  memset(src, 0, sizeof(src));
  uuid_clear(uu);
  uuid_clear(src);
  objc_msgSend_getUUIDBytes_(self->fSourceId, v5, uu);
  objc_msgSend_getUUIDBytes_(self->fSessionId, v6, src);
  entry->var0 = self->fRecordId;
  uuid_copy(entry->var2, uu);
  uuid_copy(entry->var1, src);
  objc_msgSend_timeIntervalSinceReferenceDate(self->fStartDate, v7, v8);
  entry->var3 = v9;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fEndDate, v10, v11);
  entry->var4 = v12;
  entry->var12 = self->fStrokeCount;
  entry->var7 = self->fDistance;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fDistanceTimestamp, v13, v14);
  fStrokeType = self->fStrokeType;
  entry->var13 = self->fLapCount;
  entry->var8 = v16;
  entry->var6 = self->fAvgPace;
  entry->var11 = fStrokeType;
  entry->var16 = self->fSegment;
  entry->var18 = self->fSWOLF;
  entry->var19 = self->fSegmentSWOLF;
  v17 = *MEMORY[0x1E69E9840];
}

- (CMSwimData)initWithRecordId:(unint64_t)id sourceId:(id)sourceId sessionId:(id)sessionId startDate:(id)date endDate:(id)endDate strokeCount:(unint64_t)count distance:(double)distance distanceTimestamp:(id)self0 avgPace:(double)self1 lapCount:(unint64_t)self2 strokeType:(int64_t)self3 segment:(unint64_t)self4 SWOLF:(double)self5 segmentSWOLF:(double)self6
{
  if (!sourceId || !sessionId || !date || !endDate || type >= 7)
  {
    v31 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, self, @"CMSwimData.mm", 88, @"Invalid parameter not satisfying: %@", @"sourceId && sessionId && startDate && endDate && strokeType < kCMSwimStrokeTypeMax");
  }

  v33.receiver = self;
  v33.super_class = CMSwimData;
  v28 = [(CMSwimData *)&v33 init];
  v29 = v28;
  if (v28)
  {
    v28->fRecordId = id;
    v28->fSourceId = sourceId;
    v29->fSessionId = sessionId;
    v29->fStartDate = date;
    v29->fEndDate = endDate;
    v29->fStrokeCount = count;
    v29->fDistance = distance;
    v29->fDistanceTimestamp = timestamp;
    v29->fAvgPace = pace;
    v29->fLapCount = lapCount;
    v29->fStrokeType = type;
    v29->fSegment = segment;
    v29->fSWOLF = f;
    v29->fSegmentSWOLF = lF;
  }

  return v29;
}

- (CMSwimData)initWithSessionId:(id)id
{
  if (!id)
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
    v5->fSessionId = id;
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

- (CMSwimData)initWithSwimEntry:(const CLSwimEntry *)entry
{
  v22.receiver = self;
  v22.super_class = CMSwimData;
  v4 = [(CMSwimData *)&v22 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = objc_msgSend_initWithUUIDBytes_(v5, v6, entry->var2);
    v8 = objc_alloc(MEMORY[0x1E696AFB0]);
    v10 = objc_msgSend_initWithUUIDBytes_(v8, v9, entry->var1);
    v4->fRecordId = entry->var0;
    v4->fSourceId = v7;
    v4->fSessionId = v10;
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v11, v12, v13, entry->var3);
    v14 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v14, v15, v16, entry->var4);
    v4->fStrokeCount = entry->var12;
    v4->fDistance = entry->var7;
    v17 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fDistanceTimestamp = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v17, v18, v19, entry->var8);
    v4->fAvgPace = entry->var6;
    var11 = entry->var11;
    v4->fLapCount = entry->var13;
    v4->fStrokeType = var11;
    v4->fSegment = entry->var16;
    v4->fSWOLF = entry->var18;
    v4->fSegmentSWOLF = entry->var19;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMSwimData;
  [(CMSwimData *)&v3 dealloc];
}

- (CMSwimData)initWithCoder:(id)coder
{
  v29.receiver = self;
  v29.super_class = CMSwimData;
  v5 = [(CMSwimData *)&v29 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMSwimDataCodingKeyRecordId");
    v6 = objc_opt_class();
    v5->fSourceId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v7, v6, @"kCMSwimDataCodingKeySourceId");
    v8 = objc_opt_class();
    v5->fSessionId = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"kCMSwimDataCodingKeySessionId");
    v10 = objc_opt_class();
    v5->fStartDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"kCMSwimDataCodingKeyStartDate");
    v12 = objc_opt_class();
    v5->fEndDate = objc_msgSend_decodeObjectOfClass_forKey_(coder, v13, v12, @"kCMSwimDataCodingKeyEndDate");
    v5->fStrokeCount = objc_msgSend_decodeIntegerForKey_(coder, v14, @"kCMSwimDataCodingKeyStrokeCount");
    objc_msgSend_decodeDoubleForKey_(coder, v15, @"kCMSwimDataCodingKeyDistance");
    v5->fDistance = v16;
    v17 = objc_opt_class();
    v5->fDistanceTimestamp = objc_msgSend_decodeObjectOfClass_forKey_(coder, v18, v17, @"kCMSwimDataCodingKeyDistanceTimestamp");
    objc_msgSend_decodeDoubleForKey_(coder, v19, @"kCMSwimDataCodingKeyAvgPace");
    v5->fAvgPace = v20;
    v5->fLapCount = objc_msgSend_decodeIntegerForKey_(coder, v21, @"kCMSwimDataCodingKeyLapCount");
    v5->fStrokeType = objc_msgSend_decodeIntegerForKey_(coder, v22, @"kCMSwimDataCodingKeyStrokeType");
    v5->fSegment = objc_msgSend_decodeIntegerForKey_(coder, v23, @"kCMSwimDataCodingKeySegmentCount");
    objc_msgSend_decodeDoubleForKey_(coder, v24, @"kCMSwimDataCodingKeySWOLF");
    v5->fSWOLF = v25;
    objc_msgSend_decodeDoubleForKey_(coder, v26, @"kCMSwimDataCodingKeySegmentSWOLF");
    v5->fSegmentSWOLF = v27;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  fDistanceTimestamp = self->fDistanceTimestamp;
  fStrokeType = self->fStrokeType;
  return objc_msgSend_initWithRecordId_sourceId_sessionId_startDate_endDate_strokeCount_distance_distanceTimestamp_avgPace_lapCount_strokeType_segment_SWOLF_segmentSWOLF_(v7, v10, self->fRecordId, self->fSourceId, self->fSessionId, self->fStartDate, self->fEndDate, self->fStrokeCount, self->fDistance, self->fAvgPace, self->fSWOLF, self->fSegmentSWOLF, fDistanceTimestamp, self->fLapCount, fStrokeType, self->fSegment);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->fRecordId, @"kCMSwimDataCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->fSourceId, @"kCMSwimDataCodingKeySourceId");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->fSessionId, @"kCMSwimDataCodingKeySessionId");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->fStartDate, @"kCMSwimDataCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(coder, v8, self->fEndDate, @"kCMSwimDataCodingKeyEndDate");
  objc_msgSend_encodeInteger_forKey_(coder, v9, self->fStrokeCount, @"kCMSwimDataCodingKeyStrokeCount");
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"kCMSwimDataCodingKeyDistance", self->fDistance);
  objc_msgSend_encodeObject_forKey_(coder, v11, self->fDistanceTimestamp, @"kCMSwimDataCodingKeyDistanceTimestamp");
  objc_msgSend_encodeDouble_forKey_(coder, v12, @"kCMSwimDataCodingKeyAvgPace", self->fAvgPace);
  objc_msgSend_encodeInteger_forKey_(coder, v13, self->fLapCount, @"kCMSwimDataCodingKeyLapCount");
  objc_msgSend_encodeInteger_forKey_(coder, v14, self->fStrokeType, @"kCMSwimDataCodingKeyStrokeType");
  objc_msgSend_encodeInteger_forKey_(coder, v15, self->fSegment, @"kCMSwimDataCodingKeySegmentCount");
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"kCMSwimDataCodingKeySWOLF", self->fSWOLF);
  fSegmentSWOLF = self->fSegmentSWOLF;

  objc_msgSend_encodeDouble_forKey_(coder, v17, @"kCMSwimDataCodingKeySegmentSWOLF", fSegmentSWOLF);
}

+ (id)strokeTypeName:(int64_t)name
{
  if (name > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7535F58[name];
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