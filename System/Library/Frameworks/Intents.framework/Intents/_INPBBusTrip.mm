@interface _INPBBusTrip
- (BOOL)isEqual:(id)equal;
- (_INPBBusTrip)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setArrivalPlatform:(id)platform;
- (void)setBusName:(id)name;
- (void)setBusNumber:(id)number;
- (void)setDeparturePlatform:(id)platform;
- (void)setProvider:(id)provider;
- (void)writeTo:(id)to;
@end

@implementation _INPBBusTrip

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  arrivalBusStopLocation = [(_INPBBusTrip *)self arrivalBusStopLocation];
  dictionaryRepresentation = [arrivalBusStopLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"arrivalBusStopLocation"];

  if (self->_arrivalPlatform)
  {
    arrivalPlatform = [(_INPBBusTrip *)self arrivalPlatform];
    v7 = [arrivalPlatform copy];
    [dictionary setObject:v7 forKeyedSubscript:@"arrivalPlatform"];
  }

  if (self->_busName)
  {
    busName = [(_INPBBusTrip *)self busName];
    v9 = [busName copy];
    [dictionary setObject:v9 forKeyedSubscript:@"busName"];
  }

  if (self->_busNumber)
  {
    busNumber = [(_INPBBusTrip *)self busNumber];
    v11 = [busNumber copy];
    [dictionary setObject:v11 forKeyedSubscript:@"busNumber"];
  }

  departureBusStopLocation = [(_INPBBusTrip *)self departureBusStopLocation];
  dictionaryRepresentation2 = [departureBusStopLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"departureBusStopLocation"];

  if (self->_departurePlatform)
  {
    departurePlatform = [(_INPBBusTrip *)self departurePlatform];
    v15 = [departurePlatform copy];
    [dictionary setObject:v15 forKeyedSubscript:@"departurePlatform"];
  }

  if (self->_provider)
  {
    provider = [(_INPBBusTrip *)self provider];
    v17 = [provider copy];
    [dictionary setObject:v17 forKeyedSubscript:@"provider"];
  }

  tripDuration = [(_INPBBusTrip *)self tripDuration];
  dictionaryRepresentation3 = [tripDuration dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"tripDuration"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBLocationValue *)self->_arrivalBusStopLocation hash];
  v4 = [(NSString *)self->_arrivalPlatform hash]^ v3;
  v5 = [(NSString *)self->_busName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_busNumber hash];
  v7 = [(_INPBLocationValue *)self->_departureBusStopLocation hash];
  v8 = v7 ^ [(NSString *)self->_departurePlatform hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_provider hash];
  return v9 ^ [(_INPBDateTimeRange *)self->_tripDuration hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  arrivalBusStopLocation = [(_INPBBusTrip *)self arrivalBusStopLocation];
  arrivalBusStopLocation2 = [equalCopy arrivalBusStopLocation];
  if ((arrivalBusStopLocation != 0) == (arrivalBusStopLocation2 == 0))
  {
    goto LABEL_41;
  }

  arrivalBusStopLocation3 = [(_INPBBusTrip *)self arrivalBusStopLocation];
  if (arrivalBusStopLocation3)
  {
    v8 = arrivalBusStopLocation3;
    arrivalBusStopLocation4 = [(_INPBBusTrip *)self arrivalBusStopLocation];
    arrivalBusStopLocation5 = [equalCopy arrivalBusStopLocation];
    v11 = [arrivalBusStopLocation4 isEqual:arrivalBusStopLocation5];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  arrivalBusStopLocation = [(_INPBBusTrip *)self arrivalPlatform];
  arrivalBusStopLocation2 = [equalCopy arrivalPlatform];
  if ((arrivalBusStopLocation != 0) == (arrivalBusStopLocation2 == 0))
  {
    goto LABEL_41;
  }

  arrivalPlatform = [(_INPBBusTrip *)self arrivalPlatform];
  if (arrivalPlatform)
  {
    v13 = arrivalPlatform;
    arrivalPlatform2 = [(_INPBBusTrip *)self arrivalPlatform];
    arrivalPlatform3 = [equalCopy arrivalPlatform];
    v16 = [arrivalPlatform2 isEqual:arrivalPlatform3];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  arrivalBusStopLocation = [(_INPBBusTrip *)self busName];
  arrivalBusStopLocation2 = [equalCopy busName];
  if ((arrivalBusStopLocation != 0) == (arrivalBusStopLocation2 == 0))
  {
    goto LABEL_41;
  }

  busName = [(_INPBBusTrip *)self busName];
  if (busName)
  {
    v18 = busName;
    busName2 = [(_INPBBusTrip *)self busName];
    busName3 = [equalCopy busName];
    v21 = [busName2 isEqual:busName3];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  arrivalBusStopLocation = [(_INPBBusTrip *)self busNumber];
  arrivalBusStopLocation2 = [equalCopy busNumber];
  if ((arrivalBusStopLocation != 0) == (arrivalBusStopLocation2 == 0))
  {
    goto LABEL_41;
  }

  busNumber = [(_INPBBusTrip *)self busNumber];
  if (busNumber)
  {
    v23 = busNumber;
    busNumber2 = [(_INPBBusTrip *)self busNumber];
    busNumber3 = [equalCopy busNumber];
    v26 = [busNumber2 isEqual:busNumber3];

    if (!v26)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  arrivalBusStopLocation = [(_INPBBusTrip *)self departureBusStopLocation];
  arrivalBusStopLocation2 = [equalCopy departureBusStopLocation];
  if ((arrivalBusStopLocation != 0) == (arrivalBusStopLocation2 == 0))
  {
    goto LABEL_41;
  }

  departureBusStopLocation = [(_INPBBusTrip *)self departureBusStopLocation];
  if (departureBusStopLocation)
  {
    v28 = departureBusStopLocation;
    departureBusStopLocation2 = [(_INPBBusTrip *)self departureBusStopLocation];
    departureBusStopLocation3 = [equalCopy departureBusStopLocation];
    v31 = [departureBusStopLocation2 isEqual:departureBusStopLocation3];

    if (!v31)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  arrivalBusStopLocation = [(_INPBBusTrip *)self departurePlatform];
  arrivalBusStopLocation2 = [equalCopy departurePlatform];
  if ((arrivalBusStopLocation != 0) == (arrivalBusStopLocation2 == 0))
  {
    goto LABEL_41;
  }

  departurePlatform = [(_INPBBusTrip *)self departurePlatform];
  if (departurePlatform)
  {
    v33 = departurePlatform;
    departurePlatform2 = [(_INPBBusTrip *)self departurePlatform];
    departurePlatform3 = [equalCopy departurePlatform];
    v36 = [departurePlatform2 isEqual:departurePlatform3];

    if (!v36)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  arrivalBusStopLocation = [(_INPBBusTrip *)self provider];
  arrivalBusStopLocation2 = [equalCopy provider];
  if ((arrivalBusStopLocation != 0) == (arrivalBusStopLocation2 == 0))
  {
    goto LABEL_41;
  }

  provider = [(_INPBBusTrip *)self provider];
  if (provider)
  {
    v38 = provider;
    provider2 = [(_INPBBusTrip *)self provider];
    provider3 = [equalCopy provider];
    v41 = [provider2 isEqual:provider3];

    if (!v41)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  arrivalBusStopLocation = [(_INPBBusTrip *)self tripDuration];
  arrivalBusStopLocation2 = [equalCopy tripDuration];
  if ((arrivalBusStopLocation != 0) != (arrivalBusStopLocation2 == 0))
  {
    tripDuration = [(_INPBBusTrip *)self tripDuration];
    if (!tripDuration)
    {

LABEL_45:
      v47 = 1;
      goto LABEL_43;
    }

    v43 = tripDuration;
    tripDuration2 = [(_INPBBusTrip *)self tripDuration];
    tripDuration3 = [equalCopy tripDuration];
    v46 = [tripDuration2 isEqual:tripDuration3];

    if (v46)
    {
      goto LABEL_45;
    }
  }

  else
  {
LABEL_41:
  }

LABEL_42:
  v47 = 0;
LABEL_43:

  return v47;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBBusTrip allocWithZone:](_INPBBusTrip init];
  v6 = [(_INPBLocationValue *)self->_arrivalBusStopLocation copyWithZone:zone];
  [(_INPBBusTrip *)v5 setArrivalBusStopLocation:v6];

  v7 = [(NSString *)self->_arrivalPlatform copyWithZone:zone];
  [(_INPBBusTrip *)v5 setArrivalPlatform:v7];

  v8 = [(NSString *)self->_busName copyWithZone:zone];
  [(_INPBBusTrip *)v5 setBusName:v8];

  v9 = [(NSString *)self->_busNumber copyWithZone:zone];
  [(_INPBBusTrip *)v5 setBusNumber:v9];

  v10 = [(_INPBLocationValue *)self->_departureBusStopLocation copyWithZone:zone];
  [(_INPBBusTrip *)v5 setDepartureBusStopLocation:v10];

  v11 = [(NSString *)self->_departurePlatform copyWithZone:zone];
  [(_INPBBusTrip *)v5 setDeparturePlatform:v11];

  v12 = [(NSString *)self->_provider copyWithZone:zone];
  [(_INPBBusTrip *)v5 setProvider:v12];

  v13 = [(_INPBDateTimeRange *)self->_tripDuration copyWithZone:zone];
  [(_INPBBusTrip *)v5 setTripDuration:v13];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBBusTrip *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBBusTrip)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBBusTrip *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  arrivalBusStopLocation = [(_INPBBusTrip *)self arrivalBusStopLocation];

  if (arrivalBusStopLocation)
  {
    arrivalBusStopLocation2 = [(_INPBBusTrip *)self arrivalBusStopLocation];
    PBDataWriterWriteSubmessage();
  }

  arrivalPlatform = [(_INPBBusTrip *)self arrivalPlatform];

  if (arrivalPlatform)
  {
    arrivalPlatform = self->_arrivalPlatform;
    PBDataWriterWriteStringField();
  }

  busName = [(_INPBBusTrip *)self busName];

  if (busName)
  {
    busName = self->_busName;
    PBDataWriterWriteStringField();
  }

  busNumber = [(_INPBBusTrip *)self busNumber];

  if (busNumber)
  {
    busNumber = self->_busNumber;
    PBDataWriterWriteStringField();
  }

  departureBusStopLocation = [(_INPBBusTrip *)self departureBusStopLocation];

  if (departureBusStopLocation)
  {
    departureBusStopLocation2 = [(_INPBBusTrip *)self departureBusStopLocation];
    PBDataWriterWriteSubmessage();
  }

  departurePlatform = [(_INPBBusTrip *)self departurePlatform];

  if (departurePlatform)
  {
    departurePlatform = self->_departurePlatform;
    PBDataWriterWriteStringField();
  }

  provider = [(_INPBBusTrip *)self provider];

  if (provider)
  {
    provider = self->_provider;
    PBDataWriterWriteStringField();
  }

  tripDuration = [(_INPBBusTrip *)self tripDuration];

  v19 = toCopy;
  if (tripDuration)
  {
    tripDuration2 = [(_INPBBusTrip *)self tripDuration];
    PBDataWriterWriteSubmessage();

    v19 = toCopy;
  }
}

- (void)setProvider:(id)provider
{
  v4 = [provider copy];
  provider = self->_provider;
  self->_provider = v4;

  MEMORY[0x1EEE66BB8](v4, provider);
}

- (void)setDeparturePlatform:(id)platform
{
  v4 = [platform copy];
  departurePlatform = self->_departurePlatform;
  self->_departurePlatform = v4;

  MEMORY[0x1EEE66BB8](v4, departurePlatform);
}

- (void)setBusNumber:(id)number
{
  v4 = [number copy];
  busNumber = self->_busNumber;
  self->_busNumber = v4;

  MEMORY[0x1EEE66BB8](v4, busNumber);
}

- (void)setBusName:(id)name
{
  v4 = [name copy];
  busName = self->_busName;
  self->_busName = v4;

  MEMORY[0x1EEE66BB8](v4, busName);
}

- (void)setArrivalPlatform:(id)platform
{
  v4 = [platform copy];
  arrivalPlatform = self->_arrivalPlatform;
  self->_arrivalPlatform = v4;

  MEMORY[0x1EEE66BB8](v4, arrivalPlatform);
}

@end