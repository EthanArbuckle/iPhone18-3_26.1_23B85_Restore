@interface HKWorkoutZonesSample
+ (id)zonesSampleWithType:(id)type zones:(id)zones device:(id)device metadata:(id)metadata;
- (BOOL)_validateFirstZone:(id)zone error:(id *)error;
- (BOOL)_validateLastZone:(id)zone error:(id *)error;
- (BOOL)_validateMiddleZones:(id)zones previousEndQuantity:(id)quantity error:(id *)error;
- (BOOL)_validateStartAndEnd:(id)end end:(id)a4 error:(id *)error;
- (BOOL)_validateUnit:(id)unit error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKWorkoutZonesSample)initWithCoder:(id)coder;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)description;
- (void)_setZones:(id)zones;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutZonesSample

+ (id)zonesSampleWithType:(id)type zones:(id)zones device:(id)device metadata:(id)metadata
{
  zonesCopy = zones;
  v11 = MEMORY[0x1E695DF00];
  metadataCopy = metadata;
  deviceCopy = device;
  typeCopy = type;
  date = [v11 date];
  [date timeIntervalSinceReferenceDate];
  v17 = v16;
  [date timeIntervalSinceReferenceDate];
  v19 = v18;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__HKWorkoutZonesSample_zonesSampleWithType_zones_device_metadata___block_invoke;
  v23[3] = &unk_1E737AEE8;
  v24 = zonesCopy;
  v20 = zonesCopy;
  v21 = [self _newSampleWithType:typeCopy startDate:deviceCopy endDate:metadataCopy device:v23 metadata:v17 config:v19];

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  zones = self->_zones;
  startDate = [(HKSample *)self startDate];
  device = [(HKObject *)self device];
  v9 = [v3 stringWithFormat:@"<%@:%p zones=%@, startDate=%@, device=%@>", v5, self, zones, startDate, device];

  return v9;
}

- (void)_setZones:(id)zones
{
  v4 = [zones copy];
  zones = self->_zones;
  self->_zones = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equivalentCopy;
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKWorkoutZonesSample;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_zones forKey:{@"Zones", v5.receiver, v5.super_class}];
}

- (HKWorkoutZonesSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKWorkoutZonesSample;
  v5 = [(HKSample *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Zones"];
    zones = v5->_zones;
    v5->_zones = v9;
  }

  return v5;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v21.receiver = self;
  v21.super_class = HKWorkoutZonesSample;
  v4 = [(HKSample *)&v21 _validateWithConfiguration:configuration.var0, configuration.var1];
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
      endQuantity = 0;
      while (1)
      {
        v11 = endQuantity;
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
            v13 = [(HKWorkoutZonesSample *)self _validateMiddleZones:v12 previousEndQuantity:endQuantity error:&v18];
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

        endQuantity = [v12 endQuantity];

        ++v9;
        if (!--v8)
        {
          v6 = 0;
          v11 = endQuantity;
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

- (BOOL)_validateFirstZone:(id)zone error:(id *)error
{
  zoneCopy = zone;
  endQuantity = [zoneCopy endQuantity];
  v8 = [(HKWorkoutZonesSample *)self _validateUnit:endQuantity error:error];

  if (!v8)
  {
    goto LABEL_6;
  }

  startQuantity = [zoneCopy startQuantity];

  if (!startQuantity)
  {
LABEL_5:
    LOBYTE(v14) = 1;
    goto LABEL_7;
  }

  startQuantity2 = [zoneCopy startQuantity];
  v11 = [(HKWorkoutZonesSample *)self _validateUnit:startQuantity2 error:error];

  if (!v11)
  {
LABEL_6:
    LOBYTE(v14) = 0;
    goto LABEL_7;
  }

  startQuantity3 = [zoneCopy startQuantity];
  endQuantity2 = [zoneCopy endQuantity];
  v14 = [(HKWorkoutZonesSample *)self _validateStartAndEnd:startQuantity3 end:endQuantity2 error:error];

  if (v14)
  {
    goto LABEL_5;
  }

LABEL_7:

  return v14;
}

- (BOOL)_validateLastZone:(id)zone error:(id *)error
{
  zoneCopy = zone;
  startQuantity = [zoneCopy startQuantity];
  v8 = [(HKWorkoutZonesSample *)self _validateUnit:startQuantity error:error];

  if (!v8)
  {
    goto LABEL_6;
  }

  endQuantity = [zoneCopy endQuantity];

  if (!endQuantity)
  {
LABEL_5:
    LOBYTE(v14) = 1;
    goto LABEL_7;
  }

  endQuantity2 = [zoneCopy endQuantity];
  v11 = [(HKWorkoutZonesSample *)self _validateUnit:endQuantity2 error:error];

  if (!v11)
  {
LABEL_6:
    LOBYTE(v14) = 0;
    goto LABEL_7;
  }

  startQuantity2 = [zoneCopy startQuantity];
  endQuantity3 = [zoneCopy endQuantity];
  v14 = [(HKWorkoutZonesSample *)self _validateStartAndEnd:startQuantity2 end:endQuantity3 error:error];

  if (v14)
  {
    goto LABEL_5;
  }

LABEL_7:

  return v14;
}

- (BOOL)_validateMiddleZones:(id)zones previousEndQuantity:(id)quantity error:(id *)error
{
  zonesCopy = zones;
  quantityCopy = quantity;
  startQuantity = [zonesCopy startQuantity];
  if (!startQuantity || (v12 = startQuantity, [zonesCopy endQuantity], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
  {
    endQuantity2 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"zone" class:objc_opt_class() selector:a2 format:@"Quantity must not be nil"];
    v20 = endQuantity2 == 0;
    if (endQuantity2)
    {
      if (!error)
      {
LABEL_14:
        _HKLogDroppedError(endQuantity2);
        v20 = 0;
        goto LABEL_15;
      }

      goto LABEL_9;
    }

LABEL_15:
    startQuantity2 = endQuantity2;
    goto LABEL_16;
  }

  startQuantity2 = [zonesCopy startQuantity];
  if (![(HKWorkoutZonesSample *)self _validateUnit:startQuantity2 error:error])
  {
    v20 = 0;
LABEL_17:

    goto LABEL_18;
  }

  endQuantity = [zonesCopy endQuantity];
  v16 = [(HKWorkoutZonesSample *)self _validateUnit:endQuantity error:error];

  if (v16)
  {
    startQuantity3 = [zonesCopy startQuantity];
    v18 = [startQuantity3 isEqual:quantityCopy];

    if (v18)
    {
      startQuantity2 = [zonesCopy startQuantity];
      endQuantity2 = [zonesCopy endQuantity];
      v20 = [(HKWorkoutZonesSample *)self _validateStartAndEnd:startQuantity2 end:endQuantity2 error:error];
LABEL_16:

      goto LABEL_17;
    }

    endQuantity2 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"zone" class:objc_opt_class() selector:a2 format:@"Zone start quantity must match previous zone end quantity"];
    v20 = endQuantity2 == 0;
    if (endQuantity2)
    {
      if (!error)
      {
        goto LABEL_14;
      }

LABEL_9:
      v21 = endQuantity2;
      v20 = 0;
      *error = endQuantity2;
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (BOOL)_validateUnit:(id)unit error:(id *)error
{
  unitCopy = unit;
  sampleType = [(HKSample *)self sampleType];
  v9 = +[HKWorkoutZonesType heartRateType];
  if ([sampleType isEqual:v9])
  {
    [HKUnit unitFromString:@"count/min"];
  }

  else
  {
    +[HKUnit wattUnit];
  }
  v10 = ;

  v11 = [unitCopy isCompatibleWithUnit:v10];
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
      if (error)
      {
        v15 = v13;
        *error = v14;
      }

      else
      {
        _HKLogDroppedError(v13);
      }
    }
  }

  return v12;
}

- (BOOL)_validateStartAndEnd:(id)end end:(id)a4 error:(id *)error
{
  endCopy = end;
  v9 = a4;
  if ([endCopy compare:v9] == 1 || !objc_msgSend(endCopy, "compare:", v9))
  {
    v11 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"start" class:objc_opt_class() selector:a2 format:@"Start quantity must be greater than end quantity"];
    v12 = v11;
    v10 = v11 == 0;
    if (v11)
    {
      if (error)
      {
        v13 = v11;
        *error = v12;
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