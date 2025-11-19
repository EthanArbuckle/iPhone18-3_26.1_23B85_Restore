@interface HKCBPeripheral
- (BOOL)isEqual:(id)a3;
- (HKCBPeripheral)initWithCBPeripheral:(id)a3;
- (HKCBPeripheral)initWithCoder:(id)a3;
- (id)_initWithIdentifer:(id)a3 name:(id)a4 properties:(id)a5 tags:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCBPeripheral

- (id)_initWithIdentifer:(id)a3 name:(id)a4 properties:(id)a5 tags:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HKCBPeripheral;
  v14 = [(HKCBPeripheral *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    name = v14->_name;
    v14->_name = v17;

    v19 = [v12 copy];
    properties = v14->_properties;
    v14->_properties = v19;

    v21 = [v13 copy];
    tags = v14->_tags;
    v14->_tags = v21;
  }

  return v14;
}

- (HKCBPeripheral)initWithCBPeripheral:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 customPropertyNames];
  if (v5)
  {
    v6 = [v4 customPropertyNames];
    v7 = [v6 count];

    if (v7)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = [v4 customPropertyNames];
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v22 + 1) + 8 * i);
            v14 = [v4 customProperty:v13];
            [v5 setObject:v14 forKey:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v15 = [v4 getTags];
  v16 = v15;
  if (v15 && ![v15 count])
  {

    v16 = 0;
  }

  v17 = [v4 identifier];
  v18 = [v4 name];
  v19 = [(HKCBPeripheral *)self _initWithIdentifer:v17 name:v18 properties:v5 tags:v16];

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = v4->_identifier;
      v7 = v4;
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

- (HKCBPeripheral)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKCBPeripheral;
  v5 = [(HKCBPeripheral *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HealthPeripheralNameKey"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HealthPeripheralIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HealthPeripheralProperties"];
    properties = v5->_properties;
    v5->_properties = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HealthPeripheralTags"];
    tags = v5->_tags;
    v5->_tags = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"HealthPeripheralNameKey"];
  [v5 encodeObject:self->_identifier forKey:@"HealthPeripheralIdentifier"];
  [v5 encodeObject:self->_properties forKey:@"HealthPeripheralProperties"];
  [v5 encodeObject:self->_tags forKey:@"HealthPeripheralTags"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = self->_name;
  v7 = [(NSUUID *)self->_identifier UUIDString];
  v8 = [v3 stringWithFormat:@"%@, (%@) identifier:%@, properties:%@, tags:%@", v5, name, v7, self->_properties, self->_tags];

  return v8;
}

@end