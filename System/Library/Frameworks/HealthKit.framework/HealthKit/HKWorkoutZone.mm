@interface HKWorkoutZone
+ (id)_quantityFromValue:(double)value objectType:(id)type;
+ (id)_valueForQuantity:(id)quantity objectType:(id)type;
- (BOOL)isEqual:(id)equal;
- (HKWorkoutZone)initWithCoder:(id)coder;
- (HKWorkoutZone)initWithIdentifier:(id)identifier startQuantity:(id)quantity endQuantity:(id)endQuantity;
- (HKWorkoutZone)initWithType:(id)type startQuantity:(id)quantity endQuantity:(id)endQuantity;
- (id)_initWithIdentifier:(id)identifier type:(id)type startQuantity:(id)quantity endQuantity:(id)endQuantity;
- (id)description;
- (id)initFirstZoneWithType:(id)type endQuantity:(id)quantity;
- (id)initLastZoneWithType:(id)type startQuantity:(id)quantity;
- (void)_validateType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutZone

- (id)initFirstZoneWithType:(id)type endQuantity:(id)quantity
{
  v6 = MEMORY[0x1E696AFB0];
  quantityCopy = quantity;
  typeCopy = type;
  uUID = [v6 UUID];
  v10 = [(HKWorkoutZone *)self _initWithIdentifier:uUID type:typeCopy startQuantity:0 endQuantity:quantityCopy];

  return v10;
}

- (id)initLastZoneWithType:(id)type startQuantity:(id)quantity
{
  v6 = MEMORY[0x1E696AFB0];
  quantityCopy = quantity;
  typeCopy = type;
  uUID = [v6 UUID];
  v10 = [(HKWorkoutZone *)self _initWithIdentifier:uUID type:typeCopy startQuantity:quantityCopy endQuantity:0];

  return v10;
}

- (HKWorkoutZone)initWithType:(id)type startQuantity:(id)quantity endQuantity:(id)endQuantity
{
  v8 = MEMORY[0x1E696AFB0];
  endQuantityCopy = endQuantity;
  quantityCopy = quantity;
  typeCopy = type;
  uUID = [v8 UUID];
  v13 = [(HKWorkoutZone *)self _initWithIdentifier:uUID type:typeCopy startQuantity:quantityCopy endQuantity:endQuantityCopy];

  return v13;
}

- (id)_initWithIdentifier:(id)identifier type:(id)type startQuantity:(id)quantity endQuantity:(id)endQuantity
{
  identifierCopy = identifier;
  typeCopy = type;
  quantityCopy = quantity;
  endQuantityCopy = endQuantity;
  v24.receiver = self;
  v24.super_class = HKWorkoutZone;
  v14 = [(HKWorkoutZone *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [typeCopy copy];
    type = v14->_type;
    v14->_type = v17;

    v19 = [quantityCopy copy];
    startQuantity = v14->_startQuantity;
    v14->_startQuantity = v19;

    v21 = [endQuantityCopy copy];
    endQuantity = v14->_endQuantity;
    v14->_endQuantity = v21;

    [(HKWorkoutZone *)v14 _validateType];
  }

  return v14;
}

- (HKWorkoutZone)initWithIdentifier:(id)identifier startQuantity:(id)quantity endQuantity:(id)endQuantity
{
  identifierCopy = identifier;
  quantityCopy = quantity;
  endQuantityCopy = endQuantity;
  v19.receiver = self;
  v19.super_class = HKWorkoutZone;
  v11 = [(HKWorkoutZone *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [quantityCopy copy];
    startQuantity = v11->_startQuantity;
    v11->_startQuantity = v14;

    v16 = [endQuantityCopy copy];
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

+ (id)_valueForQuantity:(id)quantity objectType:(id)type
{
  quantityCopy = quantity;
  typeCopy = type;
  if (quantityCopy)
  {
    v7 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
    v8 = [typeCopy isEqual:v7];

    if (v8)
    {
      v9 = [HKUnit unitFromString:@"count/min"];
LABEL_6:
      v12 = v9;
      [quantityCopy doubleValueForUnit:v9];
      v14 = v13;

      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
      goto LABEL_10;
    }

    v10 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierCyclingPower"];
    v11 = [typeCopy isEqual:v10];

    if (v11)
    {
      v9 = +[HKUnit wattUnit];
      goto LABEL_6;
    }

    _HKInitializeLogging();
    v16 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      [HKWorkoutZone _valueForQuantity:typeCopy objectType:v16];
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

+ (id)_quantityFromValue:(double)value objectType:(id)type
{
  typeCopy = type;
  v6 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
  v7 = [typeCopy isEqual:v6];

  if (v7)
  {
    v8 = [HKUnit unitFromString:@"count/min"];
LABEL_5:
    v11 = v8;
    v12 = [HKQuantity quantityWithUnit:v8 doubleValue:value];

    goto LABEL_9;
  }

  v9 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierCyclingPower"];
  v10 = [typeCopy isEqual:v9];

  if (v10)
  {
    v8 = +[HKUnit wattUnit];
    goto LABEL_5;
  }

  _HKInitializeLogging();
  v13 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    [HKWorkoutZone _quantityFromValue:typeCopy objectType:v13];
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(type3) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      identifier = [(HKWorkoutZone *)equalCopy identifier];
      if (identifier != identifier)
      {
        identifier2 = [(HKWorkoutZone *)equalCopy identifier];
        if (!identifier2)
        {
          LOBYTE(type3) = 0;
          goto LABEL_38;
        }

        v3 = identifier2;
        v9 = self->_identifier;
        identifier3 = [(HKWorkoutZone *)equalCopy identifier];
        if (![(NSUUID *)v9 isEqual:identifier3])
        {
          LOBYTE(type3) = 0;
LABEL_37:

          goto LABEL_38;
        }

        v36 = identifier3;
      }

      type = self->_type;
      type = [(HKWorkoutZone *)equalCopy type];
      if (type == type)
      {
        v35 = type;
      }

      else
      {
        type2 = [(HKWorkoutZone *)equalCopy type];
        if (!type2)
        {
          LOBYTE(type3) = 0;
LABEL_35:

LABEL_36:
          identifier3 = v36;
          if (identifier != identifier)
          {
            goto LABEL_37;
          }

LABEL_38:

          goto LABEL_39;
        }

        v15 = type2;
        v16 = self->_type;
        type3 = [(HKWorkoutZone *)equalCopy type];
        if (![(HKObjectType *)v16 isEqual:type3])
        {

          LOBYTE(type3) = 0;
          goto LABEL_36;
        }

        v35 = type;
        v32 = type3;
        v33 = v15;
      }

      startQuantity = self->_startQuantity;
      startQuantity = [(HKWorkoutZone *)equalCopy startQuantity];
      if (startQuantity == startQuantity)
      {
        v34 = v3;
      }

      else
      {
        type3 = [(HKWorkoutZone *)equalCopy startQuantity];
        if (!type3)
        {
LABEL_28:

LABEL_32:
          v28 = v35;
LABEL_33:
          if (v28 != type)
          {
          }

          goto LABEL_35;
        }

        v19 = self->_startQuantity;
        startQuantity2 = [(HKWorkoutZone *)equalCopy startQuantity];
        v21 = v19;
        v22 = startQuantity2;
        if (![(HKQuantity *)v21 isEqual:startQuantity2])
        {

          LOBYTE(type3) = 0;
          goto LABEL_32;
        }

        v30 = v22;
        v31 = type3;
        v34 = v3;
      }

      endQuantity = self->_endQuantity;
      endQuantity = [(HKWorkoutZone *)equalCopy endQuantity];
      LOBYTE(type3) = endQuantity == endQuantity;
      if (endQuantity != endQuantity)
      {
        endQuantity2 = [(HKWorkoutZone *)equalCopy endQuantity];
        if (endQuantity2)
        {
          v26 = endQuantity2;
          type3 = self->_endQuantity;
          endQuantity3 = [(HKWorkoutZone *)equalCopy endQuantity];
          LOBYTE(type3) = [type3 isEqual:endQuantity3];

          if (startQuantity != startQuantity)
          {
          }

          goto LABEL_29;
        }
      }

      if (startQuantity == startQuantity)
      {
LABEL_29:

        v3 = v34;
        v28 = v35;
        goto LABEL_33;
      }

      v3 = v34;
      goto LABEL_28;
    }

    LOBYTE(type3) = 0;
  }

LABEL_39:

  return type3;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeObject:self->_startQuantity forKey:@"StartQuantity"];
  [coderCopy encodeObject:self->_endQuantity forKey:@"EndQuantity"];
  [coderCopy encodeObject:self->_type forKey:@"ObjectType"];
  [coderCopy encodeDouble:@"TimeInZone" forKey:self->_timeInZone];
}

- (HKWorkoutZone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartQuantity"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EndQuantity"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ObjectType"];
  [coderCopy decodeDoubleForKey:@"TimeInZone"];
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