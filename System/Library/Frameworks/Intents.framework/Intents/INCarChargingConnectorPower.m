@interface INCarChargingConnectorPower
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INCarChargingConnectorPower)initWithChargingConnector:(id)a3 maximumPower:(id)a4;
- (INCarChargingConnectorPower)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INCarChargingConnectorPower

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"chargingConnector";
  chargingConnector = self->_chargingConnector;
  v4 = chargingConnector;
  if (!chargingConnector)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"maximumPower";
  v11[0] = v4;
  maximumPower = self->_maximumPower;
  v6 = maximumPower;
  if (!maximumPower)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCarChargingConnectorPower;
  v6 = [(INCarChargingConnectorPower *)&v11 description];
  v7 = [(INCarChargingConnectorPower *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_chargingConnector];
  [v7 if_setObjectIfNonNil:v8 forKey:@"chargingConnector"];

  v9 = [v6 encodeObject:self->_maximumPower];

  [v7 if_setObjectIfNonNil:v9 forKey:@"maximumPower"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  chargingConnector = self->_chargingConnector;
  v5 = a3;
  [v5 encodeObject:chargingConnector forKey:@"chargingConnector"];
  [v5 encodeObject:self->_maximumPower forKey:@"maximumPower"];
}

- (INCarChargingConnectorPower)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chargingConnector"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumPower"];

  v7 = [(INCarChargingConnectorPower *)self initWithChargingConnector:v5 maximumPower:v6];
  return v7;
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

- (INCarChargingConnectorPower)initWithChargingConnector:(id)a3 maximumPower:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = INCarChargingConnectorPower;
  v8 = [(INCarChargingConnectorPower *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    chargingConnector = v8->_chargingConnector;
    v8->_chargingConnector = v9;

    v11 = [v7 copy];
    maximumPower = v8->_maximumPower;
    v8->_maximumPower = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"chargingConnector"];
    v10 = objc_opt_class();
    v11 = [v8 objectForKeyedSubscript:@"maximumPower"];
    v12 = [v7 decodeObjectOfClass:v10 from:v11];

    v13 = [[a1 alloc] initWithChargingConnector:v9 maximumPower:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end