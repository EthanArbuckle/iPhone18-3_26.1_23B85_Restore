@interface CMCardioFitnessResults
+ (VO2MaxOutput)inputFromPreparedStatement:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (CMCardioFitnessResults)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMCardioFitnessResults)initWithCoder:(id)a3;
- (CMCardioFitnessResults)initWithRecordId:(unint64_t)a3 startDate:(id)a4 workoutType:(int64_t)a5 sessionId:(id)a6 estimatedVo2Max:(double)a7 durationInSeconds:(double)a8 hrMax:(double)a9 hrMin:(double)a10 variance:(double)a11 filteredVo2Max:(double)a12 sessionType:(int64_t)a13 eligibleForHealthKit:(BOOL)a14 eligibleForCalorimetry:(BOOL)a15 numWorkoutsContrToEstimate:(unint64_t)a16 estimatedHRResponseParam:(double)a17 estimatedHRRecoveryParam:(double)a18 sessionVo2Max:(double)a19;
- (CMCardioFitnessResults)initWithSample:(VO2MaxOutput *)a3;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMCardioFitnessResults

- (CMCardioFitnessResults)initWithRecordId:(unint64_t)a3 startDate:(id)a4 workoutType:(int64_t)a5 sessionId:(id)a6 estimatedVo2Max:(double)a7 durationInSeconds:(double)a8 hrMax:(double)a9 hrMin:(double)a10 variance:(double)a11 filteredVo2Max:(double)a12 sessionType:(int64_t)a13 eligibleForHealthKit:(BOOL)a14 eligibleForCalorimetry:(BOOL)a15 numWorkoutsContrToEstimate:(unint64_t)a16 estimatedHRResponseParam:(double)a17 estimatedHRRecoveryParam:(double)a18 sessionVo2Max:(double)a19
{
  v36.receiver = self;
  v36.super_class = CMCardioFitnessResults;
  v33 = [(CMCardioFitnessResults *)&v36 init];
  v34 = v33;
  if (v33)
  {
    v33->fRecordId = a3;
    v33->fStartDate = a4;
    v34->fWorkoutType = a5;
    v34->fSessionId = a6;
    v34->fEstimatedVo2Max = a7;
    v34->fDurationInSeconds = a8;
    v34->fHRMax = a9;
    v34->fHRMin = a10;
    v34->fVariance = a11;
    v34->fFilteredVo2Max = a12;
    v34->fSessionType = a13;
    v34->fEligibleForHealthKit = a14;
    v34->fEligibleForCalorimetry = a15;
    v34->fNumWorkoutsContrToEstimate = a16;
    v34->fEstimatedHRResponseParam = a17;
    v34->fEstimatedHRRecoveryParam = a18;
    v34->fSessionVo2Max = a19;
  }

  return v34;
}

- (CMCardioFitnessResults)initWithSample:(VO2MaxOutput *)a3
{
  v12.receiver = self;
  v12.super_class = CMCardioFitnessResults;
  v4 = [(CMCardioFitnessResults *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = objc_msgSend_initWithUUIDBytes_(v5, v6, a3->var8);
    v4->fRecordId = a3->var0;
    v8 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v8, v9, v10, a3->var2);
    v4->fWorkoutType = a3->var4;
    v4->fSessionId = v7;
    v4->fEstimatedVo2Max = a3->var3;
    v4->fDurationInSeconds = a3->var5;
    v4->fHRMax = a3->var6;
    v4->fHRMin = a3->var7;
    v4->fVariance = a3->var9;
    v4->fFilteredVo2Max = a3->var10;
    v4->fSessionType = a3->var11;
    v4->fEligibleForHealthKit = a3->var12;
    v4->fEligibleForCalorimetry = a3->var13;
    v4->fNumWorkoutsContrToEstimate = a3->var14;
    v4->fEstimatedHRResponseParam = a3->var15;
    v4->fEstimatedHRRecoveryParam = a3->var16;
    v4->fSessionVo2Max = a3->var17;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMCardioFitnessResults;
  [(CMCardioFitnessResults *)&v3 dealloc];
}

- (CMCardioFitnessResults)initWithCoder:(id)a3
{
  v37.receiver = self;
  v37.super_class = CMCardioFitnessResults;
  v5 = [(CMCardioFitnessResults *)&v37 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMCardioFitnessResultsCodingKeyRecordId");
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"kCMCardioFitnessResultsCodingKeyStartDate");
    v5->fStartDate = objc_msgSend_copy(v8, v9, v10);
    v5->fWorkoutType = objc_msgSend_decodeIntegerForKey_(a3, v11, @"kCMCardioFitnessResultsCodingKeyWorkoutType");
    v12 = objc_opt_class();
    v5->fSessionId = objc_msgSend_decodeObjectOfClass_forKey_(a3, v13, v12, @"kCMCardioFitnessResultsCodingKeySessionId");
    objc_msgSend_decodeDoubleForKey_(a3, v14, @"kCMCardioFitnessResultsCodingKeyEstimatedVO2Max");
    v5->fEstimatedVo2Max = v15;
    objc_msgSend_decodeDoubleForKey_(a3, v16, @"kCMCardioFitnessResultsCodingKeyDurationInSeconds");
    v5->fDurationInSeconds = v17;
    objc_msgSend_decodeDoubleForKey_(a3, v18, @"kCMCardioFitnessResultsCodingKeyHRMax");
    v5->fHRMax = v19;
    objc_msgSend_decodeDoubleForKey_(a3, v20, @"kCMCardioFitnessResultsCodingKeyHRMin");
    v5->fHRMin = v21;
    objc_msgSend_decodeDoubleForKey_(a3, v22, @"kCMCardioFitnessResultsCodingKeyVariance");
    v5->fVariance = v23;
    objc_msgSend_decodeDoubleForKey_(a3, v24, @"kCMCardioFitnessResultsCodingKeyFilteredVO2Max");
    v5->fFilteredVo2Max = v25;
    v5->fSessionType = objc_msgSend_decodeIntegerForKey_(a3, v26, @"kCMCardioFitnessResultsCodingKeySessionType");
    v5->fEligibleForHealthKit = objc_msgSend_decodeBoolForKey_(a3, v27, @"kCMCardioFitnessResultsCodingKeyEligibleForHealthKit");
    v5->fEligibleForCalorimetry = objc_msgSend_decodeBoolForKey_(a3, v28, @"kCMCardioFitnessResultsCodingKeyEligibleForCalorimetry");
    v5->fNumWorkoutsContrToEstimate = objc_msgSend_decodeInt32ForKey_(a3, v29, @"kCMCardioFitnessResultsCodingKeyNumWorkoutsContrToEstimate");
    objc_msgSend_decodeDoubleForKey_(a3, v30, @"kCMCardioFitnessResultsCodingKeyEstimatedHRResponseParam");
    v5->fEstimatedHRResponseParam = v31;
    objc_msgSend_decodeDoubleForKey_(a3, v32, @"kCMCardioFitnessResultsCodingKeyEstimatedHRRecoveryParam");
    v5->fEstimatedHRRecoveryParam = v33;
    objc_msgSend_decodeDoubleForKey_(a3, v34, @"kCMCardioFitnessResultsCodingKeySessionVo2Max");
    v5->fSessionVo2Max = v35;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  *&v20 = 0;
  fRecordId = self->fRecordId;
  fStartDate = self->fStartDate;
  v19 = fRecordId;
  objc_msgSend_timeIntervalSinceReferenceDate(fStartDate, a2, a3);
  fSessionId = self->fSessionId;
  DWORD2(v21) = self->fWorkoutType;
  *&v24[24] = self->fSessionType;
  v24[28] = self->fEligibleForHealthKit;
  v24[29] = self->fEligibleForCalorimetry;
  *v25 = self->fNumWorkoutsContrToEstimate;
  fEstimatedVo2Max = self->fEstimatedVo2Max;
  *(&v20 + 1) = v9;
  *&v21 = fEstimatedVo2Max;
  v22 = *&self->fDurationInSeconds;
  v23 = *&self->fHRMin;
  *v24 = 0;
  *&v24[8] = *&self->fVariance;
  *&v25[8] = *&self->fEstimatedHRResponseParam;
  *&v25[24] = self->fSessionVo2Max;
  LODWORD(v26) = 0;
  objc_msgSend_getUUIDBytes_(fSessionId, v10, &v23 + 8);
  v11 = objc_opt_class();
  v13 = objc_msgSend_allocWithZone_(v11, v12, a3);
  v17[6] = *&v24[16];
  v17[7] = *v25;
  v17[8] = *&v25[16];
  v18 = v26;
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = *v24;
  v17[0] = v19;
  v17[1] = v20;
  result = objc_msgSend_initWithSample_(v13, v14, v17);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->fRecordId, @"kCMCardioFitnessResultsCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fStartDate, @"kCMCardioFitnessResultsCodingKeyStartDate");
  objc_msgSend_encodeInteger_forKey_(a3, v6, self->fWorkoutType, @"kCMCardioFitnessResultsCodingKeyWorkoutType");
  objc_msgSend_encodeObject_forKey_(a3, v7, self->fSessionId, @"kCMCardioFitnessResultsCodingKeySessionId");
  objc_msgSend_encodeDouble_forKey_(a3, v8, @"kCMCardioFitnessResultsCodingKeyEstimatedVO2Max", self->fEstimatedVo2Max);
  objc_msgSend_encodeDouble_forKey_(a3, v9, @"kCMCardioFitnessResultsCodingKeyDurationInSeconds", self->fDurationInSeconds);
  objc_msgSend_encodeDouble_forKey_(a3, v10, @"kCMCardioFitnessResultsCodingKeyHRMax", self->fHRMax);
  objc_msgSend_encodeDouble_forKey_(a3, v11, @"kCMCardioFitnessResultsCodingKeyHRMin", self->fHRMin);
  objc_msgSend_encodeDouble_forKey_(a3, v12, @"kCMCardioFitnessResultsCodingKeyVariance", self->fVariance);
  objc_msgSend_encodeDouble_forKey_(a3, v13, @"kCMCardioFitnessResultsCodingKeyFilteredVO2Max", self->fFilteredVo2Max);
  objc_msgSend_encodeInteger_forKey_(a3, v14, self->fSessionType, @"kCMCardioFitnessResultsCodingKeySessionType");
  objc_msgSend_encodeBool_forKey_(a3, v15, self->fEligibleForHealthKit, @"kCMCardioFitnessResultsCodingKeyEligibleForHealthKit");
  objc_msgSend_encodeBool_forKey_(a3, v16, self->fEligibleForCalorimetry, @"kCMCardioFitnessResultsCodingKeyEligibleForCalorimetry");
  objc_msgSend_encodeInteger_forKey_(a3, v17, self->fNumWorkoutsContrToEstimate, @"kCMCardioFitnessResultsCodingKeyNumWorkoutsContrToEstimate");
  objc_msgSend_encodeDouble_forKey_(a3, v18, @"kCMCardioFitnessResultsCodingKeyEstimatedHRResponseParam", self->fEstimatedHRResponseParam);
  objc_msgSend_encodeDouble_forKey_(a3, v19, @"kCMCardioFitnessResultsCodingKeyEstimatedHRRecoveryParam", self->fEstimatedHRRecoveryParam);
  fSessionVo2Max = self->fSessionVo2Max;

  objc_msgSend_encodeDouble_forKey_(a3, v20, @"kCMCardioFitnessResultsCodingKeySessionVo2Max", fSessionVo2Max);
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_recordId(self, v5, v6);
  if (v7 != objc_msgSend_recordId(a3, v8, v9))
  {
    goto LABEL_23;
  }

  if (objc_msgSend_startDate(self, v10, v11) || objc_msgSend_startDate(a3, v10, v11))
  {
    started = objc_msgSend_startDate(self, v10, v11);
    v15 = objc_msgSend_startDate(a3, v13, v14);
    if (!objc_msgSend_isEqualToDate_(started, v16, v15))
    {
      goto LABEL_23;
    }
  }

  v17 = objc_msgSend_workoutType(self, v10, v11);
  if (v17 != objc_msgSend_workoutType(a3, v18, v19))
  {
    goto LABEL_23;
  }

  if (objc_msgSend_sessionId(self, v10, v11) || objc_msgSend_sessionId(a3, v10, v11))
  {
    v20 = objc_msgSend_sessionId(self, v10, v11);
    v23 = objc_msgSend_sessionId(a3, v21, v22);
    if (!objc_msgSend_isEqual_(v20, v24, v23))
    {
      goto LABEL_23;
    }
  }

  objc_msgSend_estimatedVo2Max(self, v10, v11);
  v26 = v25;
  objc_msgSend_estimatedVo2Max(a3, v27, v28);
  if (v26 != v29)
  {
    goto LABEL_23;
  }

  objc_msgSend_durationInSeconds(self, v10, v11);
  v31 = v30;
  objc_msgSend_durationInSeconds(a3, v32, v33);
  if (v31 != v34)
  {
    goto LABEL_23;
  }

  objc_msgSend_hrMax(self, v10, v11);
  v36 = v35;
  objc_msgSend_hrMax(a3, v37, v38);
  if (v36 != v39)
  {
    goto LABEL_23;
  }

  objc_msgSend_hrMin(self, v10, v11);
  v41 = v40;
  objc_msgSend_hrMin(a3, v42, v43);
  if (v41 != v44)
  {
    goto LABEL_23;
  }

  objc_msgSend_variance(self, v10, v11);
  v46 = v45;
  objc_msgSend_variance(a3, v47, v48);
  if (v46 != v49)
  {
    goto LABEL_23;
  }

  objc_msgSend_filteredVo2Max(self, v10, v11);
  v51 = v50;
  objc_msgSend_filteredVo2Max(a3, v52, v53);
  if (v51 != v54)
  {
    goto LABEL_23;
  }

  v55 = objc_msgSend_sessionType(self, v10, v11);
  if (v55 == objc_msgSend_sessionType(a3, v56, v57) && (v58 = objc_msgSend_eligibleForHealthKit(self, v10, v11), v58 == objc_msgSend_eligibleForHealthKit(a3, v59, v60)) && (v61 = objc_msgSend_eligibleForCalorimetry(self, v10, v11), v61 == objc_msgSend_eligibleForCalorimetry(a3, v62, v63)) && (v64 = objc_msgSend_numWorkoutsContrToEstimate(self, v10, v11), v64 == objc_msgSend_numWorkoutsContrToEstimate(a3, v65, v66)) && (objc_msgSend_estimatedHRResponseParam(self, v10, v11), v68 = v67, objc_msgSend_estimatedHRResponseParam(a3, v69, v70), v68 == v71))
  {
    objc_msgSend_estimatedHRRecoveryParam(self, v10, v11);
    v73 = v72;
    objc_msgSend_estimatedHRRecoveryParam(a3, v74, v75);
    v77 = v73 == v76;
  }

  else
  {
LABEL_23:
    v77 = 0;
  }

  objc_msgSend_sessionVo2Max(self, v10, v11);
  v80 = v79;
  objc_msgSend_sessionVo2Max(a3, v81, v82);
  return v80 == v83 && v77;
}

- (NSString)description
{
  v4 = MEMORY[0x1E696AEC0];
  objc_msgSend_sessionVo2Max(self, a2, v2);
  v7 = objc_msgSend_stringWithFormat_(v4, v5, @", sessionVo2Max, %f", v6);
  v70 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v69 = NSStringFromClass(v8);
  v11 = objc_msgSend_recordId(self, v9, v10);
  started = objc_msgSend_startDate(self, v12, v13);
  v17 = objc_msgSend_workoutType(self, v15, v16);
  v20 = objc_msgSend_sessionId(self, v18, v19);
  v23 = objc_msgSend_UUIDString(v20, v21, v22);
  objc_msgSend_estimatedVo2Max(self, v24, v25);
  v27 = v26;
  objc_msgSend_durationInSeconds(self, v28, v29);
  v31 = v30;
  objc_msgSend_hrMax(self, v32, v33);
  v35 = v34;
  objc_msgSend_hrMin(self, v36, v37);
  v39 = v38;
  objc_msgSend_variance(self, v40, v41);
  v43 = v42;
  objc_msgSend_filteredVo2Max(self, v44, v45);
  v47 = v46;
  v50 = objc_msgSend_sessionType(self, v48, v49);
  v53 = objc_msgSend_eligibleForHealthKit(self, v51, v52);
  v56 = objc_msgSend_eligibleForCalorimetry(self, v54, v55);
  v59 = objc_msgSend_numWorkoutsContrToEstimate(self, v57, v58);
  objc_msgSend_estimatedHRResponseParam(self, v60, v61);
  v63 = v62;
  objc_msgSend_estimatedHRRecoveryParam(self, v64, v65);
  return objc_msgSend_stringWithFormat_(v70, v66, @"%@, <recordId, %lu, startDate, %@, workoutType, %ld, sessionId, %@, estimatedVo2Max, %f, durationInSeconds, %f, hrMax, %f, hrMin, %f, variance, %f, filteredVo2Max, %f, sessionType, %ld, eligibleForHealthKit, %d, eligibleForCalorimetry, %d, numWorkoutsContrToEstimate, %lu, estimatedHRResponseParam, %f, estimatedHRRecoveryParam, %f%@>", v69, v11, started, v17, v23, v27, v31, v35, v39, v43, v47, v50, v53, v56, v59, v63, v67, v7);
}

+ (VO2MaxOutput)inputFromPreparedStatement:(SEL)a3
{
  v6 = sqlite3_column_int(a4, 0);
  *retstr->var1 = 0;
  *&retstr->var1[8] = 0;
  retstr->var0 = v6;
  retstr->var2 = sqlite3_column_double(a4, 1);
  retstr->var3 = sqlite3_column_double(a4, 3);
  retstr->var4 = sqlite3_column_int(a4, 2);
  retstr->var5 = sqlite3_column_double(a4, 4);
  retstr->var6 = sqlite3_column_double(a4, 5);
  v7 = sqlite3_column_double(a4, 6);
  *retstr->var8 = 0;
  var8 = retstr->var8;
  *(var8 - 1) = v7;
  *(var8 + 1) = 0;
  *(var8 + 2) = sqlite3_column_double(a4, 8);
  *(var8 + 3) = sqlite3_column_double(a4, 9);
  *(var8 + 8) = sqlite3_column_double(a4, 10);
  var8[36] = sqlite3_column_int(a4, 11) != 0;
  var8[37] = sqlite3_column_int(a4, 12) != 0;
  *(var8 + 10) = sqlite3_column_int(a4, 13);
  *(var8 + 6) = sqlite3_column_double(a4, 14);
  *(var8 + 7) = sqlite3_column_double(a4, 15);
  *(var8 + 8) = sqlite3_column_double(a4, 16);
  *(var8 + 18) = 0;
  v9 = sqlite3_column_text(a4, 7);

  return uuid_parse(v9, var8);
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMCardioFitnessResults)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v14.receiver = self;
    v14.super_class = CMCardioFitnessResults;
    v7 = [(CMCardioFitnessResults *)&v14 init];
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

- (id)sr_dictionaryRepresentation
{
  v62[8] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  v61[0] = @"startTime";
  v5 = MEMORY[0x1E696AD98];
  started = objc_msgSend_startDate(self, a2, v2);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v7, v8);
  v62[0] = objc_msgSend_numberWithDouble_(v5, v9, v10);
  v61[1] = @"sessionId";
  v13 = objc_msgSend_sessionId(self, v11, v12);
  v16 = objc_msgSend_UUIDString(v13, v14, v15);
  v19 = &stru_1F0E3D7A0;
  if (v16)
  {
    v19 = v16;
  }

  v62[1] = v19;
  v61[2] = @"estimatedVo2Max";
  v20 = MEMORY[0x1E696AD98];
  objc_msgSend_estimatedVo2Max(self, v17, v18);
  v62[2] = objc_msgSend_numberWithDouble_(v20, v21, v22);
  v61[3] = @"durationInSeconds";
  v23 = MEMORY[0x1E696AD98];
  objc_msgSend_durationInSeconds(self, v24, v25);
  v62[3] = objc_msgSend_numberWithDouble_(v23, v26, v27);
  v61[4] = @"hrMax";
  v28 = MEMORY[0x1E696AD98];
  objc_msgSend_hrMax(self, v29, v30);
  v62[4] = objc_msgSend_numberWithDouble_(v28, v31, v32);
  v61[5] = @"hrMin";
  v33 = MEMORY[0x1E696AD98];
  objc_msgSend_hrMin(self, v34, v35);
  v62[5] = objc_msgSend_numberWithDouble_(v33, v36, v37);
  v61[6] = @"sessionType";
  v38 = MEMORY[0x1E696AD98];
  v41 = objc_msgSend_sessionType(self, v39, v40);
  v62[6] = objc_msgSend_numberWithInteger_(v38, v42, v41);
  v61[7] = @"numWorkoutsContrToEstimate";
  v43 = MEMORY[0x1E696AD98];
  v46 = objc_msgSend_numWorkoutsContrToEstimate(self, v44, v45);
  v62[7] = objc_msgSend_numberWithUnsignedInteger_(v43, v47, v46);
  v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v48, v62, v61, 8);
  v51 = objc_msgSend_dictionaryWithDictionary_(v4, v50, v49);
  v52 = MEMORY[0x1E696AD98];
  objc_msgSend_sessionVo2Max(self, v53, v54);
  v57 = objc_msgSend_numberWithDouble_(v52, v55, v56);
  objc_msgSend_setObject_forKeyedSubscript_(v51, v58, v57, @"sessionVo2Max");
  v59 = *MEMORY[0x1E69E9840];
  return v51;
}

@end