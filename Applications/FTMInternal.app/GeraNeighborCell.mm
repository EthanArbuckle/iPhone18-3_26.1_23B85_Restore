@interface GeraNeighborCell
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNccPermitted:(BOOL)a3;
- (void)setHasPMax:(BOOL)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)setHasQRxlevMin:(BOOL)a3;
- (void)setHasThreshXHighP:(BOOL)a3;
- (void)setHasThreshXLowP:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation GeraNeighborCell

- (void)setHasPMax:(BOOL)a3
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

- (void)setHasQRxlevMin:(BOOL)a3
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

- (void)setHasThreshXHighP:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasThreshXLowP:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasPriority:(BOOL)a3
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

- (void)setHasNccPermitted:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = GeraNeighborCell;
  v3 = [(GeraNeighborCell *)&v7 description];
  v4 = [(GeraNeighborCell *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_arfcn];
    [v3 setObject:v7 forKey:@"arfcn"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithInt:self->_pMax];
  [v3 setObject:v8 forKey:@"p_max"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [NSNumber numberWithInt:self->_qRxlevMin];
  [v3 setObject:v9 forKey:@"q_rxlev_min"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [NSNumber numberWithUnsignedInt:self->_threshXHighP];
  [v3 setObject:v10 forKey:@"thresh_x_high_p"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [NSNumber numberWithUnsignedInt:self->_threshXLowP];
  [v3 setObject:v11 forKey:@"thresh_x_low_p"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = [NSNumber numberWithUnsignedInt:self->_priority];
  [v3 setObject:v12 forKey:@"priority"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v5 = [NSNumber numberWithUnsignedInt:self->_nccPermitted];
    [v3 setObject:v5 forKey:@"ncc_permitted"];
  }

LABEL_9:

  return v3;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if (has)
  {
    arfcn = self->_arfcn;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  pMax = self->_pMax;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  qRxlevMin = self->_qRxlevMin;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  threshXHighP = self->_threshXHighP;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  threshXLowP = self->_threshXLowP;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  priority = self->_priority;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    nccPermitted = self->_nccPermitted;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_arfcn;
    *(v4 + 36) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = self->_pMax;
  *(v4 + 36) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[6] = self->_qRxlevMin;
  *(v4 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4[7] = self->_threshXHighP;
  *(v4 + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4[8] = self->_threshXLowP;
  *(v4 + 36) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v4[5] = self->_priority;
  *(v4 + 36) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v4[3] = self->_nccPermitted;
    *(v4 + 36) |= 2u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_arfcn;
    *(result + 36) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
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

  *(result + 4) = self->_pMax;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 6) = self->_qRxlevMin;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 7) = self->_threshXHighP;
  *(result + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 8) = self->_threshXLowP;
  *(result + 36) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 5) = self->_priority;
  *(result + 36) |= 8u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 3) = self->_nccPermitted;
  *(result + 36) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_arfcn != *(v4 + 2))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_pMax != *(v4 + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0 || self->_qRxlevMin != *(v4 + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 36) & 0x20) == 0 || self->_threshXHighP != *(v4 + 7))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 0x20) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 36) & 0x40) == 0 || self->_threshXLowP != *(v4 + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 0x40) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_priority != *(v4 + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
    goto LABEL_36;
  }

  v5 = (*(v4 + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_nccPermitted != *(v4 + 3))
    {
      goto LABEL_36;
    }

    v5 = 1;
  }

LABEL_37:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_arfcn;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_pMax;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
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
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_qRxlevMin;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_threshXHighP;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_threshXLowP;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_priority;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_nccPermitted;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if (v5)
  {
    self->_arfcn = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_pMax = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_qRxlevMin = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_threshXHighP = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_threshXLowP = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 36);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_priority = *(v4 + 5);
  *&self->_has |= 8u;
  if ((*(v4 + 36) & 2) != 0)
  {
LABEL_8:
    self->_nccPermitted = *(v4 + 3);
    *&self->_has |= 2u;
  }

LABEL_9:
}

@end