@interface CMCardioFitnessInputsSessionMetrics
+ (VO2MaxSessionAttributes)inputFromPreparedStatement:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (CMCardioFitnessInputsSessionMetrics)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMCardioFitnessInputsSessionMetrics)initWithCoder:(id)a3;
- (CMCardioFitnessInputsSessionMetrics)initWithRecordId:(unint64_t)a3 startDate:(id)a4 sessionId:(id)a5 meanMaxMets:(double)a6 prior:(double)a7 hardwareType:(unsigned int)a8 betaBlockerUse:(BOOL)a9 algorithmVersion:(int64_t)a10;
- (CMCardioFitnessInputsSessionMetrics)initWithSample:(VO2MaxSessionAttributes *)a3;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMCardioFitnessInputsSessionMetrics

- (CMCardioFitnessInputsSessionMetrics)initWithRecordId:(unint64_t)a3 startDate:(id)a4 sessionId:(id)a5 meanMaxMets:(double)a6 prior:(double)a7 hardwareType:(unsigned int)a8 betaBlockerUse:(BOOL)a9 algorithmVersion:(int64_t)a10
{
  v21.receiver = self;
  v21.super_class = CMCardioFitnessInputsSessionMetrics;
  v18 = [(CMCardioFitnessInputsSessionMetrics *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->fRecordId = a3;
    v18->fStartDate = a4;
    v19->fSessionId = a5;
    v19->fMeanMaxMets = a6;
    v19->fPrior = a7;
    v19->fHardwareType = a8;
    v19->fBetaBlockerUse = a9;
    v19->fAlgorithmVersion = a10;
  }

  return v19;
}

- (CMCardioFitnessInputsSessionMetrics)initWithSample:(VO2MaxSessionAttributes *)a3
{
  v12.receiver = self;
  v12.super_class = CMCardioFitnessInputsSessionMetrics;
  v4 = [(CMCardioFitnessInputsSessionMetrics *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = objc_msgSend_initWithUUIDBytes_(v5, v6, a3->var2);
    v4->fRecordId = a3->var0;
    v8 = objc_alloc(MEMORY[0x1E695DF00]);
    v4->fStartDate = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v8, v9, v10, a3->var1);
    v4->fSessionId = v7;
    v4->fMeanMaxMets = a3->var3;
    v4->fPrior = a3->var4;
    v4->fHardwareType = a3->var5;
    v4->fBetaBlockerUse = a3->var6;
    v4->fAlgorithmVersion = a3->var7;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMCardioFitnessInputsSessionMetrics;
  [(CMCardioFitnessInputsSessionMetrics *)&v3 dealloc];
}

- (CMCardioFitnessInputsSessionMetrics)initWithCoder:(id)a3
{
  v24.receiver = self;
  v24.super_class = CMCardioFitnessInputsSessionMetrics;
  v5 = [(CMCardioFitnessInputsSessionMetrics *)&v24 init];
  if (v5)
  {
    v5->fRecordId = objc_msgSend_decodeIntegerForKey_(a3, v4, @"kCMCardioFitnessInputsSessionMetricsCodingKeyRecordId");
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v7, v6, @"kCMCardioFitnessInputsSessionMetricsCodingKeyStartDate");
    v5->fStartDate = objc_msgSend_copy(v8, v9, v10);
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v12, v11, @"kCMCardioFitnessInputsSessionMetricsCodingKeySessionId");
    v5->fSessionId = objc_msgSend_copy(v13, v14, v15);
    objc_msgSend_decodeDoubleForKey_(a3, v16, @"kCMCardioFitnessInputsSessionMetricsCodingKeyMeanMaxMets");
    v5->fMeanMaxMets = v17;
    objc_msgSend_decodeDoubleForKey_(a3, v18, @"kCMCardioFitnessInputsSessionMetricsCodingKeyPrior");
    v5->fPrior = v19;
    v5->fHardwareType = objc_msgSend_decodeIntegerForKey_(a3, v20, @"kCMCardioFitnessInputsSessionMetricsCodingKeyHardwareType");
    v5->fBetaBlockerUse = objc_msgSend_decodeBoolForKey_(a3, v21, @"kCMCardioFitnessInputsSessionMetricsCodingKeyBetaBlockerUse");
    v5->fAlgorithmVersion = objc_msgSend_decodeIntegerForKey_(a3, v22, @"kCMCardioFitnessInputsSessionMetricsCodingKeyAlgorithmVersion");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  fRecordId = self->fRecordId;
  fStartDate = self->fStartDate;
  *&v16 = fRecordId;
  objc_msgSend_timeIntervalSinceReferenceDate(fStartDate, a2, a3);
  *(&v16 + 1) = v7;
  v17 = 0uLL;
  v18 = *&self->fMeanMaxMets;
  LODWORD(v19) = self->fHardwareType;
  BYTE4(v19) = self->fBetaBlockerUse;
  DWORD2(v19) = self->fAlgorithmVersion;
  v20 = 0uLL;
  objc_msgSend_getUUIDBytes_(self->fSessionId, v8, &v17);
  v9 = objc_opt_class();
  v11 = objc_msgSend_allocWithZone_(v9, v10, a3);
  v15[2] = v18;
  v15[3] = v19;
  v15[4] = v20;
  v15[0] = v16;
  v15[1] = v17;
  result = objc_msgSend_initWithSample_(v11, v12, v15);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->fRecordId, @"kCMCardioFitnessInputsSessionMetricsCodingKeyRecordId");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fStartDate, @"kCMCardioFitnessInputsSessionMetricsCodingKeyStartDate");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fSessionId, @"kCMCardioFitnessInputsSessionMetricsCodingKeySessionId");
  objc_msgSend_encodeDouble_forKey_(a3, v7, @"kCMCardioFitnessInputsSessionMetricsCodingKeyMeanMaxMets", self->fMeanMaxMets);
  objc_msgSend_encodeDouble_forKey_(a3, v8, @"kCMCardioFitnessInputsSessionMetricsCodingKeyPrior", self->fPrior);
  objc_msgSend_encodeInteger_forKey_(a3, v9, self->fHardwareType, @"kCMCardioFitnessInputsSessionMetricsCodingKeyHardwareType");
  objc_msgSend_encodeBool_forKey_(a3, v10, self->fBetaBlockerUse, @"kCMCardioFitnessInputsSessionMetricsCodingKeyBetaBlockerUse");
  fAlgorithmVersion = self->fAlgorithmVersion;

  objc_msgSend_encodeInteger_forKey_(a3, v11, fAlgorithmVersion, @"kCMCardioFitnessInputsSessionMetricsCodingKeyAlgorithmVersion");
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = objc_msgSend_recordId(self, v5, v6);
  if (v7 != objc_msgSend_recordId(a3, v8, v9))
  {
    goto LABEL_13;
  }

  if (!objc_msgSend_startDate(self, v10, v11) && !objc_msgSend_startDate(a3, v12, v13) || (started = objc_msgSend_startDate(self, v12, v13), v17 = objc_msgSend_startDate(a3, v15, v16), (isEqual = objc_msgSend_isEqualToDate_(started, v18, v17)) != 0))
  {
    if (!objc_msgSend_sessionId(self, v12, v13) && !objc_msgSend_sessionId(a3, v20, v21) || (v22 = objc_msgSend_sessionId(self, v20, v21), v25 = objc_msgSend_sessionId(a3, v23, v24), (isEqual = objc_msgSend_isEqual_(v22, v26, v25)) != 0))
    {
      objc_msgSend_meanMaxMets(self, v20, v21);
      v28 = v27;
      objc_msgSend_meanMaxMets(a3, v29, v30);
      if (v28 != v33 || (objc_msgSend_prior(self, v31, v32), v35 = v34, objc_msgSend_prior(a3, v36, v37), v35 != v40) || (v41 = objc_msgSend_hardwareType(self, v38, v39), v41 != objc_msgSend_hardwareType(a3, v42, v43)) || (v46 = objc_msgSend_betaBlockerUse(self, v44, v45), v46 != objc_msgSend_betaBlockerUse(a3, v47, v48)))
      {
LABEL_13:
        LOBYTE(isEqual) = 0;
        return isEqual;
      }

      v51 = objc_msgSend_algorithmVersion(self, v49, v50);
      LOBYTE(isEqual) = v51 == objc_msgSend_algorithmVersion(a3, v52, v53);
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
  v14 = objc_msgSend_sessionId(self, v12, v13);
  v17 = objc_msgSend_UUIDString(v14, v15, v16);
  objc_msgSend_meanMaxMets(self, v18, v19);
  v21 = v20;
  objc_msgSend_prior(self, v22, v23);
  v25 = v24;
  v28 = objc_msgSend_hardwareType(self, v26, v27);
  v31 = objc_msgSend_betaBlockerUse(self, v29, v30);
  v34 = objc_msgSend_algorithmVersion(self, v32, v33);
  return objc_msgSend_stringWithFormat_(v3, v35, @"%@, <recordId, %lu, startDate, %@, sessionId, %@, meanMaxMets, %f, prior, %f, hardwareType, %d, betaBlockerUse, %d, algorithmVersion, %ld>", v5, v8, started, v17, v21, v25, v28, v31, v34);
}

+ (VO2MaxSessionAttributes)inputFromPreparedStatement:(SEL)a3
{
  retstr->var0 = sqlite3_column_int(a4, 0);
  v6 = sqlite3_column_double(a4, 1);
  *retstr->var2 = 0;
  var2 = retstr->var2;
  *(var2 - 1) = v6;
  *(var2 + 1) = 0;
  *(var2 + 2) = sqlite3_column_double(a4, 3);
  *(var2 + 3) = sqlite3_column_double(a4, 4);
  *(var2 + 8) = sqlite3_column_int(a4, 5);
  var2[36] = sqlite3_column_int(a4, 6) != 0;
  *(var2 + 10) = sqlite3_column_int(a4, 7);
  *(var2 + 6) = 0;
  *(var2 + 7) = 0;
  v8 = sqlite3_column_text(a4, 2);

  return uuid_parse(v8, var2);
}

- (id)binarySampleRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, self, 1, 0);
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (CMCardioFitnessInputsSessionMetrics)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if (objc_msgSend_length(a3, a2, a3, a4, a5))
  {
    v14.receiver = self;
    v14.super_class = CMCardioFitnessInputsSessionMetrics;
    v7 = [(CMCardioFitnessInputsSessionMetrics *)&v14 init];
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