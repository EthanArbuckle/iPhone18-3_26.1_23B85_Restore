@interface SECSFAPropertyValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsProperty:(id)property;
- (int)property;
- (unint64_t)hash;
- (void)clearOneofValuesForProperty;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasProperty:(BOOL)property;
- (void)setInteger:(int64_t)integer;
- (void)setString:(id)string;
- (void)writeTo:(id)to;
@end

@implementation SECSFAPropertyValue

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if ((v5 & 2) != 0)
  {
    self->_property = *(fromCopy + 4);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 32);
  }

  if (v5)
  {
    self->_integer = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(SECSFAPropertyValue *)self setString:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_property;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_string hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_integer;
  return v7 ^ v6 ^ [(NSString *)self->_string hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_property != *(equalCopy + 4))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_integer != *(equalCopy + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_14;
  }

  string = self->_string;
  if (string | *(equalCopy + 3))
  {
    v7 = [(NSString *)string isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_property;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_integer;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_string copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[4] = self->_property;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_integer;
    *(toCopy + 32) |= 1u;
  }

  if (self->_string)
  {
    v6 = toCopy;
    [toCopy setString:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    integer = self->_integer;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_string)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_integer];
    [dictionary setObject:v4 forKey:@"integer"];
  }

  string = self->_string;
  if (string)
  {
    [dictionary setObject:string forKey:@"string"];
  }

  if ((*&self->_has & 2) != 0)
  {
    property = self->_property;
    if (property >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_property];
    }

    else
    {
      v7 = off_1E70D5030[property];
    }

    [dictionary setObject:v7 forKey:@"Property"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SECSFAPropertyValue;
  v4 = [(SECSFAPropertyValue *)&v8 description];
  dictionaryRepresentation = [(SECSFAPropertyValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)clearOneofValuesForProperty
{
  *&self->_has &= ~2u;
  self->_property = 0;
  *&self->_has &= ~1u;
  self->_integer = 0;
  string = self->_string;
  self->_string = 0;
  MEMORY[0x1EEE66BB8]();
}

- (int)StringAsProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([propertyCopy isEqualToString:@"integer"])
  {
    v4 = 1;
  }

  else if ([propertyCopy isEqualToString:@"string"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasProperty:(BOOL)property
{
  if (property)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)property
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_property;
  }

  else
  {
    return 0;
  }
}

- (void)setString:(id)string
{
  stringCopy = string;
  [(SECSFAPropertyValue *)self clearOneofValuesForProperty];
  *&self->_has |= 2u;
  self->_property = 2;
  string = self->_string;
  self->_string = stringCopy;
}

- (void)setInteger:(int64_t)integer
{
  [(SECSFAPropertyValue *)self clearOneofValuesForProperty];
  *&self->_has |= 2u;
  self->_property = 1;
  *&self->_has |= 1u;
  self->_integer = integer;
}

@end