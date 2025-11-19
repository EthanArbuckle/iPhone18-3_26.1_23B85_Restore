@interface _INPBDeleteParkingLocationIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBDeleteParkingLocationIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDeleteParkingLocationIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBDeleteParkingLocationIntentResponse *)self parkingLocation];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"parkingLocation"];

  v6 = [(_INPBDeleteParkingLocationIntentResponse *)self parkingNote];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"parkingNote"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBDeleteParkingLocationIntentResponse *)self parkingLocation];
  v6 = [v4 parkingLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBDeleteParkingLocationIntentResponse *)self parkingLocation];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBDeleteParkingLocationIntentResponse *)self parkingLocation];
    v10 = [v4 parkingLocation];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBDeleteParkingLocationIntentResponse *)self parkingNote];
  v6 = [v4 parkingNote];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBDeleteParkingLocationIntentResponse *)self parkingNote];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBDeleteParkingLocationIntentResponse *)self parkingNote];
    v15 = [v4 parkingNote];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBDeleteParkingLocationIntentResponse allocWithZone:](_INPBDeleteParkingLocationIntentResponse init];
  v6 = [(_INPBLocation *)self->_parkingLocation copyWithZone:a3];
  [(_INPBDeleteParkingLocationIntentResponse *)v5 setParkingLocation:v6];

  v7 = [(_INPBString *)self->_parkingNote copyWithZone:a3];
  [(_INPBDeleteParkingLocationIntentResponse *)v5 setParkingNote:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDeleteParkingLocationIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDeleteParkingLocationIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDeleteParkingLocationIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBDeleteParkingLocationIntentResponse *)self parkingLocation];

  if (v4)
  {
    v5 = [(_INPBDeleteParkingLocationIntentResponse *)self parkingLocation];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBDeleteParkingLocationIntentResponse *)self parkingNote];

  if (v6)
  {
    v7 = [(_INPBDeleteParkingLocationIntentResponse *)self parkingNote];
    PBDataWriterWriteSubmessage();
  }
}

@end