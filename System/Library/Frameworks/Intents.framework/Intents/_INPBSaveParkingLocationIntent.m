@interface _INPBSaveParkingLocationIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSaveParkingLocationIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSaveParkingLocationIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSaveParkingLocationIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  v6 = [(_INPBSaveParkingLocationIntent *)self parkingLocation];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"parkingLocation"];

  v8 = [(_INPBSaveParkingLocationIntent *)self parkingNote];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"parkingNote"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(_INPBLocation *)self->_parkingLocation hash]^ v3;
  return v4 ^ [(_INPBString *)self->_parkingNote hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBSaveParkingLocationIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBSaveParkingLocationIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSaveParkingLocationIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBSaveParkingLocationIntent *)self parkingLocation];
  v6 = [v4 parkingLocation];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBSaveParkingLocationIntent *)self parkingLocation];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSaveParkingLocationIntent *)self parkingLocation];
    v15 = [v4 parkingLocation];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBSaveParkingLocationIntent *)self parkingNote];
  v6 = [v4 parkingNote];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBSaveParkingLocationIntent *)self parkingNote];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBSaveParkingLocationIntent *)self parkingNote];
    v20 = [v4 parkingNote];
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
  v5 = [+[_INPBSaveParkingLocationIntent allocWithZone:](_INPBSaveParkingLocationIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSaveParkingLocationIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBLocation *)self->_parkingLocation copyWithZone:a3];
  [(_INPBSaveParkingLocationIntent *)v5 setParkingLocation:v7];

  v8 = [(_INPBString *)self->_parkingNote copyWithZone:a3];
  [(_INPBSaveParkingLocationIntent *)v5 setParkingNote:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSaveParkingLocationIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSaveParkingLocationIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSaveParkingLocationIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBSaveParkingLocationIntent *)self intentMetadata];

  if (v4)
  {
    v5 = [(_INPBSaveParkingLocationIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBSaveParkingLocationIntent *)self parkingLocation];

  if (v6)
  {
    v7 = [(_INPBSaveParkingLocationIntent *)self parkingLocation];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBSaveParkingLocationIntent *)self parkingNote];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBSaveParkingLocationIntent *)self parkingNote];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

@end