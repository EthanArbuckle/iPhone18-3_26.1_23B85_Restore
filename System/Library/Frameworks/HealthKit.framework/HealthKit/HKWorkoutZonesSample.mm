@interface HKWorkoutZonesSample
+ (id)zonesSampleWithType:(id)a3 zones:(id)a4 device:(id)a5 metadata:(id)a6;
- (BOOL)_validateFirstZone:(id)a3 error:(id *)a4;
- (BOOL)_validateLastZone:(id)a3 error:(id *)a4;
- (BOOL)_validateMiddleZones:(id)a3 previousEndQuantity:(id)a4 error:(id *)a5;
- (BOOL)_validateStartAndEnd:(id)a3 end:(id)a4 error:(id *)a5;
- (BOOL)_validateUnit:(id)a3 error:(id *)a4;
- (BOOL)isEquivalent:(id)a3;
- (HKWorkoutZonesSample)initWithCoder:(id)a3;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)description;
- (void)_setZones:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutZonesSample

+ (id)zonesSampleWithType:(id)a3 zones:(id)a4 device:(id)a5 metadata:(id)a6
{
  v10 = a4;
  v11 = MEMORY[0x1E695DF00];
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [v11 date];
  [v15 timeIntervalSinceReferenceDate];
  v17 = v16;
  [v15 timeIntervalSinceReferenceDate];
  v19 = v18;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__HKWorkoutZonesSample_zonesSampleWithType_zones_device_metadata___block_invoke;
  v23[3] = &unk_1E737AEE8;
  v24 = v10;
  v20 = v10;
  v21 = [a1 _newSampleWithType:v14 startDate:v13 endDate:v12 device:v23 metadata:v17 config:v19];

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  zones = self->_zones;
  v7 = [(HKSample *)self startDate];
  v8 = [(HKObject *)self device];
  v9 = [v3 stringWithFormat:@"<%@:%p zones=%@, startDate=%@, device=%@>", v5, self, zones, v7, v8];

  return v9;
}

- (void)_setZones:(id)a3
{
  v4 = [a3 copy];
  zones = self->_zones;
  self->_zones = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v10.receiver = self;
    v10.super_class = HKWorkoutZonesSample;
    if (![(HKSample *)&v10 isEquivalent:v5])
    {
      goto LABEL_7;
    }

    zones = self->_zones;
    v7 = v5[12];
    if (zones == v7)
    {
      v8 = 1;
      goto LABEL_9;
    }

    if (v7)
    {
      v8 = [(NSArray *)zones isEqualToArray:?];
    }

    else
    {
LABEL_7:
      v8 = 0;
    }

LABEL_9:

    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKWorkoutZonesSample;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_zones forKey:{@"Zones", v5.receiver, v5.super_class}];
}

- (HKWorkoutZonesSample)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKWorkoutZonesSample;
  v5 = [(HKSample *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Zones"];
    zones = v5->_zones;
    v5->_zones = v9;
  }

  return v5;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v21.receiver = self;
  v21.super_class = HKWorkoutZonesSample;
  v4 = [(HKSample *)&v21 _validateWithConfiguration:a3.var0, a3.var1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(NSArray *)self->_zones count];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = v10;
        v12 = [(NSArray *)self->_zones objectAtIndexedSubscript:v9];
        if (v9)
        {
          if (v8 == 1)
          {
            v19 = 0;
            v13 = [(HKWorkoutZonesSample *)self _validateLastZone:v12 error:&v19];
            v14 = v19;
          }

          else
          {
            v18 = 0;
            v13 = [(HKWorkoutZonesSample *)self _validateMiddleZones:v12 previousEndQuantity:v10 error:&v18];
            v14 = v18;
          }
        }

        else
        {
          v20 = 0;
          v13 = [(HKWorkoutZonesSample *)self _validateFirstZone:v12 error:&v20];
          v14 = v20;
        }

        v15 = v14;
        v16 = v15;
        if (!v13)
        {
          break;
        }

        v10 = [v12 endQuantity];

        ++v9;
        if (!--v8)
        {
          v6 = 0;
          v11 = v10;
          goto LABEL_15;
        }
      }

      v6 = v15;

LABEL_15:
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_validateFirstZone:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 endQuantity];
  v8 = [(HKWorkoutZonesSample *)self _validateUnit:v7 error:a4];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [v6 startQuantity];

  if (!v9)
  {
LABEL_5:
    LOBYTE(v14) = 1;
    goto LABEL_7;
  }

  v10 = [v6 startQuantity];
  v11 = [(HKWorkoutZonesSample *)self _validateUnit:v10 error:a4];

  if (!v11)
  {
LABEL_6:
    LOBYTE(v14) = 0;
    goto LABEL_7;
  }

  v12 = [v6 startQuantity];
  v13 = [v6 endQuantity];
  v14 = [(HKWorkoutZonesSample *)self _validateStartAndEnd:v12 end:v13 error:a4];

  if (v14)
  {
    goto LABEL_5;
  }

LABEL_7:

  return v14;
}

- (BOOL)_validateLastZone:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 startQuantity];
  v8 = [(HKWorkoutZonesSample *)self _validateUnit:v7 error:a4];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [v6 endQuantity];

  if (!v9)
  {
LABEL_5:
    LOBYTE(v14) = 1;
    goto LABEL_7;
  }

  v10 = [v6 endQuantity];
  v11 = [(HKWorkoutZonesSample *)self _validateUnit:v10 error:a4];

  if (!v11)
  {
LABEL_6:
    LOBYTE(v14) = 0;
    goto LABEL_7;
  }

  v12 = [v6 startQuantity];
  v13 = [v6 endQuantity];
  v14 = [(HKWorkoutZonesSample *)self _validateStartAndEnd:v12 end:v13 error:a4];

  if (v14)
  {
    goto LABEL_5;
  }

LABEL_7:

  return v14;
}

- (BOOL)_validateMiddleZones:(id)a3 previousEndQuantity:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 startQuantity];
  if (!v11 || (v12 = v11, [v9 endQuantity], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
  {
    v19 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"zone" class:objc_opt_class() selector:a2 format:@"Quantity must not be nil"];
    v20 = v19 == 0;
    if (v19)
    {
      if (!a5)
      {
LABEL_14:
        _HKLogDroppedError(v19);
        v20 = 0;
        goto LABEL_15;
      }

      goto LABEL_9;
    }

LABEL_15:
    v14 = v19;
    goto LABEL_16;
  }

  v14 = [v9 startQuantity];
  if (![(HKWorkoutZonesSample *)self _validateUnit:v14 error:a5])
  {
    v20 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v15 = [v9 endQuantity];
  v16 = [(HKWorkoutZonesSample *)self _validateUnit:v15 error:a5];

  if (v16)
  {
    v17 = [v9 startQuantity];
    v18 = [v17 isEqual:v10];

    if (v18)
    {
      v14 = [v9 startQuantity];
      v19 = [v9 endQuantity];
      v20 = [(HKWorkoutZonesSample *)self _validateStartAndEnd:v14 end:v19 error:a5];
LABEL_16:

      goto LABEL_17;
    }

    v19 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"zone" class:objc_opt_class() selector:a2 format:@"Zone start quantity must match previous zone end quantity"];
    v20 = v19 == 0;
    if (v19)
    {
      if (!a5)
      {
        goto LABEL_14;
      }

LABEL_9:
      v21 = v19;
      v20 = 0;
      *a5 = v19;
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (BOOL)_validateUnit:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [(HKSample *)self sampleType];
  v9 = +[HKWorkoutZonesType heartRateType];
  if ([v8 isEqual:v9])
  {
    [HKUnit unitFromString:@"count/min"];
  }

  else
  {
    +[HKUnit wattUnit];
  }
  v10 = ;

  v11 = [v7 isCompatibleWithUnit:v10];
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"quantity" class:objc_opt_class() selector:a2 format:@"Quantity has incorrect units"];
    v14 = v13;
    v12 = v13 == 0;
    if (v13)
    {
      if (a4)
      {
        v15 = v13;
        *a4 = v14;
      }

      else
      {
        _HKLogDroppedError(v13);
      }
    }
  }

  return v12;
}

- (BOOL)_validateStartAndEnd:(id)a3 end:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 compare:v9] == 1 || !objc_msgSend(v8, "compare:", v9))
  {
    v11 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"start" class:objc_opt_class() selector:a2 format:@"Start quantity must be greater than end quantity"];
    v12 = v11;
    v10 = v11 == 0;
    if (v11)
    {
      if (a5)
      {
        v13 = v11;
        *a5 = v12;
      }

      else
      {
        _HKLogDroppedError(v11);
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end