@interface CMPredictedDistanceBout
+ (CLPredictedWalkDistanceBoutEntry)inputFromPreparedStatement:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (CMPredictedDistanceBout)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMPredictedDistanceBout)initWithCoder:(id)a3;
- (CMPredictedDistanceBout)initWithRecordId:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 stepCount:(unsigned int)a6 distance:(double)a7 activeTime:(double)a8 elevationAsc:(unsigned int)a9 elevationDesc:(unsigned int)a10 stepCountGPS:(unsigned int)a11 distanceGPS:(double)a12 boutType:(int64_t)a13;
- (CMPredictedDistanceBout)initWithSample:(CLPredictedWalkDistanceBoutEntry *)a3;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMPredictedDistanceBout

- (id)sr_dictionaryRepresentation
{
  v52[8] = *MEMORY[0x1E69E9840];
  v51[0] = @"startTime";
  v4 = MEMORY[0x1E696AD98];
  started = objc_msgSend_startDate(self, a2, v2);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v6, v7);
  v52[0] = objc_msgSend_numberWithDouble_(v4, v8, v9);
  v51[1] = @"endTime";
  v10 = MEMORY[0x1E696AD98];
  v13 = objc_msgSend_endDate(self, v11, v12);
  objc_msgSend_timeIntervalSinceReferenceDate(v13, v14, v15);
  v52[1] = objc_msgSend_numberWithDouble_(v10, v16, v17);
  v51[2] = @"stepCount";
  v18 = MEMORY[0x1E696AD98];
  v21 = objc_msgSend_stepCount(self, v19, v20);
  v52[2] = objc_msgSend_numberWithUnsignedInt_(v18, v22, v21);
  v51[3] = @"distance";
  v23 = MEMORY[0x1E696AD98];
  objc_msgSend_distance(self, v24, v25);
  v52[3] = objc_msgSend_numberWithDouble_(v23, v26, v27);
  v51[4] = @"activeTime";
  v28 = MEMORY[0x1E696AD98];
  objc_msgSend_activeTime(self, v29, v30);
  v52[4] = objc_msgSend_numberWithDouble_(v28, v31, v32);
  v51[5] = @"elevationAsc";
  v33 = MEMORY[0x1E696AD98];
  v36 = objc_msgSend_elevationAsc(self, v34, v35);
  v52[5] = objc_msgSend_numberWithUnsignedInt_(v33, v37, v36);
  v51[6] = @"elevationDesc";
  v38 = MEMORY[0x1E696AD98];
  v41 = objc_msgSend_elevationDesc(self, v39, v40);
  v52[6] = objc_msgSend_numberWithUnsignedInt_(v38, v42, v41);
  v51[7] = @"boutType";
  v43 = MEMORY[0x1E696AD98];
  v46 = objc_msgSend_boutType(self, v44, v45);
  v52[7] = objc_msgSend_numberWithInteger_(v43, v47, v46);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v48, v52, v51, 8);
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

- (CMPredictedDistanceBout)initWithRecordId:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 stepCount:(unsigned int)a6 distance:(double)a7 activeTime:(double)a8 elevationAsc:(unsigned int)a9 elevationDesc:(unsigned int)a10 stepCountGPS:(unsigned int)a11 distanceGPS:(double)a12 boutType:(int64_t)a13
{
  v25.receiver = self;
  v25.super_class = CMPredictedDistanceBout;
  v22 = [(CMPredictedDistanceBout *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->fRecordId = a3;
    v22->fStartDate = a4;
    v23->fEndDate = a5;
    v23->fStepCount = a6;
    v23->fDistance = a7;
    v23->fActiveTime = a8;
    v23->fElevationAsc = a9;
    v23->fElevationDesc = a10;
    v23->fStepCountGPS = a11;
    v23->fDistanceGPS = a12;
    v23->fBoutType = a13;
  }

  return v23;
}

- (CMPredictedDistanceBout)initWithSample:(CLPredictedWalkDistanceBoutEntry *)a3
{
  v13.receiver = self;
  v13.super_class = CMPredictedDistanceBout;
  v4 = [(CMPredictedDistanceBout *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->fRecordId = a3->var0;
    v6 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v6, v7, v8, a3->var1);
    v9 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v9, v10, v11, a3->var2);
    v5->fStepCount = a3->var3;
    v5->fDistance = a3->var4;
    v5->fActiveTime = a3->var5;
    v5->fElevationAsc = a3->var6;
    v5->fElevationDesc = a3->var7;
    v5->fStepCountGPS = a3->var8;
    v5->fDistanceGPS = a3->var9;
    v5->fBoutType = a3->var10;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMPredictedDistanceBout;
  [(CMPredictedDistanceBout *)&v3 dealloc];
}

- (CMPredictedDistanceBout)initWithCoder:(id)a3
{
  v28.receiver = self;
  v28.super_class = CMPredictedDistanceBout;
  v5 = [(CMPredictedDistanceBout *)&v28 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMPredictedDistanceBoutCodingKeyRecordId");
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"kCMPredictedDistanceBoutCodingKeyStartDate");
    v5->fStartDate = objc_msgSend_copy(v8, v9, v10);
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v12, v11, @"kCMPredictedDistanceBoutCodingKeyEndDate");
    v5->fEndDate = objc_msgSend_copy(v13, v14, v15);
    v5->fStepCount = objc_msgSend_decodeInt32ForKey_(a3, v16, @"kCMPredictedDistanceBoutCodingKeyStepCount");
    objc_msgSend_decodeDoubleForKey_(a3, v17, @"kCMPredictedDistanceBoutCodingKeyDistance");
    v5->fDistance = v18;
    objc_msgSend_decodeDoubleForKey_(a3, v19, @"kCMPredictedDistanceBoutCodingKeyActiveTime");
    v5->fActiveTime = v20;
    v5->fElevationAsc = objc_msgSend_decodeInt32ForKey_(a3, v21, @"kCMPredictedDistanceBoutCodingKeyElevationAsc");
    v5->fElevationDesc = objc_msgSend_decodeInt32ForKey_(a3, v22, @"kCMPredictedDistanceBoutCodingKeyElevationDesc");
    v5->fStepCountGPS = objc_msgSend_decodeInt32ForKey_(a3, v23, @"kCMPredictedDistanceBoutCodingKeyStepCountGPS");
    objc_msgSend_decodeDoubleForKey_(a3, v24, @"kCMPredictedDistanceBoutCodingKeyDistanceGPS");
    v5->fDistanceGPS = v25;
    v5->fBoutType = objc_msgSend_decodeIntegerForKey_(a3, v26, @"kCMPredictedDistanceBoutCodingKeyBoutType");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  fRecordId = self->fRecordId;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fStartDate, a2, a3);
  v7 = v6;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fEndDate, v8, v9);
  v11 = v10;
  fStepCount = self->fStepCount;
  fDistance = self->fDistance;
  fActiveTime = self->fActiveTime;
  fStepCountGPS = self->fStepCountGPS;
  fDistanceGPS = self->fDistanceGPS;
  fBoutType = self->fBoutType;
  v18 = *&self->fElevationAsc;
  v19 = objc_opt_class();
  v21 = objc_msgSend_allocWithZone_(v19, v20, a3);
  v24 = fRecordId;
  v25 = v7;
  v26 = v11;
  v27 = fStepCount;
  v28 = fDistance;
  v29 = fActiveTime;
  v30 = v18;
  v31 = fStepCountGPS;
  v32 = fDistanceGPS;
  v33 = fBoutType;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  return objc_msgSend_initWithSample_(v21, v22, &v24);
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->fRecordId, @"kCMPredictedDistanceBoutCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fStartDate, @"kCMPredictedDistanceBoutCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fEndDate, @"kCMPredictedDistanceBoutCodingKeyEndDate");
  objc_msgSend_encodeInt32_forKey_(a3, v7, self->fStepCount, @"kCMPredictedDistanceBoutCodingKeyStepCount");
  objc_msgSend_encodeDouble_forKey_(a3, v8, @"kCMPredictedDistanceBoutCodingKeyDistance", self->fDistance);
  objc_msgSend_encodeDouble_forKey_(a3, v9, @"kCMPredictedDistanceBoutCodingKeyActiveTime", self->fActiveTime);
  objc_msgSend_encodeInt32_forKey_(a3, v10, self->fElevationAsc, @"kCMPredictedDistanceBoutCodingKeyElevationAsc");
  objc_msgSend_encodeInt32_forKey_(a3, v11, self->fElevationDesc, @"kCMPredictedDistanceBoutCodingKeyElevationDesc");
  objc_msgSend_encodeInt32_forKey_(a3, v12, self->fStepCountGPS, @"kCMPredictedDistanceBoutCodingKeyStepCountGPS");
  objc_msgSend_encodeDouble_forKey_(a3, v13, @"kCMPredictedDistanceBoutCodingKeyDistanceGPS", self->fDistanceGPS);
  fBoutType = self->fBoutType;

  objc_msgSend_encodeInteger_forKey_(a3, v14, fBoutType, @"kCMPredictedDistanceBoutCodingKeyBoutType");
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  v7 = objc_msgSend_recordId(self, v5, v6);
  if (v7 != objc_msgSend_recordId(a3, v8, v9))
  {
    goto LABEL_17;
  }

  if (!objc_msgSend_startDate(self, v10, v11) && !objc_msgSend_startDate(a3, v12, v13) || (started = objc_msgSend_startDate(self, v12, v13), v17 = objc_msgSend_startDate(a3, v15, v16), (isEqualToDate = objc_msgSend_isEqualToDate_(started, v18, v17)) != 0))
  {
    if (!objc_msgSend_endDate(self, v12, v13) && !objc_msgSend_endDate(a3, v20, v21) || (v22 = objc_msgSend_endDate(self, v20, v21), v25 = objc_msgSend_endDate(a3, v23, v24), (isEqualToDate = objc_msgSend_isEqualToDate_(v22, v26, v25)) != 0))
    {
      v27 = objc_msgSend_stepCount(self, v20, v21);
      if (v27 == objc_msgSend_stepCount(a3, v28, v29))
      {
        objc_msgSend_distance(self, v30, v31);
        v33 = v32;
        objc_msgSend_distance(a3, v34, v35);
        if (v33 == v38)
        {
          objc_msgSend_activeTime(self, v36, v37);
          v40 = v39;
          objc_msgSend_activeTime(a3, v41, v42);
          if (v40 == v45)
          {
            v46 = objc_msgSend_elevationAsc(self, v43, v44);
            if (v46 == objc_msgSend_elevationAsc(a3, v47, v48))
            {
              v51 = objc_msgSend_elevationDesc(self, v49, v50);
              if (v51 == objc_msgSend_elevationDesc(a3, v52, v53))
              {
                v56 = objc_msgSend_stepCountGPS(self, v54, v55);
                if (v56 == objc_msgSend_stepCountGPS(a3, v57, v58))
                {
                  objc_msgSend_distanceGPS(self, v59, v60);
                  v62 = v61;
                  objc_msgSend_distanceGPS(a3, v63, v64);
                  if (v62 == v67)
                  {
                    v68 = objc_msgSend_boutType(self, v65, v66);
                    LOBYTE(isEqualToDate) = v68 == objc_msgSend_boutType(a3, v69, v70);
                    return isEqualToDate;
                  }
                }
              }
            }
          }
        }
      }

LABEL_17:
      LOBYTE(isEqualToDate) = 0;
    }
  }

  return isEqualToDate;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_recordId(self, v6, v7);
  started = objc_msgSend_startDate(self, v9, v10);
  v14 = objc_msgSend_endDate(self, v12, v13);
  v17 = objc_msgSend_stepCount(self, v15, v16);
  objc_msgSend_distance(self, v18, v19);
  v21 = v20;
  objc_msgSend_activeTime(self, v22, v23);
  v25 = v24;
  v28 = objc_msgSend_elevationAsc(self, v26, v27);
  v31 = objc_msgSend_elevationDesc(self, v29, v30);
  v34 = objc_msgSend_stepCountGPS(self, v32, v33);
  objc_msgSend_distanceGPS(self, v35, v36);
  v38 = v37;
  v41 = objc_msgSend_boutType(self, v39, v40);
  return objc_msgSend_stringWithFormat_(v3, v42, @"%@, <recordId, %lu, startDate, %@, endDate, %@, stepCount, %d, distance, %f, activeTime, %f, elevationAsc, %d, elevationDesc, %d, stepCountGPS, %d, distanceGPS, %f, boutType, %ld>", v5, v8, started, v14, v17, v21, v25, v28, v31, v34, v38, v41);
}

+ (CLPredictedWalkDistanceBoutEntry)inputFromPreparedStatement:(SEL)a3
{
  retstr->var0 = sqlite3_column_int(a4, 0);
  retstr->var1 = sqlite3_column_double(a4, 1);
  retstr->var2 = sqlite3_column_double(a4, 2);
  retstr->var3 = sqlite3_column_int(a4, 3);
  retstr->var4 = sqlite3_column_double(a4, 4);
  retstr->var5 = sqlite3_column_double(a4, 5);
  retstr->var6 = sqlite3_column_int(a4, 6);
  retstr->var7 = sqlite3_column_int(a4, 7);
  retstr->var8 = sqlite3_column_int(a4, 8);
  retstr->var9 = sqlite3_column_double(a4, 9);
  result = sqlite3_column_int(a4, 10);
  retstr->var10 = result;
  *&retstr->var11 = 0u;
  *(&retstr->var13 + 4) = 0u;
  *&retstr->var15 = 0u;
  return result;
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMPredictedDistanceBout)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v14.receiver = self;
    v14.super_class = CMPredictedDistanceBout;
    v7 = [(CMPredictedDistanceBout *)&v14 init];
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