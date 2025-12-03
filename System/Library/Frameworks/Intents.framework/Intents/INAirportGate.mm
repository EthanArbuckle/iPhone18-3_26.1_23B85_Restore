@interface INAirportGate
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INAirportGate)initWithAirport:(INAirport *)airport terminal:(NSString *)terminal gate:(NSString *)gate;
- (INAirportGate)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INAirportGate

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"airport";
  airport = self->_airport;
  null = airport;
  if (!airport)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"terminal";
  terminal = self->_terminal;
  null2 = terminal;
  if (!terminal)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"gate";
  gate = self->_gate;
  null3 = gate;
  if (!gate)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (gate)
  {
    if (terminal)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (airport)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!terminal)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (airport)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INAirportGate;
  v6 = [(INAirportGate *)&v11 description];
  _dictionaryRepresentation = [(INAirportGate *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_airport];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"airport"];

  v9 = [encoderCopy encodeObject:self->_terminal];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"terminal"];

  v10 = [encoderCopy encodeObject:self->_gate];

  [dictionary if_setObjectIfNonNil:v10 forKey:@"gate"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  airport = self->_airport;
  coderCopy = coder;
  [coderCopy encodeObject:airport forKey:@"airport"];
  [coderCopy encodeObject:self->_terminal forKey:@"terminal"];
  [coderCopy encodeObject:self->_gate forKey:@"gate"];
}

- (INAirportGate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"airport"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"terminal"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"gate"];

  v14 = [(INAirportGate *)self initWithAirport:v5 terminal:v9 gate:v13];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      airport = self->_airport;
      v9 = 0;
      if (airport == v5->_airport || [(INAirport *)airport isEqual:?])
      {
        terminal = self->_terminal;
        if (terminal == v5->_terminal || [(NSString *)terminal isEqual:?])
        {
          gate = self->_gate;
          if (gate == v5->_gate || [(NSString *)gate isEqual:?])
          {
            v9 = 1;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(INAirport *)self->_airport hash];
  v4 = [(NSString *)self->_terminal hash]^ v3;
  return v4 ^ [(NSString *)self->_gate hash];
}

- (INAirportGate)initWithAirport:(INAirport *)airport terminal:(NSString *)terminal gate:(NSString *)gate
{
  v8 = airport;
  v9 = terminal;
  v10 = gate;
  v19.receiver = self;
  v19.super_class = INAirportGate;
  v11 = [(INAirportGate *)&v19 init];
  if (v11)
  {
    v12 = [(INAirport *)v8 copy];
    v13 = v11->_airport;
    v11->_airport = v12;

    v14 = [(NSString *)v9 copy];
    v15 = v11->_terminal;
    v11->_terminal = v14;

    v16 = [(NSString *)v10 copy];
    v17 = v11->_gate;
    v11->_gate = v16;
  }

  return v11;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"airport"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"terminal"];
    v13 = [fromCopy objectForKeyedSubscript:@"gate"];
    v14 = [[self alloc] initWithAirport:v11 terminal:v12 gate:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end