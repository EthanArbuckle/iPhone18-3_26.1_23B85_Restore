@interface ComponentCarrierInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDlBandwidth:(id)bandwidth;
- (int)dlBandwidth;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDlEarfcn:(BOOL)earfcn;
- (void)setHasDlRfBand:(BOOL)band;
- (void)writeTo:(id)to;
@end

@implementation ComponentCarrierInfo

- (void)setHasDlEarfcn:(BOOL)earfcn
{
  if (earfcn)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)dlBandwidth
{
  if (*&self->_has)
  {
    return self->_dlBandwidth;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDlBandwidth:(id)bandwidth
{
  bandwidthCopy = bandwidth;
  if ([bandwidthCopy isEqualToString:@"LTE_BW_1M4"])
  {
    v4 = 0;
  }

  else if ([bandwidthCopy isEqualToString:@"LTE_BW_3M"])
  {
    v4 = 1;
  }

  else if ([bandwidthCopy isEqualToString:@"LTE_BW_5M"])
  {
    v4 = 2;
  }

  else if ([bandwidthCopy isEqualToString:@"LTE_BW_10M"])
  {
    v4 = 3;
  }

  else if ([bandwidthCopy isEqualToString:@"LTE_BW_15M"])
  {
    v4 = 4;
  }

  else if ([bandwidthCopy isEqualToString:@"LTE_BW_20M"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDlRfBand:(BOOL)band
{
  if (band)
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
  v7.super_class = ComponentCarrierInfo;
  v3 = [(ComponentCarrierInfo *)&v7 description];
  dictionaryRepresentation = [(ComponentCarrierInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_dlEarfcn];
    [v3 setObject:v7 forKey:@"dl_earfcn"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  dlBandwidth = self->_dlBandwidth;
  if (dlBandwidth >= 6)
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_dlBandwidth];
  }

  else
  {
    v9 = *(&off_100317E38 + dlBandwidth);
  }

  [v3 setObject:v9 forKey:@"dl_bandwidth"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [NSNumber numberWithUnsignedInt:self->_dlRfBand];
  [v3 setObject:v5 forKey:@"dl_rf_band"];

LABEL_5:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    dlEarfcn = self->_dlEarfcn;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  dlBandwidth = self->_dlBandwidth;
  PBDataWriterWriteInt32Field();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    dlRfBand = self->_dlRfBand;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_dlEarfcn;
    *(toCopy + 20) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = self->_dlBandwidth;
  *(toCopy + 20) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[4] = self->_dlRfBand;
    *(toCopy + 20) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_dlEarfcn;
    *(result + 20) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_dlBandwidth;
  *(result + 20) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 4) = self->_dlRfBand;
  *(result + 20) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_dlEarfcn != *(equalCopy + 3))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 20) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_dlBandwidth != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 20))
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 20) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 20) & 4) == 0 || self->_dlRfBand != *(equalCopy + 4))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_dlEarfcn;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_dlBandwidth;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_dlRfBand;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if ((v5 & 2) != 0)
  {
    self->_dlEarfcn = *(fromCopy + 3);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 20);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 20) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_dlBandwidth = *(fromCopy + 2);
  *&self->_has |= 1u;
  if ((*(fromCopy + 20) & 4) != 0)
  {
LABEL_4:
    self->_dlRfBand = *(fromCopy + 4);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end