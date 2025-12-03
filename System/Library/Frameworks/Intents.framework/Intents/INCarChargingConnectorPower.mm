@interface INCarChargingConnectorPower
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INCarChargingConnectorPower)initWithChargingConnector:(id)connector maximumPower:(id)power;
- (INCarChargingConnectorPower)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INCarChargingConnectorPower

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"chargingConnector";
  chargingConnector = self->_chargingConnector;
  null = chargingConnector;
  if (!chargingConnector)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"maximumPower";
  v11[0] = null;
  maximumPower = self->_maximumPower;
  null2 = maximumPower;
  if (!maximumPower)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (maximumPower)
  {
    if (chargingConnector)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (chargingConnector)
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
  v11.super_class = INCarChargingConnectorPower;
  v6 = [(INCarChargingConnectorPower *)&v11 description];
  _dictionaryRepresentation = [(INCarChargingConnectorPower *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_chargingConnector];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"chargingConnector"];

  v9 = [encoderCopy encodeObject:self->_maximumPower];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"maximumPower"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  chargingConnector = self->_chargingConnector;
  coderCopy = coder;
  [coderCopy encodeObject:chargingConnector forKey:@"chargingConnector"];
  [coderCopy encodeObject:self->_maximumPower forKey:@"maximumPower"];
}

- (INCarChargingConnectorPower)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chargingConnector"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumPower"];

  v7 = [(INCarChargingConnectorPower *)self initWithChargingConnector:v5 maximumPower:v6];
  return v7;
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
      chargingConnector = self->_chargingConnector;
      v8 = 0;
      if (chargingConnector == v5->_chargingConnector || [(NSString *)chargingConnector isEqual:?])
      {
        maximumPower = self->_maximumPower;
        if (maximumPower == v5->_maximumPower || [(NSMeasurement *)maximumPower isEqual:?])
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

- (INCarChargingConnectorPower)initWithChargingConnector:(id)connector maximumPower:(id)power
{
  connectorCopy = connector;
  powerCopy = power;
  v14.receiver = self;
  v14.super_class = INCarChargingConnectorPower;
  v8 = [(INCarChargingConnectorPower *)&v14 init];
  if (v8)
  {
    v9 = [connectorCopy copy];
    chargingConnector = v8->_chargingConnector;
    v8->_chargingConnector = v9;

    v11 = [powerCopy copy];
    maximumPower = v8->_maximumPower;
    v8->_maximumPower = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"chargingConnector"];
    v10 = objc_opt_class();
    v11 = [fromCopy objectForKeyedSubscript:@"maximumPower"];
    v12 = [decoderCopy decodeObjectOfClass:v10 from:v11];

    v13 = [[self alloc] initWithChargingConnector:v9 maximumPower:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end