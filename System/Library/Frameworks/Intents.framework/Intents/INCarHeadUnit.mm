@interface INCarHeadUnit
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INCarHeadUnit)initWithBluetoothIdentifier:(NSString *)bluetoothIdentifier iAP2Identifier:(NSString *)iAP2Identifier;
- (INCarHeadUnit)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INCarHeadUnit

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"bluetoothIdentifier";
  bluetoothIdentifier = self->_bluetoothIdentifier;
  v4 = bluetoothIdentifier;
  if (!bluetoothIdentifier)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"iAP2Identifier";
  v11[0] = v4;
  iAP2Identifier = self->_iAP2Identifier;
  v6 = iAP2Identifier;
  if (!iAP2Identifier)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (iAP2Identifier)
  {
    if (bluetoothIdentifier)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (bluetoothIdentifier)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCarHeadUnit;
  v6 = [(INCarHeadUnit *)&v11 description];
  v7 = [(INCarHeadUnit *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_bluetoothIdentifier];
  [v7 if_setObjectIfNonNil:v8 forKey:@"bluetoothIdentifier"];

  v9 = [v6 encodeObject:self->_iAP2Identifier];

  [v7 if_setObjectIfNonNil:v9 forKey:@"iAP2Identifier"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  bluetoothIdentifier = self->_bluetoothIdentifier;
  v5 = a3;
  [v5 encodeObject:bluetoothIdentifier forKey:@"bluetoothIdentifier"];
  [v5 encodeObject:self->_iAP2Identifier forKey:@"iAP2Identifier"];
}

- (INCarHeadUnit)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"bluetoothIdentifier"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"iAP2Identifier"];

  v13 = [(INCarHeadUnit *)self initWithBluetoothIdentifier:v8 iAP2Identifier:v12];
  return v13;
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
      bluetoothIdentifier = self->_bluetoothIdentifier;
      v8 = 0;
      if (bluetoothIdentifier == v5->_bluetoothIdentifier || [(NSString *)bluetoothIdentifier isEqual:?])
      {
        iAP2Identifier = self->_iAP2Identifier;
        if (iAP2Identifier == v5->_iAP2Identifier || [(NSString *)iAP2Identifier isEqual:?])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (INCarHeadUnit)initWithBluetoothIdentifier:(NSString *)bluetoothIdentifier iAP2Identifier:(NSString *)iAP2Identifier
{
  v6 = bluetoothIdentifier;
  v7 = iAP2Identifier;
  v14.receiver = self;
  v14.super_class = INCarHeadUnit;
  v8 = [(INCarHeadUnit *)&v14 init];
  if (v8)
  {
    v9 = [(NSString *)v6 copy];
    v10 = v8->_bluetoothIdentifier;
    v8->_bluetoothIdentifier = v9;

    v11 = [(NSString *)v7 copy];
    v12 = v8->_iAP2Identifier;
    v8->_iAP2Identifier = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"bluetoothIdentifier"];
    v8 = [v6 objectForKeyedSubscript:@"iAP2Identifier"];
    v9 = [[a1 alloc] initWithBluetoothIdentifier:v7 iAP2Identifier:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end