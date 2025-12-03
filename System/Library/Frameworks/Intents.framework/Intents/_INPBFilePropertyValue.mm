@interface _INPBFilePropertyValue
- (BOOL)isEqual:(id)equal;
- (_INPBFilePropertyValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsFileType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setFileType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBFilePropertyValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dateTime = [(_INPBFilePropertyValue *)self dateTime];
  dictionaryRepresentation = [dateTime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dateTime"];

  if ([(_INPBFilePropertyValue *)self hasFileType])
  {
    fileType = [(_INPBFilePropertyValue *)self fileType];
    if (fileType >= 0xB)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", fileType];
    }

    else
    {
      v7 = off_1E727F398[fileType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"fileType"];
  }

  person = [(_INPBFilePropertyValue *)self person];
  dictionaryRepresentation2 = [person dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"person"];

  quantity = [(_INPBFilePropertyValue *)self quantity];
  dictionaryRepresentation3 = [quantity dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"quantity"];

  value = [(_INPBFilePropertyValue *)self value];
  dictionaryRepresentation4 = [value dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"value"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  dateTime = [(_INPBFilePropertyValue *)self dateTime];
  dateTime2 = [equalCopy dateTime];
  if ((dateTime != 0) == (dateTime2 == 0))
  {
    goto LABEL_25;
  }

  dateTime3 = [(_INPBFilePropertyValue *)self dateTime];
  if (dateTime3)
  {
    v8 = dateTime3;
    dateTime4 = [(_INPBFilePropertyValue *)self dateTime];
    dateTime5 = [equalCopy dateTime];
    v11 = [dateTime4 isEqual:dateTime5];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  hasFileType = [(_INPBFilePropertyValue *)self hasFileType];
  if (hasFileType != [equalCopy hasFileType])
  {
    goto LABEL_26;
  }

  if ([(_INPBFilePropertyValue *)self hasFileType])
  {
    if ([equalCopy hasFileType])
    {
      fileType = self->_fileType;
      if (fileType != [equalCopy fileType])
      {
        goto LABEL_26;
      }
    }
  }

  dateTime = [(_INPBFilePropertyValue *)self person];
  dateTime2 = [equalCopy person];
  if ((dateTime != 0) == (dateTime2 == 0))
  {
    goto LABEL_25;
  }

  person = [(_INPBFilePropertyValue *)self person];
  if (person)
  {
    v15 = person;
    person2 = [(_INPBFilePropertyValue *)self person];
    person3 = [equalCopy person];
    v18 = [person2 isEqual:person3];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  dateTime = [(_INPBFilePropertyValue *)self quantity];
  dateTime2 = [equalCopy quantity];
  if ((dateTime != 0) == (dateTime2 == 0))
  {
    goto LABEL_25;
  }

  quantity = [(_INPBFilePropertyValue *)self quantity];
  if (quantity)
  {
    v20 = quantity;
    quantity2 = [(_INPBFilePropertyValue *)self quantity];
    quantity3 = [equalCopy quantity];
    v23 = [quantity2 isEqual:quantity3];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  dateTime = [(_INPBFilePropertyValue *)self value];
  dateTime2 = [equalCopy value];
  if ((dateTime != 0) != (dateTime2 == 0))
  {
    value = [(_INPBFilePropertyValue *)self value];
    if (!value)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = value;
    value2 = [(_INPBFilePropertyValue *)self value];
    value3 = [equalCopy value];
    v28 = [value2 isEqual:value3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBFilePropertyValue allocWithZone:](_INPBFilePropertyValue init];
  v6 = [(_INPBDateTimeRange *)self->_dateTime copyWithZone:zone];
  [(_INPBFilePropertyValue *)v5 setDateTime:v6];

  if ([(_INPBFilePropertyValue *)self hasFileType])
  {
    [(_INPBFilePropertyValue *)v5 setFileType:[(_INPBFilePropertyValue *)self fileType]];
  }

  v7 = [(_INPBContact *)self->_person copyWithZone:zone];
  [(_INPBFilePropertyValue *)v5 setPerson:v7];

  v8 = [(_INPBLong *)self->_quantity copyWithZone:zone];
  [(_INPBFilePropertyValue *)v5 setQuantity:v8];

  v9 = [(_INPBString *)self->_value copyWithZone:zone];
  [(_INPBFilePropertyValue *)v5 setValue:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBFilePropertyValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBFilePropertyValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBFilePropertyValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dateTime = [(_INPBFilePropertyValue *)self dateTime];

  if (dateTime)
  {
    dateTime2 = [(_INPBFilePropertyValue *)self dateTime];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBFilePropertyValue *)self hasFileType])
  {
    fileType = self->_fileType;
    PBDataWriterWriteInt32Field();
  }

  person = [(_INPBFilePropertyValue *)self person];

  if (person)
  {
    person2 = [(_INPBFilePropertyValue *)self person];
    PBDataWriterWriteSubmessage();
  }

  quantity = [(_INPBFilePropertyValue *)self quantity];

  if (quantity)
  {
    quantity2 = [(_INPBFilePropertyValue *)self quantity];
    PBDataWriterWriteSubmessage();
  }

  value = [(_INPBFilePropertyValue *)self value];

  v12 = toCopy;
  if (value)
  {
    value2 = [(_INPBFilePropertyValue *)self value];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

- (int)StringAsFileType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"OTHER"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"APPLICATION"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"DOCUMENT"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"MUSIC"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"MOVIE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"PDF"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"PRESENTATION"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"IMAGE"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"SOURCE"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"SPREADSHEET"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"TEXT"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFileType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_fileType = type;
  }
}

@end