@interface HKContactsPrescription
+ (BOOL)_validateBaseCurve:(id)a3 error:(id *)a4;
+ (BOOL)_validateDiameter:(id)a3 error:(id *)a4;
+ (HKContactsPrescription)prescriptionWithRightEyeSpecification:(HKContactsLensSpecification *)rightEyeSpecification leftEyeSpecification:(HKContactsLensSpecification *)leftEyeSpecification brand:(NSString *)brand dateIssued:(NSDate *)dateIssued expirationDate:(NSDate *)expirationDate device:(HKDevice *)device metadata:(NSDictionary *)metadata;
- (BOOL)_validateContactsFieldsWithError:(id *)a3;
- (HKContactsPrescription)initWithCoder:(id)a3;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)description;
- (id)leftAddPower;
- (id)leftAxis;
- (id)leftCylinder;
- (id)leftSphere;
- (id)rightAddPower;
- (id)rightAxis;
- (id)rightCylinder;
- (id)rightSphere;
- (void)_setBrand:(id)a3;
- (void)_setLeftEyeSpecification:(id)a3;
- (void)_setRightEyeSpecification:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKContactsPrescription

+ (HKContactsPrescription)prescriptionWithRightEyeSpecification:(HKContactsLensSpecification *)rightEyeSpecification leftEyeSpecification:(HKContactsLensSpecification *)leftEyeSpecification brand:(NSString *)brand dateIssued:(NSDate *)dateIssued expirationDate:(NSDate *)expirationDate device:(HKDevice *)device metadata:(NSDictionary *)metadata
{
  v14 = rightEyeSpecification;
  v15 = leftEyeSpecification;
  v16 = brand;
  v17 = expirationDate;
  v18 = metadata;
  v19 = device;
  v20 = dateIssued;
  v21 = +[HKObjectType visionPrescriptionType];
  [(NSDate *)v20 timeIntervalSinceReferenceDate];
  v23 = v22;

  if (v17)
  {
    [(NSDate *)v17 timeIntervalSinceReferenceDate];
  }

  else
  {
    v20 = [MEMORY[0x1E695DF00] distantFuture];
    [(NSDate *)v20 timeIntervalSinceReferenceDate];
  }

  v25 = v24;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __133__HKContactsPrescription_prescriptionWithRightEyeSpecification_leftEyeSpecification_brand_dateIssued_expirationDate_device_metadata___block_invoke;
  v33[3] = &unk_1E737FD58;
  v34 = v14;
  v35 = v15;
  v36 = v16;
  v32.receiver = a1;
  v32.super_class = &OBJC_METACLASS___HKContactsPrescription;
  v26 = v16;
  v27 = v15;
  v28 = v14;
  v29 = objc_msgSendSuper2(&v32, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v21, v19, v18, v33, v23, v25);

  if (!v17)
  {
  }

  return v29;
}

void __133__HKContactsPrescription_prescriptionWithRightEyeSpecification_leftEyeSpecification_brand_dateIssued_expirationDate_device_metadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v10 = a2;
  v4 = [v3 copy];
  v5 = v10[21];
  v10[21] = v4;

  v6 = [*(a1 + 40) copy];
  v7 = v10[22];
  v10[22] = v6;

  v8 = [*(a1 + 48) copy];
  v9 = v10[23];
  v10[23] = v8;

  [v10 _setPrescriptionType:2];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  rightEye = self->_rightEye;
  v7 = [v3 stringWithFormat:@"<%@:%p Left=%@, Right=%@, Brand=%@>", v5, self, self->_leftEye, rightEye, self->_brand];

  return v7;
}

- (void)_setRightEyeSpecification:(id)a3
{
  v4 = [a3 copy];
  rightEye = self->_rightEye;
  self->_rightEye = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setLeftEyeSpecification:(id)a3
{
  v4 = [a3 copy];
  leftEye = self->_leftEye;
  self->_leftEye = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setBrand:(id)a3
{
  v4 = [a3 copy];
  brand = self->_brand;
  self->_brand = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)leftSphere
{
  v2 = [(HKContactsPrescription *)self leftEye];
  v3 = [v2 sphere];

  return v3;
}

- (id)rightSphere
{
  v2 = [(HKContactsPrescription *)self rightEye];
  v3 = [v2 sphere];

  return v3;
}

- (id)leftCylinder
{
  v2 = [(HKContactsPrescription *)self leftEye];
  v3 = [v2 cylinder];

  return v3;
}

- (id)rightCylinder
{
  v2 = [(HKContactsPrescription *)self rightEye];
  v3 = [v2 cylinder];

  return v3;
}

- (id)leftAxis
{
  v2 = [(HKContactsPrescription *)self leftEye];
  v3 = [v2 axis];

  return v3;
}

- (id)rightAxis
{
  v2 = [(HKContactsPrescription *)self rightEye];
  v3 = [v2 axis];

  return v3;
}

- (id)leftAddPower
{
  v2 = [(HKContactsPrescription *)self leftEye];
  v3 = [v2 addPower];

  return v3;
}

- (id)rightAddPower
{
  v2 = [(HKContactsPrescription *)self rightEye];
  v3 = [v2 addPower];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKContactsPrescription;
  v4 = a3;
  [(HKVisionPrescription *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_leftEye forKey:{@"LeftEye", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_rightEye forKey:@"RightEye"];
  [v4 encodeObject:self->_brand forKey:@"Brand"];
}

- (HKContactsPrescription)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKContactsPrescription;
  v5 = [(HKVisionPrescription *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LeftEye"];
    leftEye = v5->_leftEye;
    v5->_leftEye = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RightEye"];
    rightEye = v5->_rightEye;
    v5->_rightEye = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Brand"];
    brand = v5->_brand;
    v5->_brand = v10;
  }

  return v5;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v9.receiver = self;
  v9.super_class = HKContactsPrescription;
  v4 = [(HKVisionPrescription *)&v9 _validateWithConfiguration:a3.var0, a3.var1];
  if (v4 || (v8 = 0, v5 = [(HKContactsPrescription *)self _validateContactsFieldsWithError:&v8], v4 = v8, v6 = 0, !v5))
  {
    v4 = v4;
    v6 = v4;
  }

  return v6;
}

- (BOOL)_validateContactsFieldsWithError:(id *)a3
{
  v6 = [(HKContactsPrescription *)self leftSphere];
  if (v6)
  {
  }

  else
  {
    v7 = [(HKContactsPrescription *)self rightSphere];

    if (!v7)
    {
      v17 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Requires atleast one sphere value for left or right eye"];
      v11 = v17;
      v16 = v17 == 0;
      if (v17)
      {
        if (a3)
        {
          v18 = v17;
          v16 = 0;
          *a3 = v11;
        }

        else
        {
          _HKLogDroppedError(v17);
          v16 = 0;
        }
      }

      v9 = v11;
      goto LABEL_24;
    }
  }

  v8 = [(HKContactsPrescription *)self leftEye];
  v9 = [v8 baseCurve];

  if (!v9 || [objc_opt_class() _validateBaseCurve:v9 error:a3])
  {
    v10 = [(HKContactsPrescription *)self rightEye];
    v11 = [v10 baseCurve];

    if (v11 && ![objc_opt_class() _validateBaseCurve:v11 error:a3])
    {
      v16 = 0;
    }

    else
    {
      v12 = [(HKContactsPrescription *)self leftEye];
      v13 = [v12 diameter];

      if (v13 && ![objc_opt_class() _validateDiameter:v13 error:a3])
      {
        v16 = 0;
      }

      else
      {
        v14 = [(HKContactsPrescription *)self rightEye];
        v15 = [v14 diameter];

        v16 = !v15 || [objc_opt_class() _validateDiameter:v15 error:a3];
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v16 = 0;
LABEL_25:

  return v16;
}

+ (BOOL)_validateBaseCurve:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[HKUnit meterUnit];
  v8 = [v6 isCompatibleWithUnit:v7];

  if (v8)
  {
    return 1;
  }

  v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"baseCurve" class:objc_opt_class() selector:a2 format:@"Base curve must be a meter quantity"];
  v11 = v10;
  v9 = v10 == 0;
  if (v10)
  {
    if (a4)
    {
      v12 = v10;
      *a4 = v11;
    }

    else
    {
      _HKLogDroppedError(v10);
    }
  }

  return v9;
}

+ (BOOL)_validateDiameter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[HKUnit meterUnit];
  v8 = [v6 isCompatibleWithUnit:v7];

  if (v8)
  {
    return 1;
  }

  v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"diameter" class:objc_opt_class() selector:a2 format:@"Diameter must be a meter quantity"];
  v11 = v10;
  v9 = v10 == 0;
  if (v10)
  {
    if (a4)
    {
      v12 = v10;
      *a4 = v11;
    }

    else
    {
      _HKLogDroppedError(v10);
    }
  }

  return v9;
}

@end