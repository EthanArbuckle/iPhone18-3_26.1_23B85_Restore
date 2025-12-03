@interface INBoatTrip
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INBoatTrip)initWithCoder:(id)coder;
- (INBoatTrip)initWithProvider:(NSString *)provider boatName:(NSString *)boatName boatNumber:(NSString *)boatNumber tripDuration:(INDateComponentsRange *)tripDuration departureBoatTerminalLocation:(CLPlacemark *)departureBoatTerminalLocation arrivalBoatTerminalLocation:(CLPlacemark *)arrivalBoatTerminalLocation;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INBoatTrip

- (id)_dictionaryRepresentation
{
  v28[6] = *MEMORY[0x1E69E9840];
  v22 = @"provider";
  provider = self->_provider;
  null = provider;
  if (!provider)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v28[0] = null;
  v23 = @"boatName";
  boatName = self->_boatName;
  null2 = boatName;
  if (!boatName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v28[1] = null2;
  v24 = @"boatNumber";
  boatNumber = self->_boatNumber;
  null3 = boatNumber;
  if (!boatNumber)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null3;
  v28[2] = null3;
  v25 = @"tripDuration";
  tripDuration = self->_tripDuration;
  null4 = tripDuration;
  if (!tripDuration)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = null4;
  v26 = @"departureBoatTerminalLocation";
  departureBoatTerminalLocation = self->_departureBoatTerminalLocation;
  null5 = departureBoatTerminalLocation;
  if (!departureBoatTerminalLocation)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = null5;
  v27 = @"arrivalBoatTerminalLocation";
  arrivalBoatTerminalLocation = self->_arrivalBoatTerminalLocation;
  null6 = arrivalBoatTerminalLocation;
  if (!arrivalBoatTerminalLocation)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v22 count:{6, v18}];
  if (arrivalBoatTerminalLocation)
  {
    if (departureBoatTerminalLocation)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (departureBoatTerminalLocation)
    {
LABEL_15:
      if (tripDuration)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  if (tripDuration)
  {
LABEL_16:
    if (boatNumber)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:

  if (boatNumber)
  {
LABEL_17:
    if (boatName)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (provider)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (!boatName)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (provider)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INBoatTrip;
  v6 = [(INBoatTrip *)&v11 description];
  _dictionaryRepresentation = [(INBoatTrip *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_provider];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"provider"];

  v9 = [encoderCopy encodeObject:self->_boatName];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"boatName"];

  v10 = [encoderCopy encodeObject:self->_boatNumber];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"boatNumber"];

  v11 = [encoderCopy encodeObject:self->_tripDuration];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"tripDuration"];

  v12 = [encoderCopy encodeObject:self->_departureBoatTerminalLocation];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"departureBoatTerminalLocation"];

  v13 = [encoderCopy encodeObject:self->_arrivalBoatTerminalLocation];

  [dictionary if_setObjectIfNonNil:v13 forKey:@"arrivalBoatTerminalLocation"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  provider = self->_provider;
  coderCopy = coder;
  [coderCopy encodeObject:provider forKey:@"provider"];
  [coderCopy encodeObject:self->_boatName forKey:@"boatName"];
  [coderCopy encodeObject:self->_boatNumber forKey:@"boatNumber"];
  [coderCopy encodeObject:self->_tripDuration forKey:@"tripDuration"];
  [coderCopy encodeObject:self->_departureBoatTerminalLocation forKey:@"departureBoatTerminalLocation"];
  [coderCopy encodeObject:self->_arrivalBoatTerminalLocation forKey:@"arrivalBoatTerminalLocation"];
}

- (INBoatTrip)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"provider"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"boatName"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"boatNumber"];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tripDuration"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"departureBoatTerminalLocation"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"arrivalBoatTerminalLocation"];

  v20 = [(INBoatTrip *)self initWithProvider:v8 boatName:v12 boatNumber:v16 tripDuration:v17 departureBoatTerminalLocation:v18 arrivalBoatTerminalLocation:v19];
  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      provider = self->_provider;
      v12 = 0;
      if (provider == v5->_provider || [(NSString *)provider isEqual:?])
      {
        boatName = self->_boatName;
        if (boatName == v5->_boatName || [(NSString *)boatName isEqual:?])
        {
          boatNumber = self->_boatNumber;
          if (boatNumber == v5->_boatNumber || [(NSString *)boatNumber isEqual:?])
          {
            tripDuration = self->_tripDuration;
            if (tripDuration == v5->_tripDuration || [(INDateComponentsRange *)tripDuration isEqual:?])
            {
              departureBoatTerminalLocation = self->_departureBoatTerminalLocation;
              if (departureBoatTerminalLocation == v5->_departureBoatTerminalLocation || [(CLPlacemark *)departureBoatTerminalLocation isEqual:?])
              {
                arrivalBoatTerminalLocation = self->_arrivalBoatTerminalLocation;
                if (arrivalBoatTerminalLocation == v5->_arrivalBoatTerminalLocation || [(CLPlacemark *)arrivalBoatTerminalLocation isEqual:?])
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
  v3 = [(NSString *)self->_provider hash];
  v4 = [(NSString *)self->_boatName hash]^ v3;
  v5 = [(NSString *)self->_boatNumber hash];
  v6 = v4 ^ v5 ^ [(INDateComponentsRange *)self->_tripDuration hash];
  v7 = [(CLPlacemark *)self->_departureBoatTerminalLocation hash];
  return v6 ^ v7 ^ [(CLPlacemark *)self->_arrivalBoatTerminalLocation hash];
}

- (INBoatTrip)initWithProvider:(NSString *)provider boatName:(NSString *)boatName boatNumber:(NSString *)boatNumber tripDuration:(INDateComponentsRange *)tripDuration departureBoatTerminalLocation:(CLPlacemark *)departureBoatTerminalLocation arrivalBoatTerminalLocation:(CLPlacemark *)arrivalBoatTerminalLocation
{
  v14 = provider;
  v15 = boatName;
  v16 = boatNumber;
  v17 = tripDuration;
  v18 = departureBoatTerminalLocation;
  v19 = arrivalBoatTerminalLocation;
  v34.receiver = self;
  v34.super_class = INBoatTrip;
  v20 = [(INBoatTrip *)&v34 init];
  if (v20)
  {
    v21 = [(NSString *)v14 copy];
    v22 = v20->_provider;
    v20->_provider = v21;

    v23 = [(NSString *)v15 copy];
    v24 = v20->_boatName;
    v20->_boatName = v23;

    v25 = [(NSString *)v16 copy];
    v26 = v20->_boatNumber;
    v20->_boatNumber = v25;

    v27 = [(INDateComponentsRange *)v17 copy];
    v28 = v20->_tripDuration;
    v20->_tripDuration = v27;

    v29 = [(CLPlacemark *)v18 copy];
    v30 = v20->_departureBoatTerminalLocation;
    v20->_departureBoatTerminalLocation = v29;

    v31 = [(CLPlacemark *)v19 copy];
    v32 = v20->_arrivalBoatTerminalLocation;
    v20->_arrivalBoatTerminalLocation = v31;
  }

  return v20;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"provider"];
    v10 = [fromCopy objectForKeyedSubscript:@"boatName"];
    v11 = [fromCopy objectForKeyedSubscript:@"boatNumber"];
    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"tripDuration"];
    v14 = [decoderCopy decodeObjectOfClass:v12 from:v13];

    v15 = objc_opt_class();
    v16 = [fromCopy objectForKeyedSubscript:@"departureBoatTerminalLocation"];
    v17 = [decoderCopy decodeObjectOfClass:v15 from:v16];

    v18 = objc_opt_class();
    v19 = [fromCopy objectForKeyedSubscript:@"arrivalBoatTerminalLocation"];
    v20 = [decoderCopy decodeObjectOfClass:v18 from:v19];

    v21 = [[self alloc] initWithProvider:v9 boatName:v10 boatNumber:v11 tripDuration:v14 departureBoatTerminalLocation:v17 arrivalBoatTerminalLocation:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end