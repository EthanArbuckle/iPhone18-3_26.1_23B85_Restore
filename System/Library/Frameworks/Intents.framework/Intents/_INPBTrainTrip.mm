@interface _INPBTrainTrip
- (BOOL)isEqual:(id)equal;
- (_INPBTrainTrip)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setArrivalPlatform:(id)platform;
- (void)setDeparturePlatform:(id)platform;
- (void)setProvider:(id)provider;
- (void)setTrainName:(id)name;
- (void)setTrainNumber:(id)number;
- (void)writeTo:(id)to;
@end

@implementation _INPBTrainTrip

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_arrivalPlatform)
  {
    arrivalPlatform = [(_INPBTrainTrip *)self arrivalPlatform];
    v5 = [arrivalPlatform copy];
    [dictionary setObject:v5 forKeyedSubscript:@"arrivalPlatform"];
  }

  arrivalStationLocation = [(_INPBTrainTrip *)self arrivalStationLocation];
  dictionaryRepresentation = [arrivalStationLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"arrivalStationLocation"];

  if (self->_departurePlatform)
  {
    departurePlatform = [(_INPBTrainTrip *)self departurePlatform];
    v9 = [departurePlatform copy];
    [dictionary setObject:v9 forKeyedSubscript:@"departurePlatform"];
  }

  departureStationLocation = [(_INPBTrainTrip *)self departureStationLocation];
  dictionaryRepresentation2 = [departureStationLocation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"departureStationLocation"];

  onlineCheckInTime = [(_INPBTrainTrip *)self onlineCheckInTime];
  dictionaryRepresentation3 = [onlineCheckInTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"onlineCheckInTime"];

  if (self->_provider)
  {
    provider = [(_INPBTrainTrip *)self provider];
    v15 = [provider copy];
    [dictionary setObject:v15 forKeyedSubscript:@"provider"];
  }

  if (self->_trainName)
  {
    trainName = [(_INPBTrainTrip *)self trainName];
    v17 = [trainName copy];
    [dictionary setObject:v17 forKeyedSubscript:@"trainName"];
  }

  if (self->_trainNumber)
  {
    trainNumber = [(_INPBTrainTrip *)self trainNumber];
    v19 = [trainNumber copy];
    [dictionary setObject:v19 forKeyedSubscript:@"trainNumber"];
  }

  tripDuration = [(_INPBTrainTrip *)self tripDuration];
  dictionaryRepresentation4 = [tripDuration dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"tripDuration"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_arrivalPlatform hash];
  v4 = [(_INPBLocationValue *)self->_arrivalStationLocation hash]^ v3;
  v5 = [(NSString *)self->_departurePlatform hash];
  v6 = v4 ^ v5 ^ [(_INPBLocationValue *)self->_departureStationLocation hash];
  v7 = [(_INPBDateTime *)self->_onlineCheckInTime hash];
  v8 = v7 ^ [(NSString *)self->_provider hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_trainName hash];
  v10 = [(NSString *)self->_trainNumber hash];
  return v9 ^ v10 ^ [(_INPBDateTimeRange *)self->_tripDuration hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  arrivalPlatform = [(_INPBTrainTrip *)self arrivalPlatform];
  arrivalPlatform2 = [equalCopy arrivalPlatform];
  if ((arrivalPlatform != 0) == (arrivalPlatform2 == 0))
  {
    goto LABEL_46;
  }

  arrivalPlatform3 = [(_INPBTrainTrip *)self arrivalPlatform];
  if (arrivalPlatform3)
  {
    v8 = arrivalPlatform3;
    arrivalPlatform4 = [(_INPBTrainTrip *)self arrivalPlatform];
    arrivalPlatform5 = [equalCopy arrivalPlatform];
    v11 = [arrivalPlatform4 isEqual:arrivalPlatform5];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  arrivalPlatform = [(_INPBTrainTrip *)self arrivalStationLocation];
  arrivalPlatform2 = [equalCopy arrivalStationLocation];
  if ((arrivalPlatform != 0) == (arrivalPlatform2 == 0))
  {
    goto LABEL_46;
  }

  arrivalStationLocation = [(_INPBTrainTrip *)self arrivalStationLocation];
  if (arrivalStationLocation)
  {
    v13 = arrivalStationLocation;
    arrivalStationLocation2 = [(_INPBTrainTrip *)self arrivalStationLocation];
    arrivalStationLocation3 = [equalCopy arrivalStationLocation];
    v16 = [arrivalStationLocation2 isEqual:arrivalStationLocation3];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  arrivalPlatform = [(_INPBTrainTrip *)self departurePlatform];
  arrivalPlatform2 = [equalCopy departurePlatform];
  if ((arrivalPlatform != 0) == (arrivalPlatform2 == 0))
  {
    goto LABEL_46;
  }

  departurePlatform = [(_INPBTrainTrip *)self departurePlatform];
  if (departurePlatform)
  {
    v18 = departurePlatform;
    departurePlatform2 = [(_INPBTrainTrip *)self departurePlatform];
    departurePlatform3 = [equalCopy departurePlatform];
    v21 = [departurePlatform2 isEqual:departurePlatform3];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  arrivalPlatform = [(_INPBTrainTrip *)self departureStationLocation];
  arrivalPlatform2 = [equalCopy departureStationLocation];
  if ((arrivalPlatform != 0) == (arrivalPlatform2 == 0))
  {
    goto LABEL_46;
  }

  departureStationLocation = [(_INPBTrainTrip *)self departureStationLocation];
  if (departureStationLocation)
  {
    v23 = departureStationLocation;
    departureStationLocation2 = [(_INPBTrainTrip *)self departureStationLocation];
    departureStationLocation3 = [equalCopy departureStationLocation];
    v26 = [departureStationLocation2 isEqual:departureStationLocation3];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  arrivalPlatform = [(_INPBTrainTrip *)self onlineCheckInTime];
  arrivalPlatform2 = [equalCopy onlineCheckInTime];
  if ((arrivalPlatform != 0) == (arrivalPlatform2 == 0))
  {
    goto LABEL_46;
  }

  onlineCheckInTime = [(_INPBTrainTrip *)self onlineCheckInTime];
  if (onlineCheckInTime)
  {
    v28 = onlineCheckInTime;
    onlineCheckInTime2 = [(_INPBTrainTrip *)self onlineCheckInTime];
    onlineCheckInTime3 = [equalCopy onlineCheckInTime];
    v31 = [onlineCheckInTime2 isEqual:onlineCheckInTime3];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  arrivalPlatform = [(_INPBTrainTrip *)self provider];
  arrivalPlatform2 = [equalCopy provider];
  if ((arrivalPlatform != 0) == (arrivalPlatform2 == 0))
  {
    goto LABEL_46;
  }

  provider = [(_INPBTrainTrip *)self provider];
  if (provider)
  {
    v33 = provider;
    provider2 = [(_INPBTrainTrip *)self provider];
    provider3 = [equalCopy provider];
    v36 = [provider2 isEqual:provider3];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  arrivalPlatform = [(_INPBTrainTrip *)self trainName];
  arrivalPlatform2 = [equalCopy trainName];
  if ((arrivalPlatform != 0) == (arrivalPlatform2 == 0))
  {
    goto LABEL_46;
  }

  trainName = [(_INPBTrainTrip *)self trainName];
  if (trainName)
  {
    v38 = trainName;
    trainName2 = [(_INPBTrainTrip *)self trainName];
    trainName3 = [equalCopy trainName];
    v41 = [trainName2 isEqual:trainName3];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  arrivalPlatform = [(_INPBTrainTrip *)self trainNumber];
  arrivalPlatform2 = [equalCopy trainNumber];
  if ((arrivalPlatform != 0) == (arrivalPlatform2 == 0))
  {
    goto LABEL_46;
  }

  trainNumber = [(_INPBTrainTrip *)self trainNumber];
  if (trainNumber)
  {
    v43 = trainNumber;
    trainNumber2 = [(_INPBTrainTrip *)self trainNumber];
    trainNumber3 = [equalCopy trainNumber];
    v46 = [trainNumber2 isEqual:trainNumber3];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  arrivalPlatform = [(_INPBTrainTrip *)self tripDuration];
  arrivalPlatform2 = [equalCopy tripDuration];
  if ((arrivalPlatform != 0) != (arrivalPlatform2 == 0))
  {
    tripDuration = [(_INPBTrainTrip *)self tripDuration];
    if (!tripDuration)
    {

LABEL_50:
      v52 = 1;
      goto LABEL_48;
    }

    v48 = tripDuration;
    tripDuration2 = [(_INPBTrainTrip *)self tripDuration];
    tripDuration3 = [equalCopy tripDuration];
    v51 = [tripDuration2 isEqual:tripDuration3];

    if (v51)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_46:
  }

LABEL_47:
  v52 = 0;
LABEL_48:

  return v52;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBTrainTrip allocWithZone:](_INPBTrainTrip init];
  v6 = [(NSString *)self->_arrivalPlatform copyWithZone:zone];
  [(_INPBTrainTrip *)v5 setArrivalPlatform:v6];

  v7 = [(_INPBLocationValue *)self->_arrivalStationLocation copyWithZone:zone];
  [(_INPBTrainTrip *)v5 setArrivalStationLocation:v7];

  v8 = [(NSString *)self->_departurePlatform copyWithZone:zone];
  [(_INPBTrainTrip *)v5 setDeparturePlatform:v8];

  v9 = [(_INPBLocationValue *)self->_departureStationLocation copyWithZone:zone];
  [(_INPBTrainTrip *)v5 setDepartureStationLocation:v9];

  v10 = [(_INPBDateTime *)self->_onlineCheckInTime copyWithZone:zone];
  [(_INPBTrainTrip *)v5 setOnlineCheckInTime:v10];

  v11 = [(NSString *)self->_provider copyWithZone:zone];
  [(_INPBTrainTrip *)v5 setProvider:v11];

  v12 = [(NSString *)self->_trainName copyWithZone:zone];
  [(_INPBTrainTrip *)v5 setTrainName:v12];

  v13 = [(NSString *)self->_trainNumber copyWithZone:zone];
  [(_INPBTrainTrip *)v5 setTrainNumber:v13];

  v14 = [(_INPBDateTimeRange *)self->_tripDuration copyWithZone:zone];
  [(_INPBTrainTrip *)v5 setTripDuration:v14];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBTrainTrip *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBTrainTrip)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBTrainTrip *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  arrivalPlatform = [(_INPBTrainTrip *)self arrivalPlatform];

  if (arrivalPlatform)
  {
    arrivalPlatform = self->_arrivalPlatform;
    PBDataWriterWriteStringField();
  }

  arrivalStationLocation = [(_INPBTrainTrip *)self arrivalStationLocation];

  if (arrivalStationLocation)
  {
    arrivalStationLocation2 = [(_INPBTrainTrip *)self arrivalStationLocation];
    PBDataWriterWriteSubmessage();
  }

  departurePlatform = [(_INPBTrainTrip *)self departurePlatform];

  if (departurePlatform)
  {
    departurePlatform = self->_departurePlatform;
    PBDataWriterWriteStringField();
  }

  departureStationLocation = [(_INPBTrainTrip *)self departureStationLocation];

  if (departureStationLocation)
  {
    departureStationLocation2 = [(_INPBTrainTrip *)self departureStationLocation];
    PBDataWriterWriteSubmessage();
  }

  onlineCheckInTime = [(_INPBTrainTrip *)self onlineCheckInTime];

  if (onlineCheckInTime)
  {
    onlineCheckInTime2 = [(_INPBTrainTrip *)self onlineCheckInTime];
    PBDataWriterWriteSubmessage();
  }

  provider = [(_INPBTrainTrip *)self provider];

  if (provider)
  {
    provider = self->_provider;
    PBDataWriterWriteStringField();
  }

  trainName = [(_INPBTrainTrip *)self trainName];

  if (trainName)
  {
    trainName = self->_trainName;
    PBDataWriterWriteStringField();
  }

  trainNumber = [(_INPBTrainTrip *)self trainNumber];

  if (trainNumber)
  {
    trainNumber = self->_trainNumber;
    PBDataWriterWriteStringField();
  }

  tripDuration = [(_INPBTrainTrip *)self tripDuration];

  v21 = toCopy;
  if (tripDuration)
  {
    tripDuration2 = [(_INPBTrainTrip *)self tripDuration];
    PBDataWriterWriteSubmessage();

    v21 = toCopy;
  }
}

- (void)setTrainNumber:(id)number
{
  v4 = [number copy];
  trainNumber = self->_trainNumber;
  self->_trainNumber = v4;

  MEMORY[0x1EEE66BB8](v4, trainNumber);
}

- (void)setTrainName:(id)name
{
  v4 = [name copy];
  trainName = self->_trainName;
  self->_trainName = v4;

  MEMORY[0x1EEE66BB8](v4, trainName);
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

- (void)setArrivalPlatform:(id)platform
{
  v4 = [platform copy];
  arrivalPlatform = self->_arrivalPlatform;
  self->_arrivalPlatform = v4;

  MEMORY[0x1EEE66BB8](v4, arrivalPlatform);
}

@end