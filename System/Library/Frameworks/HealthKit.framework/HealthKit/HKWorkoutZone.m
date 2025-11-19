@interface HKWorkoutZone
+ (id)_quantityFromValue:(double)a3 objectType:(id)a4;
+ (id)_valueForQuantity:(id)a3 objectType:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HKWorkoutZone)initWithCoder:(id)a3;
- (HKWorkoutZone)initWithIdentifier:(id)a3 startQuantity:(id)a4 endQuantity:(id)a5;
- (HKWorkoutZone)initWithType:(id)a3 startQuantity:(id)a4 endQuantity:(id)a5;
- (id)_initWithIdentifier:(id)a3 type:(id)a4 startQuantity:(id)a5 endQuantity:(id)a6;
- (id)description;
- (id)initFirstZoneWithType:(id)a3 endQuantity:(id)a4;
- (id)initLastZoneWithType:(id)a3 startQuantity:(id)a4;
- (void)_validateType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutZone

- (id)initFirstZoneWithType:(id)a3 endQuantity:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [(HKWorkoutZone *)self _initWithIdentifier:v9 type:v8 startQuantity:0 endQuantity:v7];

  return v10;
}

- (id)initLastZoneWithType:(id)a3 startQuantity:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [(HKWorkoutZone *)self _initWithIdentifier:v9 type:v8 startQuantity:v7 endQuantity:0];

  return v10;
}

- (HKWorkoutZone)initWithType:(id)a3 startQuantity:(id)a4 endQuantity:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 UUID];
  v13 = [(HKWorkoutZone *)self _initWithIdentifier:v12 type:v11 startQuantity:v10 endQuantity:v9];

  return v13;
}

- (id)_initWithIdentifier:(id)a3 type:(id)a4 startQuantity:(id)a5 endQuantity:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HKWorkoutZone;
  v14 = [(HKWorkoutZone *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    type = v14->_type;
    v14->_type = v17;

    v19 = [v12 copy];
    startQuantity = v14->_startQuantity;
    v14->_startQuantity = v19;

    v21 = [v13 copy];
    endQuantity = v14->_endQuantity;
    v14->_endQuantity = v21;

    [(HKWorkoutZone *)v14 _validateType];
  }

  return v14;
}

- (HKWorkoutZone)initWithIdentifier:(id)a3 startQuantity:(id)a4 endQuantity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKWorkoutZone;
  v11 = [(HKWorkoutZone *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    startQuantity = v11->_startQuantity;
    v11->_startQuantity = v14;

    v16 = [v10 copy];
    endQuantity = v11->_endQuantity;
    v11->_endQuantity = v16;
  }

  return v11;
}

- (void)_validateType
{
  type = self->_type;
  v4 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
  LODWORD(type) = [(HKObjectType *)type isEqual:v4];

  if (type)
  {
    v5 = [HKUnit unitFromString:@"count/min"];
  }

  else
  {
    v6 = self->_type;
    v7 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierCyclingPower"];
    LODWORD(v6) = [(HKObjectType *)v6 isEqual:v7];

    if (!v6)
    {
LABEL_12:
      v12 = @"Object type not supported";
      goto LABEL_13;
    }

    v5 = +[HKUnit wattUnit];
  }

  v8 = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

  startQuantity = self->_startQuantity;
  v13 = v8;
  if (startQuantity)
  {
    v10 = [(HKQuantity *)startQuantity isCompatibleWithUnit:v8];
    v8 = v13;
    if (!v10)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Start quantity has an incompatible unit"];
      v8 = v13;
    }
  }

  endQuantity = self->_endQuantity;
  if (endQuantity && ![(HKQuantity *)endQuantity isCompatibleWithUnit:v8])
  {
    v12 = @"End quantity has an incompatible unit";
LABEL_13:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:v12];
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = self->_identifier;
  v7 = [v3 stringWithFormat:@"<%@:%p identifier=%@, type=%@, startQuantity=%@, endQuantity=%@, timeInZone=%f>", v5, self, identifier, self->_type, self->_startQuantity, self->_endQuantity, *&self->_timeInZone];

  return v7;
}

+ (id)_valueForQuantity:(id)a3 objectType:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      v9 = [HKUnit unitFromString:@"count/min"];
LABEL_6:
      v12 = v9;
      [v5 doubleValueForUnit:v9];
      v14 = v13;

      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
      goto LABEL_10;
    }

    v10 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierCyclingPower"];
    v11 = [v6 isEqual:v10];

    if (v11)
    {
      v9 = +[HKUnit wattUnit];
      goto LABEL_6;
    }

    _HKInitializeLogging();
    v16 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      [HKWorkoutZone _valueForQuantity:v6 objectType:v16];
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

+ (id)_quantityFromValue:(double)a3 objectType:(id)a4
{
  v5 = a4;
  v6 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [HKUnit unitFromString:@"count/min"];
LABEL_5:
    v11 = v8;
    v12 = [HKQuantity quantityWithUnit:v8 doubleValue:a3];

    goto LABEL_9;
  }

  v9 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierCyclingPower"];
  v10 = [v5 isEqual:v9];

  if (v10)
  {
    v8 = +[HKUnit wattUnit];
    goto LABEL_5;
  }

  _HKInitializeLogging();
  v13 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    [HKWorkoutZone _quantityFromValue:v5 objectType:v13];
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v7 = [(HKWorkoutZone *)v5 identifier];
      if (identifier != v7)
      {
        v8 = [(HKWorkoutZone *)v5 identifier];
        if (!v8)
        {
          LOBYTE(v11) = 0;
          goto LABEL_38;
        }

        v3 = v8;
        v9 = self->_identifier;
        v10 = [(HKWorkoutZone *)v5 identifier];
        if (![(NSUUID *)v9 isEqual:v10])
        {
          LOBYTE(v11) = 0;
LABEL_37:

          goto LABEL_38;
        }

        v36 = v10;
      }

      type = self->_type;
      v13 = [(HKWorkoutZone *)v5 type];
      if (type == v13)
      {
        v35 = type;
      }

      else
      {
        v14 = [(HKWorkoutZone *)v5 type];
        if (!v14)
        {
          LOBYTE(v11) = 0;
LABEL_35:

LABEL_36:
          v10 = v36;
          if (identifier != v7)
          {
            goto LABEL_37;
          }

LABEL_38:

          goto LABEL_39;
        }

        v15 = v14;
        v16 = self->_type;
        v11 = [(HKWorkoutZone *)v5 type];
        if (![(HKObjectType *)v16 isEqual:v11])
        {

          LOBYTE(v11) = 0;
          goto LABEL_36;
        }

        v35 = type;
        v32 = v11;
        v33 = v15;
      }

      startQuantity = self->_startQuantity;
      v18 = [(HKWorkoutZone *)v5 startQuantity];
      if (startQuantity == v18)
      {
        v34 = v3;
      }

      else
      {
        v11 = [(HKWorkoutZone *)v5 startQuantity];
        if (!v11)
        {
LABEL_28:

LABEL_32:
          v28 = v35;
LABEL_33:
          if (v28 != v13)
          {
          }

          goto LABEL_35;
        }

        v19 = self->_startQuantity;
        v20 = [(HKWorkoutZone *)v5 startQuantity];
        v21 = v19;
        v22 = v20;
        if (![(HKQuantity *)v21 isEqual:v20])
        {

          LOBYTE(v11) = 0;
          goto LABEL_32;
        }

        v30 = v22;
        v31 = v11;
        v34 = v3;
      }

      endQuantity = self->_endQuantity;
      v24 = [(HKWorkoutZone *)v5 endQuantity];
      LOBYTE(v11) = endQuantity == v24;
      if (endQuantity != v24)
      {
        v25 = [(HKWorkoutZone *)v5 endQuantity];
        if (v25)
        {
          v26 = v25;
          v11 = self->_endQuantity;
          v27 = [(HKWorkoutZone *)v5 endQuantity];
          LOBYTE(v11) = [v11 isEqual:v27];

          if (startQuantity != v18)
          {
          }

          goto LABEL_29;
        }
      }

      if (startQuantity == v18)
      {
LABEL_29:

        v3 = v34;
        v28 = v35;
        goto LABEL_33;
      }

      v3 = v34;
      goto LABEL_28;
    }

    LOBYTE(v11) = 0;
  }

LABEL_39:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"Identifier"];
  [v5 encodeObject:self->_startQuantity forKey:@"StartQuantity"];
  [v5 encodeObject:self->_endQuantity forKey:@"EndQuantity"];
  [v5 encodeObject:self->_type forKey:@"ObjectType"];
  [v5 encodeDouble:@"TimeInZone" forKey:self->_timeInZone];
}

- (HKWorkoutZone)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StartQuantity"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EndQuantity"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ObjectType"];
  [v4 decodeDoubleForKey:@"TimeInZone"];
  v10 = v9;

  v11 = [(HKWorkoutZone *)self _initWithIdentifier:v5 type:v8 startQuantity:v6 endQuantity:v7];
  [(HKWorkoutZone *)v11 _setTimeInZone:v10];

  return v11;
}

+ (void)_valueForQuantity:(uint64_t)a1 objectType:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Unable to retrieve the value from the quantity. Zone entity object type %@ not supported", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_quantityFromValue:(uint64_t)a1 objectType:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Unable to create a quantity. Zone entity object type %@ not supported", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end