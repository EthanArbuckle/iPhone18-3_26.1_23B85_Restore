@interface _INPBListRideOptionsIntent
- (BOOL)isEqual:(id)a3;
- (_INPBListRideOptionsIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBListRideOptionsIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBListRideOptionsIntent *)self dropOffLocation];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"dropOffLocation"];

  v6 = [(_INPBListRideOptionsIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  v8 = [(_INPBListRideOptionsIntent *)self pickupLocation];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"pickupLocation"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBLocation *)self->_dropOffLocation hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(_INPBLocation *)self->_pickupLocation hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBListRideOptionsIntent *)self dropOffLocation];
  v6 = [v4 dropOffLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBListRideOptionsIntent *)self dropOffLocation];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBListRideOptionsIntent *)self dropOffLocation];
    v10 = [v4 dropOffLocation];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBListRideOptionsIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBListRideOptionsIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBListRideOptionsIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBListRideOptionsIntent *)self pickupLocation];
  v6 = [v4 pickupLocation];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBListRideOptionsIntent *)self pickupLocation];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBListRideOptionsIntent *)self pickupLocation];
    v20 = [v4 pickupLocation];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBListRideOptionsIntent allocWithZone:](_INPBListRideOptionsIntent init];
  v6 = [(_INPBLocation *)self->_dropOffLocation copyWithZone:a3];
  [(_INPBListRideOptionsIntent *)v5 setDropOffLocation:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBListRideOptionsIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBLocation *)self->_pickupLocation copyWithZone:a3];
  [(_INPBListRideOptionsIntent *)v5 setPickupLocation:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBListRideOptionsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBListRideOptionsIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBListRideOptionsIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBListRideOptionsIntent *)self dropOffLocation];

  if (v4)
  {
    v5 = [(_INPBListRideOptionsIntent *)self dropOffLocation];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBListRideOptionsIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBListRideOptionsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBListRideOptionsIntent *)self pickupLocation];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBListRideOptionsIntent *)self pickupLocation];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

@end