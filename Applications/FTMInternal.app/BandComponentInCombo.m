@interface BandComponentInCombo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBand:(BOOL)a3;
- (void)setHasDlBwClass:(BOOL)a3;
- (void)setHasUlBwClass:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BandComponentInCombo

- (void)setHasBand:(BOOL)a3
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

- (void)setHasDlBwClass:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUlBwClass:(BOOL)a3
{
  if (a3)
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
  v7.super_class = BandComponentInCombo;
  v3 = [(BandComponentInCombo *)&v7 description];
  v4 = [(BandComponentInCombo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_band];
    [v3 setObject:v7 forKey:@"band"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_dlBwClass];
  [v3 setObject:v8 forKey:@"dl_bw_class"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [NSNumber numberWithUnsignedInt:self->_aggregatedDlBw];
  [v3 setObject:v9 forKey:@"aggregated_dl_bw"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [NSNumber numberWithUnsignedInt:self->_ulBwClass];
    [v3 setObject:v5 forKey:@"ul_bw_class"];
  }

LABEL_6:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    band = self->_band;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  dlBwClass = self->_dlBwClass;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  aggregatedDlBw = self->_aggregatedDlBw;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    ulBwClass = self->_ulBwClass;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_band;
    *(v4 + 24) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = self->_dlBwClass;
  *(v4 + 24) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v4[2] = self->_aggregatedDlBw;
  *(v4 + 24) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v4[5] = self->_ulBwClass;
    *(v4 + 24) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_band;
    *(result + 24) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_dlBwClass;
  *(result + 24) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 2) = self->_aggregatedDlBw;
  *(result + 24) |= 1u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 5) = self->_ulBwClass;
  *(result + 24) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_band != *(v4 + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_dlBwClass != *(v4 + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_aggregatedDlBw != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_21;
  }

  v5 = (*(v4 + 24) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 24) & 8) == 0 || self->_ulBwClass != *(v4 + 5))
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
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_band;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_dlBwClass;
      if (*&self->_has)
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
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_aggregatedDlBw;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_ulBwClass;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    self->_band = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_dlBwClass = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 24);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_aggregatedDlBw = *(v4 + 2);
  *&self->_has |= 1u;
  if ((*(v4 + 24) & 8) != 0)
  {
LABEL_5:
    self->_ulBwClass = *(v4 + 5);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end