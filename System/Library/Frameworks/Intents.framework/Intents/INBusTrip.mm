@interface INBusTrip
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INBusTrip)initWithCoder:(id)coder;
- (INBusTrip)initWithProvider:(NSString *)provider busName:(NSString *)busName busNumber:(NSString *)busNumber tripDuration:(INDateComponentsRange *)tripDuration departureBusStopLocation:(CLPlacemark *)departureBusStopLocation departurePlatform:(NSString *)departurePlatform arrivalBusStopLocation:(CLPlacemark *)arrivalBusStopLocation arrivalPlatform:(NSString *)arrivalPlatform;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INBusTrip

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
  v27[1] = @"busName";
  busName = self->_busName;
  v24 = busName;
  if (!busName)
  {
    busName = [MEMORY[0x1E695DFB0] null];
  }

  v23 = busName;
  v28[1] = busName;
  v27[2] = @"busNumber";
  busNumber = self->_busNumber;
  null2 = busNumber;
  if (!busNumber)
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
  v27[4] = @"departureBusStopLocation";
  departureBusStopLocation = self->_departureBusStopLocation;
  null4 = departureBusStopLocation;
  if (!departureBusStopLocation)
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
  v27[6] = @"arrivalBusStopLocation";
  arrivalBusStopLocation = self->_arrivalBusStopLocation;
  null6 = arrivalBusStopLocation;
  if (!arrivalBusStopLocation)
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
    if (arrivalBusStopLocation)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (arrivalBusStopLocation)
    {
LABEL_19:
      if (departurePlatform)
      {
        goto LABEL_20;
      }

LABEL_32:

      if (departureBusStopLocation)
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
  if (departureBusStopLocation)
  {
    goto LABEL_21;
  }

LABEL_33:

LABEL_21:
  if (tripDuration)
  {
    if (busNumber)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (busNumber)
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
  v11.super_class = INBusTrip;
  v6 = [(INBusTrip *)&v11 description];
  _dictionaryRepresentation = [(INBusTrip *)self _dictionaryRepresentation];
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

  v9 = [encoderCopy encodeObject:self->_busName];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"busName"];

  v10 = [encoderCopy encodeObject:self->_busNumber];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"busNumber"];

  v11 = [encoderCopy encodeObject:self->_tripDuration];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"tripDuration"];

  v12 = [encoderCopy encodeObject:self->_departureBusStopLocation];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"departureBusStopLocation"];

  v13 = [encoderCopy encodeObject:self->_departurePlatform];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"departurePlatform"];

  v14 = [encoderCopy encodeObject:self->_arrivalBusStopLocation];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"arrivalBusStopLocation"];

  v15 = [encoderCopy encodeObject:self->_arrivalPlatform];

  [dictionary if_setObjectIfNonNil:v15 forKey:@"arrivalPlatform"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  provider = self->_provider;
  coderCopy = coder;
  [coderCopy encodeObject:provider forKey:@"provider"];
  [coderCopy encodeObject:self->_busName forKey:@"busName"];
  [coderCopy encodeObject:self->_busNumber forKey:@"busNumber"];
  [coderCopy encodeObject:self->_tripDuration forKey:@"tripDuration"];
  [coderCopy encodeObject:self->_departureBusStopLocation forKey:@"departureBusStopLocation"];
  [coderCopy encodeObject:self->_departurePlatform forKey:@"departurePlatform"];
  [coderCopy encodeObject:self->_arrivalBusStopLocation forKey:@"arrivalBusStopLocation"];
  [coderCopy encodeObject:self->_arrivalPlatform forKey:@"arrivalPlatform"];
}

- (INBusTrip)initWithCoder:(id)coder
{
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v28 = [coderCopy decodeObjectOfClasses:v6 forKey:@"provider"];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v27 = [coderCopy decodeObjectOfClasses:v9 forKey:@"busName"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"busNumber"];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tripDuration"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"departureBusStopLocation"];
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"departurePlatform"];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"arrivalBusStopLocation"];
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"arrivalPlatform"];

  v25 = [(INBusTrip *)self initWithProvider:v28 busName:v27 busNumber:v13 tripDuration:v14 departureBusStopLocation:v15 departurePlatform:v19 arrivalBusStopLocation:v20 arrivalPlatform:v24];
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
        busName = self->_busName;
        if (busName == v5->_busName || [(NSString *)busName isEqual:?])
        {
          busNumber = self->_busNumber;
          if (busNumber == v5->_busNumber || [(NSString *)busNumber isEqual:?])
          {
            tripDuration = self->_tripDuration;
            if (tripDuration == v5->_tripDuration || [(INDateComponentsRange *)tripDuration isEqual:?])
            {
              departureBusStopLocation = self->_departureBusStopLocation;
              if (departureBusStopLocation == v5->_departureBusStopLocation || [(CLPlacemark *)departureBusStopLocation isEqual:?])
              {
                departurePlatform = self->_departurePlatform;
                if (departurePlatform == v5->_departurePlatform || [(NSString *)departurePlatform isEqual:?])
                {
                  arrivalBusStopLocation = self->_arrivalBusStopLocation;
                  if (arrivalBusStopLocation == v5->_arrivalBusStopLocation || [(CLPlacemark *)arrivalBusStopLocation isEqual:?])
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
  v4 = [(NSString *)self->_busName hash]^ v3;
  v5 = [(NSString *)self->_busNumber hash];
  v6 = v4 ^ v5 ^ [(INDateComponentsRange *)self->_tripDuration hash];
  v7 = [(CLPlacemark *)self->_departureBusStopLocation hash];
  v8 = v7 ^ [(NSString *)self->_departurePlatform hash];
  v9 = v6 ^ v8 ^ [(CLPlacemark *)self->_arrivalBusStopLocation hash];
  return v9 ^ [(NSString *)self->_arrivalPlatform hash];
}

- (INBusTrip)initWithProvider:(NSString *)provider busName:(NSString *)busName busNumber:(NSString *)busNumber tripDuration:(INDateComponentsRange *)tripDuration departureBusStopLocation:(CLPlacemark *)departureBusStopLocation departurePlatform:(NSString *)departurePlatform arrivalBusStopLocation:(CLPlacemark *)arrivalBusStopLocation arrivalPlatform:(NSString *)arrivalPlatform
{
  v16 = provider;
  v17 = busName;
  v18 = busNumber;
  v19 = tripDuration;
  v20 = departureBusStopLocation;
  v21 = departurePlatform;
  v22 = arrivalBusStopLocation;
  v23 = arrivalPlatform;
  v42.receiver = self;
  v42.super_class = INBusTrip;
  v24 = [(INBusTrip *)&v42 init];
  if (v24)
  {
    v25 = [(NSString *)v16 copy];
    v26 = v24->_provider;
    v24->_provider = v25;

    v27 = [(NSString *)v17 copy];
    v28 = v24->_busName;
    v24->_busName = v27;

    v29 = [(NSString *)v18 copy];
    v30 = v24->_busNumber;
    v24->_busNumber = v29;

    v31 = [(INDateComponentsRange *)v19 copy];
    v32 = v24->_tripDuration;
    v24->_tripDuration = v31;

    v33 = [(CLPlacemark *)v20 copy];
    v34 = v24->_departureBusStopLocation;
    v24->_departureBusStopLocation = v33;

    v35 = [(NSString *)v21 copy];
    v36 = v24->_departurePlatform;
    v24->_departurePlatform = v35;

    v37 = [(CLPlacemark *)v22 copy];
    v38 = v24->_arrivalBusStopLocation;
    v24->_arrivalBusStopLocation = v37;

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
    v9 = [fromCopy objectForKeyedSubscript:@"busName"];
    v25 = [fromCopy objectForKeyedSubscript:@"busNumber"];
    v10 = objc_opt_class();
    v11 = [fromCopy objectForKeyedSubscript:@"tripDuration"];
    v12 = [decoderCopy decodeObjectOfClass:v10 from:v11];

    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"departureBusStopLocation"];
    v15 = [decoderCopy decodeObjectOfClass:v13 from:v14];

    v16 = [fromCopy objectForKeyedSubscript:@"departurePlatform"];
    v17 = objc_opt_class();
    v18 = [fromCopy objectForKeyedSubscript:@"arrivalBusStopLocation"];
    v19 = [decoderCopy decodeObjectOfClass:v17 from:v18];

    v20 = [fromCopy objectForKeyedSubscript:@"arrivalPlatform"];
    v24 = decoderCopy;
    v21 = v15;
    v22 = [[self alloc] initWithProvider:v26 busName:v9 busNumber:v25 tripDuration:v12 departureBusStopLocation:v15 departurePlatform:v16 arrivalBusStopLocation:v19 arrivalPlatform:v20];

    decoderCopy = v24;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end