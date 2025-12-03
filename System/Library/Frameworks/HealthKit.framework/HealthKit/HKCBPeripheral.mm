@interface HKCBPeripheral
- (BOOL)isEqual:(id)equal;
- (HKCBPeripheral)initWithCBPeripheral:(id)peripheral;
- (HKCBPeripheral)initWithCoder:(id)coder;
- (id)_initWithIdentifer:(id)identifer name:(id)name properties:(id)properties tags:(id)tags;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCBPeripheral

- (id)_initWithIdentifer:(id)identifer name:(id)name properties:(id)properties tags:(id)tags
{
  identiferCopy = identifer;
  nameCopy = name;
  propertiesCopy = properties;
  tagsCopy = tags;
  v24.receiver = self;
  v24.super_class = HKCBPeripheral;
  v14 = [(HKCBPeripheral *)&v24 init];
  if (v14)
  {
    v15 = [identiferCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v17;

    v19 = [propertiesCopy copy];
    properties = v14->_properties;
    v14->_properties = v19;

    v21 = [tagsCopy copy];
    tags = v14->_tags;
    v14->_tags = v21;
  }

  return v14;
}

- (HKCBPeripheral)initWithCBPeripheral:(id)peripheral
{
  v27 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  customPropertyNames = [peripheralCopy customPropertyNames];
  if (customPropertyNames)
  {
    customPropertyNames2 = [peripheralCopy customPropertyNames];
    v7 = [customPropertyNames2 count];

    if (v7)
    {
      customPropertyNames = [MEMORY[0x1E695DF90] dictionary];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      customPropertyNames3 = [peripheralCopy customPropertyNames];
      v9 = [customPropertyNames3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v23;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(customPropertyNames3);
            }

            v13 = *(*(&v22 + 1) + 8 * i);
            v14 = [peripheralCopy customProperty:v13];
            [customPropertyNames setObject:v14 forKey:v13];
          }

          v10 = [customPropertyNames3 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v10);
      }
    }

    else
    {
      customPropertyNames = 0;
    }
  }

  getTags = [peripheralCopy getTags];
  v16 = getTags;
  if (getTags && ![getTags count])
  {

    v16 = 0;
  }

  identifier = [peripheralCopy identifier];
  name = [peripheralCopy name];
  v19 = [(HKCBPeripheral *)self _initWithIdentifer:identifier name:name properties:customPropertyNames tags:v16];

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = equalCopy->_identifier;
      v7 = equalCopy;
      LODWORD(identifier) = [(NSUUID *)identifier isEqual:v6];
      name = self->_name;
      v9 = v7->_name;

      v10 = identifier & [(NSString *)name isEqual:v9];
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (HKCBPeripheral)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKCBPeripheral;
  v5 = [(HKCBPeripheral *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HealthPeripheralNameKey"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HealthPeripheralIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HealthPeripheralProperties"];
    properties = v5->_properties;
    v5->_properties = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HealthPeripheralTags"];
    tags = v5->_tags;
    v5->_tags = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"HealthPeripheralNameKey"];
  [coderCopy encodeObject:self->_identifier forKey:@"HealthPeripheralIdentifier"];
  [coderCopy encodeObject:self->_properties forKey:@"HealthPeripheralProperties"];
  [coderCopy encodeObject:self->_tags forKey:@"HealthPeripheralTags"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = self->_name;
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v8 = [v3 stringWithFormat:@"%@, (%@) identifier:%@, properties:%@, tags:%@", v5, name, uUIDString, self->_properties, self->_tags];

  return v8;
}

@end