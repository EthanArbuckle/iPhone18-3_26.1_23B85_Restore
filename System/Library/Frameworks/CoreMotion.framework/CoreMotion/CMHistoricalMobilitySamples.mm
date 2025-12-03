@interface CMHistoricalMobilitySamples
- (BOOL)isEqual:(id)equal;
- (CMHistoricalMobilitySamples)init;
- (CMHistoricalMobilitySamples)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (CMHistoricalMobilitySamples)initWithCoder:(id)coder;
- (NSString)description;
- (id)binarySampleRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMHistoricalMobilitySamples

- (CMHistoricalMobilitySamples)init
{
  v3.receiver = self;
  v3.super_class = CMHistoricalMobilitySamples;
  return [(CMHistoricalMobilitySamples *)&v3 init];
}

- (void)dealloc
{
  walkingBoutMobility = self->_walkingBoutMobility;
  if (walkingBoutMobility)
  {
  }

  strideCalEntries = self->_strideCalEntries;
  if (strideCalEntries)
  {
  }

  predictedDistanceBouts = self->_predictedDistanceBouts;
  if (predictedDistanceBouts)
  {
  }

  predictedDistanceBoutsMobilityCalibration = self->_predictedDistanceBoutsMobilityCalibration;
  if (predictedDistanceBoutsMobilityCalibration)
  {
  }

  gaitMetrics = self->_gaitMetrics;
  if (gaitMetrics)
  {
  }

  v8.receiver = self;
  v8.super_class = CMHistoricalMobilitySamples;
  [(CMHistoricalMobilitySamples *)&v8 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_walkingBoutMobility, @"kCMHistoricalMobilitySamplesCodingKeyWalkingBoutMobility");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_strideCalEntries, @"kCMHistoricalMobilitySamplesCodingKeyStrideCalEntries");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->_predictedDistanceBouts, @"kCMHistoricalMobilitySamplesCodingKeyPredictedDistanceBouts");
  objc_msgSend_encodeObject_forKey_(coder, v7, self->_predictedDistanceBoutsMobilityCalibration, @"kCMHistoricalMobilitySamplesCodingKeyPredictedDistanceBoutsMobilityCalibration");
  gaitMetrics = self->_gaitMetrics;

  objc_msgSend_encodeObject_forKey_(coder, v8, gaitMetrics, @"kCMHistoricalMobilitySamplesCodingKeyGaitMetrics");
}

- (CMHistoricalMobilitySamples)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = CMHistoricalMobilitySamples;
  v4 = [(CMHistoricalMobilitySamples *)&v16 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_walkingBoutMobility = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coder, v6, v5, @"kCMHistoricalMobilitySamplesCodingKeyWalkingBoutMobility");
    v7 = objc_opt_class();
    v4->_strideCalEntries = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coder, v8, v7, @"kCMHistoricalMobilitySamplesCodingKeyStrideCalEntries");
    v9 = objc_opt_class();
    v4->_predictedDistanceBoutsMobilityCalibration = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coder, v10, v9, @"kCMHistoricalMobilitySamplesCodingKeyPredictedDistanceBoutsMobilityCalibration");
    v11 = objc_opt_class();
    v4->_predictedDistanceBouts = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coder, v12, v11, @"kCMHistoricalMobilitySamplesCodingKeyPredictedDistanceBouts");
    v13 = objc_opt_class();
    v4->_gaitMetrics = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coder, v14, v13, @"kCMHistoricalMobilitySamplesCodingKeyGaitMetrics");
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v10[1] = objc_msgSend_copy(self->_walkingBoutMobility, v11, v12);
  v10[2] = objc_msgSend_copy(self->_strideCalEntries, v13, v14);
  v10[4] = objc_msgSend_copy(self->_predictedDistanceBouts, v15, v16);
  v10[3] = objc_msgSend_copy(self->_predictedDistanceBoutsMobilityCalibration, v17, v18);
  v10[5] = objc_msgSend_copy(self->_gaitMetrics, v19, v20);
  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_walkingBoutMobility(self, v6, v7);
  v11 = objc_msgSend_strideCalEntries(self, v9, v10);
  v14 = objc_msgSend_predictedDistanceBouts(self, v12, v13);
  v17 = objc_msgSend_predictedDistanceBoutsMobilityCalibration(self, v15, v16);
  v20 = objc_msgSend_gaitMetrics(self, v18, v19);
  return objc_msgSend_stringWithFormat_(v3, v21, @"%@, <walkingBoutMobility, %@, strideCalEntries, %@, predictedDistanceBouts, %@, predictedDistanceBoutsMobilityCalibration, %@, gaitMetrics, %@>", v5, v8, v11, v14, v17, v20);
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_walkingBoutMobility(self, v5, v6);
  v10 = objc_msgSend_walkingBoutMobility(equal, v8, v9);
  if (!objc_msgSend_isEqualToArray_(v7, v11, v10))
  {
    return 0;
  }

  v14 = objc_msgSend_strideCalEntries(self, v12, v13);
  v17 = objc_msgSend_strideCalEntries(equal, v15, v16);
  if (!objc_msgSend_isEqualToArray_(v14, v18, v17))
  {
    return 0;
  }

  v21 = objc_msgSend_predictedDistanceBouts(self, v19, v20);
  v24 = objc_msgSend_predictedDistanceBouts(equal, v22, v23);
  if (!objc_msgSend_isEqualToArray_(v21, v25, v24))
  {
    return 0;
  }

  v28 = objc_msgSend_predictedDistanceBoutsMobilityCalibration(self, v26, v27);
  v31 = objc_msgSend_predictedDistanceBoutsMobilityCalibration(equal, v29, v30);
  if (!objc_msgSend_isEqualToArray_(v28, v32, v31))
  {
    return 0;
  }

  v35 = objc_msgSend_gaitMetrics(self, v33, v34);
  v39 = objc_msgSend_gaitMetrics(equal, v36, v37);

  return objc_msgSend_isEqualToArray_(v35, v38, v39);
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
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalMobilitySamples(SensorKit) binarySampleRepresentation]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

- (CMHistoricalMobilitySamples)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v31 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_length(representation, a2, representation, metadata, timestamp))
  {
LABEL_15:

    self = 0;
    goto LABEL_16;
  }

  v22.receiver = self;
  v22.super_class = CMHistoricalMobilitySamples;
  self = [(CMHistoricalMobilitySamples *)&v22 init];
  if (self)
  {
    v21 = 0;
    v7 = MEMORY[0x1E696ACD0];
    v8 = objc_opt_class();
    v10 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v7, v9, v8, representation, &v21);
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
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHistoricalMobilitySamples(SensorKit) initWithBinarySampleRepresentation:metadata:timestamp:]", "CoreLocation: %s\n", v17);
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
  v31[5] = *MEMORY[0x1E69E9840];
  v30[0] = @"walkingBoutMobility";
  v4 = objc_msgSend_walkingBoutMobility(self, a2, v2);
  v31[0] = sub_19B746CF4(v4, v5, v6);
  v30[1] = @"strideCalEntries";
  v9 = objc_msgSend_strideCalEntries(self, v7, v8);
  v31[1] = sub_19B746CF4(v9, v10, v11);
  v30[2] = @"predictedDistanceBoutsMobilityCalibration";
  v14 = objc_msgSend_predictedDistanceBoutsMobilityCalibration(self, v12, v13);
  v31[2] = sub_19B746CF4(v14, v15, v16);
  v30[3] = @"predictedDistanceBouts";
  v19 = objc_msgSend_predictedDistanceBouts(self, v17, v18);
  v31[3] = sub_19B746CF4(v19, v20, v21);
  v30[4] = @"gaitMetrics";
  v24 = objc_msgSend_gaitMetrics(self, v22, v23);
  v31[4] = sub_19B746CF4(v24, v25, v26);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, v31, v30, 5);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

@end