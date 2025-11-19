@interface UtraNeighborCell
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDuplexMode:(id)a3;
- (int)duplexMode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPMax:(BOOL)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)setHasQQualMin:(BOOL)a3;
- (void)setHasQRxlevMin:(BOOL)a3;
- (void)setHasThreshXHighP:(BOOL)a3;
- (void)setHasThreshXHighQ:(BOOL)a3;
- (void)setHasThreshXLowP:(BOOL)a3;
- (void)setHasThreshXLowQ:(BOOL)a3;
- (void)setHasUarfcn:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation UtraNeighborCell

- (void)setHasUarfcn:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
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

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasQQualMin:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasPMax:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
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

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasThreshXLowP:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasThreshXHighQ:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasThreshXLowQ:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasPriority:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)duplexMode
{
  if (*&self->_has)
  {
    return self->_duplexMode;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDuplexMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KCELLULAR_FREQ_DIVISION_DUPLEX"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"KCELLULAR_TIME_DIVISION_DUPLEX"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = UtraNeighborCell;
  v3 = [(UtraNeighborCell *)&v7 description];
  v4 = [(UtraNeighborCell *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_uarfcn];
    [v3 setObject:v5 forKey:@"uarfcn"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v6 = [NSNumber numberWithInt:self->_qRxlevMin];
  [v3 setObject:v6 forKey:@"q_rxlev_min"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = [NSNumber numberWithInt:self->_qQualMin];
  [v3 setObject:v7 forKey:@"q_qual_min"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = [NSNumber numberWithInt:self->_pMax];
  [v3 setObject:v8 forKey:@"p_max"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [NSNumber numberWithUnsignedInt:self->_threshXHighP];
  [v3 setObject:v9 forKey:@"thresh_x_high_p"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [NSNumber numberWithUnsignedInt:self->_threshXLowP];
  [v3 setObject:v10 forKey:@"thresh_x_low_p"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [NSNumber numberWithUnsignedInt:self->_threshXHighQ];
  [v3 setObject:v11 forKey:@"thresh_x_high_q"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v13 = [NSNumber numberWithUnsignedInt:self->_priority];
    [v3 setObject:v13 forKey:@"priority"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_21:
    duplexMode = self->_duplexMode;
    if (duplexMode)
    {
      if (duplexMode == 1)
      {
        v15 = @"KCELLULAR_TIME_DIVISION_DUPLEX";
      }

      else
      {
        v15 = [NSString stringWithFormat:@"(unknown: %i)", self->_duplexMode];
      }
    }

    else
    {
      v15 = @"KCELLULAR_FREQ_DIVISION_DUPLEX";
    }

    [v3 setObject:v15 forKey:@"duplex_mode"];

    goto LABEL_27;
  }

LABEL_19:
  v12 = [NSNumber numberWithUnsignedInt:self->_threshXLowQ];
  [v3 setObject:v12 forKey:@"thresh_x_low_q"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (has)
  {
    goto LABEL_21;
  }

LABEL_27:

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    uarfcn = self->_uarfcn;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  qRxlevMin = self->_qRxlevMin;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  qQualMin = self->_qQualMin;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  pMax = self->_pMax;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  threshXHighP = self->_threshXHighP;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  threshXLowP = self->_threshXLowP;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  threshXHighQ = self->_threshXHighQ;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  threshXLowQ = self->_threshXLowQ;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  priority = self->_priority;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_11:
    duplexMode = self->_duplexMode;
    PBDataWriterWriteInt32Field();
  }

LABEL_12:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v4[11] = self->_uarfcn;
    *(v4 + 24) |= 0x200u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v4[6] = self->_qRxlevMin;
  *(v4 + 24) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4[5] = self->_qQualMin;
  *(v4 + 24) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4[3] = self->_pMax;
  *(v4 + 24) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4[7] = self->_threshXHighP;
  *(v4 + 24) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4[9] = self->_threshXLowP;
  *(v4 + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4[8] = self->_threshXHighQ;
  *(v4 + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4[10] = self->_threshXLowQ;
  *(v4 + 24) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v4[4] = self->_priority;
  *(v4 + 24) |= 4u;
  if (*&self->_has)
  {
LABEL_11:
    v4[2] = self->_duplexMode;
    *(v4 + 24) |= 1u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(result + 11) = self->_uarfcn;
    *(result + 24) |= 0x200u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_qRxlevMin;
  *(result + 24) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 5) = self->_qQualMin;
  *(result + 24) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 3) = self->_pMax;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 7) = self->_threshXHighP;
  *(result + 24) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 9) = self->_threshXLowP;
  *(result + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 8) = self->_threshXHighQ;
  *(result + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 10) = self->_threshXLowQ;
  *(result + 24) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(result + 4) = self->_priority;
  *(result + 24) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_11:
  *(result + 2) = self->_duplexMode;
  *(result + 24) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if ((has & 0x200) != 0)
  {
    if ((*(v4 + 24) & 0x200) == 0 || self->_uarfcn != *(v4 + 11))
    {
      goto LABEL_52;
    }
  }

  else if ((*(v4 + 24) & 0x200) != 0)
  {
LABEL_52:
    v7 = 0;
    goto LABEL_53;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_qRxlevMin != *(v4 + 6))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_qQualMin != *(v4 + 5))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_pMax != *(v4 + 3))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_threshXHighP != *(v4 + 7))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_threshXLowP != *(v4 + 9))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_threshXHighQ != *(v4 + 8))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 24) & 0x100) == 0 || self->_threshXLowQ != *(v4 + 10))
    {
      goto LABEL_52;
    }
  }

  else if ((*(v4 + 24) & 0x100) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_priority != *(v4 + 4))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_52;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_duplexMode != *(v4 + 2))
    {
      goto LABEL_52;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 1) == 0;
  }

LABEL_53:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v3 = 2654435761 * self->_uarfcn;
    if ((has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_qRxlevMin;
      if ((has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_qQualMin;
    if ((has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((has & 2) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_pMax;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_threshXHighP;
    if ((has & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_threshXLowP;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_threshXHighQ;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_threshXLowQ;
    if ((has & 4) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0;
    if (has)
    {
      goto LABEL_11;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_19:
  v10 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v11 = 2654435761 * self->_priority;
  if ((has & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761 * self->_duplexMode;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 0x200) != 0)
  {
    self->_uarfcn = *(v4 + 11);
    *&self->_has |= 0x200u;
    v5 = *(v4 + 24);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_qRxlevMin = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 24);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_qQualMin = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 24);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_pMax = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_threshXHighP = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 24);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_threshXLowP = *(v4 + 9);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 24);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_threshXHighQ = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 24);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_threshXLowQ = *(v4 + 10);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 24);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  self->_priority = *(v4 + 4);
  *&self->_has |= 4u;
  if (*(v4 + 24))
  {
LABEL_11:
    self->_duplexMode = *(v4 + 2);
    *&self->_has |= 1u;
  }

LABEL_12:
}

@end