@interface INCarHeadUnit
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INCarHeadUnit)initWithBluetoothIdentifier:(NSString *)bluetoothIdentifier iAP2Identifier:(NSString *)iAP2Identifier;
- (INCarHeadUnit)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INCarHeadUnit

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"bluetoothIdentifier";
  bluetoothIdentifier = self->_bluetoothIdentifier;
  null = bluetoothIdentifier;
  if (!bluetoothIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"iAP2Identifier";
  v11[0] = null;
  iAP2Identifier = self->_iAP2Identifier;
  null2 = iAP2Identifier;
  if (!iAP2Identifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCarHeadUnit;
  v6 = [(INCarHeadUnit *)&v11 description];
  _dictionaryRepresentation = [(INCarHeadUnit *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_bluetoothIdentifier];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"bluetoothIdentifier"];

  v9 = [encoderCopy encodeObject:self->_iAP2Identifier];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"iAP2Identifier"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  bluetoothIdentifier = self->_bluetoothIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bluetoothIdentifier forKey:@"bluetoothIdentifier"];
  [coderCopy encodeObject:self->_iAP2Identifier forKey:@"iAP2Identifier"];
}

- (INCarHeadUnit)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"bluetoothIdentifier"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"iAP2Identifier"];

  v13 = [(INCarHeadUnit *)self initWithBluetoothIdentifier:v8 iAP2Identifier:v12];
  return v13;
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

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"bluetoothIdentifier"];
    v8 = [fromCopy objectForKeyedSubscript:@"iAP2Identifier"];
    v9 = [[self alloc] initWithBluetoothIdentifier:v7 iAP2Identifier:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end