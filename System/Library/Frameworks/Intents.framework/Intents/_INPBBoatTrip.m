@interface _INPBBoatTrip
- (BOOL)isEqual:(id)a3;
- (_INPBBoatTrip)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setBoatName:(id)a3;
- (void)setBoatNumber:(id)a3;
- (void)setProvider:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBBoatTrip

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBBoatTrip *)self arrivalBoatTerminalLocation];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"arrivalBoatTerminalLocation"];

  if (self->_boatName)
  {
    v6 = [(_INPBBoatTrip *)self boatName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"boatName"];
  }

  if (self->_boatNumber)
  {
    v8 = [(_INPBBoatTrip *)self boatNumber];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"boatNumber"];
  }

  v10 = [(_INPBBoatTrip *)self departureBoatTerminalLocation];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"departureBoatTerminalLocation"];

  if (self->_provider)
  {
    v12 = [(_INPBBoatTrip *)self provider];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"provider"];
  }

  v14 = [(_INPBBoatTrip *)self tripDuration];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"tripDuration"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_INPBBoatTrip *)self arrivalBoatTerminalLocation];
  v6 = [v4 arrivalBoatTerminalLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_INPBBoatTrip *)self arrivalBoatTerminalLocation];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBBoatTrip *)self arrivalBoatTerminalLocation];
    v10 = [v4 arrivalBoatTerminalLocation];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBBoatTrip *)self boatName];
  v6 = [v4 boatName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_INPBBoatTrip *)self boatName];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBBoatTrip *)self boatName];
    v15 = [v4 boatName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBBoatTrip *)self boatNumber];
  v6 = [v4 boatNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_INPBBoatTrip *)self boatNumber];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBBoatTrip *)self boatNumber];
    v20 = [v4 boatNumber];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBBoatTrip *)self departureBoatTerminalLocation];
  v6 = [v4 departureBoatTerminalLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_INPBBoatTrip *)self departureBoatTerminalLocation];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBBoatTrip *)self departureBoatTerminalLocation];
    v25 = [v4 departureBoatTerminalLocation];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBBoatTrip *)self provider];
  v6 = [v4 provider];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_INPBBoatTrip *)self provider];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBBoatTrip *)self provider];
    v30 = [v4 provider];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBBoatTrip *)self tripDuration];
  v6 = [v4 tripDuration];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(_INPBBoatTrip *)self tripDuration];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(_INPBBoatTrip *)self tripDuration];
    v35 = [v4 tripDuration];
    v36 = [v34 isEqual:v35];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBBoatTrip allocWithZone:](_INPBBoatTrip init];
  v6 = [(_INPBLocationValue *)self->_arrivalBoatTerminalLocation copyWithZone:a3];
  [(_INPBBoatTrip *)v5 setArrivalBoatTerminalLocation:v6];

  v7 = [(NSString *)self->_boatName copyWithZone:a3];
  [(_INPBBoatTrip *)v5 setBoatName:v7];

  v8 = [(NSString *)self->_boatNumber copyWithZone:a3];
  [(_INPBBoatTrip *)v5 setBoatNumber:v8];

  v9 = [(_INPBLocationValue *)self->_departureBoatTerminalLocation copyWithZone:a3];
  [(_INPBBoatTrip *)v5 setDepartureBoatTerminalLocation:v9];

  v10 = [(NSString *)self->_provider copyWithZone:a3];
  [(_INPBBoatTrip *)v5 setProvider:v10];

  v11 = [(_INPBDateTimeRange *)self->_tripDuration copyWithZone:a3];
  [(_INPBBoatTrip *)v5 setTripDuration:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBBoatTrip *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBBoatTrip)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBBoatTrip *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(_INPBBoatTrip *)self arrivalBoatTerminalLocation];

  if (v4)
  {
    v5 = [(_INPBBoatTrip *)self arrivalBoatTerminalLocation];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBBoatTrip *)self boatName];

  if (v6)
  {
    boatName = self->_boatName;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBBoatTrip *)self boatNumber];

  if (v8)
  {
    boatNumber = self->_boatNumber;
    PBDataWriterWriteStringField();
  }

  v10 = [(_INPBBoatTrip *)self departureBoatTerminalLocation];

  if (v10)
  {
    v11 = [(_INPBBoatTrip *)self departureBoatTerminalLocation];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBBoatTrip *)self provider];

  if (v12)
  {
    provider = self->_provider;
    PBDataWriterWriteStringField();
  }

  v14 = [(_INPBBoatTrip *)self tripDuration];

  v15 = v17;
  if (v14)
  {
    v16 = [(_INPBBoatTrip *)self tripDuration];
    PBDataWriterWriteSubmessage();

    v15 = v17;
  }
}

- (void)setProvider:(id)a3
{
  v4 = [a3 copy];
  provider = self->_provider;
  self->_provider = v4;

  MEMORY[0x1EEE66BB8](v4, provider);
}

- (void)setBoatNumber:(id)a3
{
  v4 = [a3 copy];
  boatNumber = self->_boatNumber;
  self->_boatNumber = v4;

  MEMORY[0x1EEE66BB8](v4, boatNumber);
}

- (void)setBoatName:(id)a3
{
  v4 = [a3 copy];
  boatName = self->_boatName;
  self->_boatName = v4;

  MEMORY[0x1EEE66BB8](v4, boatName);
}

@end