@interface INBoatTrip
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INBoatTrip)initWithCoder:(id)a3;
- (INBoatTrip)initWithProvider:(NSString *)provider boatName:(NSString *)boatName boatNumber:(NSString *)boatNumber tripDuration:(INDateComponentsRange *)tripDuration departureBoatTerminalLocation:(CLPlacemark *)departureBoatTerminalLocation arrivalBoatTerminalLocation:(CLPlacemark *)arrivalBoatTerminalLocation;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INBoatTrip

- (id)_dictionaryRepresentation
{
  v28[6] = *MEMORY[0x1E69E9840];
  v22 = @"provider";
  provider = self->_provider;
  v4 = provider;
  if (!provider)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v4;
  v28[0] = v4;
  v23 = @"boatName";
  boatName = self->_boatName;
  v6 = boatName;
  if (!boatName)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v6;
  v28[1] = v6;
  v24 = @"boatNumber";
  boatNumber = self->_boatNumber;
  v8 = boatNumber;
  if (!boatNumber)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v8;
  v28[2] = v8;
  v25 = @"tripDuration";
  tripDuration = self->_tripDuration;
  v10 = tripDuration;
  if (!tripDuration)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = v10;
  v26 = @"departureBoatTerminalLocation";
  departureBoatTerminalLocation = self->_departureBoatTerminalLocation;
  v12 = departureBoatTerminalLocation;
  if (!departureBoatTerminalLocation)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = v12;
  v27 = @"arrivalBoatTerminalLocation";
  arrivalBoatTerminalLocation = self->_arrivalBoatTerminalLocation;
  v14 = arrivalBoatTerminalLocation;
  if (!arrivalBoatTerminalLocation)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = v14;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INBoatTrip;
  v6 = [(INBoatTrip *)&v11 description];
  v7 = [(INBoatTrip *)self _dictionaryRepresentation];
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

  v9 = [v6 encodeObject:self->_boatName];
  [v7 if_setObjectIfNonNil:v9 forKey:@"boatName"];

  v10 = [v6 encodeObject:self->_boatNumber];
  [v7 if_setObjectIfNonNil:v10 forKey:@"boatNumber"];

  v11 = [v6 encodeObject:self->_tripDuration];
  [v7 if_setObjectIfNonNil:v11 forKey:@"tripDuration"];

  v12 = [v6 encodeObject:self->_departureBoatTerminalLocation];
  [v7 if_setObjectIfNonNil:v12 forKey:@"departureBoatTerminalLocation"];

  v13 = [v6 encodeObject:self->_arrivalBoatTerminalLocation];

  [v7 if_setObjectIfNonNil:v13 forKey:@"arrivalBoatTerminalLocation"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  provider = self->_provider;
  v5 = a3;
  [v5 encodeObject:provider forKey:@"provider"];
  [v5 encodeObject:self->_boatName forKey:@"boatName"];
  [v5 encodeObject:self->_boatNumber forKey:@"boatNumber"];
  [v5 encodeObject:self->_tripDuration forKey:@"tripDuration"];
  [v5 encodeObject:self->_departureBoatTerminalLocation forKey:@"departureBoatTerminalLocation"];
  [v5 encodeObject:self->_arrivalBoatTerminalLocation forKey:@"arrivalBoatTerminalLocation"];
}

- (INBoatTrip)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"provider"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"boatName"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v5 decodeObjectOfClasses:v15 forKey:@"boatNumber"];

  v17 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"tripDuration"];
  v18 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"departureBoatTerminalLocation"];
  v19 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"arrivalBoatTerminalLocation"];

  v20 = [(INBoatTrip *)self initWithProvider:v8 boatName:v12 boatNumber:v16 tripDuration:v17 departureBoatTerminalLocation:v18 arrivalBoatTerminalLocation:v19];
  return v20;
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

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"provider"];
    v10 = [v8 objectForKeyedSubscript:@"boatName"];
    v11 = [v8 objectForKeyedSubscript:@"boatNumber"];
    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"tripDuration"];
    v14 = [v7 decodeObjectOfClass:v12 from:v13];

    v15 = objc_opt_class();
    v16 = [v8 objectForKeyedSubscript:@"departureBoatTerminalLocation"];
    v17 = [v7 decodeObjectOfClass:v15 from:v16];

    v18 = objc_opt_class();
    v19 = [v8 objectForKeyedSubscript:@"arrivalBoatTerminalLocation"];
    v20 = [v7 decodeObjectOfClass:v18 from:v19];

    v21 = [[a1 alloc] initWithProvider:v9 boatName:v10 boatNumber:v11 tripDuration:v14 departureBoatTerminalLocation:v17 arrivalBoatTerminalLocation:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end