@interface HKContactsPrescription
+ (BOOL)_validateBaseCurve:(id)curve error:(id *)error;
+ (BOOL)_validateDiameter:(id)diameter error:(id *)error;
+ (HKContactsPrescription)prescriptionWithRightEyeSpecification:(HKContactsLensSpecification *)rightEyeSpecification leftEyeSpecification:(HKContactsLensSpecification *)leftEyeSpecification brand:(NSString *)brand dateIssued:(NSDate *)dateIssued expirationDate:(NSDate *)expirationDate device:(HKDevice *)device metadata:(NSDictionary *)metadata;
- (BOOL)_validateContactsFieldsWithError:(id *)error;
- (HKContactsPrescription)initWithCoder:(id)coder;
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
- (void)_setBrand:(id)brand;
- (void)_setLeftEyeSpecification:(id)specification;
- (void)_setRightEyeSpecification:(id)specification;
- (void)encodeWithCoder:(id)coder;
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
  distantFuture = dateIssued;
  v21 = +[HKObjectType visionPrescriptionType];
  [(NSDate *)distantFuture timeIntervalSinceReferenceDate];
  v23 = v22;

  if (v17)
  {
    [(NSDate *)v17 timeIntervalSinceReferenceDate];
  }

  else
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [(NSDate *)distantFuture timeIntervalSinceReferenceDate];
  }

  v25 = v24;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __133__HKContactsPrescription_prescriptionWithRightEyeSpecification_leftEyeSpecification_brand_dateIssued_expirationDate_device_metadata___block_invoke;
  v33[3] = &unk_1E737FD58;
  v34 = v14;
  v35 = v15;
  v36 = v16;
  v32.receiver = self;
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

- (void)_setRightEyeSpecification:(id)specification
{
  v4 = [specification copy];
  rightEye = self->_rightEye;
  self->_rightEye = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setLeftEyeSpecification:(id)specification
{
  v4 = [specification copy];
  leftEye = self->_leftEye;
  self->_leftEye = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setBrand:(id)brand
{
  v4 = [brand copy];
  brand = self->_brand;
  self->_brand = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)leftSphere
{
  leftEye = [(HKContactsPrescription *)self leftEye];
  sphere = [leftEye sphere];

  return sphere;
}

- (id)rightSphere
{
  rightEye = [(HKContactsPrescription *)self rightEye];
  sphere = [rightEye sphere];

  return sphere;
}

- (id)leftCylinder
{
  leftEye = [(HKContactsPrescription *)self leftEye];
  cylinder = [leftEye cylinder];

  return cylinder;
}

- (id)rightCylinder
{
  rightEye = [(HKContactsPrescription *)self rightEye];
  cylinder = [rightEye cylinder];

  return cylinder;
}

- (id)leftAxis
{
  leftEye = [(HKContactsPrescription *)self leftEye];
  axis = [leftEye axis];

  return axis;
}

- (id)rightAxis
{
  rightEye = [(HKContactsPrescription *)self rightEye];
  axis = [rightEye axis];

  return axis;
}

- (id)leftAddPower
{
  leftEye = [(HKContactsPrescription *)self leftEye];
  addPower = [leftEye addPower];

  return addPower;
}

- (id)rightAddPower
{
  rightEye = [(HKContactsPrescription *)self rightEye];
  addPower = [rightEye addPower];

  return addPower;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKContactsPrescription;
  coderCopy = coder;
  [(HKVisionPrescription *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_leftEye forKey:{@"LeftEye", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_rightEye forKey:@"RightEye"];
  [coderCopy encodeObject:self->_brand forKey:@"Brand"];
}

- (HKContactsPrescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKContactsPrescription;
  v5 = [(HKVisionPrescription *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LeftEye"];
    leftEye = v5->_leftEye;
    v5->_leftEye = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RightEye"];
    rightEye = v5->_rightEye;
    v5->_rightEye = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Brand"];
    brand = v5->_brand;
    v5->_brand = v10;
  }

  return v5;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v9.receiver = self;
  v9.super_class = HKContactsPrescription;
  v4 = [(HKVisionPrescription *)&v9 _validateWithConfiguration:configuration.var0, configuration.var1];
  if (v4 || (v8 = 0, v5 = [(HKContactsPrescription *)self _validateContactsFieldsWithError:&v8], v4 = v8, v6 = 0, !v5))
  {
    v4 = v4;
    v6 = v4;
  }

  return v6;
}

- (BOOL)_validateContactsFieldsWithError:(id *)error
{
  leftSphere = [(HKContactsPrescription *)self leftSphere];
  if (leftSphere)
  {
  }

  else
  {
    rightSphere = [(HKContactsPrescription *)self rightSphere];

    if (!rightSphere)
    {
      v17 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Requires atleast one sphere value for left or right eye"];
      baseCurve2 = v17;
      v16 = v17 == 0;
      if (v17)
      {
        if (error)
        {
          v18 = v17;
          v16 = 0;
          *error = baseCurve2;
        }

        else
        {
          _HKLogDroppedError(v17);
          v16 = 0;
        }
      }

      baseCurve = baseCurve2;
      goto LABEL_24;
    }
  }

  leftEye = [(HKContactsPrescription *)self leftEye];
  baseCurve = [leftEye baseCurve];

  if (!baseCurve || [objc_opt_class() _validateBaseCurve:baseCurve error:error])
  {
    rightEye = [(HKContactsPrescription *)self rightEye];
    baseCurve2 = [rightEye baseCurve];

    if (baseCurve2 && ![objc_opt_class() _validateBaseCurve:baseCurve2 error:error])
    {
      v16 = 0;
    }

    else
    {
      leftEye2 = [(HKContactsPrescription *)self leftEye];
      diameter = [leftEye2 diameter];

      if (diameter && ![objc_opt_class() _validateDiameter:diameter error:error])
      {
        v16 = 0;
      }

      else
      {
        rightEye2 = [(HKContactsPrescription *)self rightEye];
        diameter2 = [rightEye2 diameter];

        v16 = !diameter2 || [objc_opt_class() _validateDiameter:diameter2 error:error];
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v16 = 0;
LABEL_25:

  return v16;
}

+ (BOOL)_validateBaseCurve:(id)curve error:(id *)error
{
  curveCopy = curve;
  v7 = +[HKUnit meterUnit];
  v8 = [curveCopy isCompatibleWithUnit:v7];

  if (v8)
  {
    return 1;
  }

  v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"baseCurve" class:objc_opt_class() selector:a2 format:@"Base curve must be a meter quantity"];
  v11 = v10;
  v9 = v10 == 0;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError(v10);
    }
  }

  return v9;
}

+ (BOOL)_validateDiameter:(id)diameter error:(id *)error
{
  diameterCopy = diameter;
  v7 = +[HKUnit meterUnit];
  v8 = [diameterCopy isCompatibleWithUnit:v7];

  if (v8)
  {
    return 1;
  }

  v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"diameter" class:objc_opt_class() selector:a2 format:@"Diameter must be a meter quantity"];
  v11 = v10;
  v9 = v10 == 0;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError(v10);
    }
  }

  return v9;
}

@end