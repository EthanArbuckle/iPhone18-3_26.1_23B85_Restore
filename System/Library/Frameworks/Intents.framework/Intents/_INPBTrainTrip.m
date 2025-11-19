@interface _INPBTrainTrip
- (BOOL)isEqual:(id)a3;
- (_INPBTrainTrip)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setArrivalPlatform:(id)a3;
- (void)setDeparturePlatform:(id)a3;
- (void)setProvider:(id)a3;
- (void)setTrainName:(id)a3;
- (void)setTrainNumber:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBTrainTrip

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_arrivalPlatform)
  {
    v4 = [(_INPBTrainTrip *)self arrivalPlatform];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"arrivalPlatform"];
  }

  v6 = [(_INPBTrainTrip *)self arrivalStationLocation];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"arrivalStationLocation"];

  if (self->_departurePlatform)
  {
    v8 = [(_INPBTrainTrip *)self departurePlatform];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"departurePlatform"];
  }

  v10 = [(_INPBTrainTrip *)self departureStationLocation];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"departureStationLocation"];

  v12 = [(_INPBTrainTrip *)self onlineCheckInTime];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"onlineCheckInTime"];

  if (self->_provider)
  {
    v14 = [(_INPBTrainTrip *)self provider];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"provider"];
  }

  if (self->_trainName)
  {
    v16 = [(_INPBTrainTrip *)self trainName];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"trainName"];
  }

  if (self->_trainNumber)
  {
    v18 = [(_INPBTrainTrip *)self trainNumber];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"trainNumber"];
  }

  v20 = [(_INPBTrainTrip *)self tripDuration];
  v21 = [v20 dictionaryRepresentation];
  [v3 setObject:v21 forKeyedSubscript:@"tripDuration"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  v5 = [(_INPBTrainTrip *)self arrivalPlatform];
  v6 = [v4 arrivalPlatform];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v7 = [(_INPBTrainTrip *)self arrivalPlatform];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBTrainTrip *)self arrivalPlatform];
    v10 = [v4 arrivalPlatform];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBTrainTrip *)self arrivalStationLocation];
  v6 = [v4 arrivalStationLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v12 = [(_INPBTrainTrip *)self arrivalStationLocation];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBTrainTrip *)self arrivalStationLocation];
    v15 = [v4 arrivalStationLocation];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBTrainTrip *)self departurePlatform];
  v6 = [v4 departurePlatform];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v17 = [(_INPBTrainTrip *)self departurePlatform];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBTrainTrip *)self departurePlatform];
    v20 = [v4 departurePlatform];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBTrainTrip *)self departureStationLocation];
  v6 = [v4 departureStationLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v22 = [(_INPBTrainTrip *)self departureStationLocation];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBTrainTrip *)self departureStationLocation];
    v25 = [v4 departureStationLocation];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBTrainTrip *)self onlineCheckInTime];
  v6 = [v4 onlineCheckInTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v27 = [(_INPBTrainTrip *)self onlineCheckInTime];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBTrainTrip *)self onlineCheckInTime];
    v30 = [v4 onlineCheckInTime];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBTrainTrip *)self provider];
  v6 = [v4 provider];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v32 = [(_INPBTrainTrip *)self provider];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBTrainTrip *)self provider];
    v35 = [v4 provider];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBTrainTrip *)self trainName];
  v6 = [v4 trainName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v37 = [(_INPBTrainTrip *)self trainName];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBTrainTrip *)self trainName];
    v40 = [v4 trainName];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBTrainTrip *)self trainNumber];
  v6 = [v4 trainNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v42 = [(_INPBTrainTrip *)self trainNumber];
  if (v42)
  {
    v43 = v42;
    v44 = [(_INPBTrainTrip *)self trainNumber];
    v45 = [v4 trainNumber];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBTrainTrip *)self tripDuration];
  v6 = [v4 tripDuration];
  if ((v5 != 0) != (v6 == 0))
  {
    v47 = [(_INPBTrainTrip *)self tripDuration];
    if (!v47)
    {

LABEL_50:
      v52 = 1;
      goto LABEL_48;
    }

    v48 = v47;
    v49 = [(_INPBTrainTrip *)self tripDuration];
    v50 = [v4 tripDuration];
    v51 = [v49 isEqual:v50];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBTrainTrip allocWithZone:](_INPBTrainTrip init];
  v6 = [(NSString *)self->_arrivalPlatform copyWithZone:a3];
  [(_INPBTrainTrip *)v5 setArrivalPlatform:v6];

  v7 = [(_INPBLocationValue *)self->_arrivalStationLocation copyWithZone:a3];
  [(_INPBTrainTrip *)v5 setArrivalStationLocation:v7];

  v8 = [(NSString *)self->_departurePlatform copyWithZone:a3];
  [(_INPBTrainTrip *)v5 setDeparturePlatform:v8];

  v9 = [(_INPBLocationValue *)self->_departureStationLocation copyWithZone:a3];
  [(_INPBTrainTrip *)v5 setDepartureStationLocation:v9];

  v10 = [(_INPBDateTime *)self->_onlineCheckInTime copyWithZone:a3];
  [(_INPBTrainTrip *)v5 setOnlineCheckInTime:v10];

  v11 = [(NSString *)self->_provider copyWithZone:a3];
  [(_INPBTrainTrip *)v5 setProvider:v11];

  v12 = [(NSString *)self->_trainName copyWithZone:a3];
  [(_INPBTrainTrip *)v5 setTrainName:v12];

  v13 = [(NSString *)self->_trainNumber copyWithZone:a3];
  [(_INPBTrainTrip *)v5 setTrainNumber:v13];

  v14 = [(_INPBDateTimeRange *)self->_tripDuration copyWithZone:a3];
  [(_INPBTrainTrip *)v5 setTripDuration:v14];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBTrainTrip *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBTrainTrip)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBTrainTrip *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v23 = a3;
  v4 = [(_INPBTrainTrip *)self arrivalPlatform];

  if (v4)
  {
    arrivalPlatform = self->_arrivalPlatform;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBTrainTrip *)self arrivalStationLocation];

  if (v6)
  {
    v7 = [(_INPBTrainTrip *)self arrivalStationLocation];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBTrainTrip *)self departurePlatform];

  if (v8)
  {
    departurePlatform = self->_departurePlatform;
    PBDataWriterWriteStringField();
  }

  v10 = [(_INPBTrainTrip *)self departureStationLocation];

  if (v10)
  {
    v11 = [(_INPBTrainTrip *)self departureStationLocation];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBTrainTrip *)self onlineCheckInTime];

  if (v12)
  {
    v13 = [(_INPBTrainTrip *)self onlineCheckInTime];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBTrainTrip *)self provider];

  if (v14)
  {
    provider = self->_provider;
    PBDataWriterWriteStringField();
  }

  v16 = [(_INPBTrainTrip *)self trainName];

  if (v16)
  {
    trainName = self->_trainName;
    PBDataWriterWriteStringField();
  }

  v18 = [(_INPBTrainTrip *)self trainNumber];

  if (v18)
  {
    trainNumber = self->_trainNumber;
    PBDataWriterWriteStringField();
  }

  v20 = [(_INPBTrainTrip *)self tripDuration];

  v21 = v23;
  if (v20)
  {
    v22 = [(_INPBTrainTrip *)self tripDuration];
    PBDataWriterWriteSubmessage();

    v21 = v23;
  }
}

- (void)setTrainNumber:(id)a3
{
  v4 = [a3 copy];
  trainNumber = self->_trainNumber;
  self->_trainNumber = v4;

  MEMORY[0x1EEE66BB8](v4, trainNumber);
}

- (void)setTrainName:(id)a3
{
  v4 = [a3 copy];
  trainName = self->_trainName;
  self->_trainName = v4;

  MEMORY[0x1EEE66BB8](v4, trainName);
}

- (void)setProvider:(id)a3
{
  v4 = [a3 copy];
  provider = self->_provider;
  self->_provider = v4;

  MEMORY[0x1EEE66BB8](v4, provider);
}

- (void)setDeparturePlatform:(id)a3
{
  v4 = [a3 copy];
  departurePlatform = self->_departurePlatform;
  self->_departurePlatform = v4;

  MEMORY[0x1EEE66BB8](v4, departurePlatform);
}

- (void)setArrivalPlatform:(id)a3
{
  v4 = [a3 copy];
  arrivalPlatform = self->_arrivalPlatform;
  self->_arrivalPlatform = v4;

  MEMORY[0x1EEE66BB8](v4, arrivalPlatform);
}

@end