@interface INPersonHandle
- (BOOL)isEqual:(id)equal;
- (INPersonHandle)initWithCoder:(id)coder;
- (INPersonHandle)initWithValue:(NSString *)value type:(INPersonHandleType)type label:(INPersonHandleLabel)label;
- (INPersonHandle)initWithValue:(id)value type:(int64_t)type label:(id)label emergencyType:(int64_t)emergencyType faceTimeType:(int64_t)timeType suggested:(BOOL)suggested;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INPersonHandle

- (unint64_t)hash
{
  v3 = [(NSString *)self->_value hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v5 = [v4 hash];
  v6 = v5 ^ v3 ^ [(NSString *)self->_label hash];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_emergencyType];
  v8 = [v7 hash] ^ self->_suggested;

  return v6 ^ v8;
}

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"value";
  value = self->_value;
  null = value;
  if (!value)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"type";
  type = [(INPersonHandle *)self type];
  if (type <= INPersonHandleTypeEmailAddress)
  {
    if (type == INPersonHandleTypeUnknown)
    {
      v6 = 0;
      null2 = @"Unknown";
      goto LABEL_15;
    }

    if (type == INPersonHandleTypeEmailAddress)
    {
      v6 = 0;
      null2 = @"EmailAddress";
      goto LABEL_15;
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        v6 = 0;
        null2 = @"PhoneNumber";
        goto LABEL_15;
      case 103:
        v6 = 0;
        null2 = @"Website";
        goto LABEL_15;
      case 104:
        v6 = 0;
        null2 = @"InstantMessage";
        goto LABEL_15;
    }
  }

  null2 = [MEMORY[0x1E695DFB0] null];
  v6 = 1;
LABEL_15:
  v14[1] = null2;
  v13[2] = @"label";
  label = self->_label;
  null3 = label;
  if (!label)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (label)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

LABEL_24:

    if (value)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  if (v6)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (value)
  {
    goto LABEL_20;
  }

LABEL_25:

LABEL_20:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPersonHandle;
  v6 = [(INPersonHandle *)&v11 description];
  _dictionaryRepresentation = [(INPersonHandle *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INPersonHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v6 = [coderCopy decodeIntegerForKey:@"type"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
  v8 = [coderCopy decodeIntegerForKey:@"emergencyType"];
  v9 = [coderCopy decodeIntegerForKey:@"faceTimeType"];
  v10 = [coderCopy decodeBoolForKey:@"suggested"];

  v11 = [(INPersonHandle *)self initWithValue:v5 type:v6 label:v7 emergencyType:v8 faceTimeType:v9 suggested:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeObject:value forKey:@"value"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeInteger:self->_emergencyType forKey:@"emergencyType"];
  [coderCopy encodeInteger:self->_faceTimeType forKey:@"faceTimeType"];
  [coderCopy encodeBool:self->_suggested forKey:@"suggested"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    value = self->_value;
    v7 = (value == v5[2] || ([(NSString *)value isEqual:?]& 1) != 0 || self->_type != 1 && v5[3] != 1 && (v8 = self->_value, v9 = v5[2], PNPhoneNumbersEqual())) && self->_type == v5[3] && self->_emergencyType == v5[5] && self->_faceTimeType == v5[6] && self->_suggested == *(v5 + 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (INPersonHandle)initWithValue:(id)value type:(int64_t)type label:(id)label emergencyType:(int64_t)emergencyType faceTimeType:(int64_t)timeType suggested:(BOOL)suggested
{
  valueCopy = value;
  labelCopy = label;
  v20.receiver = self;
  v20.super_class = INPersonHandle;
  v16 = [(INPersonHandle *)&v20 init];
  if (v16)
  {
    v17 = [valueCopy copy];
    value = v16->_value;
    v16->_value = v17;

    v16->_type = type;
    objc_storeStrong(&v16->_label, label);
    v16->_emergencyType = emergencyType;
    v16->_faceTimeType = timeType;
    v16->_suggested = suggested;
  }

  return v16;
}

- (INPersonHandle)initWithValue:(NSString *)value type:(INPersonHandleType)type label:(INPersonHandleLabel)label
{
  v8 = value;
  v9 = label;
  v14.receiver = self;
  v14.super_class = INPersonHandle;
  v10 = [(INPersonHandle *)&v14 init];
  if (v10)
  {
    v11 = [(NSString *)v8 copy];
    v12 = v10->_value;
    v10->_value = v11;

    v10->_type = type;
    objc_storeStrong(&v10->_label, label);
  }

  return v10;
}

@end