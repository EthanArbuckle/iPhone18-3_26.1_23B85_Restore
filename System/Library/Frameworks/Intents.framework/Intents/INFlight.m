@interface INFlight
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INFlight)initWithAirline:(INAirline *)airline flightNumber:(NSString *)flightNumber boardingTime:(INDateComponentsRange *)boardingTime flightDuration:(INDateComponentsRange *)flightDuration departureAirportGate:(INAirportGate *)departureAirportGate arrivalAirportGate:(INAirportGate *)arrivalAirportGate;
- (INFlight)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INFlight

- (id)_dictionaryRepresentation
{
  v28[6] = *MEMORY[0x1E69E9840];
  v22 = @"airline";
  airline = self->_airline;
  v4 = airline;
  if (!airline)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v4;
  v28[0] = v4;
  v23 = @"flightNumber";
  flightNumber = self->_flightNumber;
  v6 = flightNumber;
  if (!flightNumber)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v6;
  v28[1] = v6;
  v24 = @"boardingTime";
  boardingTime = self->_boardingTime;
  v8 = boardingTime;
  if (!boardingTime)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v8;
  v28[2] = v8;
  v25 = @"flightDuration";
  flightDuration = self->_flightDuration;
  v10 = flightDuration;
  if (!flightDuration)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = v10;
  v26 = @"departureAirportGate";
  departureAirportGate = self->_departureAirportGate;
  v12 = departureAirportGate;
  if (!departureAirportGate)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = v12;
  v27 = @"arrivalAirportGate";
  arrivalAirportGate = self->_arrivalAirportGate;
  v14 = arrivalAirportGate;
  if (!arrivalAirportGate)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v22 count:{6, v18}];
  if (arrivalAirportGate)
  {
    if (departureAirportGate)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (departureAirportGate)
    {
LABEL_15:
      if (flightDuration)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  if (flightDuration)
  {
LABEL_16:
    if (boardingTime)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:

  if (boardingTime)
  {
LABEL_17:
    if (flightNumber)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (airline)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (!flightNumber)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (airline)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INFlight;
  v6 = [(INFlight *)&v11 description];
  v7 = [(INFlight *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_airline];
  [v7 if_setObjectIfNonNil:v8 forKey:@"airline"];

  v9 = [v6 encodeObject:self->_flightNumber];
  [v7 if_setObjectIfNonNil:v9 forKey:@"flightNumber"];

  v10 = [v6 encodeObject:self->_boardingTime];
  [v7 if_setObjectIfNonNil:v10 forKey:@"boardingTime"];

  v11 = [v6 encodeObject:self->_flightDuration];
  [v7 if_setObjectIfNonNil:v11 forKey:@"flightDuration"];

  v12 = [v6 encodeObject:self->_departureAirportGate];
  [v7 if_setObjectIfNonNil:v12 forKey:@"departureAirportGate"];

  v13 = [v6 encodeObject:self->_arrivalAirportGate];

  [v7 if_setObjectIfNonNil:v13 forKey:@"arrivalAirportGate"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  airline = self->_airline;
  v5 = a3;
  [v5 encodeObject:airline forKey:@"airline"];
  [v5 encodeObject:self->_flightNumber forKey:@"flightNumber"];
  [v5 encodeObject:self->_boardingTime forKey:@"boardingTime"];
  [v5 encodeObject:self->_flightDuration forKey:@"flightDuration"];
  [v5 encodeObject:self->_departureAirportGate forKey:@"departureAirportGate"];
  [v5 encodeObject:self->_arrivalAirportGate forKey:@"arrivalAirportGate"];
}

- (INFlight)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"airline"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"flightNumber"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"boardingTime"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flightDuration"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"departureAirportGate"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"arrivalAirportGate"];

  v14 = [(INFlight *)self initWithAirline:v5 flightNumber:v9 boardingTime:v10 flightDuration:v11 departureAirportGate:v12 arrivalAirportGate:v13];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      airline = self->_airline;
      v12 = 0;
      if (airline == v5->_airline || [(INAirline *)airline isEqual:?])
      {
        flightNumber = self->_flightNumber;
        if (flightNumber == v5->_flightNumber || [(NSString *)flightNumber isEqual:?])
        {
          boardingTime = self->_boardingTime;
          if (boardingTime == v5->_boardingTime || [(INDateComponentsRange *)boardingTime isEqual:?])
          {
            flightDuration = self->_flightDuration;
            if (flightDuration == v5->_flightDuration || [(INDateComponentsRange *)flightDuration isEqual:?])
            {
              departureAirportGate = self->_departureAirportGate;
              if (departureAirportGate == v5->_departureAirportGate || [(INAirportGate *)departureAirportGate isEqual:?])
              {
                arrivalAirportGate = self->_arrivalAirportGate;
                if (arrivalAirportGate == v5->_arrivalAirportGate || [(INAirportGate *)arrivalAirportGate isEqual:?])
                {
                  v12 = 1;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(INAirline *)self->_airline hash];
  v4 = [(NSString *)self->_flightNumber hash]^ v3;
  v5 = [(INDateComponentsRange *)self->_boardingTime hash];
  v6 = v4 ^ v5 ^ [(INDateComponentsRange *)self->_flightDuration hash];
  v7 = [(INAirportGate *)self->_departureAirportGate hash];
  return v6 ^ v7 ^ [(INAirportGate *)self->_arrivalAirportGate hash];
}

- (INFlight)initWithAirline:(INAirline *)airline flightNumber:(NSString *)flightNumber boardingTime:(INDateComponentsRange *)boardingTime flightDuration:(INDateComponentsRange *)flightDuration departureAirportGate:(INAirportGate *)departureAirportGate arrivalAirportGate:(INAirportGate *)arrivalAirportGate
{
  v14 = airline;
  v15 = flightNumber;
  v16 = boardingTime;
  v17 = flightDuration;
  v18 = departureAirportGate;
  v19 = arrivalAirportGate;
  v34.receiver = self;
  v34.super_class = INFlight;
  v20 = [(INFlight *)&v34 init];
  if (v20)
  {
    v21 = [(INAirline *)v14 copy];
    v22 = v20->_airline;
    v20->_airline = v21;

    v23 = [(NSString *)v15 copy];
    v24 = v20->_flightNumber;
    v20->_flightNumber = v23;

    v25 = [(INDateComponentsRange *)v16 copy];
    v26 = v20->_boardingTime;
    v20->_boardingTime = v25;

    v27 = [(INDateComponentsRange *)v17 copy];
    v28 = v20->_flightDuration;
    v20->_flightDuration = v27;

    v29 = [(INAirportGate *)v18 copy];
    v30 = v20->_departureAirportGate;
    v20->_departureAirportGate = v29;

    v31 = [(INAirportGate *)v19 copy];
    v32 = v20->_arrivalAirportGate;
    v20->_arrivalAirportGate = v31;
  }

  return v20;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"airline"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"flightNumber"];
    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"boardingTime"];
    v15 = [v7 decodeObjectOfClass:v13 from:v14];

    v16 = objc_opt_class();
    v17 = [v8 objectForKeyedSubscript:@"flightDuration"];
    v18 = [v7 decodeObjectOfClass:v16 from:v17];

    v19 = objc_opt_class();
    v20 = [v8 objectForKeyedSubscript:@"departureAirportGate"];
    v21 = [v7 decodeObjectOfClass:v19 from:v20];

    v22 = objc_opt_class();
    v23 = [v8 objectForKeyedSubscript:@"arrivalAirportGate"];
    v24 = [v7 decodeObjectOfClass:v22 from:v23];

    v25 = [[a1 alloc] initWithAirline:v11 flightNumber:v12 boardingTime:v15 flightDuration:v18 departureAirportGate:v21 arrivalAirportGate:v24];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end