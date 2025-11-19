@interface HKHealthWrapCodableValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasType:(BOOL)a3
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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ValueTypeNull"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ValueTypeBytes"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ValueTypeString"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ValueTypeInteger"])
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
  v5 = [(HKHealthWrapCodableValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"type"];
  }

  bytes = self->_bytes;
  if (bytes)
  {
    [v3 setObject:bytes forKey:@"bytes"];
  }

  string = self->_string;
  if (string)
  {
    [v3 setObject:string forKey:@"string"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_integer];
    [v3 setObject:v8 forKey:@"integer"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[8] = self->_type;
    *(v4 + 36) |= 2u;
  }

  v5 = v4;
  if (self->_bytes)
  {
    [v4 setBytes:?];
    v4 = v5;
  }

  if (self->_string)
  {
    [v5 setString:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_integer;
    *(v4 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_type;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSData *)self->_bytes copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v9 = [(NSString *)self->_string copyWithZone:a3];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_integer;
    *(v6 + 36) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_type != *(v4 + 8))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  bytes = self->_bytes;
  if (bytes | *(v4 + 2) && ![(NSData *)bytes isEqual:?])
  {
    goto LABEL_15;
  }

  string = self->_string;
  if (string | *(v4 + 3))
  {
    if (![(NSString *)string isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_integer != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 36) & 2) != 0)
  {
    self->_type = *(v4 + 8);
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(HKHealthWrapCodableValue *)self setBytes:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(HKHealthWrapCodableValue *)self setString:?];
    v4 = v5;
  }

  if (*(v4 + 36))
  {
    self->_integer = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end