@interface CMPredictedDistanceBoutMobilityCalibration
+ (WalkingSpeedStrideCal)inputFromPreparedStatement:(SEL)statement;
- (BOOL)isEqual:(id)equal;
- (CMPredictedDistanceBoutMobilityCalibration)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (CMPredictedDistanceBoutMobilityCalibration)initWithCoder:(id)coder;
- (CMPredictedDistanceBoutMobilityCalibration)initWithRecordId:(unint64_t)id startDate:(id)date endDate:(id)endDate cadenceWatch:(double)watch cadenceGaitCycle:(double)cycle meanWalkingSpeed:(double)speed gaitCycleYield:(double)yield;
- (CMPredictedDistanceBoutMobilityCalibration)initWithSample:(WalkingSpeedStrideCal *)sample recordId:(unint64_t)id;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMPredictedDistanceBoutMobilityCalibration

- (id)sr_dictionaryRepresentation
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31[0] = @"startTime";
  v4 = MEMORY[0x1E696AD98];
  started = objc_msgSend_startDate(self, a2, v2);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v6, v7);
  v32[0] = objc_msgSend_numberWithDouble_(v4, v8, v9);
  v31[1] = @"endTime";
  v10 = MEMORY[0x1E696AD98];
  v13 = objc_msgSend_endDate(self, v11, v12);
  objc_msgSend_timeIntervalSinceReferenceDate(v13, v14, v15);
  v32[1] = objc_msgSend_numberWithDouble_(v10, v16, v17);
  v31[2] = @"cadenceWatch";
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_cadenceWatch(self, v19, v20);
  v32[2] = objc_msgSend_numberWithDouble_(v18, v21, v22);
  v31[3] = @"meanWalkingSpeed";
  v23 = MEMORY[0x1E696AD98];
  objc_msgSend_meanWalkingSpeed(self, v24, v25);
  v32[3] = objc_msgSend_numberWithDouble_(v23, v26, v27);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v28, v32, v31, 4);
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

- (CMPredictedDistanceBoutMobilityCalibration)initWithRecordId:(unint64_t)id startDate:(id)date endDate:(id)endDate cadenceWatch:(double)watch cadenceGaitCycle:(double)cycle meanWalkingSpeed:(double)speed gaitCycleYield:(double)yield
{
  v19.receiver = self;
  v19.super_class = CMPredictedDistanceBoutMobilityCalibration;
  v16 = [(CMPredictedDistanceBoutMobilityCalibration *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->fRecordId = id;
    v16->fStartDate = date;
    v17->fEndDate = endDate;
    v17->fCadenceWatch = watch;
    v17->fCadenceGaitCycle = cycle;
    v17->fMeanWalkingSpeed = speed;
    v17->fGaitCycleYield = yield;
  }

  return v17;
}

- (CMPredictedDistanceBoutMobilityCalibration)initWithSample:(WalkingSpeedStrideCal *)sample recordId:(unint64_t)id
{
  v15.receiver = self;
  v15.super_class = CMPredictedDistanceBoutMobilityCalibration;
  v6 = [(CMPredictedDistanceBoutMobilityCalibration *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->fRecordId = id;
    v8 = objc_alloc(MEMORY[0x1E695DF00]);
    v7->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v8, v9, v10, sample->var0);
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    v7->fEndDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v11, v12, v13, sample->var1);
    v7->fCadenceWatch = sample->var2;
    v7->fCadenceGaitCycle = sample->var3;
    v7->fMeanWalkingSpeed = sample->var4;
    v7->fGaitCycleYield = sample->var5;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMPredictedDistanceBoutMobilityCalibration;
  [(CMPredictedDistanceBoutMobilityCalibration *)&v3 dealloc];
}

- (CMPredictedDistanceBoutMobilityCalibration)initWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = CMPredictedDistanceBoutMobilityCalibration;
  v5 = [(CMPredictedDistanceBoutMobilityCalibration *)&v25 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyRecordId");
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v7, v6, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyStartDate");
    v5->fStartDate = objc_msgSend_copy(v8, v9, v10);
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyEndDate");
    v5->fEndDate = objc_msgSend_copy(v13, v14, v15);
    objc_msgSend_decodeDoubleForKey_(coder, v16, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyCadenceWatch");
    v5->fCadenceWatch = v17;
    objc_msgSend_decodeDoubleForKey_(coder, v18, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyCadenceGaitCycle");
    v5->fCadenceGaitCycle = v19;
    objc_msgSend_decodeDoubleForKey_(coder, v20, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyMeanWalkingSpeed");
    v5->fMeanWalkingSpeed = v21;
    objc_msgSend_decodeDoubleForKey_(coder, v22, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyGaitCycleYield");
    v5->fGaitCycleYield = v23;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_msgSend_timeIntervalSinceReferenceDate(self->fStartDate, a2, zone);
  v6 = v5;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fEndDate, v7, v8);
  v10 = v9;
  v16 = *&self->fMeanWalkingSpeed;
  v17 = *&self->fCadenceWatch;
  v11 = objc_opt_class();
  v13 = objc_msgSend_allocWithZone_(v11, v12, zone);
  v18[0] = v6;
  v18[1] = v10;
  v19 = v17;
  v20 = v16;
  return objc_msgSend_initWithSample_recordId_(v13, v14, v18, self->fRecordId);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->fRecordId, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->fStartDate, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->fEndDate, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyEndDate");
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyCadenceWatch", self->fCadenceWatch);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyCadenceGaitCycle", self->fCadenceGaitCycle);
  objc_msgSend_encodeDouble_forKey_(coder, v9, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyMeanWalkingSpeed", self->fMeanWalkingSpeed);
  fGaitCycleYield = self->fGaitCycleYield;

  objc_msgSend_encodeDouble_forKey_(coder, v10, @"kCMPredictedDistanceBoutMobilityCalibrationCodingKeyGaitCycleYield", fGaitCycleYield);
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = objc_msgSend_recordId(self, v5, v6);
  if (v7 != objc_msgSend_recordId(equal, v8, v9))
  {
    goto LABEL_13;
  }

  if (!objc_msgSend_startDate(self, v10, v11) && !objc_msgSend_startDate(equal, v12, v13) || (started = objc_msgSend_startDate(self, v12, v13), v17 = objc_msgSend_startDate(equal, v15, v16), (isEqualToDate = objc_msgSend_isEqualToDate_(started, v18, v17)) != 0))
  {
    if (!objc_msgSend_endDate(self, v12, v13) && !objc_msgSend_endDate(equal, v20, v21) || (v22 = objc_msgSend_endDate(self, v20, v21), v25 = objc_msgSend_endDate(equal, v23, v24), (isEqualToDate = objc_msgSend_isEqualToDate_(v22, v26, v25)) != 0))
    {
      objc_msgSend_cadenceWatch(self, v20, v21);
      v28 = v27;
      objc_msgSend_cadenceWatch(equal, v29, v30);
      if (v28 == v33)
      {
        objc_msgSend_cadenceGaitCycle(self, v31, v32);
        v35 = v34;
        objc_msgSend_cadenceGaitCycle(equal, v36, v37);
        if (v35 == v40)
        {
          objc_msgSend_meanWalkingSpeed(self, v38, v39);
          v42 = v41;
          objc_msgSend_meanWalkingSpeed(equal, v43, v44);
          if (v42 == v47)
          {
            objc_msgSend_gaitCycleYield(self, v45, v46);
            v49 = v48;
            objc_msgSend_gaitCycleYield(equal, v50, v51);
            LOBYTE(isEqualToDate) = v49 == v52;
            return isEqualToDate;
          }
        }
      }

LABEL_13:
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
  objc_msgSend_cadenceWatch(self, v15, v16);
  v18 = v17;
  objc_msgSend_cadenceGaitCycle(self, v19, v20);
  v22 = v21;
  objc_msgSend_meanWalkingSpeed(self, v23, v24);
  v26 = v25;
  objc_msgSend_gaitCycleYield(self, v27, v28);
  return objc_msgSend_stringWithFormat_(v3, v29, @"%@, <recordId, %lu, startDate, %@, endDate, %@, cadenceWatch, %f, cadenceGaitCycle, %f, meanWalkingSpeed, %f, gaitCycleYield, %f>", v5, v8, started, v14, v18, v22, v26, v30);
}

+ (WalkingSpeedStrideCal)inputFromPreparedStatement:(SEL)statement
{
  retstr->var0 = sqlite3_column_double(a4, 1);
  retstr->var1 = sqlite3_column_double(a4, 2);
  retstr->var2 = sqlite3_column_double(a4, 3);
  retstr->var3 = sqlite3_column_double(a4, 4);
  retstr->var4 = sqlite3_column_double(a4, 5);
  retstr->var5 = sqlite3_column_double(a4, 6);
  return result;
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMPredictedDistanceBoutMobilityCalibration)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if (objc_msgSend_length(representation, a2, representation, metadata, timestamp))
  {
    v14.receiver = self;
    v14.super_class = CMPredictedDistanceBoutMobilityCalibration;
    v7 = [(CMPredictedDistanceBoutMobilityCalibration *)&v14 init];
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