@interface SECSFAPropertyValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsProperty:(id)a3;
- (int)property;
- (unint64_t)hash;
- (void)clearOneofValuesForProperty;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasProperty:(BOOL)a3;
- (void)setInteger:(int64_t)a3;
- (void)setString:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SECSFAPropertyValue

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_property = *(v4 + 4);
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
  }

  if (v5)
  {
    self->_integer = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    v6 = v4;
    [(SECSFAPropertyValue *)self setString:?];
    v4 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_property != *(v4 + 4))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_integer != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_14;
  }

  string = self->_string;
  if (string | *(v4 + 3))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_string copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[4] = self->_property;
    *(v4 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_integer;
    *(v4 + 32) |= 1u;
  }

  if (self->_string)
  {
    v6 = v4;
    [v4 setString:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    integer = self->_integer;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

  if (self->_string)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_integer];
    [v3 setObject:v4 forKey:@"integer"];
  }

  string = self->_string;
  if (string)
  {
    [v3 setObject:string forKey:@"string"];
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

    [v3 setObject:v7 forKey:@"Property"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SECSFAPropertyValue;
  v4 = [(SECSFAPropertyValue *)&v8 description];
  v5 = [(SECSFAPropertyValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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

- (int)StringAsProperty:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"integer"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"string"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasProperty:(BOOL)a3
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

- (void)setString:(id)a3
{
  v4 = a3;
  [(SECSFAPropertyValue *)self clearOneofValuesForProperty];
  *&self->_has |= 2u;
  self->_property = 2;
  string = self->_string;
  self->_string = v4;
}

- (void)setInteger:(int64_t)a3
{
  [(SECSFAPropertyValue *)self clearOneofValuesForProperty];
  *&self->_has |= 2u;
  self->_property = 1;
  *&self->_has |= 1u;
  self->_integer = a3;
}

@end