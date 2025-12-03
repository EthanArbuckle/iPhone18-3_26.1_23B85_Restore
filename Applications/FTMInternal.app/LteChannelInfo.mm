@interface LteChannelInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRsrq:(BOOL)rsrq;
- (void)setHasSinr:(BOOL)sinr;
- (void)setHasSnr:(BOOL)snr;
- (void)writeTo:(id)to;
@end

@implementation LteChannelInfo

- (void)setHasRsrq:(BOOL)rsrq
{
  if (rsrq)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSnr:(BOOL)snr
{
  if (snr)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSinr:(BOOL)sinr
{
  if (sinr)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = LteChannelInfo;
  v3 = [(LteChannelInfo *)&v7 description];
  dictionaryRepresentation = [(LteChannelInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithInt:self->_rsrp];
    [v3 setObject:v7 forKey:@"rsrp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  v8 = [NSNumber numberWithInt:self->_rsrq];
  [v3 setObject:v8 forKey:@"rsrq"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [NSNumber numberWithInt:self->_snr];
  [v3 setObject:v9 forKey:@"snr"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [NSNumber numberWithInt:self->_sinr];
    [v3 setObject:v5 forKey:@"sinr"];
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
    rsrp = self->_rsrp;
    PBDataWriterWriteSint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  rsrq = self->_rsrq;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  snr = self->_snr;
  PBDataWriterWriteSint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    sinr = self->_sinr;
    PBDataWriterWriteSint32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_rsrp;
    *(toCopy + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  toCopy[3] = self->_rsrq;
  *(toCopy + 24) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  toCopy[5] = self->_snr;
  *(toCopy + 24) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    toCopy[4] = self->_sinr;
    *(toCopy + 24) |= 4u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_rsrp;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  *(result + 3) = self->_rsrq;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 5) = self->_snr;
  *(result + 24) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 4) = self->_sinr;
  *(result + 24) |= 4u;
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
    if ((*(equalCopy + 24) & 1) == 0 || self->_rsrp != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_rsrq != *(equalCopy + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 24) & 8) == 0 || self->_snr != *(equalCopy + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 8) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 24) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_sinr != *(equalCopy + 4))
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
    v2 = 2654435761 * self->_rsrp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_rsrq;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 4) != 0)
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
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_snr;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_sinr;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_rsrp = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_rsrq = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 24);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_snr = *(fromCopy + 5);
  *&self->_has |= 8u;
  if ((*(fromCopy + 24) & 4) != 0)
  {
LABEL_5:
    self->_sinr = *(fromCopy + 4);
    *&self->_has |= 4u;
  }

LABEL_6:
}

@end