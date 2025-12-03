@interface HKVisionPrescription
+ (BOOL)_validateAddPower:(id)power error:(id *)error;
+ (BOOL)_validateAxis:(id)axis error:(id *)error;
+ (BOOL)_validateCylinder:(id)cylinder error:(id *)error;
+ (BOOL)_validateSphere:(id)sphere error:(id *)error;
+ (HKVisionPrescription)prescriptionWithType:(HKVisionPrescriptionType)type dateIssued:(NSDate *)dateIssued expirationDate:(NSDate *)expirationDate device:(HKDevice *)device metadata:(NSDictionary *)metadata;
- (BOOL)_validateCommonFieldsWithError:(id *)error;
- (BOOL)_validateForSavingWithClientEntitlements:(id)entitlements applicationSDKVersionToken:(unint64_t)token isAppleWatch:(BOOL)watch error:(id *)error;
- (HKVisionPrescription)initWithCoder:(id)coder;
- (NSDate)expirationDate;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKVisionPrescription

+ (HKVisionPrescription)prescriptionWithType:(HKVisionPrescriptionType)type dateIssued:(NSDate *)dateIssued expirationDate:(NSDate *)expirationDate device:(HKDevice *)device metadata:(NSDictionary *)metadata
{
  v12 = expirationDate;
  v13 = metadata;
  v14 = device;
  distantFuture = dateIssued;
  v16 = +[HKObjectType visionPrescriptionType];
  [(NSDate *)distantFuture timeIntervalSinceReferenceDate];
  v18 = v17;

  if (v12)
  {
    [(NSDate *)v12 timeIntervalSinceReferenceDate];
  }

  else
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [(NSDate *)distantFuture timeIntervalSinceReferenceDate];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __87__HKVisionPrescription_prescriptionWithType_dateIssued_expirationDate_device_metadata___block_invoke;
  v22[3] = &__block_descriptor_40_e30_v16__0__HKVisionPrescription_8l;
  v22[4] = type;
  v20 = [self _newSampleWithType:v16 startDate:v14 endDate:v13 device:v22 metadata:v18 config:v19];

  if (!v12)
  {
  }

  return v20;
}

- (NSDate)expirationDate
{
  endDate = [(HKSample *)self endDate];
  [endDate timeIntervalSinceReferenceDate];
  v5 = v4;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v8 = v7;

  if (v5 >= v8)
  {
    endDate2 = 0;
  }

  else
  {
    endDate2 = [(HKSample *)self endDate];
  }

  return endDate2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  prescriptionType = self->_prescriptionType;
  dateIssued = [(HKVisionPrescription *)self dateIssued];
  expirationDate = [(HKVisionPrescription *)self expirationDate];
  v9 = [v3 stringWithFormat:@"<%@:%p PrescriptionType=%lu, dateIssued=%@, expirationDate=%@>", v5, self, prescriptionType, dateIssued, expirationDate];

  return v9;
}

- (BOOL)_validateForSavingWithClientEntitlements:(id)entitlements applicationSDKVersionToken:(unint64_t)token isAppleWatch:(BOOL)watch error:(id *)error
{
  watchCopy = watch;
  v11.receiver = self;
  v11.super_class = HKVisionPrescription;
  v8 = [HKObject _validateForSavingWithClientEntitlements:sel__validateForSavingWithClientEntitlements_applicationSDKVersionToken_isAppleWatch_error_ applicationSDKVersionToken:entitlements isAppleWatch:token error:?];
  if (v8 && watchCopy)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:2 description:@"Unable to save vision samples on this device"];
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = HKVisionPrescription;
  result = [(HKObject *)&v5 copyWithZone:zone];
  *(result + 12) = self->_prescriptionType;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKVisionPrescription;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_prescriptionType forKey:{@"PrescriptionType", v5.receiver, v5.super_class}];
}

- (HKVisionPrescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKVisionPrescription;
  v5 = [(HKSample *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_prescriptionType = [coderCopy decodeIntegerForKey:@"PrescriptionType"];
  }

  return v5;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v9.receiver = self;
  v9.super_class = HKVisionPrescription;
  v4 = [(HKSample *)&v9 _validateWithConfiguration:configuration.var0, configuration.var1];
  if (v4 || (v8 = 0, v5 = [(HKVisionPrescription *)self _validateCommonFieldsWithError:&v8], v4 = v8, v6 = 0, !v5))
  {
    v4 = v4;
    v6 = v4;
  }

  return v6;
}

- (BOOL)_validateCommonFieldsWithError:(id *)error
{
  leftSphere = [(HKVisionPrescription *)self leftSphere];
  if (leftSphere && ![objc_opt_class() _validateSphere:leftSphere error:error])
  {
    v13 = 0;
  }

  else
  {
    rightSphere = [(HKVisionPrescription *)self rightSphere];
    if (rightSphere && ![objc_opt_class() _validateSphere:rightSphere error:error])
    {
      v13 = 0;
    }

    else
    {
      leftCylinder = [(HKVisionPrescription *)self leftCylinder];
      if (leftCylinder && ![objc_opt_class() _validateCylinder:leftCylinder error:error])
      {
        v13 = 0;
      }

      else
      {
        rightCylinder = [(HKVisionPrescription *)self rightCylinder];
        if (rightCylinder && ![objc_opt_class() _validateCylinder:rightCylinder error:error])
        {
          v13 = 0;
        }

        else
        {
          leftAxis = [(HKVisionPrescription *)self leftAxis];
          if (leftAxis && ![objc_opt_class() _validateAxis:leftAxis error:error])
          {
            v13 = 0;
          }

          else
          {
            rightAxis = [(HKVisionPrescription *)self rightAxis];
            if (rightAxis && ![objc_opt_class() _validateAxis:rightAxis error:error])
            {
              v13 = 0;
            }

            else
            {
              leftAddPower = [(HKVisionPrescription *)self leftAddPower];
              if (leftAddPower && ![objc_opt_class() _validateAddPower:leftAddPower error:error])
              {
                v13 = 0;
              }

              else
              {
                rightAddPower = [(HKVisionPrescription *)self rightAddPower];
                v13 = !rightAddPower || [objc_opt_class() _validateAddPower:rightAddPower error:error];
              }
            }
          }
        }
      }
    }
  }

  return v13;
}

+ (BOOL)_validateSphere:(id)sphere error:(id *)error
{
  sphereCopy = sphere;
  v7 = +[HKUnit diopterUnit];
  v8 = [sphereCopy isCompatibleWithUnit:v7];

  if (v8)
  {
    return 1;
  }

  v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"sphere" class:objc_opt_class() selector:a2 format:@"Sphere must be a Diopter quantity"];
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

+ (BOOL)_validateCylinder:(id)cylinder error:(id *)error
{
  cylinderCopy = cylinder;
  v7 = +[HKUnit diopterUnit];
  v8 = [cylinderCopy isCompatibleWithUnit:v7];

  if (v8)
  {
    return 1;
  }

  v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"cylinder" class:objc_opt_class() selector:a2 format:@"Cylinder must be an Diopter quantity"];
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

+ (BOOL)_validateAxis:(id)axis error:(id *)error
{
  axisCopy = axis;
  v7 = +[HKUnit degreeAngleUnit];
  v8 = [axisCopy isCompatibleWithUnit:v7];

  if (v8)
  {
    return 1;
  }

  v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"axis" class:objc_opt_class() selector:a2 format:@"Axis must be an Angle quantity"];
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

+ (BOOL)_validateAddPower:(id)power error:(id *)error
{
  powerCopy = power;
  v7 = +[HKUnit diopterUnit];
  v8 = [powerCopy isCompatibleWithUnit:v7];

  if (v8)
  {
    return 1;
  }

  v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"addPower" class:objc_opt_class() selector:a2 format:@"Add power must be a Diopter quantity"];
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