@interface EgwErrcNbrEutraMeas
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNbrEarfcn:(BOOL)a3;
- (void)setHasNbrPhysCellId:(BOOL)a3;
- (void)setHasNbrRsrp:(BOOL)a3;
- (void)setHasNbrRsrq:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation EgwErrcNbrEutraMeas

- (void)setHasNbrEarfcn:(BOOL)a3
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

- (void)setHasNbrPhysCellId:(BOOL)a3
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

- (void)setHasNbrRsrp:(BOOL)a3
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

- (void)setHasNbrRsrq:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = EgwErrcNbrEutraMeas;
  v3 = [(EgwErrcNbrEutraMeas *)&v7 description];
  v4 = [(EgwErrcNbrEutraMeas *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_nbrEarfcn];
    [v3 setObject:v7 forKey:@"nbr_earfcn"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_nbrPhysCellId];
  [v3 setObject:v8 forKey:@"nbr_phys_cell_id"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [NSNumber numberWithUnsignedInt:self->_freqBandInd];
  [v3 setObject:v9 forKey:@"freq_band_ind"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [NSNumber numberWithInt:self->_nbrRsrp];
  [v3 setObject:v10 forKey:@"nbr_rsrp"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithInt:self->_nbrRsrq];
    [v3 setObject:v5 forKey:@"nbr_rsrq"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    nbrEarfcn = self->_nbrEarfcn;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  nbrPhysCellId = self->_nbrPhysCellId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  freqBandInd = self->_freqBandInd;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  nbrRsrp = self->_nbrRsrp;
  PBDataWriterWriteSint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    nbrRsrq = self->_nbrRsrq;
    PBDataWriterWriteSint32Field();
  }

LABEL_7:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_nbrEarfcn;
    *(v4 + 28) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = self->_nbrPhysCellId;
  *(v4 + 28) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4[2] = self->_freqBandInd;
  *(v4 + 28) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v4[5] = self->_nbrRsrp;
  *(v4 + 28) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v4[6] = self->_nbrRsrq;
    *(v4 + 28) |= 0x10u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_nbrEarfcn;
    *(result + 28) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_nbrPhysCellId;
  *(result + 28) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 2) = self->_freqBandInd;
  *(result + 28) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 5) = self->_nbrRsrp;
  *(result + 28) |= 8u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 6) = self->_nbrRsrq;
  *(result + 28) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_nbrEarfcn != *(v4 + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_nbrPhysCellId != *(v4 + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_freqBandInd != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 28) & 8) == 0 || self->_nbrRsrp != *(v4 + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 28) & 8) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(v4 + 28) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 28) & 0x10) == 0 || self->_nbrRsrq != *(v4 + 6))
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
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_nbrEarfcn;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_nbrPhysCellId;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
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
  if (*&self->_has)
  {
LABEL_4:
    v4 = 2654435761 * self->_freqBandInd;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_nbrRsrp;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_nbrRsrq;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_nbrEarfcn = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_nbrPhysCellId = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 28);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_freqBandInd = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_nbrRsrp = *(v4 + 5);
  *&self->_has |= 8u;
  if ((*(v4 + 28) & 0x10) != 0)
  {
LABEL_6:
    self->_nbrRsrq = *(v4 + 6);
    *&self->_has |= 0x10u;
  }

LABEL_7:
}

@end