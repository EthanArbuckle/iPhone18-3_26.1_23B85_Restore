@interface CMHistoricalCardioSamples
- (BOOL)isEqual:(id)a3;
- (CMHistoricalCardioSamples)init;
- (CMHistoricalCardioSamples)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (CMHistoricalCardioSamples)initWithCoder:(id)a3;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMHistoricalCardioSamples

- (CMHistoricalCardioSamples)init
{
  v3.receiver = self;
  v3.super_class = CMHistoricalCardioSamples;
  return [(CMHistoricalCardioSamples *)&v3 init];
}

- (void)dealloc
{
  cardioFitnessInputs = self->_cardioFitnessInputs;
  if (cardioFitnessInputs)
  {
  }

  cardioSessionMetrics = self->_cardioSessionMetrics;
  if (cardioSessionMetrics)
  {
  }

  cardioFitnessResults = self->_cardioFitnessResults;
  if (cardioFitnessResults)
  {
  }

  cardioFitnessSummary = self->_cardioFitnessSummary;
  if (cardioFitnessSummary)
  {
  }

  recoveryHeartRate = self->_recoveryHeartRate;
  if (recoveryHeartRate)
  {
  }

  recoveryWorkRate = self->_recoveryWorkRate;
  if (recoveryWorkRate)
  {
  }

  recoverySessions = self->_recoverySessions;
  if (recoverySessions)
  {
  }

  pedestrianGrade = self->_pedestrianGrade;
  if (pedestrianGrade)
  {
  }

  v11.receiver = self;
  v11.super_class = CMHistoricalCardioSamples;
  [(CMHistoricalCardioSamples *)&v11 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_cardioFitnessInputs, @"kCMHistoricalCardioSamplesCodingKeyCardioFitnessInputs");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->_cardioSessionMetrics, @"kCMHistoricalCardioSamplesCodingKeyCardioSessionMetrics");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->_cardioFitnessResults, @"kCMHistoricalCardioSamplesCodingKeyCardioFitnessResults");
  objc_msgSend_encodeObject_forKey_(a3, v7, self->_cardioFitnessSummary, @"kCMHistoricalCardioSamplesCodingKeyCardioFitnessSummary");
  objc_msgSend_encodeObject_forKey_(a3, v8, self->_recoveryHeartRate, @"kCMHistoricalCardioSamplesCodingKeyRecoveryHeartRate");
  objc_msgSend_encodeObject_forKey_(a3, v9, self->_recoveryWorkRate, @"kCMHistoricalCardioSamplesCodingKeyRecoveryWorkRate");
  objc_msgSend_encodeObject_forKey_(a3, v10, self->_recoverySessions, @"kCMHistoricalCardioSamplesCodingKeyRecoverySessions");
  pedestrianGrade = self->_pedestrianGrade;

  objc_msgSend_encodeObject_forKey_(a3, v11, pedestrianGrade, @"kCMHistoricalCardioSamplesCodingKeyPedestrianGrade");
}

- (CMHistoricalCardioSamples)initWithCoder:(id)a3
{
  v22.receiver = self;
  v22.super_class = CMHistoricalCardioSamples;
  v4 = [(CMHistoricalCardioSamples *)&v22 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_cardioFitnessInputs = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(a3, v6, v5, @"kCMHistoricalCardioSamplesCodingKeyCardioFitnessInputs");
    v7 = objc_opt_class();
    v4->_cardioSessionMetrics = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(a3, v8, v7, @"kCMHistoricalCardioSamplesCodingKeyCardioSessionMetrics");
    v9 = objc_opt_class();
    v4->_cardioFitnessResults = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(a3, v10, v9, @"kCMHistoricalCardioSamplesCodingKeyCardioFitnessResults");
    v11 = objc_opt_class();
    v4->_cardioFitnessSummary = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(a3, v12, v11, @"kCMHistoricalCardioSamplesCodingKeyCardioFitnessSummary");
    v13 = objc_opt_class();
    v4->_recoveryHeartRate = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(a3, v14, v13, @"kCMHistoricalCardioSamplesCodingKeyRecoveryHeartRate");
    v15 = objc_opt_class();
    v4->_recoveryWorkRate = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(a3, v16, v15, @"kCMHistoricalCardioSamplesCodingKeyRecoveryWorkRate");
    v17 = objc_opt_class();
    v4->_recoverySessions = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(a3, v18, v17, @"kCMHistoricalCardioSamplesCodingKeyRecoverySessions");
    v19 = objc_opt_class();
    v4->_pedestrianGrade = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(a3, v20, v19, @"kCMHistoricalCardioSamplesCodingKeyPedestrianGrade");
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v10[1] = objc_msgSend_copy(self->_cardioFitnessInputs, v11, v12);
  v10[2] = objc_msgSend_copy(self->_cardioSessionMetrics, v13, v14);
  v10[3] = objc_msgSend_copy(self->_cardioFitnessResults, v15, v16);
  v10[4] = objc_msgSend_copy(self->_cardioFitnessSummary, v17, v18);
  v10[5] = objc_msgSend_copy(self->_recoveryHeartRate, v19, v20);
  v10[6] = objc_msgSend_copy(self->_recoveryWorkRate, v21, v22);
  v10[7] = objc_msgSend_copy(self->_recoverySessions, v23, v24);
  v10[8] = objc_msgSend_copy(self->_pedestrianGrade, v25, v26);
  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_cardioFitnessInputs(self, v6, v7);
  v11 = objc_msgSend_cardioSessionMetrics(self, v9, v10);
  v14 = objc_msgSend_cardioFitnessResults(self, v12, v13);
  v17 = objc_msgSend_cardioFitnessSummary(self, v15, v16);
  v20 = objc_msgSend_recoveryHeartRate(self, v18, v19);
  v23 = objc_msgSend_recoveryWorkRate(self, v21, v22);
  v26 = objc_msgSend_recoverySessions(self, v24, v25);
  v29 = objc_msgSend_pedestrianGrade(self, v27, v28);
  return objc_msgSend_stringWithFormat_(v3, v30, @"%@, <cardioFitnessInputs, %@, cardioSessionMetrics, %@, cardioFitnessResults, %@, cardioFitnessSummary, %@, recoveryHR, %@, recoveryWR, %@, recoverySessions, %@, pedestrianGrade, %@>", v5, v8, v11, v14, v17, v20, v23, v26, v29);
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_cardioFitnessInputs(self, v5, v6);
  v10 = objc_msgSend_cardioFitnessInputs(a3, v8, v9);
  if (!objc_msgSend_isEqualToArray_(v7, v11, v10))
  {
    return 0;
  }

  v14 = objc_msgSend_cardioSessionMetrics(self, v12, v13);
  v17 = objc_msgSend_cardioSessionMetrics(a3, v15, v16);
  if (!objc_msgSend_isEqualToArray_(v14, v18, v17))
  {
    return 0;
  }

  v21 = objc_msgSend_cardioFitnessResults(self, v19, v20);
  v24 = objc_msgSend_cardioFitnessResults(a3, v22, v23);
  if (!objc_msgSend_isEqualToArray_(v21, v25, v24))
  {
    return 0;
  }

  v28 = objc_msgSend_cardioFitnessSummary(self, v26, v27);
  v31 = objc_msgSend_cardioFitnessSummary(a3, v29, v30);
  if (!objc_msgSend_isEqualToArray_(v28, v32, v31))
  {
    return 0;
  }

  v35 = objc_msgSend_recoveryHeartRate(self, v33, v34);
  v38 = objc_msgSend_recoveryHeartRate(a3, v36, v37);
  if (!objc_msgSend_isEqualToArray_(v35, v39, v38))
  {
    return 0;
  }

  v42 = objc_msgSend_recoveryWorkRate(self, v40, v41);
  v45 = objc_msgSend_recoveryWorkRate(a3, v43, v44);
  if (!objc_msgSend_isEqualToArray_(v42, v46, v45))
  {
    return 0;
  }

  v49 = objc_msgSend_recoverySessions(self, v47, v48);
  v52 = objc_msgSend_recoverySessions(a3, v50, v51);
  if (!objc_msgSend_isEqualToArray_(v49, v53, v52))
  {
    return 0;
  }

  v56 = objc_msgSend_pedestrianGrade(self, v54, v55);
  v60 = objc_msgSend_pedestrianGrade(a3, v57, v58);

  return objc_msgSend_isEqualToArray_(v56, v59, v60);
}

- (id)binarySampleRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v2 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, self, 1, &v12);
  if (v12)
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E2A2C0);
    }

    v3 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      *buf = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "Failed to archive %{public}@ object: %{public}@", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E2A2C0);
      }

      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v12;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalCardioSamples(SensorKit) binarySampleRepresentation]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

- (CMHistoricalCardioSamples)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v31 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_length(a3, a2, a3, a4, a5))
  {
LABEL_15:

    self = 0;
    goto LABEL_16;
  }

  v22.receiver = self;
  v22.super_class = CMHistoricalCardioSamples;
  self = [(CMHistoricalCardioSamples *)&v22 init];
  if (self)
  {
    v21 = 0;
    v7 = MEMORY[0x1E696ACD0];
    v8 = objc_opt_class();
    v10 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v7, v9, v8, a3, &v21);
    if (v21)
    {
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E2A2C0);
      }

      v11 = qword_1EAFE2AB0;
      if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138543618;
        v28 = v13;
        v29 = 2114;
        v30 = v21;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "Failed to unarchive %{public}@: %{public}@", buf, 0x16u);
      }

      v14 = sub_19B420058();
      if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AA8 != -1)
        {
          dispatch_once(&qword_1EAFE2AA8, &unk_1F0E2A2C0);
        }

        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v23 = 138543618;
        v24 = v16;
        v25 = 2114;
        v26 = v21;
        v17 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalCardioSamples(SensorKit) initWithBinarySampleRepresentation:metadata:timestamp:]", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      goto LABEL_15;
    }

    v20 = v10;
    if (v10)
    {

      self = v20;
    }
  }

LABEL_16:
  v18 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)sr_dictionaryRepresentation
{
  v36[6] = *MEMORY[0x1E69E9840];
  v35[0] = @"cardioFitnessInputs";
  v4 = objc_msgSend_cardioFitnessInputs(self, a2, v2);
  v36[0] = sub_19B746CF4(v4, v5, v6);
  v35[1] = @"cardioFitnessResults";
  v9 = objc_msgSend_cardioFitnessResults(self, v7, v8);
  v36[1] = sub_19B746CF4(v9, v10, v11);
  v35[2] = @"recoveryHeartRate";
  v14 = objc_msgSend_recoveryHeartRate(self, v12, v13);
  v36[2] = sub_19B746CF4(v14, v15, v16);
  v35[3] = @"recoveryWorkRate";
  v19 = objc_msgSend_recoveryWorkRate(self, v17, v18);
  v36[3] = sub_19B746CF4(v19, v20, v21);
  v35[4] = @"recoverySessions";
  v24 = objc_msgSend_recoverySessions(self, v22, v23);
  v36[4] = sub_19B746CF4(v24, v25, v26);
  v35[5] = @"pedestrianGrade";
  v29 = objc_msgSend_pedestrianGrade(self, v27, v28);
  v36[5] = sub_19B746CF4(v29, v30, v31);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, v36, v35, 6);
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

@end