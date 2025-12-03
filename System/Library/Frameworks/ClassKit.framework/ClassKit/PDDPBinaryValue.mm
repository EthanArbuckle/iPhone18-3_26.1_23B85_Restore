@interface PDDPBinaryValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsValueType:(id)type;
- (int)valueType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation PDDPBinaryValue

- (void)setHasValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)valueType
{
  if (*&self->_has)
  {
    return self->_valueType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsValueType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"TRUE_FALSE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PASS_FAIL"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"YES_NO"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"CORRECT_INCORRECT"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPBinaryValue;
  v3 = [(PDDPBinaryValue *)&v7 description];
  dictionaryRepresentation = [(PDDPBinaryValue *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithBool:self->_value];
    [v3 setObject:v5 forKey:@"value"];

    has = self->_has;
  }

  if (has)
  {
    valueType = self->_valueType;
    if (valueType >= 5)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_valueType];
    }

    else
    {
      v7 = *(&off_1002066D0 + valueType);
    }

    [v3 setObject:v7 forKey:@"value_type"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    value = self->_value;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    valueType = self->_valueType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[12] = self->_value;
    toCopy[16] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 2) = self->_valueType;
    toCopy[16] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 12) = self->_value;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_valueType;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(equalCopy + 12);
    if (self->_value)
    {
      if ((*(equalCopy + 12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (*(equalCopy + 12))
    {
      goto LABEL_9;
    }
  }

  else if ((*(equalCopy + 16) & 2) != 0)
  {
    goto LABEL_9;
  }

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) != 0 && self->_valueType == *(equalCopy + 2))
    {
      v5 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v5 = 0;
  }

LABEL_10:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_value;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_valueType;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if ((v5 & 2) != 0)
  {
    self->_value = *(fromCopy + 12);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 16);
  }

  if (v5)
  {
    self->_valueType = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end