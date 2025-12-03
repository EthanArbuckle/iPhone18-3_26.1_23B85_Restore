@interface ADRapportProximityObservation
+ (id)newWithBuilder:(id)builder;
- (ADRapportProximityObservation)initWithBuilder:(id)builder;
- (ADRapportProximityObservation)initWithCoder:(id)coder;
- (ADRapportProximityObservation)initWithDeviceIDPair:(id)pair proximity:(int)proximity observationDate:(id)date;
- (ADRapportProximityObservation)initWithDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (ADRapportProximityObservation)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"deviceIDPair"];
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

    intValue = [v18 intValue];
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

    self = [(ADRapportProximityObservation *)self initWithDeviceIDPair:v15 proximity:intValue observationDate:v21];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  deviceIDPair = self->_deviceIDPair;
  coderCopy = coder;
  [coderCopy encodeObject:deviceIDPair forKey:@"ADRapportProximityObservation::deviceIDPair"];
  v5 = [NSNumber numberWithInt:self->_proximity];
  [coderCopy encodeObject:v5 forKey:@"ADRapportProximityObservation::proximity"];

  [coderCopy encodeObject:self->_observationDate forKey:@"ADRapportProximityObservation::observationDate"];
}

- (ADRapportProximityObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"ADRapportProximityObservation::deviceIDPair"];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportProximityObservation::proximity"];
  intValue = [v8 intValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADRapportProximityObservation::observationDate"];

  v11 = [(ADRapportProximityObservation *)self initWithDeviceIDPair:v7 proximity:intValue observationDate:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      proximity = self->_proximity;
      if (proximity == [(ADRapportProximityObservation *)v5 proximity])
      {
        deviceIDPair = [(ADRapportProximityObservation *)v5 deviceIDPair];
        deviceIDPair = self->_deviceIDPair;
        if (deviceIDPair == deviceIDPair || [(NSSet *)deviceIDPair isEqual:deviceIDPair])
        {
          observationDate = [(ADRapportProximityObservation *)v5 observationDate];
          observationDate = self->_observationDate;
          v11 = observationDate == observationDate || [(NSDate *)observationDate isEqual:observationDate];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADRapportProximityObservation;
  v5 = [(ADRapportProximityObservation *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {deviceIDPair = %@, proximity = %d, observationDate = %@}", v5, self->_deviceIDPair, self->_proximity, self->_observationDate];

  return v6;
}

- (ADRapportProximityObservation)initWithDeviceIDPair:(id)pair proximity:(int)proximity observationDate:(id)date
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100357DF0;
  v11[3] = &unk_10051D200;
  proximityCopy = proximity;
  pairCopy = pair;
  dateCopy = date;
  v7 = dateCopy;
  v8 = pairCopy;
  v9 = [(ADRapportProximityObservation *)self initWithBuilder:v11];

  return v9;
}

- (ADRapportProximityObservation)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = ADRapportProximityObservation;
  v5 = [(ADRapportProximityObservation *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADRapportProximityObservationMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADRapportProximityObservationMutation *)v7 isDirty])
    {
      getDeviceIDPair = [(_ADRapportProximityObservationMutation *)v7 getDeviceIDPair];
      v9 = [getDeviceIDPair copy];
      deviceIDPair = v6->_deviceIDPair;
      v6->_deviceIDPair = v9;

      v6->_proximity = [(_ADRapportProximityObservationMutation *)v7 getProximity];
      getObservationDate = [(_ADRapportProximityObservationMutation *)v7 getObservationDate];
      v12 = [getObservationDate copy];
      observationDate = v6->_observationDate;
      v6->_observationDate = v12;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_ADRapportProximityObservationMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADRapportProximityObservationMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADRapportProximityObservation);
      getDeviceIDPair = [(_ADRapportProximityObservationMutation *)v5 getDeviceIDPair];
      v8 = [getDeviceIDPair copy];
      deviceIDPair = v6->_deviceIDPair;
      v6->_deviceIDPair = v8;

      v6->_proximity = [(_ADRapportProximityObservationMutation *)v5 getProximity];
      getObservationDate = [(_ADRapportProximityObservationMutation *)v5 getObservationDate];
      v11 = [getObservationDate copy];
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