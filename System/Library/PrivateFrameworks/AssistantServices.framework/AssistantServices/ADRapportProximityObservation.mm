@interface ADRapportProximityObservation
+ (id)newWithBuilder:(id)a3;
- (ADRapportProximityObservation)initWithBuilder:(id)a3;
- (ADRapportProximityObservation)initWithCoder:(id)a3;
- (ADRapportProximityObservation)initWithDeviceIDPair:(id)a3 proximity:(int)a4 observationDate:(id)a5;
- (ADRapportProximityObservation)initWithDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADRapportProximityObservation

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if (self->_deviceIDPair)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSSet count](self->_deviceIDPair, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_deviceIDPair;
    v6 = [(NSSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addObject:{*(*(&v15 + 1) + 8 * i), v15}];
        }

        v7 = [(NSSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v10 = [v4 copy];
    [v3 setObject:v10 forKey:@"deviceIDPair"];
  }

  v11 = [NSNumber numberWithInt:self->_proximity, v15];
  [v3 setObject:v11 forKey:@"proximity"];

  observationDate = self->_observationDate;
  if (observationDate)
  {
    [v3 setObject:observationDate forKey:@"observationDate"];
  }

  v13 = [v3 copy];

  return v13;
}

- (ADRapportProximityObservation)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"deviceIDPair"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v24;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;

              if (v14)
              {
                [v7 addObject:{v14, v23}];
              }
            }

            else
            {

              v14 = 0;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v10);
      }

      v15 = [[NSSet alloc] initWithArray:v7];
    }

    else
    {
      v15 = 0;
    }

    v17 = [v5 objectForKey:@"proximity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [v18 intValue];
    v20 = [v5 objectForKey:@"observationDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    self = [(ADRapportProximityObservation *)self initWithDeviceIDPair:v15 proximity:v19 observationDate:v21];
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  deviceIDPair = self->_deviceIDPair;
  v6 = a3;
  [v6 encodeObject:deviceIDPair forKey:@"ADRapportProximityObservation::deviceIDPair"];
  v5 = [NSNumber numberWithInt:self->_proximity];
  [v6 encodeObject:v5 forKey:@"ADRapportProximityObservation::proximity"];

  [v6 encodeObject:self->_observationDate forKey:@"ADRapportProximityObservation::observationDate"];
}

- (ADRapportProximityObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"ADRapportProximityObservation::deviceIDPair"];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportProximityObservation::proximity"];
  v9 = [v8 intValue];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportProximityObservation::observationDate"];

  v11 = [(ADRapportProximityObservation *)self initWithDeviceIDPair:v7 proximity:v9 observationDate:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      proximity = self->_proximity;
      if (proximity == [(ADRapportProximityObservation *)v5 proximity])
      {
        v7 = [(ADRapportProximityObservation *)v5 deviceIDPair];
        deviceIDPair = self->_deviceIDPair;
        if (deviceIDPair == v7 || [(NSSet *)deviceIDPair isEqual:v7])
        {
          v9 = [(ADRapportProximityObservation *)v5 observationDate];
          observationDate = self->_observationDate;
          v11 = observationDate == v9 || [(NSDate *)observationDate isEqual:v9];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSSet *)self->_deviceIDPair hash];
  v4 = [NSNumber numberWithInt:self->_proximity];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSDate *)self->_observationDate hash];

  return v5 ^ v6;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADRapportProximityObservation;
  v5 = [(ADRapportProximityObservation *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {deviceIDPair = %@, proximity = %d, observationDate = %@}", v5, self->_deviceIDPair, self->_proximity, self->_observationDate];

  return v6;
}

- (ADRapportProximityObservation)initWithDeviceIDPair:(id)a3 proximity:(int)a4 observationDate:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100357DF0;
  v11[3] = &unk_10051D200;
  v14 = a4;
  v12 = a3;
  v13 = a5;
  v7 = v13;
  v8 = v12;
  v9 = [(ADRapportProximityObservation *)self initWithBuilder:v11];

  return v9;
}

- (ADRapportProximityObservation)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ADRapportProximityObservation;
  v5 = [(ADRapportProximityObservation *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADRapportProximityObservationMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADRapportProximityObservationMutation *)v7 isDirty])
    {
      v8 = [(_ADRapportProximityObservationMutation *)v7 getDeviceIDPair];
      v9 = [v8 copy];
      deviceIDPair = v6->_deviceIDPair;
      v6->_deviceIDPair = v9;

      v6->_proximity = [(_ADRapportProximityObservationMutation *)v7 getProximity];
      v11 = [(_ADRapportProximityObservationMutation *)v7 getObservationDate];
      v12 = [v11 copy];
      observationDate = v6->_observationDate;
      v6->_observationDate = v12;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_ADRapportProximityObservationMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADRapportProximityObservationMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADRapportProximityObservation);
      v7 = [(_ADRapportProximityObservationMutation *)v5 getDeviceIDPair];
      v8 = [v7 copy];
      deviceIDPair = v6->_deviceIDPair;
      v6->_deviceIDPair = v8;

      v6->_proximity = [(_ADRapportProximityObservationMutation *)v5 getProximity];
      v10 = [(_ADRapportProximityObservationMutation *)v5 getObservationDate];
      v11 = [v10 copy];
      observationDate = v6->_observationDate;
      v6->_observationDate = v11;
    }

    else
    {
      v6 = [(ADRapportProximityObservation *)self copy];
    }
  }

  else
  {
    v6 = [(ADRapportProximityObservation *)self copy];
  }

  return v6;
}

@end