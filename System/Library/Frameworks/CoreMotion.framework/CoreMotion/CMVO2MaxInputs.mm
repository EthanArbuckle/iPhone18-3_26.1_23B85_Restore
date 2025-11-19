@interface CMVO2MaxInputs
+ (VO2MaxInput)VO2MaxInputFromCMVO2MaxInputs:(SEL)a3;
+ (VO2MaxInput)inputFromPreparedStatement:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (CMVO2MaxInputs)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMVO2MaxInputs)initWithCoder:(id)a3;
- (CMVO2MaxInputs)initWithRecordId:(unint64_t)a3 startDate:(id)a4 mets:(double)a5 metSource:(int64_t)a6 heartRate:(double)a7 heartRateConfidence:(double)a8 gradeType:(int64_t)a9 grade:(double)a10 cadence:(double)a11 pace:(double)a12 hasGPS:(BOOL)a13 hasStrideCal:(BOOL)a14 workoutType:(int64_t)a15;
- (CMVO2MaxInputs)initWithSample:(VO2MaxInput *)a3;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMVO2MaxInputs

- (CMVO2MaxInputs)initWithRecordId:(unint64_t)a3 startDate:(id)a4 mets:(double)a5 metSource:(int64_t)a6 heartRate:(double)a7 heartRateConfidence:(double)a8 gradeType:(int64_t)a9 grade:(double)a10 cadence:(double)a11 pace:(double)a12 hasGPS:(BOOL)a13 hasStrideCal:(BOOL)a14 workoutType:(int64_t)a15
{
  if (!a3)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CMVO2MaxData.mm", 60, @"Invalid parameter not satisfying: %@", @"recordId");
  }

  v34.receiver = self;
  v34.super_class = CMVO2MaxInputs;
  v28 = [(CMVO2MaxInputs *)&v34 init];
  v29 = v28;
  if (v28)
  {
    v28->fRecordId = a3;
    v28->fStartDate = a4;
    v29->fWorkoutSessionId = 0;
    v29->fMets = a5;
    v29->fMetSource = a6;
    v29->fHeartRate = a7;
    v29->fHeartRateConfidence = a8;
    v29->fGradeType = a9;
    v29->fGrade = a10;
    v29->fCadence = a11;
    v29->fPace = a12;
    v29->fHasGPS = a13;
    v29->fHasStrideCal = a14;
    v29->fWorkoutType = a15;
  }

  return v29;
}

- (CMVO2MaxInputs)initWithSample:(VO2MaxInput *)a3
{
  var0 = a3->var0;
  v6 = objc_alloc(MEMORY[0x1E695DF00]);
  v9 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v6, v7, v8, a3->var3);
  hasStrideCal_workoutType = objc_msgSend_initWithRecordId_startDate_mets_metSource_heartRate_heartRateConfidence_gradeType_grade_cadence_pace_hasGPS_hasStrideCal_workoutType_(self, v10, var0, v9, a3->var11, a3->var7, a3->var9, a3->var10, a3->var2, a3->var4, a3->var5, a3->var8, a3->var13, a3->var14, a3->var12);
  v12 = objc_alloc(MEMORY[0x1E696AFB0]);
  hasStrideCal_workoutType->fWorkoutSessionId = objc_msgSend_initWithUUIDBytes_(v12, v13, a3->var1);
  return hasStrideCal_workoutType;
}

- (void)dealloc
{
  fWorkoutSessionId = self->fWorkoutSessionId;
  if (fWorkoutSessionId)
  {
  }

  v4.receiver = self;
  v4.super_class = CMVO2MaxInputs;
  [(CMVO2MaxInputs *)&v4 dealloc];
}

- (CMVO2MaxInputs)initWithCoder:(id)a3
{
  v5 = objc_msgSend_decodeIntegerForKey_(a3, a2, @"kVO2MaxDataCodingKeyRecordId");
  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"kVO2MaxDataCodingKeyStartDate");
  v11 = objc_msgSend_copy(v8, v9, v10);
  objc_msgSend_decodeDoubleForKey_(a3, v12, @"kVO2MaxDataCodingKeyMets");
  v14 = v13;
  v16 = objc_msgSend_decodeIntegerForKey_(a3, v15, @"kVO2MaxDataCodingKeyMetSource");
  objc_msgSend_decodeDoubleForKey_(a3, v17, @"kVO2MaxDataCodingKeyHeartRate");
  v19 = v18;
  objc_msgSend_decodeDoubleForKey_(a3, v20, @"kVO2MaxDataCodingKeyHeartRateConfidence");
  v22 = v21;
  v24 = objc_msgSend_decodeIntegerForKey_(a3, v23, @"kVO2MaxDataCodingKeyGradeType");
  objc_msgSend_decodeDoubleForKey_(a3, v25, @"kVO2MaxDataCodingKeyGrade");
  v27 = v26;
  objc_msgSend_decodeDoubleForKey_(a3, v28, @"kVO2MaxDataCodingKeyCadence");
  v30 = v29;
  objc_msgSend_decodeDoubleForKey_(a3, v31, @"kVO2MaxDataCodingKeyPace");
  v33 = v32;
  v35 = objc_msgSend_decodeBoolForKey_(a3, v34, @"kVO2MaxDataCodingKeyHasGPS");
  v37 = objc_msgSend_decodeBoolForKey_(a3, v36, @"kVO2MaxDataCodingKeyHasStrideCal");
  v39 = objc_msgSend_decodeIntegerForKey_(a3, v38, @"kVO2MaxDataCodingKeyWorkoutType");
  hasStrideCal_workoutType = objc_msgSend_initWithRecordId_startDate_mets_metSource_heartRate_heartRateConfidence_gradeType_grade_cadence_pace_hasGPS_hasStrideCal_workoutType_(self, v40, v5, v11, v16, v24, v35, v37, v14, v19, v22, v27, v30, v33, v39);
  v42 = objc_opt_class();
  v44 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v43, v42, @"kVO2MaxDataCodingKeyWorkoutSessionId");
  hasStrideCal_workoutType->fWorkoutSessionId = objc_msgSend_copy(v44, v45, v46);
  return hasStrideCal_workoutType;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  *&v20 = 0;
  fRecordId = self->fRecordId;
  fStartDate = self->fStartDate;
  v19 = fRecordId;
  fMets = self->fMets;
  *(&v20 + 2) = fMets;
  objc_msgSend_timeIntervalSinceReferenceDate(fStartDate, a2, a3);
  v8 = vcvt_f32_f64(*&self->fHeartRate);
  *&v21 = v9;
  *(&v21 + 1) = v8;
  *&v22 = 0xFFEFFFFFFFFFFFFFLL;
  DWORD2(v22) = self->fGradeType;
  *&v23 = self->fGrade;
  WORD4(v23) = *&self->fHasGPS;
  fWorkoutType = self->fWorkoutType;
  HIDWORD(v23) = self->fMetSource;
  *v24 = fWorkoutType;
  *&v24[8] = *&self->fCadence;
  v24[24] = 0;
  *&v24[28] = 0;
  objc_msgSend_getUUIDBytes_(self->fWorkoutSessionId, v11, &v19 + 8);
  v12 = objc_opt_class();
  v14 = objc_msgSend_allocWithZone_(v12, v13, a3);
  v18[4] = v23;
  v18[5] = *v24;
  v18[6] = *&v24[16];
  v18[0] = v19;
  v18[1] = v20;
  v18[2] = v21;
  v18[3] = v22;
  result = objc_msgSend_initWithSample_(v14, v15, v18);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->fRecordId, @"kVO2MaxDataCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fStartDate, @"kVO2MaxDataCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fWorkoutSessionId, @"kVO2MaxDataCodingKeyWorkoutSessionId");
  objc_msgSend_encodeDouble_forKey_(a3, v7, @"kVO2MaxDataCodingKeyMets", self->fMets);
  objc_msgSend_encodeInteger_forKey_(a3, v8, self->fMetSource, @"kVO2MaxDataCodingKeyMetSource");
  objc_msgSend_encodeDouble_forKey_(a3, v9, @"kVO2MaxDataCodingKeyHeartRate", self->fHeartRate);
  objc_msgSend_encodeDouble_forKey_(a3, v10, @"kVO2MaxDataCodingKeyHeartRateConfidence", self->fHeartRateConfidence);
  objc_msgSend_encodeInteger_forKey_(a3, v11, self->fGradeType, @"kVO2MaxDataCodingKeyGradeType");
  objc_msgSend_encodeDouble_forKey_(a3, v12, @"kVO2MaxDataCodingKeyGrade", self->fGrade);
  objc_msgSend_encodeDouble_forKey_(a3, v13, @"kVO2MaxDataCodingKeyCadence", self->fCadence);
  objc_msgSend_encodeDouble_forKey_(a3, v14, @"kVO2MaxDataCodingKeyPace", self->fPace);
  objc_msgSend_encodeBool_forKey_(a3, v15, self->fHasGPS, @"kVO2MaxDataCodingKeyHasGPS");
  objc_msgSend_encodeBool_forKey_(a3, v16, self->fHasStrideCal, @"kVO2MaxDataCodingKeyHasStrideCal");
  fWorkoutType = self->fWorkoutType;

  objc_msgSend_encodeInteger_forKey_(a3, v17, fWorkoutType, @"kVO2MaxDataCodingKeyWorkoutType");
}

+ (VO2MaxInput)VO2MaxInputFromCMVO2MaxInputs:(SEL)a3
{
  if (!a4)
  {
    v47 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a3, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v47, v48, a3, a2, @"CMVO2MaxData.mm", 174, @"Invalid parameter not satisfying: %@", @"sample");
  }

  retstr->var0 = objc_msgSend_recordId(a4, a3, a4);
  *&retstr->var1[8] = 0;
  *retstr->var1 = 0;
  objc_msgSend_mets(a4, v6, v7);
  *&v8 = v8;
  retstr->var2 = *&v8;
  started = objc_msgSend_startDate(a4, v9, v10);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v12, v13);
  retstr->var3 = v14;
  objc_msgSend_heartRate(a4, v15, v16);
  *&v17 = v17;
  retstr->var4 = *&v17;
  objc_msgSend_heartRateConfidence(a4, v18, v19);
  *&v20 = v20;
  retstr->var5 = *&v20;
  retstr->var6 = -1.79769313e308;
  retstr->var7 = objc_msgSend_gradeType(a4, v21, v22);
  objc_msgSend_grade(a4, v23, v24);
  retstr->var8 = v25;
  retstr->var9 = objc_msgSend_hasGPS(a4, v26, v27);
  retstr->var10 = objc_msgSend_hasStrideCal(a4, v28, v29);
  retstr->var11 = objc_msgSend_metSource(a4, v30, v31);
  retstr->var12 = objc_msgSend_workoutType(a4, v32, v33);
  objc_msgSend_cadence(a4, v34, v35);
  retstr->var13 = v36;
  objc_msgSend_pace(a4, v37, v38);
  retstr->var14 = v39;
  retstr->var15 = 0;
  retstr->var16 = 0;
  v42 = objc_msgSend_workoutSessionId(a4, v40, v41);

  return objc_msgSend_getUUIDBytes_(v42, v43, retstr->var1);
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v7 = objc_msgSend_recordId(self, v5, v6);
  if (v7 != objc_msgSend_recordId(a3, v8, v9))
  {
    goto LABEL_19;
  }

  if (!objc_msgSend_startDate(self, v10, v11) && !objc_msgSend_startDate(a3, v12, v13) || (started = objc_msgSend_startDate(self, v12, v13), v17 = objc_msgSend_startDate(a3, v15, v16), (isEqual = objc_msgSend_isEqualToDate_(started, v18, v17)) != 0))
  {
    if (!objc_msgSend_workoutSessionId(self, v12, v13) && !objc_msgSend_workoutSessionId(a3, v20, v21) || (v22 = objc_msgSend_workoutSessionId(self, v20, v21), v25 = objc_msgSend_workoutSessionId(a3, v23, v24), (isEqual = objc_msgSend_isEqual_(v22, v26, v25)) != 0))
    {
      objc_msgSend_mets(self, v20, v21);
      v28 = v27;
      objc_msgSend_mets(a3, v29, v30);
      if (v28 != v33)
      {
        goto LABEL_19;
      }

      v34 = objc_msgSend_metSource(self, v31, v32);
      if (v34 != objc_msgSend_metSource(a3, v35, v36))
      {
        goto LABEL_19;
      }

      objc_msgSend_heartRate(self, v37, v38);
      v40 = v39;
      objc_msgSend_heartRate(a3, v41, v42);
      if (v40 != v45)
      {
        goto LABEL_19;
      }

      objc_msgSend_heartRateConfidence(self, v43, v44);
      v47 = v46;
      objc_msgSend_heartRateConfidence(a3, v48, v49);
      if (v47 != v52)
      {
        goto LABEL_19;
      }

      v53 = objc_msgSend_gradeType(self, v50, v51);
      if (v53 != objc_msgSend_gradeType(a3, v54, v55))
      {
        goto LABEL_19;
      }

      objc_msgSend_grade(self, v56, v57);
      v59 = v58;
      objc_msgSend_grade(a3, v60, v61);
      if (v59 != v64)
      {
        goto LABEL_19;
      }

      objc_msgSend_cadence(self, v62, v63);
      v66 = v65;
      objc_msgSend_cadence(a3, v67, v68);
      if (v66 != v71 || (objc_msgSend_pace(self, v69, v70), v73 = v72, objc_msgSend_pace(a3, v74, v75), v73 != v78) || (hasGPS = objc_msgSend_hasGPS(self, v76, v77), hasGPS != objc_msgSend_hasGPS(a3, v80, v81)) || (hasStrideCal = objc_msgSend_hasStrideCal(self, v82, v83), hasStrideCal != objc_msgSend_hasStrideCal(a3, v85, v86)))
      {
LABEL_19:
        LOBYTE(isEqual) = 0;
        return isEqual;
      }

      v89 = objc_msgSend_workoutType(self, v87, v88);
      LOBYTE(isEqual) = v89 == objc_msgSend_workoutType(a3, v90, v91);
    }
  }

  return isEqual;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_recordId(self, v6, v7);
  started = objc_msgSend_startDate(self, v9, v10);
  v14 = objc_msgSend_workoutSessionId(self, v12, v13);
  objc_msgSend_mets(self, v15, v16);
  v18 = v17;
  v21 = objc_msgSend_metSource(self, v19, v20);
  objc_msgSend_heartRate(self, v22, v23);
  v25 = v24;
  objc_msgSend_heartRateConfidence(self, v26, v27);
  v29 = v28;
  v32 = objc_msgSend_gradeType(self, v30, v31);
  objc_msgSend_grade(self, v33, v34);
  v36 = v35;
  objc_msgSend_cadence(self, v37, v38);
  v40 = v39;
  objc_msgSend_pace(self, v41, v42);
  v44 = v43;
  hasGPS = objc_msgSend_hasGPS(self, v45, v46);
  hasStrideCal = objc_msgSend_hasStrideCal(self, v48, v49);
  v53 = objc_msgSend_workoutType(self, v51, v52);
  return objc_msgSend_stringWithFormat_(v3, v54, @"%@, <recordId %lu, startDate, %@, workoutSessionId %@, mets, %.3f, metSource, %lu, hr, %.3f, hrConf, %.3f, gradeType, %lu, grade, %.3f, cadence, %.3f, pace, %.3f, hasGPS, %d, hasStrideCal, %d, workoutType, %lu>", v5, v8, started, v14, v18, v21, v25, v29, v32, v36, v40, v44, hasGPS, hasStrideCal, v53);
}

+ (VO2MaxInput)inputFromPreparedStatement:(SEL)a3
{
  retstr->var0 = sqlite3_column_int64(a4, 0);
  *&retstr->var1[8] = 0;
  *retstr->var1 = 0;
  v6 = sqlite3_column_double(a4, 3);
  retstr->var2 = v6;
  retstr->var3 = sqlite3_column_double(a4, 2);
  v7 = sqlite3_column_double(a4, 5);
  retstr->var4 = v7;
  v8 = sqlite3_column_double(a4, 6);
  retstr->var5 = v8;
  retstr->var6 = sqlite3_column_double(a4, 15);
  retstr->var7 = sqlite3_column_int(a4, 7);
  retstr->var8 = sqlite3_column_double(a4, 8);
  retstr->var9 = sqlite3_column_int(a4, 9) != 0;
  retstr->var10 = sqlite3_column_int(a4, 10) != 0;
  retstr->var11 = sqlite3_column_int(a4, 4);
  retstr->var12 = sqlite3_column_int(a4, 11);
  retstr->var13 = sqlite3_column_double(a4, 12);
  retstr->var14 = sqlite3_column_double(a4, 13);
  retstr->var15 = sqlite3_column_int(a4, 14) != 0;
  retstr->var16 = 0;
  v9 = sqlite3_column_text(a4, 1);

  return uuid_parse(v9, retstr->var1);
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMVO2MaxInputs)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v14.receiver = self;
    v14.super_class = CMVO2MaxInputs;
    v7 = [(CMVO2MaxInputs *)&v14 init];
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
  v53[8] = *MEMORY[0x1E69E9840];
  objc_msgSend_heartRateConfidence(self, a2, v2);
  if (v6 >= 0.6)
  {
    objc_msgSend_heartRateConfidence(self, v4, v5);
    if (v8 >= 0.8)
    {
      objc_msgSend_heartRateConfidence(self, v4, v5);
      if (v9 >= 1.0)
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v52[0] = @"startTime";
  v10 = MEMORY[0x1E696AD98];
  started = objc_msgSend_startDate(self, v4, v5);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v12, v13);
  v53[0] = objc_msgSend_numberWithDouble_(v10, v14, v15);
  v52[1] = @"workoutSessionId";
  v18 = objc_msgSend_workoutSessionId(self, v16, v17);
  v21 = objc_msgSend_UUIDString(v18, v19, v20);
  v24 = &stru_1F0E3D7A0;
  if (v21)
  {
    v24 = v21;
  }

  v53[1] = v24;
  v52[2] = @"mets";
  v25 = MEMORY[0x1E696AD98];
  objc_msgSend_mets(self, v22, v23);
  v53[2] = objc_msgSend_numberWithDouble_(v25, v26, v27);
  v52[3] = @"heartRate";
  v28 = MEMORY[0x1E696AD98];
  objc_msgSend_heartRate(self, v29, v30);
  v53[3] = objc_msgSend_numberWithDouble_(v28, v31, v32);
  v52[4] = @"heartRateConfidence";
  v53[4] = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v33, v7);
  v52[5] = @"grade";
  v34 = MEMORY[0x1E696AD98];
  objc_msgSend_grade(self, v35, v36);
  v53[5] = objc_msgSend_numberWithDouble_(v34, v37, v38);
  v52[6] = @"cadence";
  v39 = MEMORY[0x1E696AD98];
  objc_msgSend_cadence(self, v40, v41);
  v53[6] = objc_msgSend_numberWithDouble_(v39, v42, v43);
  v52[7] = @"pace";
  v44 = MEMORY[0x1E696AD98];
  objc_msgSend_pace(self, v45, v46);
  v53[7] = objc_msgSend_numberWithDouble_(v44, v47, v48);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v49, v53, v52, 8);
  v51 = *MEMORY[0x1E69E9840];
  return result;
}

@end