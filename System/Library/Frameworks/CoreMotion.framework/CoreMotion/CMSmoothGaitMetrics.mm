@interface CMSmoothGaitMetrics
+ (SmoothedGaitMetrics)inputFromPreparedStatement:(SEL)statement;
- (BOOL)isEqual:(id)equal;
- (CMSmoothGaitMetrics)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (CMSmoothGaitMetrics)initWithCoder:(id)coder;
- (CMSmoothGaitMetrics)initWithRecordId:(unint64_t)id startDate:(id)date walkingSpeed:(double)speed stepLength:(double)length cycleTime:(double)time distance:(double)distance doubleSupportPercentage:(double)percentage asymmetryProbability:(double)self0 numGaitMetrics:(unsigned int)self1;
- (CMSmoothGaitMetrics)initWithSample:(SmoothedGaitMetrics *)sample;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMSmoothGaitMetrics

- (id)sr_dictionaryRepresentation
{
  v36[5] = *MEMORY[0x1E69E9840];
  v35[0] = @"startTime";
  v4 = MEMORY[0x1E696AD98];
  started = objc_msgSend_startDate(self, a2, v2);
  objc_msgSend_timeIntervalSinceReferenceDate(started, v6, v7);
  v10 = objc_msgSend_numberWithDouble_(v4, v8, v9);
  v13 = &stru_1F0E3D7A0;
  if (v10)
  {
    v13 = v10;
  }

  v36[0] = v13;
  v35[1] = @"walkingSpeed";
  v14 = MEMORY[0x1E696AD98];
  objc_msgSend_walkingSpeed(self, v11, v12);
  v36[1] = objc_msgSend_numberWithDouble_(v14, v15, v16);
  v35[2] = @"stepLength";
  v17 = MEMORY[0x1E696AD98];
  objc_msgSend_stepLength(self, v18, v19);
  v36[2] = objc_msgSend_numberWithDouble_(v17, v20, v21);
  v35[3] = @"distance";
  v22 = MEMORY[0x1E696AD98];
  objc_msgSend_distance(self, v23, v24);
  v36[3] = objc_msgSend_numberWithDouble_(v22, v25, v26);
  v35[4] = @"doubleSupportPercentage";
  v27 = MEMORY[0x1E696AD98];
  objc_msgSend_doubleSupportPercentage(self, v28, v29);
  v36[4] = objc_msgSend_numberWithDouble_(v27, v30, v31);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, v36, v35, 5);
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

- (CMSmoothGaitMetrics)initWithRecordId:(unint64_t)id startDate:(id)date walkingSpeed:(double)speed stepLength:(double)length cycleTime:(double)time distance:(double)distance doubleSupportPercentage:(double)percentage asymmetryProbability:(double)self0 numGaitMetrics:(unsigned int)self1
{
  v23.receiver = self;
  v23.super_class = CMSmoothGaitMetrics;
  v20 = [(CMSmoothGaitMetrics *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->fRecordId = id;
    v20->fStartDate = date;
    v21->fWalkingSpeed = speed;
    v21->fStepLength = length;
    v21->fCycleTime = time;
    v21->fDistance = distance;
    v21->fDoubleSupportPercentage = percentage;
    v21->fAsymmetryProbability = probability;
    v21->fNumGaitMetrics = metrics;
  }

  return v21;
}

- (CMSmoothGaitMetrics)initWithSample:(SmoothedGaitMetrics *)sample
{
  v14.receiver = self;
  v14.super_class = CMSmoothGaitMetrics;
  v4 = [(CMSmoothGaitMetrics *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->fRecordId = sample->var0;
    v6 = objc_alloc(MEMORY[0x1E695DF00]);
    v5->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v6, v7, v8, sample->var1);
    var3 = sample->var3;
    var5 = sample->var5;
    var4 = sample->var4;
    v5->fWalkingSpeed = sample->var2;
    v5->fStepLength = var4;
    v12 = vcvtq_f64_f32(*&sample->var6);
    *&v5->fCycleTime = vextq_s8(v12, v12, 8uLL);
    v5->fDoubleSupportPercentage = var3;
    v5->fAsymmetryProbability = var5;
    v5->fNumGaitMetrics = sample->var8;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMSmoothGaitMetrics;
  [(CMSmoothGaitMetrics *)&v3 dealloc];
}

- (CMSmoothGaitMetrics)initWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = CMSmoothGaitMetrics;
  v5 = [(CMSmoothGaitMetrics *)&v25 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(coder, v4, @"kCMSmoothGaitMetricsCodingKeyRecordId");
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v7, v6, @"kCMSmoothGaitMetricsCodingKeyStartDate");
    v5->fStartDate = objc_msgSend_copy(v8, v9, v10);
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"kCMSmoothGaitMetricsCodingKeyWalkingSpeed");
    v5->fWalkingSpeed = v12;
    objc_msgSend_decodeDoubleForKey_(coder, v13, @"kCMSmoothGaitMetricsCodingKeyStepLength");
    v5->fStepLength = v14;
    objc_msgSend_decodeDoubleForKey_(coder, v15, @"kCMSmoothGaitMetricsCodingKeyCycleTime");
    v5->fCycleTime = v16;
    objc_msgSend_decodeDoubleForKey_(coder, v17, @"kCMSmoothGaitMetricsCodingKeyDistance");
    v5->fDistance = v18;
    objc_msgSend_decodeDoubleForKey_(coder, v19, @"kCMSmoothGaitMetricsCodingKeyDoubleSupportPercentage");
    v5->fDoubleSupportPercentage = v20;
    objc_msgSend_decodeDoubleForKey_(coder, v21, @"kCMSmoothGaitMetricsCodingKeyAsymmetryProbability");
    v5->fAsymmetryProbability = v22;
    v5->fNumGaitMetrics = objc_msgSend_decodeInt32ForKey_(coder, v23, @"kCMSmoothGaitMetricsCodingKeyNumGaitMetrics");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  fRecordId = self->fRecordId;
  objc_msgSend_timeIntervalSinceReferenceDate(self->fStartDate, a2, zone);
  v7 = v6;
  fWalkingSpeed = self->fWalkingSpeed;
  fDoubleSupportPercentage = self->fDoubleSupportPercentage;
  fStepLength = self->fStepLength;
  fAsymmetryProbability = self->fAsymmetryProbability;
  fNumGaitMetrics = self->fNumGaitMetrics;
  v13 = vcvt_f32_f64(*&self->fCycleTime);
  v14 = objc_opt_class();
  v16 = objc_msgSend_allocWithZone_(v14, v15, zone);
  v19 = fRecordId;
  v20 = v7;
  v21 = fWalkingSpeed;
  v22 = fDoubleSupportPercentage;
  v23 = fStepLength;
  v24 = fAsymmetryProbability;
  v25 = vrev64_s32(v13);
  v26 = fNumGaitMetrics;
  return objc_msgSend_initWithSample_(v16, v17, &v19);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInteger_forKey_(coder, a2, self->fRecordId, @"kCMSmoothGaitMetricsCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->fStartDate, @"kCMSmoothGaitMetricsCodingKeyStartDate");
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCMSmoothGaitMetricsCodingKeyWalkingSpeed", self->fWalkingSpeed);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"kCMSmoothGaitMetricsCodingKeyStepLength", self->fStepLength);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"kCMSmoothGaitMetricsCodingKeyCycleTime", self->fCycleTime);
  objc_msgSend_encodeDouble_forKey_(coder, v9, @"kCMSmoothGaitMetricsCodingKeyDistance", self->fDistance);
  objc_msgSend_encodeDouble_forKey_(coder, v10, @"kCMSmoothGaitMetricsCodingKeyDoubleSupportPercentage", self->fDoubleSupportPercentage);
  objc_msgSend_encodeDouble_forKey_(coder, v11, @"kCMSmoothGaitMetricsCodingKeyAsymmetryProbability", self->fAsymmetryProbability);
  fNumGaitMetrics = self->fNumGaitMetrics;

  objc_msgSend_encodeInt32_forKey_(coder, v12, fNumGaitMetrics, @"kCMSmoothGaitMetricsCodingKeyNumGaitMetrics");
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
    objc_msgSend_walkingSpeed(self, v12, v13);
    v21 = v20;
    objc_msgSend_walkingSpeed(equal, v22, v23);
    if (v21 == v26)
    {
      objc_msgSend_stepLength(self, v24, v25);
      v28 = v27;
      objc_msgSend_stepLength(equal, v29, v30);
      if (v28 == v33)
      {
        objc_msgSend_cycleTime(self, v31, v32);
        v35 = v34;
        objc_msgSend_cycleTime(equal, v36, v37);
        if (v35 == v40)
        {
          objc_msgSend_distance(self, v38, v39);
          v42 = v41;
          objc_msgSend_distance(equal, v43, v44);
          if (v42 == v47)
          {
            objc_msgSend_doubleSupportPercentage(self, v45, v46);
            v49 = v48;
            objc_msgSend_doubleSupportPercentage(equal, v50, v51);
            if (v49 == v54)
            {
              objc_msgSend_asymmetryProbability(self, v52, v53);
              v56 = v55;
              objc_msgSend_asymmetryProbability(equal, v57, v58);
              if (v56 == v61)
              {
                v62 = objc_msgSend_numGaitMetrics(self, v59, v60);
                LOBYTE(isEqualToDate) = v62 == objc_msgSend_numGaitMetrics(equal, v63, v64);
                return isEqualToDate;
              }
            }
          }
        }
      }
    }

LABEL_13:
    LOBYTE(isEqualToDate) = 0;
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
  objc_msgSend_walkingSpeed(self, v12, v13);
  v15 = v14;
  objc_msgSend_stepLength(self, v16, v17);
  v19 = v18;
  objc_msgSend_cycleTime(self, v20, v21);
  v23 = v22;
  objc_msgSend_distance(self, v24, v25);
  v27 = v26;
  objc_msgSend_doubleSupportPercentage(self, v28, v29);
  v31 = v30;
  objc_msgSend_asymmetryProbability(self, v32, v33);
  v35 = v34;
  v38 = objc_msgSend_numGaitMetrics(self, v36, v37);
  return objc_msgSend_stringWithFormat_(v3, v39, @"%@, <recordId, %lu, startDate, %@, walkingSpeed, %f, stepLength, %f, cycleTime, %f, distance, %f, doubleSupportPercentage, %f, asymmetryProbability, %f, numGaitMetrics, %d>", v5, v8, started, v15, v19, v23, v27, v31, v35, v38);
}

+ (SmoothedGaitMetrics)inputFromPreparedStatement:(SEL)statement
{
  retstr->var0 = sqlite3_column_int(a4, 0);
  retstr->var1 = sqlite3_column_double(a4, 1);
  v6 = sqlite3_column_double(a4, 2);
  retstr->var2 = v6;
  v7 = sqlite3_column_double(a4, 6);
  retstr->var3 = v7;
  v8 = sqlite3_column_double(a4, 3);
  retstr->var4 = v8;
  v9 = sqlite3_column_double(a4, 7);
  retstr->var5 = v9;
  v10 = sqlite3_column_double(a4, 5);
  retstr->var6 = v10;
  v11 = sqlite3_column_double(a4, 4);
  retstr->var7 = v11;
  result = sqlite3_column_int(a4, 8);
  retstr->var8 = result;
  return result;
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMSmoothGaitMetrics)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if (objc_msgSend_length(representation, a2, representation, metadata, timestamp))
  {
    v14.receiver = self;
    v14.super_class = CMSmoothGaitMetrics;
    v7 = [(CMSmoothGaitMetrics *)&v14 init];
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