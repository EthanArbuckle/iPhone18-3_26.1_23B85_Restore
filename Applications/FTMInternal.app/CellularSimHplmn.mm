@interface CellularSimHplmn
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMcc:(BOOL)mcc;
- (void)setHasMnc:(BOOL)mnc;
- (void)setHasNumMncDigits:(BOOL)digits;
- (void)writeTo:(id)to;
@end

@implementation CellularSimHplmn

- (void)setHasMcc:(BOOL)mcc
{
  if (mcc)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasMnc:(BOOL)mnc
{
  if (mnc)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumMncDigits:(BOOL)digits
{
  if (digits)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularSimHplmn;
  v3 = [(CellularSimHplmn *)&v7 description];
  dictionaryRepresentation = [(CellularSimHplmn *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_mcc];
  [v3 setObject:v8 forKey:@"mcc"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [NSNumber numberWithUnsignedInt:self->_mnc];
  [v3 setObject:v9 forKey:@"mnc"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [NSNumber numberWithUnsignedInt:self->_numMncDigits];
    [v3 setObject:v5 forKey:@"num_mnc_digits"];
  }

LABEL_6:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  mcc = self->_mcc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  mnc = self->_mnc;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    numMncDigits = self->_numMncDigits;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 4) = self->_mcc;
  *(toCopy + 28) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(toCopy + 5) = self->_mnc;
  *(toCopy + 28) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(toCopy + 6) = self->_numMncDigits;
    *(toCopy + 28) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_mcc;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 5) = self->_mnc;
  *(result + 28) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 6) = self->_numMncDigits;
  *(result + 28) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_mcc != *(equalCopy + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_mnc != *(equalCopy + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 28) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 28) & 8) == 0 || self->_numMncDigits != *(equalCopy + 6))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_mcc;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_mnc;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_numMncDigits;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_mcc = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_mnc = *(fromCopy + 5);
  *&self->_has |= 4u;
  if ((*(fromCopy + 28) & 8) != 0)
  {
LABEL_5:
    self->_numMncDigits = *(fromCopy + 6);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end