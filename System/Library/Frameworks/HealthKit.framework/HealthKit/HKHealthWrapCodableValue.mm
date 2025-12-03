@interface HKHealthWrapCodableValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HKHealthWrapCodableValue

- (int)type
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ValueTypeNull"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ValueTypeBytes"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ValueTypeString"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ValueTypeInteger"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKHealthWrapCodableValue;
  v4 = [(HKHealthWrapCodableValue *)&v8 description];
  dictionaryRepresentation = [(HKHealthWrapCodableValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = self->_type - 1;
    if (v4 >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_1E7385148[v4];
    }

    [dictionary setObject:v5 forKey:@"type"];
  }

  bytes = self->_bytes;
  if (bytes)
  {
    [dictionary setObject:bytes forKey:@"bytes"];
  }

  string = self->_string;
  if (string)
  {
    [dictionary setObject:string forKey:@"string"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_integer];
    [dictionary setObject:v8 forKey:@"integer"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_bytes)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_string)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    integer = self->_integer;
    PBDataWriterWriteInt64Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[8] = self->_type;
    *(toCopy + 36) |= 2u;
  }

  v5 = toCopy;
  if (self->_bytes)
  {
    [toCopy setBytes:?];
    toCopy = v5;
  }

  if (self->_string)
  {
    [v5 setString:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_integer;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_type;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSData *)self->_bytes copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v9 = [(NSString *)self->_string copyWithZone:zone];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_integer;
    *(v6 + 36) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_type != *(equalCopy + 8))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  bytes = self->_bytes;
  if (bytes | *(equalCopy + 2) && ![(NSData *)bytes isEqual:?])
  {
    goto LABEL_15;
  }

  string = self->_string;
  if (string | *(equalCopy + 3))
  {
    if (![(NSString *)string isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_integer != *(equalCopy + 1))
    {
      goto LABEL_15;
    }

    v8 = 1;
  }

LABEL_16:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_bytes hash];
  v5 = [(NSString *)self->_string hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_integer;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 36) & 2) != 0)
  {
    self->_type = *(fromCopy + 8);
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(HKHealthWrapCodableValue *)self setBytes:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(HKHealthWrapCodableValue *)self setString:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 36))
  {
    self->_integer = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end