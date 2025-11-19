@interface CMStrideCalibrationEntry
+ (CLStrideCalEntry)inputFromPreparedStatement:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (CMStrideCalibrationEntry)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMStrideCalibrationEntry)initWithCLStrideCalEntry:(CLStrideCalEntry *)a3;
- (CMStrideCalibrationEntry)initWithCoder:(id)a3;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sr_dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMStrideCalibrationEntry

- (id)sr_dictionaryRepresentation
{
  v41[7] = *MEMORY[0x1E69E9840];
  v40[0] = @"startTime";
  v4 = MEMORY[0x1E696AD98];
  objc_msgSend_startTime(self, a2, v2);
  v41[0] = objc_msgSend_numberWithDouble_(v4, v5, v6);
  v40[1] = @"endTime";
  v7 = MEMORY[0x1E696AD98];
  objc_msgSend_endTime(self, v8, v9);
  v41[1] = objc_msgSend_numberWithDouble_(v7, v10, v11);
  v40[2] = @"distance";
  v12 = MEMORY[0x1E696AD98];
  objc_msgSend_distance(self, v13, v14);
  v41[2] = objc_msgSend_numberWithDouble_(v12, v15, v16);
  v40[3] = @"numberOfSteps";
  v17 = MEMORY[0x1E696AD98];
  v20 = objc_msgSend_steps(self, v18, v19);
  v41[3] = objc_msgSend_numberWithInt_(v17, v21, v20);
  v40[4] = @"speed";
  v22 = MEMORY[0x1E696AD98];
  objc_msgSend_speed(self, v23, v24);
  v41[4] = objc_msgSend_numberWithDouble_(v22, v25, v26);
  v40[5] = @"percentGrade";
  v27 = MEMORY[0x1E696AD98];
  objc_msgSend_percentGrade(self, v28, v29);
  v41[5] = objc_msgSend_numberWithDouble_(v27, v30, v31);
  v40[6] = @"gpsSource";
  v32 = MEMORY[0x1E696AD98];
  v35 = objc_msgSend_gpsSource(self, v33, v34);
  v41[6] = objc_msgSend_numberWithInteger_(v32, v36, v35);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v37, v41, v40, 7);
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

- (CMStrideCalibrationEntry)initWithCLStrideCalEntry:(CLStrideCalEntry *)a3
{
  v11.receiver = self;
  v11.super_class = CMStrideCalibrationEntry;
  result = [(CMStrideCalibrationEntry *)&v11 init];
  if (result)
  {
    v5 = *&a3->recordId;
    v6 = *&a3->pacebin;
    v7 = *&a3->kvalueTrack;
    *&result->_strideCalStruct.endTime = *&a3->endTime;
    *&result->_strideCalStruct.kvalueTrack = v7;
    *&result->_strideCalStruct.pacebin = v6;
    *&result->_strideCalStruct.recordId = v5;
    v8 = *&a3->steps;
    v9 = *&a3->percentGrade;
    v10 = *&a3->timestamp;
    *&result->_strideCalStruct.runningFormStrideLengthMetrics = *&a3->runningFormStrideLengthMetrics;
    *&result->_strideCalStruct.timestamp = v10;
    *&result->_strideCalStruct.percentGrade = v9;
    *&result->_strideCalStruct.steps = v8;
  }

  return result;
}

- (CMStrideCalibrationEntry)initWithCoder:(id)a3
{
  v50.receiver = self;
  v50.super_class = CMStrideCalibrationEntry;
  v5 = [(CMStrideCalibrationEntry *)&v50 init];
  if (v5)
  {
    v6 = objc_msgSend_decodeIntForKey_(a3, v4, @"kCMStrideCalibrationEntryCodingKeyRecordId");
    objc_msgSend_decodeDoubleForKey_(a3, v7, @"kCMStrideCalibrationEntryCodingKeyStartTime");
    v49 = v8;
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v10, v9, @"kCMStrideCalibrationEntryCodingKeyPacebin");
    v14 = objc_msgSend_unsignedIntValue(v11, v12, v13);
    objc_msgSend_decodeDoubleForKey_(a3, v15, @"kCMStrideCalibrationEntryCodingKeyKvalue");
    v17 = v16;
    objc_msgSend_decodeDoubleForKey_(a3, v18, @"kCMStrideCalibrationEntryCodingKeyKvalueTrack");
    v20 = v19;
    objc_msgSend_decodeDoubleForKey_(a3, v21, @"kCMStrideCalibrationEntryCodingKeyScore");
    v23 = v22;
    objc_msgSend_decodeDoubleForKey_(a3, v24, @"kCMStrideCalibrationEntryCodingKeyEndTime");
    v26 = v25;
    objc_msgSend_decodeDoubleForKey_(a3, v27, @"kCMStrideCalibrationEntryCodingKeyDistance");
    v29 = v28;
    v31 = objc_msgSend_decodeInt32ForKey_(a3, v30, @"kCMStrideCalibrationEntryCodingKeySteps");
    v33 = objc_msgSend_decodeInt32ForKey_(a3, v32, @"kCMStrideCalibrationEntryCodingKeySession");
    objc_msgSend_decodeDoubleForKey_(a3, v34, @"kCMStrideCalibrationEntryCodingKeySpeed");
    v36 = v35;
    objc_msgSend_decodeDoubleForKey_(a3, v37, @"kCMStrideCalibrationEntryCodingKeyPercentGrade");
    v39 = v38;
    v41 = objc_msgSend_decodeIntegerForKey_(a3, v40, @"kCMStrideCalibrationEntryCodingKeyGpsSource");
    v44 = 0.0;
    if (objc_msgSend_containsValueForKey_(a3, v42, @"kCMStrideCalibrationEntryCodingKeyMeanRunningStrideLength"))
    {
      objc_msgSend_decodeDoubleForKey_(a3, v43, @"kCMStrideCalibrationEntryCodingKeyMeanRunningStrideLength");
      v44 = v45;
    }

    v46 = objc_msgSend_containsValueForKey_(a3, v43, @"kCMStrideCalibrationEntryCodingKeyNumberRunningStrideLengthSamples");
    if (v46)
    {
      v46 = objc_msgSend_decodeIntForKey_(a3, v47, @"kCMStrideCalibrationEntryCodingKeyNumberRunningStrideLengthSamples");
    }

    v5->_strideCalStruct.recordId = v6;
    v5->_strideCalStruct.startTime = v49;
    v5->_strideCalStruct.pacebin = v14;
    v5->_strideCalStruct.kvalue = v17;
    v5->_strideCalStruct.kvalueTrack = v20;
    v5->_strideCalStruct.score = v23;
    v5->_strideCalStruct.endTime = v26;
    v5->_strideCalStruct.distance = v29;
    v5->_strideCalStruct.steps = v31;
    v5->_strideCalStruct.session = v33;
    v5->_strideCalStruct.speed = v36;
    v5->_strideCalStruct.percentGrade = v39;
    v5->_strideCalStruct.gpsSource = v41;
    v5->_strideCalStruct.runningFormStrideLength = v44;
    v5->_strideCalStruct.runningFormStrideLengthMetrics = v46;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInt_forKey_(a3, a2, self->_strideCalStruct.recordId, @"kCMStrideCalibrationEntryCodingKeyRecordId");
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"kCMStrideCalibrationEntryCodingKeyStartTime", self->_strideCalStruct.startTime);
  v7 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v6, self->_strideCalStruct.pacebin);
  objc_msgSend_encodeObject_forKey_(a3, v8, v7, @"kCMStrideCalibrationEntryCodingKeyPacebin");
  objc_msgSend_encodeDouble_forKey_(a3, v9, @"kCMStrideCalibrationEntryCodingKeyKvalue", self->_strideCalStruct.kvalue);
  objc_msgSend_encodeDouble_forKey_(a3, v10, @"kCMStrideCalibrationEntryCodingKeyKvalueTrack", self->_strideCalStruct.kvalueTrack);
  objc_msgSend_encodeDouble_forKey_(a3, v11, @"kCMStrideCalibrationEntryCodingKeyScore", self->_strideCalStruct.score);
  objc_msgSend_encodeDouble_forKey_(a3, v12, @"kCMStrideCalibrationEntryCodingKeyEndTime", self->_strideCalStruct.endTime);
  objc_msgSend_encodeDouble_forKey_(a3, v13, @"kCMStrideCalibrationEntryCodingKeyDistance", self->_strideCalStruct.distance);
  objc_msgSend_encodeInt32_forKey_(a3, v14, self->_strideCalStruct.steps, @"kCMStrideCalibrationEntryCodingKeySteps");
  objc_msgSend_encodeInt32_forKey_(a3, v15, self->_strideCalStruct.session, @"kCMStrideCalibrationEntryCodingKeySession");
  objc_msgSend_encodeDouble_forKey_(a3, v16, @"kCMStrideCalibrationEntryCodingKeySpeed", self->_strideCalStruct.speed);
  objc_msgSend_encodeDouble_forKey_(a3, v17, @"kCMStrideCalibrationEntryCodingKeyPercentGrade", self->_strideCalStruct.percentGrade);
  objc_msgSend_encodeInteger_forKey_(a3, v18, self->_strideCalStruct.gpsSource, @"kCMStrideCalibrationEntryCodingKeyGpsSource");
  objc_msgSend_encodeDouble_forKey_(a3, v19, @"kCMStrideCalibrationEntryCodingKeyMeanRunningStrideLength", self->_strideCalStruct.runningFormStrideLength);
  runningFormStrideLengthMetrics = self->_strideCalStruct.runningFormStrideLengthMetrics;

  objc_msgSend_encodeInt_forKey_(a3, v20, runningFormStrideLengthMetrics, @"kCMStrideCalibrationEntryCodingKeyNumberRunningStrideLengthSamples");
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
    return 0;
  }

  objc_msgSend_startTime(self, v10, v11);
  v13 = v12;
  objc_msgSend_startTime(a3, v14, v15);
  if (v13 != v18)
  {
    return 0;
  }

  v19 = objc_msgSend_pacebin(self, v16, v17);
  if (v19 != objc_msgSend_pacebin(a3, v20, v21))
  {
    return 0;
  }

  objc_msgSend_kvalue(self, v22, v23);
  v25 = v24;
  objc_msgSend_kvalue(a3, v26, v27);
  if (v25 != v30)
  {
    return 0;
  }

  objc_msgSend_kvalueTrack(self, v28, v29);
  v32 = v31;
  objc_msgSend_kvalueTrack(a3, v33, v34);
  if (v32 != v37)
  {
    return 0;
  }

  objc_msgSend_score(self, v35, v36);
  v39 = v38;
  objc_msgSend_score(a3, v40, v41);
  if (v39 != v44)
  {
    return 0;
  }

  objc_msgSend_endTime(self, v42, v43);
  v46 = v45;
  objc_msgSend_endTime(a3, v47, v48);
  if (v46 != v51)
  {
    return 0;
  }

  objc_msgSend_distance(self, v49, v50);
  v53 = v52;
  objc_msgSend_distance(a3, v54, v55);
  if (v53 != v58)
  {
    return 0;
  }

  v59 = objc_msgSend_steps(self, v56, v57);
  if (v59 != objc_msgSend_steps(a3, v60, v61))
  {
    return 0;
  }

  v64 = objc_msgSend_session(self, v62, v63);
  if (v64 != objc_msgSend_session(a3, v65, v66))
  {
    return 0;
  }

  objc_msgSend_speed(self, v67, v68);
  v70 = v69;
  objc_msgSend_speed(a3, v71, v72);
  if (v70 != v75)
  {
    return 0;
  }

  objc_msgSend_percentGrade(self, v73, v74);
  v77 = v76;
  objc_msgSend_percentGrade(a3, v78, v79);
  if (v77 != v82)
  {
    return 0;
  }

  v83 = objc_msgSend_gpsSource(self, v80, v81);
  if (v83 != objc_msgSend_gpsSource(a3, v84, v85))
  {
    return 0;
  }

  objc_msgSend_meanRunningStrideLength(self, v86, v87);
  v89 = v88;
  objc_msgSend_meanRunningStrideLength(a3, v90, v91);
  if (v89 != v94)
  {
    return 0;
  }

  v95 = objc_msgSend_numberRunningStrideLengthSamples(self, v92, v93);
  return v95 == objc_msgSend_numberRunningStrideLengthSamples(a3, v96, v97);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  result = objc_msgSend_init(v7, v8, v9);
  v11 = *&self->_strideCalStruct.pacebin;
  v12 = *&self->_strideCalStruct.kvalueTrack;
  v13 = *&self->_strideCalStruct.endTime;
  *(result + 8) = *&self->_strideCalStruct.recordId;
  *(result + 56) = v13;
  *(result + 40) = v12;
  *(result + 24) = v11;
  v14 = *&self->_strideCalStruct.percentGrade;
  v15 = *&self->_strideCalStruct.timestamp;
  v16 = *&self->_strideCalStruct.runningFormStrideLengthMetrics;
  *(result + 72) = *&self->_strideCalStruct.steps;
  *(result + 15) = v16;
  *(result + 104) = v15;
  *(result + 88) = v14;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_recordId(self, v6, v7);
  v9 = MEMORY[0x1E695DF00];
  objc_msgSend_startTime(self, v10, v11);
  v14 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v9, v12, v13);
  v15 = MEMORY[0x1E695DF00];
  objc_msgSend_endTime(self, v16, v17);
  v20 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v15, v18, v19);
  objc_msgSend_kvalue(self, v21, v22);
  v24 = v23;
  objc_msgSend_kvalueTrack(self, v25, v26);
  v28 = v27;
  objc_msgSend_score(self, v29, v30);
  v32 = v31;
  v35 = objc_msgSend_session(self, v33, v34);
  objc_msgSend_distance(self, v36, v37);
  v39 = v38;
  v42 = objc_msgSend_steps(self, v40, v41);
  objc_msgSend_speed(self, v43, v44);
  v46 = v45;
  objc_msgSend_percentGrade(self, v47, v48);
  v50 = v49;
  v53 = objc_msgSend_gpsSource(self, v51, v52);
  objc_msgSend_meanRunningStrideLength(self, v54, v55);
  v57 = v56;
  v60 = objc_msgSend_numberRunningStrideLengthSamples(self, v58, v59);
  return objc_msgSend_stringWithFormat_(v3, v61, @"%@, <recordId, %lu, startTime, %@, endTime, %@, kvalue, %f, kvalueTrack, %f, score, %f, session, %d, distance, %f, steps, %d, speed, %f, percentGrade, %f, gpsSource, %d, meanRunningStrideLength, %f, numberRunningStrideLengthSamples, %d>", v5, v8, v14, v20, v24, v28, v32, v35, v39, v42, v46, v50, v53, v57, v60);
}

+ (CLStrideCalEntry)inputFromPreparedStatement:(SEL)a3
{
  *&retstr->runningFormStrideLengthMetrics = 0;
  *&retstr->percentGrade = 0u;
  *&retstr->timestamp = 0u;
  *&retstr->endTime = 0u;
  *&retstr->steps = 0u;
  *&retstr->pacebin = 0u;
  *&retstr->kvalueTrack = 0u;
  *&retstr->recordId = 0u;
  retstr->recordId = sqlite3_column_int(a4, 0);
  retstr->startTime = sqlite3_column_double(a4, 1);
  retstr->pacebin = sqlite3_column_int(a4, 2);
  retstr->kvalue = sqlite3_column_double(a4, 3);
  retstr->kvalueTrack = sqlite3_column_double(a4, 4);
  retstr->score = sqlite3_column_double(a4, 5);
  retstr->endTime = sqlite3_column_double(a4, 6);
  retstr->distance = sqlite3_column_double(a4, 7);
  retstr->steps = sqlite3_column_int(a4, 8);
  retstr->session = sqlite3_column_int(a4, 9);
  retstr->speed = sqlite3_column_double(a4, 10);
  retstr->percentGrade = sqlite3_column_double(a4, 11);
  retstr->gpsSource = sqlite3_column_int(a4, 12);
  retstr->timestamp = 0.0;
  retstr->runningFormStrideLength = sqlite3_column_double(a4, 13);
  result = sqlite3_column_int(a4, 14);
  retstr->runningFormStrideLengthMetrics = result;
  return result;
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMStrideCalibrationEntry)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v14.receiver = self;
    v14.super_class = CMStrideCalibrationEntry;
    v7 = [(CMStrideCalibrationEntry *)&v14 init];
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