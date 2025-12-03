@interface HKGlassesPrescription
+ (BOOL)_validatePrism:(id)prism error:(id *)error;
+ (HKGlassesPrescription)prescriptionWithRightEyeSpecification:(HKGlassesLensSpecification *)rightEyeSpecification leftEyeSpecification:(HKGlassesLensSpecification *)leftEyeSpecification dateIssued:(NSDate *)dateIssued expirationDate:(NSDate *)expirationDate device:(HKDevice *)device metadata:(NSDictionary *)metadata;
- (BOOL)_validateGlassesFieldsWithError:(id *)error;
- (HKGlassesPrescription)initWithCoder:(id)coder;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)description;
- (id)leftAddPower;
- (id)leftAxis;
- (id)leftCylinder;
- (id)leftSphere;
- (id)rightAddPower;
- (id)rightAxis;
- (id)rightCylinder;
- (id)rightSphere;
- (void)_setLeftEyeSpecification:(id)specification;
- (void)_setRightEyeSpecification:(id)specification;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKGlassesPrescription

+ (HKGlassesPrescription)prescriptionWithRightEyeSpecification:(HKGlassesLensSpecification *)rightEyeSpecification leftEyeSpecification:(HKGlassesLensSpecification *)leftEyeSpecification dateIssued:(NSDate *)dateIssued expirationDate:(NSDate *)expirationDate device:(HKDevice *)device metadata:(NSDictionary *)metadata
{
  v14 = rightEyeSpecification;
  v15 = leftEyeSpecification;
  v16 = expirationDate;
  v17 = metadata;
  v18 = device;
  distantFuture = dateIssued;
  v20 = +[HKObjectType visionPrescriptionType];
  [(NSDate *)distantFuture timeIntervalSinceReferenceDate];
  v22 = v21;

  if (v16)
  {
    [(NSDate *)v16 timeIntervalSinceReferenceDate];
  }

  else
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [(NSDate *)distantFuture timeIntervalSinceReferenceDate];
  }

  v24 = v23;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __126__HKGlassesPrescription_prescriptionWithRightEyeSpecification_leftEyeSpecification_dateIssued_expirationDate_device_metadata___block_invoke;
  v30[3] = &unk_1E7381858;
  v31 = v14;
  v32 = v15;
  v29.receiver = self;
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

- (void)_setRightEyeSpecification:(id)specification
{
  v4 = [specification copy];
  rightEye = self->_rightEye;
  self->_rightEye = v4;

  MEMORY[0x1EEE66BB8](v4, rightEye);
}

- (void)_setLeftEyeSpecification:(id)specification
{
  v4 = [specification copy];
  leftEye = self->_leftEye;
  self->_leftEye = v4;

  MEMORY[0x1EEE66BB8](v4, leftEye);
}

- (id)leftSphere
{
  leftEye = [(HKGlassesPrescription *)self leftEye];
  sphere = [leftEye sphere];

  return sphere;
}

- (id)rightSphere
{
  rightEye = [(HKGlassesPrescription *)self rightEye];
  sphere = [rightEye sphere];

  return sphere;
}

- (id)leftCylinder
{
  leftEye = [(HKGlassesPrescription *)self leftEye];
  cylinder = [leftEye cylinder];

  return cylinder;
}

- (id)rightCylinder
{
  rightEye = [(HKGlassesPrescription *)self rightEye];
  cylinder = [rightEye cylinder];

  return cylinder;
}

- (id)leftAxis
{
  leftEye = [(HKGlassesPrescription *)self leftEye];
  axis = [leftEye axis];

  return axis;
}

- (id)rightAxis
{
  rightEye = [(HKGlassesPrescription *)self rightEye];
  axis = [rightEye axis];

  return axis;
}

- (id)leftAddPower
{
  leftEye = [(HKGlassesPrescription *)self leftEye];
  addPower = [leftEye addPower];

  return addPower;
}

- (id)rightAddPower
{
  rightEye = [(HKGlassesPrescription *)self rightEye];
  addPower = [rightEye addPower];

  return addPower;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKGlassesPrescription;
  coderCopy = coder;
  [(HKVisionPrescription *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_leftEye forKey:{@"LeftEye", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_rightEye forKey:@"RightEye"];
}

- (HKGlassesPrescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKGlassesPrescription;
  v5 = [(HKVisionPrescription *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LeftEye"];
    leftEye = v5->_leftEye;
    v5->_leftEye = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RightEye"];
    rightEye = v5->_rightEye;
    v5->_rightEye = v8;
  }

  return v5;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v9.receiver = self;
  v9.super_class = HKGlassesPrescription;
  v4 = [(HKVisionPrescription *)&v9 _validateWithConfiguration:configuration.var0, configuration.var1];
  if (v4 || (v8 = 0, v5 = [(HKGlassesPrescription *)self _validateGlassesFieldsWithError:&v8], v4 = v8, v6 = 0, !v5))
  {
    v4 = v4;
    v6 = v4;
  }

  return v6;
}

- (BOOL)_validateGlassesFieldsWithError:(id *)error
{
  leftSphere = [(HKGlassesPrescription *)self leftSphere];
  if (leftSphere)
  {
  }

  else
  {
    rightSphere = [(HKGlassesPrescription *)self rightSphere];

    if (!rightSphere)
    {
      v40 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Requires atleast one sphere value for left or right eye"];
      vertexDistance2 = v40;
      v33 = v40 == 0;
      if (v40)
      {
        if (error)
        {
          v41 = v40;
          v33 = 0;
          *error = vertexDistance2;
        }

        else
        {
          _HKLogDroppedError(v40);
          v33 = 0;
        }
      }

      vertexDistance = vertexDistance2;
      goto LABEL_34;
    }
  }

  leftEye = [(HKGlassesPrescription *)self leftEye];
  vertexDistance = [leftEye vertexDistance];

  if (!vertexDistance || (+[HKUnit meterUnit](HKUnit, "meterUnit"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [vertexDistance isCompatibleWithUnit:v10], v10, (v11 & 1) != 0))
  {
    rightEye = [(HKGlassesPrescription *)self rightEye];
    vertexDistance2 = [rightEye vertexDistance];

    if (vertexDistance2 && (+[HKUnit meterUnit](HKUnit, "meterUnit"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [vertexDistance2 isCompatibleWithUnit:v14], v14, (v15 & 1) == 0))
    {
      v36 = MEMORY[0x1E696ABC0];
      v37 = objc_opt_class();
      v38 = @"rightVertexDistance";
      v39 = @"Right vertex distance must be a meter quantity";
    }

    else
    {
      leftEye2 = [(HKGlassesPrescription *)self leftEye];
      prism = [leftEye2 prism];

      if (!prism)
      {
LABEL_11:
        rightEye2 = [(HKGlassesPrescription *)self rightEye];
        prism2 = [rightEye2 prism];

        if (!prism2)
        {
LABEL_14:
          v33 = 1;
          goto LABEL_34;
        }

        rightEye3 = [(HKGlassesPrescription *)self rightEye];
        prism3 = [rightEye3 prism];
        v28 = [prism3 eye];

        if (v28 == 2)
        {
          v29 = objc_opt_class();
          rightEye4 = [(HKGlassesPrescription *)self rightEye];
          prism4 = [rightEye4 prism];
          v32 = [v29 _validatePrism:prism4 error:error];

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

      leftEye3 = [(HKGlassesPrescription *)self leftEye];
      prism5 = [leftEye3 prism];
      v20 = [prism5 eye];

      if (v20 == 1)
      {
        v21 = objc_opt_class();
        leftEye4 = [(HKGlassesPrescription *)self leftEye];
        prism6 = [leftEye4 prism];
        LODWORD(v21) = [v21 _validatePrism:prism6 error:error];

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
      if (error)
      {
        v44 = v42;
        *error = v43;
      }

      else
      {
        _HKLogDroppedError(v42);
      }
    }

    goto LABEL_34;
  }

  v34 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"leftVertexDistance" class:objc_opt_class() selector:a2 format:@"Left vertex distance must be a meter quantity"];
  vertexDistance2 = v34;
  v33 = v34 == 0;
  if (v34)
  {
    if (error)
    {
      v35 = v34;
      *error = vertexDistance2;
    }

    else
    {
      _HKLogDroppedError(v34);
    }
  }

LABEL_34:
  return v33;
}

+ (BOOL)_validatePrism:(id)prism error:(id *)error
{
  prismCopy = prism;
  amount = [prismCopy amount];
  v8 = +[HKUnit prismDiopterUnit];
  v9 = [amount isCompatibleWithUnit:v8];

  if (v9)
  {
    angle = [prismCopy angle];
    v11 = +[HKUnit radianAngleUnit];
    v12 = [angle isCompatibleWithUnit:v11];

    if (v12)
    {
      verticalAmount = [prismCopy verticalAmount];
      v14 = +[HKUnit prismDiopterUnit];
      v15 = [verticalAmount isCompatibleWithUnit:v14];

      if (v15)
      {
        horizontalAmount = [prismCopy horizontalAmount];
        v17 = +[HKUnit prismDiopterUnit];
        v18 = [horizontalAmount isCompatibleWithUnit:v17];

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
    if (error)
    {
      v26 = v24;
      v19 = 0;
      *error = v25;
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