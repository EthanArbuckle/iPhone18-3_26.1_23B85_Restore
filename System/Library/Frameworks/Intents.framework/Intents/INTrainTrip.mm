@interface INTrainTrip
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INTrainTrip)initWithCoder:(id)a3;
- (INTrainTrip)initWithProvider:(NSString *)provider trainName:(NSString *)trainName trainNumber:(NSString *)trainNumber tripDuration:(INDateComponentsRange *)tripDuration departureStationLocation:(CLPlacemark *)departureStationLocation departurePlatform:(NSString *)departurePlatform arrivalStationLocation:(CLPlacemark *)arrivalStationLocation arrivalPlatform:(NSString *)arrivalPlatform;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INTrainTrip

- (id)_dictionaryRepresentation
{
  v28[8] = *MEMORY[0x1E69E9840];
  provider = self->_provider;
  v3 = provider;
  v27[0] = @"provider";
  if (!provider)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v28[0] = v3;
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
  v6 = trainNumber;
  if (!trainNumber)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v6;
  v28[2] = v6;
  v27[3] = @"tripDuration";
  tripDuration = self->_tripDuration;
  v8 = tripDuration;
  if (!tripDuration)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v3;
  v21 = v8;
  v28[3] = v8;
  v27[4] = @"departureStationLocation";
  departureStationLocation = self->_departureStationLocation;
  v10 = departureStationLocation;
  if (!departureStationLocation)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v10;
  v28[4] = v10;
  v27[5] = @"departurePlatform";
  departurePlatform = self->_departurePlatform;
  v12 = departurePlatform;
  if (!departurePlatform)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = v12;
  v27[6] = @"arrivalStationLocation";
  arrivalStationLocation = self->_arrivalStationLocation;
  v14 = arrivalStationLocation;
  if (!arrivalStationLocation)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = v14;
  v27[7] = @"arrivalPlatform";
  arrivalPlatform = self->_arrivalPlatform;
  v16 = arrivalPlatform;
  if (!arrivalPlatform)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v28[7] = v16;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INTrainTrip;
  v6 = [(INTrainTrip *)&v11 description];
  v7 = [(INTrainTrip *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_provider];
  [v7 if_setObjectIfNonNil:v8 forKey:@"provider"];

  v9 = [v6 encodeObject:self->_trainName];
  [v7 if_setObjectIfNonNil:v9 forKey:@"trainName"];

  v10 = [v6 encodeObject:self->_trainNumber];
  [v7 if_setObjectIfNonNil:v10 forKey:@"trainNumber"];

  v11 = [v6 encodeObject:self->_tripDuration];
  [v7 if_setObjectIfNonNil:v11 forKey:@"tripDuration"];

  v12 = [v6 encodeObject:self->_departureStationLocation];
  [v7 if_setObjectIfNonNil:v12 forKey:@"departureStationLocation"];

  v13 = [v6 encodeObject:self->_departurePlatform];
  [v7 if_setObjectIfNonNil:v13 forKey:@"departurePlatform"];

  v14 = [v6 encodeObject:self->_arrivalStationLocation];
  [v7 if_setObjectIfNonNil:v14 forKey:@"arrivalStationLocation"];

  v15 = [v6 encodeObject:self->_arrivalPlatform];

  [v7 if_setObjectIfNonNil:v15 forKey:@"arrivalPlatform"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  provider = self->_provider;
  v5 = a3;
  [v5 encodeObject:provider forKey:@"provider"];
  [v5 encodeObject:self->_trainName forKey:@"trainName"];
  [v5 encodeObject:self->_trainNumber forKey:@"trainNumber"];
  [v5 encodeObject:self->_tripDuration forKey:@"tripDuration"];
  [v5 encodeObject:self->_departureStationLocation forKey:@"departureStationLocation"];
  [v5 encodeObject:self->_departurePlatform forKey:@"departurePlatform"];
  [v5 encodeObject:self->_arrivalStationLocation forKey:@"arrivalStationLocation"];
  [v5 encodeObject:self->_arrivalPlatform forKey:@"arrivalPlatform"];
}

- (INTrainTrip)initWithCoder:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v28 = [v4 decodeObjectOfClasses:v6 forKey:@"provider"];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v27 = [v4 decodeObjectOfClasses:v9 forKey:@"trainName"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"trainNumber"];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tripDuration"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"departureStationLocation"];
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [v4 decodeObjectOfClasses:v18 forKey:@"departurePlatform"];

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"arrivalStationLocation"];
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [v4 decodeObjectOfClasses:v23 forKey:@"arrivalPlatform"];

  v25 = [(INTrainTrip *)self initWithProvider:v28 trainName:v27 trainNumber:v13 tripDuration:v14 departureStationLocation:v15 departurePlatform:v19 arrivalStationLocation:v20 arrivalPlatform:v24];
  return v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v8 objectForKeyedSubscript:@"provider"];
    v9 = [v8 objectForKeyedSubscript:@"trainName"];
    v25 = [v8 objectForKeyedSubscript:@"trainNumber"];
    v10 = objc_opt_class();
    v11 = [v8 objectForKeyedSubscript:@"tripDuration"];
    v12 = [v7 decodeObjectOfClass:v10 from:v11];

    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"departureStationLocation"];
    v15 = [v7 decodeObjectOfClass:v13 from:v14];

    v16 = [v8 objectForKeyedSubscript:@"departurePlatform"];
    v17 = objc_opt_class();
    v18 = [v8 objectForKeyedSubscript:@"arrivalStationLocation"];
    v19 = [v7 decodeObjectOfClass:v17 from:v18];

    v20 = [v8 objectForKeyedSubscript:@"arrivalPlatform"];
    v24 = v7;
    v21 = v15;
    v22 = [[a1 alloc] initWithProvider:v26 trainName:v9 trainNumber:v25 tripDuration:v12 departureStationLocation:v15 departurePlatform:v16 arrivalStationLocation:v19 arrivalPlatform:v20];

    v7 = v24;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end