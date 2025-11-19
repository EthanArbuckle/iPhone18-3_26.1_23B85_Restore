@interface _INPBCompressFileIntent
- (BOOL)isEqual:(id)a3;
- (_INPBCompressFileIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsEntityType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setEntityType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCompressFileIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCompressFileIntent *)self entityName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"entityName"];

  if ([(_INPBCompressFileIntent *)self hasEntityType])
  {
    v6 = [(_INPBCompressFileIntent *)self entityType];
    if (v6 >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7282410[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"entityType"];
  }

  v8 = [(_INPBCompressFileIntent *)self intentMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"intentMetadata"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBCompressFileIntent *)self hasEntityType])
  {
    v4 = 2654435761 * self->_entityType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBCompressFileIntent *)self entityName];
  v6 = [v4 entityName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_15;
  }

  v7 = [(_INPBCompressFileIntent *)self entityName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCompressFileIntent *)self entityName];
    v10 = [v4 entityName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v12 = [(_INPBCompressFileIntent *)self hasEntityType];
  if (v12 != [v4 hasEntityType])
  {
    goto LABEL_16;
  }

  if ([(_INPBCompressFileIntent *)self hasEntityType])
  {
    if ([v4 hasEntityType])
    {
      entityType = self->_entityType;
      if (entityType != [v4 entityType])
      {
        goto LABEL_16;
      }
    }
  }

  v5 = [(_INPBCompressFileIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v14 = [(_INPBCompressFileIntent *)self intentMetadata];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBCompressFileIntent *)self intentMetadata];
    v17 = [v4 intentMetadata];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCompressFileIntent allocWithZone:](_INPBCompressFileIntent init];
  v6 = [(_INPBString *)self->_entityName copyWithZone:a3];
  [(_INPBCompressFileIntent *)v5 setEntityName:v6];

  if ([(_INPBCompressFileIntent *)self hasEntityType])
  {
    [(_INPBCompressFileIntent *)v5 setEntityType:[(_INPBCompressFileIntent *)self entityType]];
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBCompressFileIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCompressFileIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCompressFileIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCompressFileIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(_INPBCompressFileIntent *)self entityName];

  if (v4)
  {
    v5 = [(_INPBCompressFileIntent *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCompressFileIntent *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_INPBCompressFileIntent *)self intentMetadata];

  v8 = v10;
  if (v7)
  {
    v9 = [(_INPBCompressFileIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();

    v8 = v10;
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

- (void)setEntityType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_entityType = a3;
  }
}

@end