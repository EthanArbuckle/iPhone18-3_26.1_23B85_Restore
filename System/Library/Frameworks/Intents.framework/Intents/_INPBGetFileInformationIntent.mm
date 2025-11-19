@interface _INPBGetFileInformationIntent
- (BOOL)isEqual:(id)a3;
- (_INPBGetFileInformationIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsEntityType:(id)a3;
- (int)StringAsPropertyName:(id)a3;
- (int)StringAsQualifier:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setEntityType:(int)a3;
- (void)setHasPropertyName:(BOOL)a3;
- (void)setHasQualifier:(BOOL)a3;
- (void)setPropertyName:(int)a3;
- (void)setQualifier:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBGetFileInformationIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBGetFileInformationIntent *)self entityName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"entityName"];

  if ([(_INPBGetFileInformationIntent *)self hasEntityType])
  {
    v6 = [(_INPBGetFileInformationIntent *)self entityType];
    if (v6 >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7281EF8[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"entityType"];
  }

  v8 = [(_INPBGetFileInformationIntent *)self intentMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBGetFileInformationIntent *)self hasPropertyName])
  {
    v10 = [(_INPBGetFileInformationIntent *)self propertyName];
    if (v10 >= 0xC)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E7281F18[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"propertyName"];
  }

  if ([(_INPBGetFileInformationIntent *)self hasQualifier])
  {
    v12 = [(_INPBGetFileInformationIntent *)self qualifier];
    if (v12 >= 5)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
    }

    else
    {
      v13 = off_1E7281F78[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"qualifier"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBGetFileInformationIntent *)self hasEntityType])
  {
    v4 = 2654435761 * self->_entityType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBGetFileInformationIntent *)self hasPropertyName])
  {
    v6 = 2654435761 * self->_propertyName;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBGetFileInformationIntent *)self hasQualifier])
  {
    v7 = 2654435761 * self->_qualifier;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBGetFileInformationIntent *)self entityName];
  v6 = [v4 entityName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_15;
  }

  v7 = [(_INPBGetFileInformationIntent *)self entityName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBGetFileInformationIntent *)self entityName];
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

  v12 = [(_INPBGetFileInformationIntent *)self hasEntityType];
  if (v12 != [v4 hasEntityType])
  {
    goto LABEL_16;
  }

  if ([(_INPBGetFileInformationIntent *)self hasEntityType])
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

  v5 = [(_INPBGetFileInformationIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  v14 = [(_INPBGetFileInformationIntent *)self intentMetadata];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBGetFileInformationIntent *)self intentMetadata];
    v17 = [v4 intentMetadata];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v21 = [(_INPBGetFileInformationIntent *)self hasPropertyName];
  if (v21 == [v4 hasPropertyName])
  {
    if (!-[_INPBGetFileInformationIntent hasPropertyName](self, "hasPropertyName") || ![v4 hasPropertyName] || (propertyName = self->_propertyName, propertyName == objc_msgSend(v4, "propertyName")))
    {
      v23 = [(_INPBGetFileInformationIntent *)self hasQualifier];
      if (v23 == [v4 hasQualifier])
      {
        if (!-[_INPBGetFileInformationIntent hasQualifier](self, "hasQualifier") || ![v4 hasQualifier] || (qualifier = self->_qualifier, qualifier == objc_msgSend(v4, "qualifier")))
        {
          v19 = 1;
          goto LABEL_17;
        }
      }
    }
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBGetFileInformationIntent allocWithZone:](_INPBGetFileInformationIntent init];
  v6 = [(_INPBString *)self->_entityName copyWithZone:a3];
  [(_INPBGetFileInformationIntent *)v5 setEntityName:v6];

  if ([(_INPBGetFileInformationIntent *)self hasEntityType])
  {
    [(_INPBGetFileInformationIntent *)v5 setEntityType:[(_INPBGetFileInformationIntent *)self entityType]];
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBGetFileInformationIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBGetFileInformationIntent *)self hasPropertyName])
  {
    [(_INPBGetFileInformationIntent *)v5 setPropertyName:[(_INPBGetFileInformationIntent *)self propertyName]];
  }

  if ([(_INPBGetFileInformationIntent *)self hasQualifier])
  {
    [(_INPBGetFileInformationIntent *)v5 setQualifier:[(_INPBGetFileInformationIntent *)self qualifier]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBGetFileInformationIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBGetFileInformationIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBGetFileInformationIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBGetFileInformationIntent *)self entityName];

  if (v4)
  {
    v5 = [(_INPBGetFileInformationIntent *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBGetFileInformationIntent *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_INPBGetFileInformationIntent *)self intentMetadata];

  if (v7)
  {
    v8 = [(_INPBGetFileInformationIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBGetFileInformationIntent *)self hasPropertyName])
  {
    propertyName = self->_propertyName;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBGetFileInformationIntent *)self hasQualifier])
  {
    qualifier = self->_qualifier;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsQualifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"EQUAL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AT_LEAST"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AT_MOST"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MIN"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MAX"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasQualifier:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setQualifier:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_qualifier = a3;
  }
}

- (int)StringAsPropertyName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SIZE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CONTENTS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AUTHOR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CREATION_TIME"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ACCESSED_TIME"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MODIFIED_TIME"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PRINTED_TIME"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SENDER"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RECIPIENT"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"PAGE_COUNT"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"TAG"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"FILE_TYPE"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPropertyName:(BOOL)a3
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

- (void)setPropertyName:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_propertyName = a3;
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