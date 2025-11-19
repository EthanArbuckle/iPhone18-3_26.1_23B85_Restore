@interface HKGlassesPrescription
+ (BOOL)_validatePrism:(id)a3 error:(id *)a4;
+ (HKGlassesPrescription)prescriptionWithRightEyeSpecification:(HKGlassesLensSpecification *)rightEyeSpecification leftEyeSpecification:(HKGlassesLensSpecification *)leftEyeSpecification dateIssued:(NSDate *)dateIssued expirationDate:(NSDate *)expirationDate device:(HKDevice *)device metadata:(NSDictionary *)metadata;
- (BOOL)_validateGlassesFieldsWithError:(id *)a3;
- (HKGlassesPrescription)initWithCoder:(id)a3;
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
- (void)_setLeftEyeSpecification:(id)a3;
- (void)_setRightEyeSpecification:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKGlassesPrescription

+ (HKGlassesPrescription)prescriptionWithRightEyeSpecification:(HKGlassesLensSpecification *)rightEyeSpecification leftEyeSpecification:(HKGlassesLensSpecification *)leftEyeSpecification dateIssued:(NSDate *)dateIssued expirationDate:(NSDate *)expirationDate device:(HKDevice *)device metadata:(NSDictionary *)metadata
{
  v14 = rightEyeSpecification;
  v15 = leftEyeSpecification;
  v16 = expirationDate;
  v17 = metadata;
  v18 = device;
  v19 = dateIssued;
  v20 = +[HKObjectType visionPrescriptionType];
  [(NSDate *)v19 timeIntervalSinceReferenceDate];
  v22 = v21;

  if (v16)
  {
    [(NSDate *)v16 timeIntervalSinceReferenceDate];
  }

  else
  {
    v19 = [MEMORY[0x1E695DF00] distantFuture];
    [(NSDate *)v19 timeIntervalSinceReferenceDate];
  }

  v24 = v23;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __126__HKGlassesPrescription_prescriptionWithRightEyeSpecification_leftEyeSpecification_dateIssued_expirationDate_device_metadata___block_invoke;
  v30[3] = &unk_1E7381858;
  v31 = v14;
  v32 = v15;
  v29.receiver = a1;
  v29.super_class = &OBJC_METACLASS___HKGlassesPrescription;
  v25 = v15;
  v26 = v14;
  v27 = objc_msgSendSuper2(&v29, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v20, v18, v17, v30, v22, v24);

  if (!v16)
  {
  }

  return v27;
}

void __126__HKGlassesPrescription_prescriptionWithRightEyeSpecification_leftEyeSpecification_dateIssued_expirationDate_device_metadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  v4 = [v3 copy];
  v5 = v8[21];
  v8[21] = v4;

  v6 = [*(a1 + 40) copy];
  v7 = v8[22];
  v8[22] = v6;

  [v8 _setPrescriptionType:1];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  leftEye = self->_leftEye;
  v7 = [v3 stringWithFormat:@"<%@:%p Left=%@, Right=%@>", v5, self, leftEye, self->_rightEye];

  return v7;
}

- (void)_setRightEyeSpecification:(id)a3
{
  v4 = [a3 copy];
  rightEye = self->_rightEye;
  self->_rightEye = v4;

  MEMORY[0x1EEE66BB8](v4, rightEye);
}

- (void)_setLeftEyeSpecification:(id)a3
{
  v4 = [a3 copy];
  leftEye = self->_leftEye;
  self->_leftEye = v4;

  MEMORY[0x1EEE66BB8](v4, leftEye);
}

- (id)leftSphere
{
  v2 = [(HKGlassesPrescription *)self leftEye];
  v3 = [v2 sphere];

  return v3;
}

- (id)rightSphere
{
  v2 = [(HKGlassesPrescription *)self rightEye];
  v3 = [v2 sphere];

  return v3;
}

- (id)leftCylinder
{
  v2 = [(HKGlassesPrescription *)self leftEye];
  v3 = [v2 cylinder];

  return v3;
}

- (id)rightCylinder
{
  v2 = [(HKGlassesPrescription *)self rightEye];
  v3 = [v2 cylinder];

  return v3;
}

- (id)leftAxis
{
  v2 = [(HKGlassesPrescription *)self leftEye];
  v3 = [v2 axis];

  return v3;
}

- (id)rightAxis
{
  v2 = [(HKGlassesPrescription *)self rightEye];
  v3 = [v2 axis];

  return v3;
}

- (id)leftAddPower
{
  v2 = [(HKGlassesPrescription *)self leftEye];
  v3 = [v2 addPower];

  return v3;
}

- (id)rightAddPower
{
  v2 = [(HKGlassesPrescription *)self rightEye];
  v3 = [v2 addPower];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKGlassesPrescription;
  v4 = a3;
  [(HKVisionPrescription *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_leftEye forKey:{@"LeftEye", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_rightEye forKey:@"RightEye"];
}

- (HKGlassesPrescription)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKGlassesPrescription;
  v5 = [(HKVisionPrescription *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LeftEye"];
    leftEye = v5->_leftEye;
    v5->_leftEye = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RightEye"];
    rightEye = v5->_rightEye;
    v5->_rightEye = v8;
  }

  return v5;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v9.receiver = self;
  v9.super_class = HKGlassesPrescription;
  v4 = [(HKVisionPrescription *)&v9 _validateWithConfiguration:a3.var0, a3.var1];
  if (v4 || (v8 = 0, v5 = [(HKGlassesPrescription *)self _validateGlassesFieldsWithError:&v8], v4 = v8, v6 = 0, !v5))
  {
    v4 = v4;
    v6 = v4;
  }

  return v6;
}

- (BOOL)_validateGlassesFieldsWithError:(id *)a3
{
  v6 = [(HKGlassesPrescription *)self leftSphere];
  if (v6)
  {
  }

  else
  {
    v7 = [(HKGlassesPrescription *)self rightSphere];

    if (!v7)
    {
      v40 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Requires atleast one sphere value for left or right eye"];
      v13 = v40;
      v33 = v40 == 0;
      if (v40)
      {
        if (a3)
        {
          v41 = v40;
          v33 = 0;
          *a3 = v13;
        }

        else
        {
          _HKLogDroppedError(v40);
          v33 = 0;
        }
      }

      v9 = v13;
      goto LABEL_34;
    }
  }

  v8 = [(HKGlassesPrescription *)self leftEye];
  v9 = [v8 vertexDistance];

  if (!v9 || (+[HKUnit meterUnit](HKUnit, "meterUnit"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isCompatibleWithUnit:v10], v10, (v11 & 1) != 0))
  {
    v12 = [(HKGlassesPrescription *)self rightEye];
    v13 = [v12 vertexDistance];

    if (v13 && (+[HKUnit meterUnit](HKUnit, "meterUnit"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v13 isCompatibleWithUnit:v14], v14, (v15 & 1) == 0))
    {
      v36 = MEMORY[0x1E696ABC0];
      v37 = objc_opt_class();
      v38 = @"rightVertexDistance";
      v39 = @"Right vertex distance must be a meter quantity";
    }

    else
    {
      v16 = [(HKGlassesPrescription *)self leftEye];
      v17 = [v16 prism];

      if (!v17)
      {
LABEL_11:
        v24 = [(HKGlassesPrescription *)self rightEye];
        v25 = [v24 prism];

        if (!v25)
        {
LABEL_14:
          v33 = 1;
          goto LABEL_34;
        }

        v26 = [(HKGlassesPrescription *)self rightEye];
        v27 = [v26 prism];
        v28 = [v27 eye];

        if (v28 == 2)
        {
          v29 = objc_opt_class();
          v30 = [(HKGlassesPrescription *)self rightEye];
          v31 = [v30 prism];
          v32 = [v29 _validatePrism:v31 error:a3];

          if (v32)
          {
            goto LABEL_14;
          }

LABEL_23:
          v33 = 0;
          goto LABEL_34;
        }

        v36 = MEMORY[0x1E696ABC0];
        v37 = objc_opt_class();
        v38 = @"self.rightEye.prism.eye";
        v39 = @"Right prism Eye incorrect";
        goto LABEL_25;
      }

      v18 = [(HKGlassesPrescription *)self leftEye];
      v19 = [v18 prism];
      v20 = [v19 eye];

      if (v20 == 1)
      {
        v21 = objc_opt_class();
        v22 = [(HKGlassesPrescription *)self leftEye];
        v23 = [v22 prism];
        LODWORD(v21) = [v21 _validatePrism:v23 error:a3];

        if (!v21)
        {
          goto LABEL_23;
        }

        goto LABEL_11;
      }

      v36 = MEMORY[0x1E696ABC0];
      v37 = objc_opt_class();
      v38 = @"self.leftEye.prism.eye";
      v39 = @"Left prism Eye incorrect";
    }

LABEL_25:
    v42 = [v36 hk_errorForInvalidArgument:v38 class:v37 selector:a2 format:v39];
    v43 = v42;
    v33 = v42 == 0;
    if (v42)
    {
      if (a3)
      {
        v44 = v42;
        *a3 = v43;
      }

      else
      {
        _HKLogDroppedError(v42);
      }
    }

    goto LABEL_34;
  }

  v34 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"leftVertexDistance" class:objc_opt_class() selector:a2 format:@"Left vertex distance must be a meter quantity"];
  v13 = v34;
  v33 = v34 == 0;
  if (v34)
  {
    if (a3)
    {
      v35 = v34;
      *a3 = v13;
    }

    else
    {
      _HKLogDroppedError(v34);
    }
  }

LABEL_34:
  return v33;
}

+ (BOOL)_validatePrism:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 amount];
  v8 = +[HKUnit prismDiopterUnit];
  v9 = [v7 isCompatibleWithUnit:v8];

  if (v9)
  {
    v10 = [v6 angle];
    v11 = +[HKUnit radianAngleUnit];
    v12 = [v10 isCompatibleWithUnit:v11];

    if (v12)
    {
      v13 = [v6 verticalAmount];
      v14 = +[HKUnit prismDiopterUnit];
      v15 = [v13 isCompatibleWithUnit:v14];

      if (v15)
      {
        v16 = [v6 horizontalAmount];
        v17 = +[HKUnit prismDiopterUnit];
        v18 = [v16 isCompatibleWithUnit:v17];

        if (v18)
        {
          v19 = 1;
          goto LABEL_15;
        }

        v20 = MEMORY[0x1E696ABC0];
        v21 = objc_opt_class();
        v22 = @"prism.horizontalAmount";
        v23 = @"Horizontal amount must be an prism diopter quantity";
      }

      else
      {
        v20 = MEMORY[0x1E696ABC0];
        v21 = objc_opt_class();
        v22 = @"prism.verticalAmount";
        v23 = @"Vertical amount must be an prism diopter quantity";
      }
    }

    else
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = objc_opt_class();
      v22 = @"prism.angle";
      v23 = @"Prism angle must be an Angle quantity";
    }
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = objc_opt_class();
    v22 = @"prism.amount";
    v23 = @"Prism amount must be an prism diopter quantity";
  }

  v24 = [v20 hk_errorForInvalidArgument:v22 class:v21 selector:a2 format:v23];
  v25 = v24;
  v19 = v24 == 0;
  if (v24)
  {
    if (a4)
    {
      v26 = v24;
      v19 = 0;
      *a4 = v25;
    }

    else
    {
      _HKLogDroppedError(v24);
      v19 = 0;
    }
  }

LABEL_15:
  return v19;
}

@end