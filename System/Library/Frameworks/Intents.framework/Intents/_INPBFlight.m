@interface _INPBFlight
- (BOOL)isEqual:(id)a3;
- (_INPBFlight)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setFlightNumber:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBFlight

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBFlight *)self airline];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"airline"];

  v6 = [(_INPBFlight *)self arrivalAirportGate];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"arrivalAirportGate"];

  v8 = [(_INPBFlight *)self boardingTime];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"boardingTime"];

  v10 = [(_INPBFlight *)self departureAirportGate];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"departureAirportGate"];

  v12 = [(_INPBFlight *)self flightDuration];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"flightDuration"];

  if (self->_flightNumber)
  {
    v14 = [(_INPBFlight *)self flightNumber];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"flightNumber"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(_INPBFlight *)self airline];
  v6 = [v4 airline];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(_INPBFlight *)self airline];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBFlight *)self airline];
    v10 = [v4 airline];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBFlight *)self arrivalAirportGate];
  v6 = [v4 arrivalAirportGate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(_INPBFlight *)self arrivalAirportGate];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBFlight *)self arrivalAirportGate];
    v15 = [v4 arrivalAirportGate];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBFlight *)self boardingTime];
  v6 = [v4 boardingTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(_INPBFlight *)self boardingTime];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBFlight *)self boardingTime];
    v20 = [v4 boardingTime];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBFlight *)self departureAirportGate];
  v6 = [v4 departureAirportGate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(_INPBFlight *)self departureAirportGate];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBFlight *)self departureAirportGate];
    v25 = [v4 departureAirportGate];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBFlight *)self flightDuration];
  v6 = [v4 flightDuration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(_INPBFlight *)self flightDuration];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBFlight *)self flightDuration];
    v30 = [v4 flightDuration];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(_INPBFlight *)self flightNumber];
  v6 = [v4 flightNumber];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(_INPBFlight *)self flightNumber];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(_INPBFlight *)self flightNumber];
    v35 = [v4 flightNumber];
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
  v5 = [+[_INPBFlight allocWithZone:](_INPBFlight init];
  v6 = [(_INPBAirline *)self->_airline copyWithZone:a3];
  [(_INPBFlight *)v5 setAirline:v6];

  v7 = [(_INPBAirportGate *)self->_arrivalAirportGate copyWithZone:a3];
  [(_INPBFlight *)v5 setArrivalAirportGate:v7];

  v8 = [(_INPBDateTimeRange *)self->_boardingTime copyWithZone:a3];
  [(_INPBFlight *)v5 setBoardingTime:v8];

  v9 = [(_INPBAirportGate *)self->_departureAirportGate copyWithZone:a3];
  [(_INPBFlight *)v5 setDepartureAirportGate:v9];

  v10 = [(_INPBDateTimeRange *)self->_flightDuration copyWithZone:a3];
  [(_INPBFlight *)v5 setFlightDuration:v10];

  v11 = [(NSString *)self->_flightNumber copyWithZone:a3];
  [(_INPBFlight *)v5 setFlightNumber:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBFlight *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBFlight)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBFlight *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(_INPBFlight *)self airline];

  if (v4)
  {
    v5 = [(_INPBFlight *)self airline];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBFlight *)self arrivalAirportGate];

  if (v6)
  {
    v7 = [(_INPBFlight *)self arrivalAirportGate];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBFlight *)self boardingTime];

  if (v8)
  {
    v9 = [(_INPBFlight *)self boardingTime];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBFlight *)self departureAirportGate];

  if (v10)
  {
    v11 = [(_INPBFlight *)self departureAirportGate];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBFlight *)self flightDuration];

  if (v12)
  {
    v13 = [(_INPBFlight *)self flightDuration];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_INPBFlight *)self flightNumber];

  v15 = v17;
  if (v14)
  {
    flightNumber = self->_flightNumber;
    PBDataWriterWriteStringField();
    v15 = v17;
  }
}

- (void)setFlightNumber:(id)a3
{
  v4 = [a3 copy];
  flightNumber = self->_flightNumber;
  self->_flightNumber = v4;

  MEMORY[0x1EEE66BB8](v4, flightNumber);
}

@end