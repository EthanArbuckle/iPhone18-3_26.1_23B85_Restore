@interface HKVisionPrescription
+ (BOOL)_validateAddPower:(id)a3 error:(id *)a4;
+ (BOOL)_validateAxis:(id)a3 error:(id *)a4;
+ (BOOL)_validateCylinder:(id)a3 error:(id *)a4;
+ (BOOL)_validateSphere:(id)a3 error:(id *)a4;
+ (HKVisionPrescription)prescriptionWithType:(HKVisionPrescriptionType)type dateIssued:(NSDate *)dateIssued expirationDate:(NSDate *)expirationDate device:(HKDevice *)device metadata:(NSDictionary *)metadata;
- (BOOL)_validateCommonFieldsWithError:(id *)a3;
- (BOOL)_validateForSavingWithClientEntitlements:(id)a3 applicationSDKVersionToken:(unint64_t)a4 isAppleWatch:(BOOL)a5 error:(id *)a6;
- (HKVisionPrescription)initWithCoder:(id)a3;
- (NSDate)expirationDate;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKVisionPrescription

+ (HKVisionPrescription)prescriptionWithType:(HKVisionPrescriptionType)type dateIssued:(NSDate *)dateIssued expirationDate:(NSDate *)expirationDate device:(HKDevice *)device metadata:(NSDictionary *)metadata
{
  v12 = expirationDate;
  v13 = metadata;
  v14 = device;
  v15 = dateIssued;
  v16 = +[HKObjectType visionPrescriptionType];
  [(NSDate *)v15 timeIntervalSinceReferenceDate];
  v18 = v17;

  if (v12)
  {
    [(NSDate *)v12 timeIntervalSinceReferenceDate];
  }

  else
  {
    v15 = [MEMORY[0x1E695DF00] distantFuture];
    [(NSDate *)v15 timeIntervalSinceReferenceDate];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __87__HKVisionPrescription_prescriptionWithType_dateIssued_expirationDate_device_metadata___block_invoke;
  v22[3] = &__block_descriptor_40_e30_v16__0__HKVisionPrescription_8l;
  v22[4] = type;
  v20 = [a1 _newSampleWithType:v16 startDate:v14 endDate:v13 device:v22 metadata:v18 config:v19];

  if (!v12)
  {
  }

  return v20;
}

- (NSDate)expirationDate
{
  v3 = [(HKSample *)self endDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = [MEMORY[0x1E695DF00] distantFuture];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  if (v5 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(HKSample *)self endDate];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  prescriptionType = self->_prescriptionType;
  v7 = [(HKVisionPrescription *)self dateIssued];
  v8 = [(HKVisionPrescription *)self expirationDate];
  v9 = [v3 stringWithFormat:@"<%@:%p PrescriptionType=%lu, dateIssued=%@, expirationDate=%@>", v5, self, prescriptionType, v7, v8];

  return v9;
}

- (BOOL)_validateForSavingWithClientEntitlements:(id)a3 applicationSDKVersionToken:(unint64_t)a4 isAppleWatch:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v11.receiver = self;
  v11.super_class = HKVisionPrescription;
  v8 = [HKObject _validateForSavingWithClientEntitlements:sel__validateForSavingWithClientEntitlements_applicationSDKVersionToken_isAppleWatch_error_ applicationSDKVersionToken:a3 isAppleWatch:a4 error:?];
  if (v8 && v7)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a6 code:2 description:@"Unable to save vision samples on this device"];
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = HKVisionPrescription;
  result = [(HKObject *)&v5 copyWithZone:a3];
  *(result + 12) = self->_prescriptionType;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKVisionPrescription;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_prescriptionType forKey:{@"PrescriptionType", v5.receiver, v5.super_class}];
}

- (HKVisionPrescription)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKVisionPrescription;
  v5 = [(HKSample *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_prescriptionType = [v4 decodeIntegerForKey:@"PrescriptionType"];
  }

  return v5;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v9.receiver = self;
  v9.super_class = HKVisionPrescription;
  v4 = [(HKSample *)&v9 _validateWithConfiguration:a3.var0, a3.var1];
  if (v4 || (v8 = 0, v5 = [(HKVisionPrescription *)self _validateCommonFieldsWithError:&v8], v4 = v8, v6 = 0, !v5))
  {
    v4 = v4;
    v6 = v4;
  }

  return v6;
}

- (BOOL)_validateCommonFieldsWithError:(id *)a3
{
  v5 = [(HKVisionPrescription *)self leftSphere];
  if (v5 && ![objc_opt_class() _validateSphere:v5 error:a3])
  {
    v13 = 0;
  }

  else
  {
    v6 = [(HKVisionPrescription *)self rightSphere];
    if (v6 && ![objc_opt_class() _validateSphere:v6 error:a3])
    {
      v13 = 0;
    }

    else
    {
      v7 = [(HKVisionPrescription *)self leftCylinder];
      if (v7 && ![objc_opt_class() _validateCylinder:v7 error:a3])
      {
        v13 = 0;
      }

      else
      {
        v8 = [(HKVisionPrescription *)self rightCylinder];
        if (v8 && ![objc_opt_class() _validateCylinder:v8 error:a3])
        {
          v13 = 0;
        }

        else
        {
          v9 = [(HKVisionPrescription *)self leftAxis];
          if (v9 && ![objc_opt_class() _validateAxis:v9 error:a3])
          {
            v13 = 0;
          }

          else
          {
            v10 = [(HKVisionPrescription *)self rightAxis];
            if (v10 && ![objc_opt_class() _validateAxis:v10 error:a3])
            {
              v13 = 0;
            }

            else
            {
              v11 = [(HKVisionPrescription *)self leftAddPower];
              if (v11 && ![objc_opt_class() _validateAddPower:v11 error:a3])
              {
                v13 = 0;
              }

              else
              {
                v12 = [(HKVisionPrescription *)self rightAddPower];
                v13 = !v12 || [objc_opt_class() _validateAddPower:v12 error:a3];
              }
            }
          }
        }
      }
    }
  }

  return v13;
}

+ (BOOL)_validateSphere:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[HKUnit diopterUnit];
  v8 = [v6 isCompatibleWithUnit:v7];

  if (v8)
  {
    return 1;
  }

  v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"sphere" class:objc_opt_class() selector:a2 format:@"Sphere must be a Diopter quantity"];
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

+ (BOOL)_validateCylinder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[HKUnit diopterUnit];
  v8 = [v6 isCompatibleWithUnit:v7];

  if (v8)
  {
    return 1;
  }

  v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"cylinder" class:objc_opt_class() selector:a2 format:@"Cylinder must be an Diopter quantity"];
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

+ (BOOL)_validateAxis:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[HKUnit degreeAngleUnit];
  v8 = [v6 isCompatibleWithUnit:v7];

  if (v8)
  {
    return 1;
  }

  v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"axis" class:objc_opt_class() selector:a2 format:@"Axis must be an Angle quantity"];
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

+ (BOOL)_validateAddPower:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[HKUnit diopterUnit];
  v8 = [v6 isCompatibleWithUnit:v7];

  if (v8)
  {
    return 1;
  }

  v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"addPower" class:objc_opt_class() selector:a2 format:@"Add power must be a Diopter quantity"];
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