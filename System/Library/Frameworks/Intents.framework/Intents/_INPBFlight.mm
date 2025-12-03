@interface _INPBFlight
- (BOOL)isEqual:(id)equal;
- (_INPBFlight)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setFlightNumber:(id)number;
- (void)writeTo:(id)to;
@end

@implementation _INPBFlight

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  airline = [(_INPBFlight *)self airline];
  dictionaryRepresentation = [airline dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"airline"];

  arrivalAirportGate = [(_INPBFlight *)self arrivalAirportGate];
  dictionaryRepresentation2 = [arrivalAirportGate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"arrivalAirportGate"];

  boardingTime = [(_INPBFlight *)self boardingTime];
  dictionaryRepresentation3 = [boardingTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"boardingTime"];

  departureAirportGate = [(_INPBFlight *)self departureAirportGate];
  dictionaryRepresentation4 = [departureAirportGate dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"departureAirportGate"];

  flightDuration = [(_INPBFlight *)self flightDuration];
  dictionaryRepresentation5 = [flightDuration dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"flightDuration"];

  if (self->_flightNumber)
  {
    flightNumber = [(_INPBFlight *)self flightNumber];
    v15 = [flightNumber copy];
    [dictionary setObject:v15 forKeyedSubscript:@"flightNumber"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBAirline *)self->_airline hash];
  v4 = [(_INPBAirportGate *)self->_arrivalAirportGate hash]^ v3;
  v5 = [(_INPBDateTimeRange *)self->_boardingTime hash];
  v6 = v4 ^ v5 ^ [(_INPBAirportGate *)self->_departureAirportGate hash];
  v7 = [(_INPBDateTimeRange *)self->_flightDuration hash];
  return v6 ^ v7 ^ [(NSString *)self->_flightNumber hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  airline = [(_INPBFlight *)self airline];
  airline2 = [equalCopy airline];
  if ((airline != 0) == (airline2 == 0))
  {
    goto LABEL_31;
  }

  airline3 = [(_INPBFlight *)self airline];
  if (airline3)
  {
    v8 = airline3;
    airline4 = [(_INPBFlight *)self airline];
    airline5 = [equalCopy airline];
    v11 = [airline4 isEqual:airline5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  airline = [(_INPBFlight *)self arrivalAirportGate];
  airline2 = [equalCopy arrivalAirportGate];
  if ((airline != 0) == (airline2 == 0))
  {
    goto LABEL_31;
  }

  arrivalAirportGate = [(_INPBFlight *)self arrivalAirportGate];
  if (arrivalAirportGate)
  {
    v13 = arrivalAirportGate;
    arrivalAirportGate2 = [(_INPBFlight *)self arrivalAirportGate];
    arrivalAirportGate3 = [equalCopy arrivalAirportGate];
    v16 = [arrivalAirportGate2 isEqual:arrivalAirportGate3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  airline = [(_INPBFlight *)self boardingTime];
  airline2 = [equalCopy boardingTime];
  if ((airline != 0) == (airline2 == 0))
  {
    goto LABEL_31;
  }

  boardingTime = [(_INPBFlight *)self boardingTime];
  if (boardingTime)
  {
    v18 = boardingTime;
    boardingTime2 = [(_INPBFlight *)self boardingTime];
    boardingTime3 = [equalCopy boardingTime];
    v21 = [boardingTime2 isEqual:boardingTime3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  airline = [(_INPBFlight *)self departureAirportGate];
  airline2 = [equalCopy departureAirportGate];
  if ((airline != 0) == (airline2 == 0))
  {
    goto LABEL_31;
  }

  departureAirportGate = [(_INPBFlight *)self departureAirportGate];
  if (departureAirportGate)
  {
    v23 = departureAirportGate;
    departureAirportGate2 = [(_INPBFlight *)self departureAirportGate];
    departureAirportGate3 = [equalCopy departureAirportGate];
    v26 = [departureAirportGate2 isEqual:departureAirportGate3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  airline = [(_INPBFlight *)self flightDuration];
  airline2 = [equalCopy flightDuration];
  if ((airline != 0) == (airline2 == 0))
  {
    goto LABEL_31;
  }

  flightDuration = [(_INPBFlight *)self flightDuration];
  if (flightDuration)
  {
    v28 = flightDuration;
    flightDuration2 = [(_INPBFlight *)self flightDuration];
    flightDuration3 = [equalCopy flightDuration];
    v31 = [flightDuration2 isEqual:flightDuration3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  airline = [(_INPBFlight *)self flightNumber];
  airline2 = [equalCopy flightNumber];
  if ((airline != 0) != (airline2 == 0))
  {
    flightNumber = [(_INPBFlight *)self flightNumber];
    if (!flightNumber)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = flightNumber;
    flightNumber2 = [(_INPBFlight *)self flightNumber];
    flightNumber3 = [equalCopy flightNumber];
    v36 = [flightNumber2 isEqual:flightNumber3];

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
  v5 = [+[_INPBFlight allocWithZone:](_INPBFlight init];
  v6 = [(_INPBAirline *)self->_airline copyWithZone:zone];
  [(_INPBFlight *)v5 setAirline:v6];

  v7 = [(_INPBAirportGate *)self->_arrivalAirportGate copyWithZone:zone];
  [(_INPBFlight *)v5 setArrivalAirportGate:v7];

  v8 = [(_INPBDateTimeRange *)self->_boardingTime copyWithZone:zone];
  [(_INPBFlight *)v5 setBoardingTime:v8];

  v9 = [(_INPBAirportGate *)self->_departureAirportGate copyWithZone:zone];
  [(_INPBFlight *)v5 setDepartureAirportGate:v9];

  v10 = [(_INPBDateTimeRange *)self->_flightDuration copyWithZone:zone];
  [(_INPBFlight *)v5 setFlightDuration:v10];

  v11 = [(NSString *)self->_flightNumber copyWithZone:zone];
  [(_INPBFlight *)v5 setFlightNumber:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBFlight *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBFlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBFlight *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  airline = [(_INPBFlight *)self airline];

  if (airline)
  {
    airline2 = [(_INPBFlight *)self airline];
    PBDataWriterWriteSubmessage();
  }

  arrivalAirportGate = [(_INPBFlight *)self arrivalAirportGate];

  if (arrivalAirportGate)
  {
    arrivalAirportGate2 = [(_INPBFlight *)self arrivalAirportGate];
    PBDataWriterWriteSubmessage();
  }

  boardingTime = [(_INPBFlight *)self boardingTime];

  if (boardingTime)
  {
    boardingTime2 = [(_INPBFlight *)self boardingTime];
    PBDataWriterWriteSubmessage();
  }

  departureAirportGate = [(_INPBFlight *)self departureAirportGate];

  if (departureAirportGate)
  {
    departureAirportGate2 = [(_INPBFlight *)self departureAirportGate];
    PBDataWriterWriteSubmessage();
  }

  flightDuration = [(_INPBFlight *)self flightDuration];

  if (flightDuration)
  {
    flightDuration2 = [(_INPBFlight *)self flightDuration];
    PBDataWriterWriteSubmessage();
  }

  flightNumber = [(_INPBFlight *)self flightNumber];

  v15 = toCopy;
  if (flightNumber)
  {
    flightNumber = self->_flightNumber;
    PBDataWriterWriteStringField();
    v15 = toCopy;
  }
}

- (void)setFlightNumber:(id)number
{
  v4 = [number copy];
  flightNumber = self->_flightNumber;
  self->_flightNumber = v4;

  MEMORY[0x1EEE66BB8](v4, flightNumber);
}

@end