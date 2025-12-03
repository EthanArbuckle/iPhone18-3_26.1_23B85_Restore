@interface UtraCellMeasResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEcno:(BOOL)ecno;
- (void)setHasPsc:(BOOL)psc;
- (void)setHasRscp:(BOOL)rscp;
- (void)setHasUarfcn:(BOOL)uarfcn;
- (void)writeTo:(id)to;
@end

@implementation UtraCellMeasResult

- (void)setHasUarfcn:(BOOL)uarfcn
{
  if (uarfcn)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasPsc:(BOOL)psc
{
  if (psc)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEcno:(BOOL)ecno
{
  if (ecno)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRscp:(BOOL)rscp
{
  if (rscp)
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
  v7.super_class = UtraCellMeasResult;
  v3 = [(UtraCellMeasResult *)&v7 description];
  dictionaryRepresentation = [(UtraCellMeasResult *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_uarfcn];
    [v3 setObject:v7 forKey:@"uarfcn"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_band];
  [v3 setObject:v8 forKey:@"band"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [NSNumber numberWithUnsignedInt:self->_psc];
  [v3 setObject:v9 forKey:@"psc"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [NSNumber numberWithUnsignedInt:self->_ecno];
  [v3 setObject:v10 forKey:@"ecno"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithInt:self->_rscp];
    [v3 setObject:v5 forKey:@"rscp"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    uarfcn = self->_uarfcn;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  band = self->_band;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  psc = self->_psc;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  ecno = self->_ecno;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    rscp = self->_rscp;
    PBDataWriterWriteSint32Field();
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    toCopy[6] = self->_uarfcn;
    *(toCopy + 28) |= 0x10u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = self->_band;
  *(toCopy + 28) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  toCopy[4] = self->_psc;
  *(toCopy + 28) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  toCopy[3] = self->_ecno;
  *(toCopy + 28) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    toCopy[5] = self->_rscp;
    *(toCopy + 28) |= 8u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 6) = self->_uarfcn;
    *(result + 28) |= 0x10u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_band;
  *(result + 28) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 4) = self->_psc;
  *(result + 28) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 3) = self->_ecno;
  *(result + 28) |= 2u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 5) = self->_rscp;
  *(result + 28) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 28) & 0x10) == 0 || self->_uarfcn != *(equalCopy + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 28) & 0x10) != 0)
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_band != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_psc != *(equalCopy + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_ecno != *(equalCopy + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(equalCopy + 28) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 28) & 8) == 0 || self->_rscp != *(equalCopy + 5))
    {
      goto LABEL_26;
    }

    v5 = 1;
  }

LABEL_27:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v2 = 2654435761 * self->_uarfcn;
    if (*&self->_has)
    {
LABEL_3:
      v3 = 2654435761 * self->_band;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_psc;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_ecno;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_rscp;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x10) != 0)
  {
    self->_uarfcn = *(fromCopy + 6);
    *&self->_has |= 0x10u;
    v5 = *(fromCopy + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_band = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 28);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_psc = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 28);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_ecno = *(fromCopy + 3);
  *&self->_has |= 2u;
  if ((*(fromCopy + 28) & 8) != 0)
  {
LABEL_6:
    self->_rscp = *(fromCopy + 5);
    *&self->_has |= 8u;
  }

LABEL_7:
}

@end