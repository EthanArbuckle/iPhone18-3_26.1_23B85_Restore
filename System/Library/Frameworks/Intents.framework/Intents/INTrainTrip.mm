@interface INTrainTrip
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INTrainTrip)initWithCoder:(id)coder;
- (INTrainTrip)initWithProvider:(NSString *)provider trainName:(NSString *)trainName trainNumber:(NSString *)trainNumber tripDuration:(INDateComponentsRange *)tripDuration departureStationLocation:(CLPlacemark *)departureStationLocation departurePlatform:(NSString *)departurePlatform arrivalStationLocation:(CLPlacemark *)arrivalStationLocation arrivalPlatform:(NSString *)arrivalPlatform;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INTrainTrip

- (id)_dictionaryRepresentation
{
  v28[8] = *MEMORY[0x1E69E9840];
  provider = self->_provider;
  null = provider;
  v27[0] = @"provider";
  if (!provider)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28[0] = null;
  v27[1] = @"trainName";
  trainName = self->_trainName;
  v24 = trainName;
  if (!trainName)
  {
    trainName = [MEMORY[0x1E695DFB0] null];
  }

  v23 = trainName;
  v28[1] = trainName;
  v27[2] = @"trainNumber";
  trainNumber = self->_trainNumber;
  null2 = trainNumber;
  if (!trainNumber)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null2;
  v28[2] = null2;
  v27[3] = @"tripDuration";
  tripDuration = self->_tripDuration;
  null3 = tripDuration;
  if (!tripDuration)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v21 = null3;
  v28[3] = null3;
  v27[4] = @"departureStationLocation";
  departureStationLocation = self->_departureStationLocation;
  null4 = departureStationLocation;
  if (!departureStationLocation)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null4;
  v28[4] = null4;
  v27[5] = @"departurePlatform";
  departurePlatform = self->_departurePlatform;
  null5 = departurePlatform;
  if (!departurePlatform)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null5;
  v27[6] = @"arrivalStationLocation";
  arrivalStationLocation = self->_arrivalStationLocation;
  null6 = arrivalStationLocation;
  if (!arrivalStationLocation)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = null6;
  v27[7] = @"arrivalPlatform";
  arrivalPlatform = self->_arrivalPlatform;
  null7 = arrivalPlatform;
  if (!arrivalPlatform)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v28[7] = null7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:8];
  if (arrivalPlatform)
  {
    if (arrivalStationLocation)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (arrivalStationLocation)
    {
LABEL_19:
      if (departurePlatform)
      {
        goto LABEL_20;
      }

LABEL_32:

      if (departureStationLocation)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }
  }

  if (!departurePlatform)
  {
    goto LABEL_32;
  }

LABEL_20:
  if (departureStationLocation)
  {
    goto LABEL_21;
  }

LABEL_33:

LABEL_21:
  if (tripDuration)
  {
    if (trainNumber)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (trainNumber)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  if (!v24)
  {
  }

  if (!provider)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INTrainTrip;
  v6 = [(INTrainTrip *)&v11 description];
  _dictionaryRepresentation = [(INTrainTrip *)self _dictionaryRepresentation];
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

  v9 = [encoderCopy encodeObject:self->_trainName];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"trainName"];

  v10 = [encoderCopy encodeObject:self->_trainNumber];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"trainNumber"];

  v11 = [encoderCopy encodeObject:self->_tripDuration];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"tripDuration"];

  v12 = [encoderCopy encodeObject:self->_departureStationLocation];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"departureStationLocation"];

  v13 = [encoderCopy encodeObject:self->_departurePlatform];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"departurePlatform"];

  v14 = [encoderCopy encodeObject:self->_arrivalStationLocation];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"arrivalStationLocation"];

  v15 = [encoderCopy encodeObject:self->_arrivalPlatform];

  [dictionary if_setObjectIfNonNil:v15 forKey:@"arrivalPlatform"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  provider = self->_provider;
  coderCopy = coder;
  [coderCopy encodeObject:provider forKey:@"provider"];
  [coderCopy encodeObject:self->_trainName forKey:@"trainName"];
  [coderCopy encodeObject:self->_trainNumber forKey:@"trainNumber"];
  [coderCopy encodeObject:self->_tripDuration forKey:@"tripDuration"];
  [coderCopy encodeObject:self->_departureStationLocation forKey:@"departureStationLocation"];
  [coderCopy encodeObject:self->_departurePlatform forKey:@"departurePlatform"];
  [coderCopy encodeObject:self->_arrivalStationLocation forKey:@"arrivalStationLocation"];
  [coderCopy encodeObject:self->_arrivalPlatform forKey:@"arrivalPlatform"];
}

- (INTrainTrip)initWithCoder:(id)coder
{
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v28 = [coderCopy decodeObjectOfClasses:v6 forKey:@"provider"];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v27 = [coderCopy decodeObjectOfClasses:v9 forKey:@"trainName"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"trainNumber"];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tripDuration"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"departureStationLocation"];
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"departurePlatform"];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"arrivalStationLocation"];
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"arrivalPlatform"];

  v25 = [(INTrainTrip *)self initWithProvider:v28 trainName:v27 trainNumber:v13 tripDuration:v14 departureStationLocation:v15 departurePlatform:v19 arrivalStationLocation:v20 arrivalPlatform:v24];
  return v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      provider = self->_provider;
      v14 = 0;
      if (provider == v5->_provider || [(NSString *)provider isEqual:?])
      {
        trainName = self->_trainName;
        if (trainName == v5->_trainName || [(NSString *)trainName isEqual:?])
        {
          trainNumber = self->_trainNumber;
          if (trainNumber == v5->_trainNumber || [(NSString *)trainNumber isEqual:?])
          {
            tripDuration = self->_tripDuration;
            if (tripDuration == v5->_tripDuration || [(INDateComponentsRange *)tripDuration isEqual:?])
            {
              departureStationLocation = self->_departureStationLocation;
              if (departureStationLocation == v5->_departureStationLocation || [(CLPlacemark *)departureStationLocation isEqual:?])
              {
                departurePlatform = self->_departurePlatform;
                if (departurePlatform == v5->_departurePlatform || [(NSString *)departurePlatform isEqual:?])
                {
                  arrivalStationLocation = self->_arrivalStationLocation;
                  if (arrivalStationLocation == v5->_arrivalStationLocation || [(CLPlacemark *)arrivalStationLocation isEqual:?])
                  {
                    arrivalPlatform = self->_arrivalPlatform;
                    if (arrivalPlatform == v5->_arrivalPlatform || [(NSString *)arrivalPlatform isEqual:?])
                    {
                      v14 = 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_provider hash];
  v4 = [(NSString *)self->_trainName hash]^ v3;
  v5 = [(NSString *)self->_trainNumber hash];
  v6 = v4 ^ v5 ^ [(INDateComponentsRange *)self->_tripDuration hash];
  v7 = [(CLPlacemark *)self->_departureStationLocation hash];
  v8 = v7 ^ [(NSString *)self->_departurePlatform hash];
  v9 = v6 ^ v8 ^ [(CLPlacemark *)self->_arrivalStationLocation hash];
  return v9 ^ [(NSString *)self->_arrivalPlatform hash];
}

- (INTrainTrip)initWithProvider:(NSString *)provider trainName:(NSString *)trainName trainNumber:(NSString *)trainNumber tripDuration:(INDateComponentsRange *)tripDuration departureStationLocation:(CLPlacemark *)departureStationLocation departurePlatform:(NSString *)departurePlatform arrivalStationLocation:(CLPlacemark *)arrivalStationLocation arrivalPlatform:(NSString *)arrivalPlatform
{
  v16 = provider;
  v17 = trainName;
  v18 = trainNumber;
  v19 = tripDuration;
  v20 = departureStationLocation;
  v21 = departurePlatform;
  v22 = arrivalStationLocation;
  v23 = arrivalPlatform;
  v42.receiver = self;
  v42.super_class = INTrainTrip;
  v24 = [(INTrainTrip *)&v42 init];
  if (v24)
  {
    v25 = [(NSString *)v16 copy];
    v26 = v24->_provider;
    v24->_provider = v25;

    v27 = [(NSString *)v17 copy];
    v28 = v24->_trainName;
    v24->_trainName = v27;

    v29 = [(NSString *)v18 copy];
    v30 = v24->_trainNumber;
    v24->_trainNumber = v29;

    v31 = [(INDateComponentsRange *)v19 copy];
    v32 = v24->_tripDuration;
    v24->_tripDuration = v31;

    v33 = [(CLPlacemark *)v20 copy];
    v34 = v24->_departureStationLocation;
    v24->_departureStationLocation = v33;

    v35 = [(NSString *)v21 copy];
    v36 = v24->_departurePlatform;
    v24->_departurePlatform = v35;

    v37 = [(CLPlacemark *)v22 copy];
    v38 = v24->_arrivalStationLocation;
    v24->_arrivalStationLocation = v37;

    v39 = [(NSString *)v23 copy];
    v40 = v24->_arrivalPlatform;
    v24->_arrivalPlatform = v39;
  }

  return v24;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [fromCopy objectForKeyedSubscript:@"provider"];
    v9 = [fromCopy objectForKeyedSubscript:@"trainName"];
    v25 = [fromCopy objectForKeyedSubscript:@"trainNumber"];
    v10 = objc_opt_class();
    v11 = [fromCopy objectForKeyedSubscript:@"tripDuration"];
    v12 = [decoderCopy decodeObjectOfClass:v10 from:v11];

    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"departureStationLocation"];
    v15 = [decoderCopy decodeObjectOfClass:v13 from:v14];

    v16 = [fromCopy objectForKeyedSubscript:@"departurePlatform"];
    v17 = objc_opt_class();
    v18 = [fromCopy objectForKeyedSubscript:@"arrivalStationLocation"];
    v19 = [decoderCopy decodeObjectOfClass:v17 from:v18];

    v20 = [fromCopy objectForKeyedSubscript:@"arrivalPlatform"];
    v24 = decoderCopy;
    v21 = v15;
    v22 = [[self alloc] initWithProvider:v26 trainName:v9 trainNumber:v25 tripDuration:v12 departureStationLocation:v15 departurePlatform:v16 arrivalStationLocation:v19 arrivalPlatform:v20];

    decoderCopy = v24;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end