@interface _INPBCreateFileIntent
- (BOOL)isEqual:(id)a3;
- (_INPBCreateFileIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDestinationType:(id)a3;
- (int)StringAsEntityType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDestinationType:(int)a3;
- (void)setEntityType:(int)a3;
- (void)setHasEntityType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCreateFileIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCreateFileIntent *)self destinationName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"destinationName"];

  if ([(_INPBCreateFileIntent *)self hasDestinationType])
  {
    v6 = [(_INPBCreateFileIntent *)self destinationType];
    if (v6 >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = *(&off_1E7280AA8 + v6);
    }

    [v3 setObject:v7 forKeyedSubscript:@"destinationType"];
  }

  v8 = [(_INPBCreateFileIntent *)self entityName];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"entityName"];

  if ([(_INPBCreateFileIntent *)self hasEntityType])
  {
    v10 = [(_INPBCreateFileIntent *)self entityType];
    if (v10 >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = *(&off_1E7280AA8 + v10);
    }

    [v3 setObject:v11 forKeyedSubscript:@"entityType"];
  }

  v12 = [(_INPBCreateFileIntent *)self intentMetadata];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"intentMetadata"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_destinationName hash];
  if ([(_INPBCreateFileIntent *)self hasDestinationType])
  {
    v4 = 2654435761 * self->_destinationType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBCreateFileIntent *)self hasEntityType])
  {
    v6 = 2654435761 * self->_entityType;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = [(_INPBCreateFileIntent *)self destinationName];
  v6 = [v4 destinationName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v7 = [(_INPBCreateFileIntent *)self destinationName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCreateFileIntent *)self destinationName];
    v10 = [v4 destinationName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v12 = [(_INPBCreateFileIntent *)self hasDestinationType];
  if (v12 != [v4 hasDestinationType])
  {
    goto LABEL_25;
  }

  if ([(_INPBCreateFileIntent *)self hasDestinationType])
  {
    if ([v4 hasDestinationType])
    {
      destinationType = self->_destinationType;
      if (destinationType != [v4 destinationType])
      {
        goto LABEL_25;
      }
    }
  }

  v5 = [(_INPBCreateFileIntent *)self entityName];
  v6 = [v4 entityName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v14 = [(_INPBCreateFileIntent *)self entityName];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBCreateFileIntent *)self entityName];
    v17 = [v4 entityName];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v19 = [(_INPBCreateFileIntent *)self hasEntityType];
  if (v19 != [v4 hasEntityType])
  {
    goto LABEL_25;
  }

  if ([(_INPBCreateFileIntent *)self hasEntityType])
  {
    if ([v4 hasEntityType])
    {
      entityType = self->_entityType;
      if (entityType != [v4 entityType])
      {
        goto LABEL_25;
      }
    }
  }

  v5 = [(_INPBCreateFileIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v21 = [(_INPBCreateFileIntent *)self intentMetadata];
    if (!v21)
    {

LABEL_28:
      v26 = 1;
      goto LABEL_26;
    }

    v22 = v21;
    v23 = [(_INPBCreateFileIntent *)self intentMetadata];
    v24 = [v4 intentMetadata];
    v25 = [v23 isEqual:v24];

    if (v25)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v26 = 0;
LABEL_26:

  return v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCreateFileIntent allocWithZone:](_INPBCreateFileIntent init];
  v6 = [(_INPBString *)self->_destinationName copyWithZone:a3];
  [(_INPBCreateFileIntent *)v5 setDestinationName:v6];

  if ([(_INPBCreateFileIntent *)self hasDestinationType])
  {
    [(_INPBCreateFileIntent *)v5 setDestinationType:[(_INPBCreateFileIntent *)self destinationType]];
  }

  v7 = [(_INPBString *)self->_entityName copyWithZone:a3];
  [(_INPBCreateFileIntent *)v5 setEntityName:v7];

  if ([(_INPBCreateFileIntent *)self hasEntityType])
  {
    [(_INPBCreateFileIntent *)v5 setEntityType:[(_INPBCreateFileIntent *)self entityType]];
  }

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBCreateFileIntent *)v5 setIntentMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCreateFileIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCreateFileIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCreateFileIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_INPBCreateFileIntent *)self destinationName];

  if (v4)
  {
    v5 = [(_INPBCreateFileIntent *)self destinationName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCreateFileIntent *)self hasDestinationType])
  {
    destinationType = self->_destinationType;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_INPBCreateFileIntent *)self entityName];

  if (v7)
  {
    v8 = [(_INPBCreateFileIntent *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCreateFileIntent *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  v10 = [(_INPBCreateFileIntent *)self intentMetadata];

  v11 = v13;
  if (v10)
  {
    v12 = [(_INPBCreateFileIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (int)StringAsEntityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FILE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FOLDER"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REFERENCE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"URL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEntityType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setEntityType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_entityType = a3;
  }
}

- (int)StringAsDestinationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FILE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FOLDER"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REFERENCE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"URL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDestinationType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_destinationType = a3;
  }
}

@end