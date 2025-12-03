@interface INDeviceDetail
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INDeviceDetail)initWithCoder:(id)coder;
- (INDeviceDetail)initWithIdentifier:(id)identifier deviceName:(id)name deviceClass:(int64_t)class productName:(id)productName category:(id)category deviceOwner:(id)owner;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INDeviceDetail

- (void)_intents_updateContainerWithCache:(id)cache
{
  cacheCopy = cache;
  deviceOwner = [(INDeviceDetail *)self deviceOwner];
  [deviceOwner _intents_updateContainerWithCache:cacheCopy];
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  deviceOwner = [(INDeviceDetail *)self deviceOwner];
  _intents_cacheableObjects = [deviceOwner _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects];

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
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null;
  v20[0] = null;
  v19[1] = @"deviceName";
  deviceName = self->_deviceName;
  null2 = deviceName;
  if (!deviceName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null2;
  v20[1] = null2;
  v19[2] = @"deviceClass";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceClass];
  v20[2] = v7;
  v19[3] = @"productName";
  productName = self->_productName;
  null3 = productName;
  if (!productName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v20[3] = null3;
  v19[4] = @"category";
  category = self->_category;
  null4 = category;
  if (!category)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v20[4] = null4;
  v19[5] = @"deviceOwner";
  deviceOwner = self->_deviceOwner;
  null5 = deviceOwner;
  if (!deviceOwner)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v20[5] = null5;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INDeviceDetail;
  v6 = [(INDeviceDetail *)&v11 description];
  _dictionaryRepresentation = [(INDeviceDetail *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_identifier];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"identifier"];

  v9 = [encoderCopy encodeObject:self->_deviceName];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"deviceName"];

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
  [dictionary if_setObjectIfNonNil:v12 forKey:@"deviceClass"];

  v13 = [encoderCopy encodeObject:self->_productName];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"productName"];

  v14 = [encoderCopy encodeObject:self->_category];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"category"];

  v15 = [encoderCopy encodeObject:self->_deviceOwner];

  [dictionary if_setObjectIfNonNil:v15 forKey:@"deviceOwner"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_deviceName forKey:@"deviceName"];
  [coderCopy encodeInteger:self->_deviceClass forKey:@"deviceClass"];
  [coderCopy encodeObject:self->_productName forKey:@"productName"];
  [coderCopy encodeObject:self->_category forKey:@"category"];
  [coderCopy encodeObject:self->_deviceOwner forKey:@"deviceOwner"];
}

- (INDeviceDetail)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
  v10 = [coderCopy decodeIntegerForKey:@"deviceClass"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productName"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceOwner"];

  v14 = [(INDeviceDetail *)self initWithIdentifier:v8 deviceName:v9 deviceClass:v10 productName:v11 category:v12 deviceOwner:v13];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INDeviceDetail)initWithIdentifier:(id)identifier deviceName:(id)name deviceClass:(int64_t)class productName:(id)productName category:(id)category deviceOwner:(id)owner
{
  identifierCopy = identifier;
  nameCopy = name;
  productNameCopy = productName;
  categoryCopy = category;
  ownerCopy = owner;
  v31.receiver = self;
  v31.super_class = INDeviceDetail;
  v19 = [(INDeviceDetail *)&v31 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v20;

    v22 = [nameCopy copy];
    deviceName = v19->_deviceName;
    v19->_deviceName = v22;

    v19->_deviceClass = class;
    v24 = [productNameCopy copy];
    productName = v19->_productName;
    v19->_productName = v24;

    v26 = [categoryCopy copy];
    category = v19->_category;
    v19->_category = v26;

    v28 = [ownerCopy copy];
    deviceOwner = v19->_deviceOwner;
    v19->_deviceOwner = v28;
  }

  return v19;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"identifier"];
    v10 = objc_opt_class();
    v11 = [fromCopy objectForKeyedSubscript:@"deviceName"];
    v12 = [decoderCopy decodeObjectOfClass:v10 from:v11];

    v13 = [fromCopy objectForKeyedSubscript:@"deviceClass"];
    v14 = INDeviceClassWithString(v13);

    v15 = objc_opt_class();
    v16 = [fromCopy objectForKeyedSubscript:@"productName"];
    v17 = [decoderCopy decodeObjectOfClass:v15 from:v16];

    v18 = objc_opt_class();
    v19 = [fromCopy objectForKeyedSubscript:@"category"];
    v20 = [decoderCopy decodeObjectOfClass:v18 from:v19];

    v21 = objc_opt_class();
    v22 = [fromCopy objectForKeyedSubscript:@"deviceOwner"];
    v23 = [decoderCopy decodeObjectOfClass:v21 from:v22];

    v24 = [[self alloc] initWithIdentifier:v9 deviceName:v12 deviceClass:v14 productName:v17 category:v20 deviceOwner:v23];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end