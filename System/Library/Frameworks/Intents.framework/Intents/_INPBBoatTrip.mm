@interface _INPBBoatTrip
- (BOOL)isEqual:(id)equal;
- (_INPBBoatTrip)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setBoatName:(id)name;
- (void)setBoatNumber:(id)number;
- (void)setProvider:(id)provider;
- (void)writeTo:(id)to;
@end

@implementation _INPBBoatTrip

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  arrivalBoatTerminalLocation = [(_INPBBoatTrip *)self arrivalBoatTerminalLocation];
  dictionaryRepresentation = [arrivalBoatTerminalLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"arrivalBoatTerminalLocation"];

  if (self->_boatName)
  {
    boatName = [(_INPBBoatTrip *)self boatName];
    v7 = [boatName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"boatName"];
  }

  if (self->_boatNumber)
  {
    boatNumber = [(_INPBBoatTrip *)self boatNumber];
    v9 = [boatNumber copy];
    [dictionary setObject:v9 forKeyedSubscript:@"boatNumber"];
  }

  departureBoatTerminalLocation = [(_INPBBoatTrip *)self departureBoatTerminalLocation];
  dictionaryRepresentation2 = [departureBoatTerminalLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"departureBoatTerminalLocation"];

  if (self->_provider)
  {
    provider = [(_INPBBoatTrip *)self provider];
    v13 = [provider copy];
    [dictionary setObject:v13 forKeyedSubscript:@"provider"];
  }

  tripDuration = [(_INPBBoatTrip *)self tripDuration];
  dictionaryRepresentation3 = [tripDuration dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"tripDuration"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBLocationValue *)self->_arrivalBoatTerminalLocation hash];
  v4 = [(NSString *)self->_boatName hash]^ v3;
  v5 = [(NSString *)self->_boatNumber hash];
  v6 = v4 ^ v5 ^ [(_INPBLocationValue *)self->_departureBoatTerminalLocation hash];
  v7 = [(NSString *)self->_provider hash];
  return v6 ^ v7 ^ [(_INPBDateTimeRange *)self->_tripDuration hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  arrivalBoatTerminalLocation = [(_INPBBoatTrip *)self arrivalBoatTerminalLocation];
  arrivalBoatTerminalLocation2 = [equalCopy arrivalBoatTerminalLocation];
  if ((arrivalBoatTerminalLocation != 0) == (arrivalBoatTerminalLocation2 == 0))
  {
    goto LABEL_31;
  }

  arrivalBoatTerminalLocation3 = [(_INPBBoatTrip *)self arrivalBoatTerminalLocation];
  if (arrivalBoatTerminalLocation3)
  {
    v8 = arrivalBoatTerminalLocation3;
    arrivalBoatTerminalLocation4 = [(_INPBBoatTrip *)self arrivalBoatTerminalLocation];
    arrivalBoatTerminalLocation5 = [equalCopy arrivalBoatTerminalLocation];
    v11 = [arrivalBoatTerminalLocation4 isEqual:arrivalBoatTerminalLocation5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  arrivalBoatTerminalLocation = [(_INPBBoatTrip *)self boatName];
  arrivalBoatTerminalLocation2 = [equalCopy boatName];
  if ((arrivalBoatTerminalLocation != 0) == (arrivalBoatTerminalLocation2 == 0))
  {
    goto LABEL_31;
  }

  boatName = [(_INPBBoatTrip *)self boatName];
  if (boatName)
  {
    v13 = boatName;
    boatName2 = [(_INPBBoatTrip *)self boatName];
    boatName3 = [equalCopy boatName];
    v16 = [boatName2 isEqual:boatName3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  arrivalBoatTerminalLocation = [(_INPBBoatTrip *)self boatNumber];
  arrivalBoatTerminalLocation2 = [equalCopy boatNumber];
  if ((arrivalBoatTerminalLocation != 0) == (arrivalBoatTerminalLocation2 == 0))
  {
    goto LABEL_31;
  }

  boatNumber = [(_INPBBoatTrip *)self boatNumber];
  if (boatNumber)
  {
    v18 = boatNumber;
    boatNumber2 = [(_INPBBoatTrip *)self boatNumber];
    boatNumber3 = [equalCopy boatNumber];
    v21 = [boatNumber2 isEqual:boatNumber3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  arrivalBoatTerminalLocation = [(_INPBBoatTrip *)self departureBoatTerminalLocation];
  arrivalBoatTerminalLocation2 = [equalCopy departureBoatTerminalLocation];
  if ((arrivalBoatTerminalLocation != 0) == (arrivalBoatTerminalLocation2 == 0))
  {
    goto LABEL_31;
  }

  departureBoatTerminalLocation = [(_INPBBoatTrip *)self departureBoatTerminalLocation];
  if (departureBoatTerminalLocation)
  {
    v23 = departureBoatTerminalLocation;
    departureBoatTerminalLocation2 = [(_INPBBoatTrip *)self departureBoatTerminalLocation];
    departureBoatTerminalLocation3 = [equalCopy departureBoatTerminalLocation];
    v26 = [departureBoatTerminalLocation2 isEqual:departureBoatTerminalLocation3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  arrivalBoatTerminalLocation = [(_INPBBoatTrip *)self provider];
  arrivalBoatTerminalLocation2 = [equalCopy provider];
  if ((arrivalBoatTerminalLocation != 0) == (arrivalBoatTerminalLocation2 == 0))
  {
    goto LABEL_31;
  }

  provider = [(_INPBBoatTrip *)self provider];
  if (provider)
  {
    v28 = provider;
    provider2 = [(_INPBBoatTrip *)self provider];
    provider3 = [equalCopy provider];
    v31 = [provider2 isEqual:provider3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  arrivalBoatTerminalLocation = [(_INPBBoatTrip *)self tripDuration];
  arrivalBoatTerminalLocation2 = [equalCopy tripDuration];
  if ((arrivalBoatTerminalLocation != 0) != (arrivalBoatTerminalLocation2 == 0))
  {
    tripDuration = [(_INPBBoatTrip *)self tripDuration];
    if (!tripDuration)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = tripDuration;
    tripDuration2 = [(_INPBBoatTrip *)self tripDuration];
    tripDuration3 = [equalCopy tripDuration];
    v36 = [tripDuration2 isEqual:tripDuration3];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBBoatTrip allocWithZone:](_INPBBoatTrip init];
  v6 = [(_INPBLocationValue *)self->_arrivalBoatTerminalLocation copyWithZone:zone];
  [(_INPBBoatTrip *)v5 setArrivalBoatTerminalLocation:v6];

  v7 = [(NSString *)self->_boatName copyWithZone:zone];
  [(_INPBBoatTrip *)v5 setBoatName:v7];

  v8 = [(NSString *)self->_boatNumber copyWithZone:zone];
  [(_INPBBoatTrip *)v5 setBoatNumber:v8];

  v9 = [(_INPBLocationValue *)self->_departureBoatTerminalLocation copyWithZone:zone];
  [(_INPBBoatTrip *)v5 setDepartureBoatTerminalLocation:v9];

  v10 = [(NSString *)self->_provider copyWithZone:zone];
  [(_INPBBoatTrip *)v5 setProvider:v10];

  v11 = [(_INPBDateTimeRange *)self->_tripDuration copyWithZone:zone];
  [(_INPBBoatTrip *)v5 setTripDuration:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBBoatTrip *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBBoatTrip)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBBoatTrip *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  arrivalBoatTerminalLocation = [(_INPBBoatTrip *)self arrivalBoatTerminalLocation];

  if (arrivalBoatTerminalLocation)
  {
    arrivalBoatTerminalLocation2 = [(_INPBBoatTrip *)self arrivalBoatTerminalLocation];
    PBDataWriterWriteSubmessage();
  }

  boatName = [(_INPBBoatTrip *)self boatName];

  if (boatName)
  {
    boatName = self->_boatName;
    PBDataWriterWriteStringField();
  }

  boatNumber = [(_INPBBoatTrip *)self boatNumber];

  if (boatNumber)
  {
    boatNumber = self->_boatNumber;
    PBDataWriterWriteStringField();
  }

  departureBoatTerminalLocation = [(_INPBBoatTrip *)self departureBoatTerminalLocation];

  if (departureBoatTerminalLocation)
  {
    departureBoatTerminalLocation2 = [(_INPBBoatTrip *)self departureBoatTerminalLocation];
    PBDataWriterWriteSubmessage();
  }

  provider = [(_INPBBoatTrip *)self provider];

  if (provider)
  {
    provider = self->_provider;
    PBDataWriterWriteStringField();
  }

  tripDuration = [(_INPBBoatTrip *)self tripDuration];

  v15 = toCopy;
  if (tripDuration)
  {
    tripDuration2 = [(_INPBBoatTrip *)self tripDuration];
    PBDataWriterWriteSubmessage();

    v15 = toCopy;
  }
}

- (void)setProvider:(id)provider
{
  v4 = [provider copy];
  provider = self->_provider;
  self->_provider = v4;

  MEMORY[0x1EEE66BB8](v4, provider);
}

- (void)setBoatNumber:(id)number
{
  v4 = [number copy];
  boatNumber = self->_boatNumber;
  self->_boatNumber = v4;

  MEMORY[0x1EEE66BB8](v4, boatNumber);
}

- (void)setBoatName:(id)name
{
  v4 = [name copy];
  boatName = self->_boatName;
  self->_boatName = v4;

  MEMORY[0x1EEE66BB8](v4, boatName);
}

@end