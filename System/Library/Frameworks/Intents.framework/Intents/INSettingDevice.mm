@interface INSettingDevice
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INSettingDevice)initWithCoder:(id)coder;
- (INSettingDevice)initWithDeviceName:(id)name deviceModel:(id)model deviceCategory:(int64_t)category;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSettingDevice

- (id)_dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"deviceName";
  deviceName = self->_deviceName;
  null = deviceName;
  if (!deviceName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"deviceModel";
  deviceModel = self->_deviceModel;
  null2 = deviceModel;
  if (!deviceModel)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v11[2] = @"deviceCategory";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceCategory];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  if (deviceModel)
  {
    if (deviceName)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (deviceName)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSettingDevice;
  v6 = [(INSettingDevice *)&v11 description];
  _dictionaryRepresentation = [(INSettingDevice *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_deviceName];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"deviceName"];

  v9 = [encoderCopy encodeObject:self->_deviceModel];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"deviceModel"];
  v10 = self->_deviceCategory - 1;
  if (v10 > 0xD)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E7287E08[v10];
  }

  v12 = v11;
  [dictionary if_setObjectIfNonNil:v12 forKey:@"deviceCategory"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  deviceName = self->_deviceName;
  coderCopy = coder;
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];
  [coderCopy encodeObject:self->_deviceModel forKey:@"deviceModel"];
  [coderCopy encodeInteger:self->_deviceCategory forKey:@"deviceCategory"];
}

- (INSettingDevice)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"deviceName"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"deviceModel"];

  v13 = [coderCopy decodeIntegerForKey:@"deviceCategory"];
  v14 = [(INSettingDevice *)self initWithDeviceName:v8 deviceModel:v12 deviceCategory:v13];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      deviceName = self->_deviceName;
      v8 = (deviceName == v5->_deviceName || [(NSString *)deviceName isEqual:?]) && ((deviceModel = self->_deviceModel, deviceModel == v5->_deviceModel) || [(NSString *)deviceModel isEqual:?]) && self->_deviceCategory == v5->_deviceCategory;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceName hash];
  v4 = [(NSString *)self->_deviceModel hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceCategory];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (INSettingDevice)initWithDeviceName:(id)name deviceModel:(id)model deviceCategory:(int64_t)category
{
  nameCopy = name;
  modelCopy = model;
  v16.receiver = self;
  v16.super_class = INSettingDevice;
  v10 = [(INSettingDevice *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    deviceName = v10->_deviceName;
    v10->_deviceName = v11;

    v13 = [modelCopy copy];
    deviceModel = v10->_deviceModel;
    v10->_deviceModel = v13;

    v10->_deviceCategory = category;
  }

  return v10;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"deviceName"];
    v8 = [fromCopy objectForKeyedSubscript:@"deviceModel"];
    v9 = [fromCopy objectForKeyedSubscript:@"deviceCategory"];
    v10 = INDeviceCategoryWithString(v9);

    v11 = [[self alloc] initWithDeviceName:v7 deviceModel:v8 deviceCategory:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end