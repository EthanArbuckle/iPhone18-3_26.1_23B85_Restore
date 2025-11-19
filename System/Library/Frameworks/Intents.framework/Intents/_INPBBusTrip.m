@interface _INPBBusTrip
- (BOOL)isEqual:(id)a3;
- (_INPBBusTrip)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setArrivalPlatform:(id)a3;
- (void)setBusName:(id)a3;
- (void)setBusNumber:(id)a3;
- (void)setDeparturePlatform:(id)a3;
- (void)setProvider:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBBusTrip

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBBusTrip *)self arrivalBusStopLocation];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"arrivalBusStopLocation"];

  if (self->_arrivalPlatform)
  {
    v6 = [(_INPBBusTrip *)self arrivalPlatform];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"arrivalPlatform"];
  }

  if (self->_busName)
  {
    v8 = [(_INPBBusTrip *)self busName];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"busName"];
  }

  if (self->_busNumber)
  {
    v10 = [(_INPBBusTrip *)self busNumber];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"busNumber"];
  }

  v12 = [(_INPBBusTrip *)self departureBusStopLocation];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"departureBusStopLocation"];

  if (self->_departurePlatform)
  {
    v14 = [(_INPBBusTrip *)self departurePlatform];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"departurePlatform"];
  }

  if (self->_provider)
  {
    v16 = [(_INPBBusTrip *)self provider];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"provider"];
  }

  v18 = [(_INPBBusTrip *)self tripDuration];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"tripDuration"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  v5 = [(_INPBBusTrip *)self arrivalBusStopLocation];
  v6 = [v4 arrivalBusStopLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v7 = [(_INPBBusTrip *)self arrivalBusStopLocation];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBBusTrip *)self arrivalBusStopLocation];
    v10 = [v4 arrivalBusStopLocation];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBBusTrip *)self arrivalPlatform];
  v6 = [v4 arrivalPlatform];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v12 = [(_INPBBusTrip *)self arrivalPlatform];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBBusTrip *)self arrivalPlatform];
    v15 = [v4 arrivalPlatform];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBBusTrip *)self busName];
  v6 = [v4 busName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v17 = [(_INPBBusTrip *)self busName];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBBusTrip *)self busName];
    v20 = [v4 busName];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBBusTrip *)self busNumber];
  v6 = [v4 busNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v22 = [(_INPBBusTrip *)self busNumber];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBBusTrip *)self busNumber];
    v25 = [v4 busNumber];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBBusTrip *)self departureBusStopLocation];
  v6 = [v4 departureBusStopLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v27 = [(_INPBBusTrip *)self departureBusStopLocation];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBBusTrip *)self departureBusStopLocation];
    v30 = [v4 departureBusStopLocation];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBBusTrip *)self departurePlatform];
  v6 = [v4 departurePlatform];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v32 = [(_INPBBusTrip *)self departurePlatform];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBBusTrip *)self departurePlatform];
    v35 = [v4 departurePlatform];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBBusTrip *)self provider];
  v6 = [v4 provider];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v37 = [(_INPBBusTrip *)self provider];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBBusTrip *)self provider];
    v40 = [v4 provider];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_INPBBusTrip *)self tripDuration];
  v6 = [v4 tripDuration];
  if ((v5 != 0) != (v6 == 0))
  {
    v42 = [(_INPBBusTrip *)self tripDuration];
    if (!v42)
    {

LABEL_45:
      v47 = 1;
      goto LABEL_43;
    }

    v43 = v42;
    v44 = [(_INPBBusTrip *)self tripDuration];
    v45 = [v4 tripDuration];
    v46 = [v44 isEqual:v45];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBBusTrip allocWithZone:](_INPBBusTrip init];
  v6 = [(_INPBLocationValue *)self->_arrivalBusStopLocation copyWithZone:a3];
  [(_INPBBusTrip *)v5 setArrivalBusStopLocation:v6];

  v7 = [(NSString *)self->_arrivalPlatform copyWithZone:a3];
  [(_INPBBusTrip *)v5 setArrivalPlatform:v7];

  v8 = [(NSString *)self->_busName copyWithZone:a3];
  [(_INPBBusTrip *)v5 setBusName:v8];

  v9 = [(NSString *)self->_busNumber copyWithZone:a3];
  [(_INPBBusTrip *)v5 setBusNumber:v9];

  v10 = [(_INPBLocationValue *)self->_departureBusStopLocation copyWithZone:a3];
  [(_INPBBusTrip *)v5 setDepartureBusStopLocation:v10];

  v11 = [(NSString *)self->_departurePlatform copyWithZone:a3];
  [(_INPBBusTrip *)v5 setDeparturePlatform:v11];

  v12 = [(NSString *)self->_provider copyWithZone:a3];
  [(_INPBBusTrip *)v5 setProvider:v12];

  v13 = [(_INPBDateTimeRange *)self->_tripDuration copyWithZone:a3];
  [(_INPBBusTrip *)v5 setTripDuration:v13];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBBusTrip *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBBusTrip)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBBusTrip *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v21 = a3;
  v4 = [(_INPBBusTrip *)self arrivalBusStopLocation];

  if (v4)
  {
    v5 = [(_INPBBusTrip *)self arrivalBusStopLocation];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBBusTrip *)self arrivalPlatform];

  if (v6)
  {
    arrivalPlatform = self->_arrivalPlatform;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBBusTrip *)self busName];

  if (v8)
  {
    busName = self->_busName;
    PBDataWriterWriteStringField();
  }

  v10 = [(_INPBBusTrip *)self busNumber];

  if (v10)
  {
    busNumber = self->_busNumber;
    PBDataWriterWriteStringField();
  }

  v12 = [(_INPBBusTrip *)self departureBusStopLocation];

  if (v12)
  {
    v13 = [(_INPBBusTrip *)self departureBusStopLocation];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBBusTrip *)self departurePlatform];

  if (v14)
  {
    departurePlatform = self->_departurePlatform;
    PBDataWriterWriteStringField();
  }

  v16 = [(_INPBBusTrip *)self provider];

  if (v16)
  {
    provider = self->_provider;
    PBDataWriterWriteStringField();
  }

  v18 = [(_INPBBusTrip *)self tripDuration];

  v19 = v21;
  if (v18)
  {
    v20 = [(_INPBBusTrip *)self tripDuration];
    PBDataWriterWriteSubmessage();

    v19 = v21;
  }
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

- (void)setBusNumber:(id)a3
{
  v4 = [a3 copy];
  busNumber = self->_busNumber;
  self->_busNumber = v4;

  MEMORY[0x1EEE66BB8](v4, busNumber);
}

- (void)setBusName:(id)a3
{
  v4 = [a3 copy];
  busName = self->_busName;
  self->_busName = v4;

  MEMORY[0x1EEE66BB8](v4, busName);
}

- (void)setArrivalPlatform:(id)a3
{
  v4 = [a3 copy];
  arrivalPlatform = self->_arrivalPlatform;
  self->_arrivalPlatform = v4;

  MEMORY[0x1EEE66BB8](v4, arrivalPlatform);
}

@end