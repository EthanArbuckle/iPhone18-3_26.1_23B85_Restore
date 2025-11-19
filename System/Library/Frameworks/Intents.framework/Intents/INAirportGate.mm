@interface INAirportGate
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INAirportGate)initWithAirport:(INAirport *)airport terminal:(NSString *)terminal gate:(NSString *)gate;
- (INAirportGate)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INAirportGate

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"airport";
  airport = self->_airport;
  v4 = airport;
  if (!airport)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"terminal";
  terminal = self->_terminal;
  v6 = terminal;
  if (!terminal)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"gate";
  gate = self->_gate;
  v8 = gate;
  if (!gate)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INAirportGate;
  v6 = [(INAirportGate *)&v11 description];
  v7 = [(INAirportGate *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_airport];
  [v7 if_setObjectIfNonNil:v8 forKey:@"airport"];

  v9 = [v6 encodeObject:self->_terminal];
  [v7 if_setObjectIfNonNil:v9 forKey:@"terminal"];

  v10 = [v6 encodeObject:self->_gate];

  [v7 if_setObjectIfNonNil:v10 forKey:@"gate"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  airport = self->_airport;
  v5 = a3;
  [v5 encodeObject:airport forKey:@"airport"];
  [v5 encodeObject:self->_terminal forKey:@"terminal"];
  [v5 encodeObject:self->_gate forKey:@"gate"];
}

- (INAirportGate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"airport"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"terminal"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"gate"];

  v14 = [(INAirportGate *)self initWithAirport:v5 terminal:v9 gate:v13];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"airport"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"terminal"];
    v13 = [v8 objectForKeyedSubscript:@"gate"];
    v14 = [[a1 alloc] initWithAirport:v11 terminal:v12 gate:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end