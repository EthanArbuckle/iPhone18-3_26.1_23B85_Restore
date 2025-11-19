@interface INDeviceDetail
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INDeviceDetail)initWithCoder:(id)a3;
- (INDeviceDetail)initWithIdentifier:(id)a3 deviceName:(id)a4 deviceClass:(int64_t)a5 productName:(id)a6 category:(id)a7 deviceOwner:(id)a8;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INDeviceDetail

- (void)_intents_updateContainerWithCache:(id)a3
{
  v4 = a3;
  v5 = [(INDeviceDetail *)self deviceOwner];
  [v5 _intents_updateContainerWithCache:v4];
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(INDeviceDetail *)self deviceOwner];
  v5 = [v4 _intents_cacheableObjects];
  [v3 unionSet:v5];

  if ([v3 count])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)_dictionaryRepresentation
{
  v20[6] = *MEMORY[0x1E69E9840];
  v19[0] = @"identifier";
  identifier = self->_identifier;
  v4 = identifier;
  if (!identifier)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v4;
  v20[0] = v4;
  v19[1] = @"deviceName";
  deviceName = self->_deviceName;
  v6 = deviceName;
  if (!deviceName)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v6;
  v20[1] = v6;
  v19[2] = @"deviceClass";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceClass];
  v20[2] = v7;
  v19[3] = @"productName";
  productName = self->_productName;
  v9 = productName;
  if (!productName)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20[3] = v9;
  v19[4] = @"category";
  category = self->_category;
  v11 = category;
  if (!category)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v20[4] = v11;
  v19[5] = @"deviceOwner";
  deviceOwner = self->_deviceOwner;
  v13 = deviceOwner;
  if (!deviceOwner)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v20[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:6];
  if (deviceOwner)
  {
    if (category)
    {
      goto LABEL_13;
    }

LABEL_20:

    if (productName)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (!category)
  {
    goto LABEL_20;
  }

LABEL_13:
  if (productName)
  {
    goto LABEL_14;
  }

LABEL_21:

LABEL_14:
  if (deviceName)
  {
    if (identifier)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (identifier)
    {
      goto LABEL_16;
    }
  }

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INDeviceDetail;
  v6 = [(INDeviceDetail *)&v11 description];
  v7 = [(INDeviceDetail *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_identifier];
  [v7 if_setObjectIfNonNil:v8 forKey:@"identifier"];

  v9 = [v6 encodeObject:self->_deviceName];
  [v7 if_setObjectIfNonNil:v9 forKey:@"deviceName"];

  v10 = self->_deviceClass - 1;
  if (v10 > 8)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = *(&off_1E72876C8 + v10);
  }

  v12 = v11;
  [v7 if_setObjectIfNonNil:v12 forKey:@"deviceClass"];

  v13 = [v6 encodeObject:self->_productName];
  [v7 if_setObjectIfNonNil:v13 forKey:@"productName"];

  v14 = [v6 encodeObject:self->_category];
  [v7 if_setObjectIfNonNil:v14 forKey:@"category"];

  v15 = [v6 encodeObject:self->_deviceOwner];

  [v7 if_setObjectIfNonNil:v15 forKey:@"deviceOwner"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_deviceName forKey:@"deviceName"];
  [v5 encodeInteger:self->_deviceClass forKey:@"deviceClass"];
  [v5 encodeObject:self->_productName forKey:@"productName"];
  [v5 encodeObject:self->_category forKey:@"category"];
  [v5 encodeObject:self->_deviceOwner forKey:@"deviceOwner"];
}

- (INDeviceDetail)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"identifier"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
  v10 = [v5 decodeIntegerForKey:@"deviceClass"];
  v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"productName"];
  v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
  v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"deviceOwner"];

  v14 = [(INDeviceDetail *)self initWithIdentifier:v8 deviceName:v9 deviceClass:v10 productName:v11 category:v12 deviceOwner:v13];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      identifier = self->_identifier;
      v11 = 0;
      if (identifier == v5->_identifier || [(NSString *)identifier isEqual:?])
      {
        deviceName = self->_deviceName;
        if ((deviceName == v5->_deviceName || [(INSpeakableString *)deviceName isEqual:?]) && self->_deviceClass == v5->_deviceClass)
        {
          productName = self->_productName;
          if (productName == v5->_productName || [(INSpeakableString *)productName isEqual:?])
          {
            category = self->_category;
            if (category == v5->_category || [(INSpeakableString *)category isEqual:?])
            {
              deviceOwner = self->_deviceOwner;
              if (deviceOwner == v5->_deviceOwner || [(INPerson *)deviceOwner isEqual:?])
              {
                v11 = 1;
              }
            }
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(INSpeakableString *)self->_deviceName hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceClass];
  v6 = [v5 hash];
  v7 = v4 ^ [(INSpeakableString *)self->_productName hash]^ v6;
  v8 = [(INSpeakableString *)self->_category hash];
  v9 = v8 ^ [(INPerson *)self->_deviceOwner hash];

  return v7 ^ v9;
}

- (INDeviceDetail)initWithIdentifier:(id)a3 deviceName:(id)a4 deviceClass:(int64_t)a5 productName:(id)a6 category:(id)a7 deviceOwner:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = INDeviceDetail;
  v19 = [(INDeviceDetail *)&v31 init];
  if (v19)
  {
    v20 = [v14 copy];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [v15 copy];
    deviceName = v19->_deviceName;
    v19->_deviceName = v22;

    v19->_deviceClass = a5;
    v24 = [v16 copy];
    productName = v19->_productName;
    v19->_productName = v24;

    v26 = [v17 copy];
    category = v19->_category;
    v19->_category = v26;

    v28 = [v18 copy];
    deviceOwner = v19->_deviceOwner;
    v19->_deviceOwner = v28;
  }

  return v19;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"identifier"];
    v10 = objc_opt_class();
    v11 = [v8 objectForKeyedSubscript:@"deviceName"];
    v12 = [v7 decodeObjectOfClass:v10 from:v11];

    v13 = [v8 objectForKeyedSubscript:@"deviceClass"];
    v14 = INDeviceClassWithString(v13);

    v15 = objc_opt_class();
    v16 = [v8 objectForKeyedSubscript:@"productName"];
    v17 = [v7 decodeObjectOfClass:v15 from:v16];

    v18 = objc_opt_class();
    v19 = [v8 objectForKeyedSubscript:@"category"];
    v20 = [v7 decodeObjectOfClass:v18 from:v19];

    v21 = objc_opt_class();
    v22 = [v8 objectForKeyedSubscript:@"deviceOwner"];
    v23 = [v7 decodeObjectOfClass:v21 from:v22];

    v24 = [[a1 alloc] initWithIdentifier:v9 deviceName:v12 deviceClass:v14 productName:v17 category:v20 deviceOwner:v23];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end