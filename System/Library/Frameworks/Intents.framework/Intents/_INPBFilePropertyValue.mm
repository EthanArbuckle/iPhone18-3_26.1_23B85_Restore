@interface _INPBFilePropertyValue
- (BOOL)isEqual:(id)a3;
- (_INPBFilePropertyValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsFileType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setFileType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBFilePropertyValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBFilePropertyValue *)self dateTime];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"dateTime"];

  if ([(_INPBFilePropertyValue *)self hasFileType])
  {
    v6 = [(_INPBFilePropertyValue *)self fileType];
    if (v6 >= 0xB)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E727F398[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"fileType"];
  }

  v8 = [(_INPBFilePropertyValue *)self person];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"person"];

  v10 = [(_INPBFilePropertyValue *)self quantity];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"quantity"];

  v12 = [(_INPBFilePropertyValue *)self value];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"value"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDateTimeRange *)self->_dateTime hash];
  if ([(_INPBFilePropertyValue *)self hasFileType])
  {
    v4 = 2654435761 * self->_fileType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(_INPBContact *)self->_person hash];
  v7 = v5 ^ v6 ^ [(_INPBLong *)self->_quantity hash];
  return v7 ^ [(_INPBString *)self->_value hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = [(_INPBFilePropertyValue *)self dateTime];
  v6 = [v4 dateTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v7 = [(_INPBFilePropertyValue *)self dateTime];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBFilePropertyValue *)self dateTime];
    v10 = [v4 dateTime];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v12 = [(_INPBFilePropertyValue *)self hasFileType];
  if (v12 != [v4 hasFileType])
  {
    goto LABEL_26;
  }

  if ([(_INPBFilePropertyValue *)self hasFileType])
  {
    if ([v4 hasFileType])
    {
      fileType = self->_fileType;
      if (fileType != [v4 fileType])
      {
        goto LABEL_26;
      }
    }
  }

  v5 = [(_INPBFilePropertyValue *)self person];
  v6 = [v4 person];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v14 = [(_INPBFilePropertyValue *)self person];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBFilePropertyValue *)self person];
    v17 = [v4 person];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v5 = [(_INPBFilePropertyValue *)self quantity];
  v6 = [v4 quantity];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v19 = [(_INPBFilePropertyValue *)self quantity];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBFilePropertyValue *)self quantity];
    v22 = [v4 quantity];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v5 = [(_INPBFilePropertyValue *)self value];
  v6 = [v4 value];
  if ((v5 != 0) != (v6 == 0))
  {
    v24 = [(_INPBFilePropertyValue *)self value];
    if (!v24)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = v24;
    v26 = [(_INPBFilePropertyValue *)self value];
    v27 = [v4 value];
    v28 = [v26 isEqual:v27];

    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBFilePropertyValue allocWithZone:](_INPBFilePropertyValue init];
  v6 = [(_INPBDateTimeRange *)self->_dateTime copyWithZone:a3];
  [(_INPBFilePropertyValue *)v5 setDateTime:v6];

  if ([(_INPBFilePropertyValue *)self hasFileType])
  {
    [(_INPBFilePropertyValue *)v5 setFileType:[(_INPBFilePropertyValue *)self fileType]];
  }

  v7 = [(_INPBContact *)self->_person copyWithZone:a3];
  [(_INPBFilePropertyValue *)v5 setPerson:v7];

  v8 = [(_INPBLong *)self->_quantity copyWithZone:a3];
  [(_INPBFilePropertyValue *)v5 setQuantity:v8];

  v9 = [(_INPBString *)self->_value copyWithZone:a3];
  [(_INPBFilePropertyValue *)v5 setValue:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBFilePropertyValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBFilePropertyValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBFilePropertyValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(_INPBFilePropertyValue *)self dateTime];

  if (v4)
  {
    v5 = [(_INPBFilePropertyValue *)self dateTime];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBFilePropertyValue *)self hasFileType])
  {
    fileType = self->_fileType;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_INPBFilePropertyValue *)self person];

  if (v7)
  {
    v8 = [(_INPBFilePropertyValue *)self person];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBFilePropertyValue *)self quantity];

  if (v9)
  {
    v10 = [(_INPBFilePropertyValue *)self quantity];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_INPBFilePropertyValue *)self value];

  v12 = v14;
  if (v11)
  {
    v13 = [(_INPBFilePropertyValue *)self value];
    PBDataWriterWriteSubmessage();

    v12 = v14;
  }
}

- (int)StringAsFileType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"OTHER"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"APPLICATION"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DOCUMENT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MUSIC"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MOVIE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PDF"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PRESENTATION"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"IMAGE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SOURCE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SPREADSHEET"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"TEXT"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFileType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_fileType = a3;
  }
}

@end