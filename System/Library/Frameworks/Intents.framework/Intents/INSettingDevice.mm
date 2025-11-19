@interface INSettingDevice
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INSettingDevice)initWithCoder:(id)a3;
- (INSettingDevice)initWithDeviceName:(id)a3 deviceModel:(id)a4 deviceCategory:(int64_t)a5;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INSettingDevice

- (id)_dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"deviceName";
  deviceName = self->_deviceName;
  v4 = deviceName;
  if (!deviceName)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v4;
  v11[1] = @"deviceModel";
  deviceModel = self->_deviceModel;
  v6 = deviceModel;
  if (!deviceModel)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v6;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSettingDevice;
  v6 = [(INSettingDevice *)&v11 description];
  v7 = [(INSettingDevice *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_deviceName];
  [v7 if_setObjectIfNonNil:v8 forKey:@"deviceName"];

  v9 = [v6 encodeObject:self->_deviceModel];

  [v7 if_setObjectIfNonNil:v9 forKey:@"deviceModel"];
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
  [v7 if_setObjectIfNonNil:v12 forKey:@"deviceCategory"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  deviceName = self->_deviceName;
  v5 = a3;
  [v5 encodeObject:deviceName forKey:@"deviceName"];
  [v5 encodeObject:self->_deviceModel forKey:@"deviceModel"];
  [v5 encodeInteger:self->_deviceCategory forKey:@"deviceCategory"];
}

- (INSettingDevice)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"deviceName"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"deviceModel"];

  v13 = [v5 decodeIntegerForKey:@"deviceCategory"];
  v14 = [(INSettingDevice *)self initWithDeviceName:v8 deviceModel:v12 deviceCategory:v13];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INSettingDevice)initWithDeviceName:(id)a3 deviceModel:(id)a4 deviceCategory:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = INSettingDevice;
  v10 = [(INSettingDevice *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    deviceName = v10->_deviceName;
    v10->_deviceName = v11;

    v13 = [v9 copy];
    deviceModel = v10->_deviceModel;
    v10->_deviceModel = v13;

    v10->_deviceCategory = a5;
  }

  return v10;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"deviceName"];
    v8 = [v6 objectForKeyedSubscript:@"deviceModel"];
    v9 = [v6 objectForKeyedSubscript:@"deviceCategory"];
    v10 = INDeviceCategoryWithString(v9);

    v11 = [[a1 alloc] initWithDeviceName:v7 deviceModel:v8 deviceCategory:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end