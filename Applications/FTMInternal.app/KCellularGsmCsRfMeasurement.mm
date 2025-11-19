@interface KCellularGsmCsRfMeasurement
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)csTxPwrAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasCsRxlevSub:(BOOL)a3;
- (void)setHasCsRxqualSub:(BOOL)a3;
- (void)setHasCurrentAntenna:(BOOL)a3;
- (void)setHasScellArfcn:(BOOL)a3;
- (void)setHasScellBand:(BOOL)a3;
- (void)setHasSimplifiedL1State:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularGsmCsRfMeasurement

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = KCellularGsmCsRfMeasurement;
  [(KCellularGsmCsRfMeasurement *)&v3 dealloc];
}

- (void)setHasScellArfcn:(BOOL)a3
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

- (void)setHasSimplifiedL1State:(BOOL)a3
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

- (void)setHasCurrentAntenna:(BOOL)a3
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

- (int)csTxPwrAtIndex:(unint64_t)a3
{
  p_csTxPwrs = &self->_csTxPwrs;
  count = self->_csTxPwrs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_csTxPwrs->list[a3];
}

- (void)setHasCsRxlevSub:(BOOL)a3
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

- (void)setHasCsRxqualSub:(BOOL)a3
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

- (void)setHasScellBand:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularGsmCsRfMeasurement;
  v3 = [(KCellularGsmCsRfMeasurement *)&v7 description];
  v4 = [(KCellularGsmCsRfMeasurement *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_scellArfcn];
  [v3 setObject:v10 forKey:@"scell_arfcn"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v11 = [NSNumber numberWithUnsignedInt:self->_simplifiedL1State];
  [v3 setObject:v11 forKey:@"simplified_l1_state"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [NSNumber numberWithUnsignedInt:self->_currentAntenna];
    [v3 setObject:v5 forKey:@"current_antenna"];
  }

LABEL_6:
  v6 = PBRepeatedInt32NSArray();
  [v3 setObject:v6 forKey:@"cs_tx_pwr"];

  v7 = self->_has;
  if ((v7 & 2) != 0)
  {
    v12 = [NSNumber numberWithUnsignedInt:self->_csRxlevSub];
    [v3 setObject:v12 forKey:@"cs_rxlev_sub"];

    v7 = self->_has;
    if ((v7 & 4) == 0)
    {
LABEL_8:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_9;
      }

LABEL_19:
      v14 = [NSNumber numberWithUnsignedInt:self->_scellBand];
      [v3 setObject:v14 forKey:@"scell_band"];

      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

  v13 = [NSNumber numberWithUnsignedInt:self->_csRxqualSub];
  [v3 setObject:v13 forKey:@"cs_rxqual_sub"];

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((v7 & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_20:
  v15 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v15 forKey:@"subs_id"];

LABEL_10:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  scellArfcn = self->_scellArfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  simplifiedL1State = self->_simplifiedL1State;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    currentAntenna = self->_currentAntenna;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
  if (self->_csTxPwrs.count)
  {
    PBDataWriterPlaceMark();
    if (self->_csTxPwrs.count)
    {
      v7 = 0;
      do
      {
        v8 = self->_csTxPwrs.list[v7];
        PBDataWriterWriteSint32Field();
        ++v7;
      }

      while (v7 < self->_csTxPwrs.count);
    }

    PBDataWriterRecallMark();
  }

  v9 = self->_has;
  if ((v9 & 2) != 0)
  {
    csRxlevSub = self->_csRxlevSub;
    PBDataWriterWriteUint32Field();
    v9 = self->_has;
    if ((v9 & 4) == 0)
    {
LABEL_13:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_14;
      }

LABEL_22:
      scellBand = self->_scellBand;
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      subsId = self->_subsId;
      PBDataWriterWriteUint32Field();
      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

  csRxqualSub = self->_csRxqualSub;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if (v9 < 0)
  {
    goto LABEL_23;
  }

LABEL_15:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[4] = self->_timestamp;
    *(v4 + 68) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

LABEL_19:
      *(v4 + 15) = self->_simplifiedL1State;
      *(v4 + 68) |= 0x40u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 13) = self->_scellArfcn;
  *(v4 + 68) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v4 + 12) = self->_currentAntenna;
    *(v4 + 68) |= 8u;
  }

LABEL_6:
  v10 = v4;
  if ([(KCellularGsmCsRfMeasurement *)self csTxPwrsCount])
  {
    [v10 clearCsTxPwrs];
    v6 = [(KCellularGsmCsRfMeasurement *)self csTxPwrsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v10 addCsTxPwr:{-[KCellularGsmCsRfMeasurement csTxPwrAtIndex:](self, "csTxPwrAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((v9 & 2) != 0)
  {
    *(v10 + 10) = self->_csRxlevSub;
    *(v10 + 68) |= 2u;
    v9 = self->_has;
    if ((v9 & 4) == 0)
    {
LABEL_12:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_13;
      }

LABEL_23:
      *(v10 + 14) = self->_scellBand;
      *(v10 + 68) |= 0x20u;
      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

  *(v10 + 11) = self->_csRxqualSub;
  *(v10 + 68) |= 4u;
  v9 = self->_has;
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v9 & 0x80) == 0)
  {
    goto LABEL_14;
  }

LABEL_24:
  *(v10 + 16) = self->_subsId;
  *(v10 + 68) |= 0x80u;
LABEL_14:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if (has)
  {
    v4[4] = self->_timestamp;
    *(v4 + 68) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 13) = self->_scellArfcn;
  *(v4 + 68) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  *(v4 + 15) = self->_simplifiedL1State;
  *(v4 + 68) |= 0x40u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(v4 + 12) = self->_currentAntenna;
    *(v4 + 68) |= 8u;
  }

LABEL_6:
  PBRepeatedInt32Copy();
  v7 = self->_has;
  if ((v7 & 2) != 0)
  {
    v5[10] = self->_csRxlevSub;
    *(v5 + 68) |= 2u;
    v7 = self->_has;
    if ((v7 & 4) == 0)
    {
LABEL_8:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_9;
      }

LABEL_17:
      v5[14] = self->_scellBand;
      *(v5 + 68) |= 0x20u;
      if ((*&self->_has & 0x80) == 0)
      {
        return v5;
      }

LABEL_18:
      v5[16] = self->_subsId;
      *(v5 + 68) |= 0x80u;
      return v5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

  v5[11] = self->_csRxqualSub;
  *(v5 + 68) |= 4u;
  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (v7 < 0)
  {
    goto LABEL_18;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  v5 = v4[68];
  if (*&self->_has)
  {
    if ((v4[68] & 1) == 0 || self->_timestamp != *(v4 + 4))
    {
      goto LABEL_42;
    }
  }

  else if (v4[68])
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((v4[68] & 0x10) == 0 || self->_scellArfcn != *(v4 + 13))
    {
      goto LABEL_42;
    }
  }

  else if ((v4[68] & 0x10) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((v4[68] & 0x40) == 0 || self->_simplifiedL1State != *(v4 + 15))
    {
      goto LABEL_42;
    }
  }

  else if ((v4[68] & 0x40) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((v4[68] & 8) == 0 || self->_currentAntenna != *(v4 + 12))
    {
      goto LABEL_42;
    }
  }

  else if ((v4[68] & 8) != 0)
  {
    goto LABEL_42;
  }

  if (!PBRepeatedInt32IsEqual())
  {
LABEL_42:
    v6 = 0;
    goto LABEL_43;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((v4[68] & 2) == 0 || self->_csRxlevSub != *(v4 + 10))
    {
      goto LABEL_42;
    }
  }

  else if ((v4[68] & 2) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((v4[68] & 4) == 0 || self->_csRxqualSub != *(v4 + 11))
    {
      goto LABEL_42;
    }
  }

  else if ((v4[68] & 4) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((v4[68] & 0x20) == 0 || self->_scellBand != *(v4 + 14))
    {
      goto LABEL_42;
    }
  }

  else if ((v4[68] & 0x20) != 0)
  {
    goto LABEL_42;
  }

  v6 = v4[68] >= 0;
  if ((*&self->_has & 0x80) != 0)
  {
    if ((v4[68] & 0x80) == 0 || self->_subsId != *(v4 + 16))
    {
      goto LABEL_42;
    }

    v6 = 1;
  }

LABEL_43:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_scellArfcn;
      if ((*&self->_has & 0x40) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_simplifiedL1State;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_currentAntenna;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = PBRepeatedInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_csRxlevSub;
    if ((*&self->_has & 4) != 0)
    {
LABEL_12:
      v9 = 2654435761 * self->_csRxqualSub;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      v10 = 0;
      if ((*&self->_has & 0x80) != 0)
      {
        goto LABEL_14;
      }

LABEL_18:
      v11 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v7;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  v9 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v10 = 2654435761 * self->_scellBand;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v11 = 2654435761 * self->_subsId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 68);
  if (v5)
  {
    self->_timestamp = *(v4 + 4);
    *&self->_has |= 1u;
    v5 = *(v4 + 68);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(v4 + 68) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_scellArfcn = *(v4 + 13);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  self->_simplifiedL1State = *(v4 + 15);
  *&self->_has |= 0x40u;
  if ((*(v4 + 68) & 8) != 0)
  {
LABEL_5:
    self->_currentAntenna = *(v4 + 12);
    *&self->_has |= 8u;
  }

LABEL_6:
  v10 = v4;
  v6 = [v4 csTxPwrsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[KCellularGsmCsRfMeasurement addCsTxPwr:](self, "addCsTxPwr:", [v10 csTxPwrAtIndex:i]);
    }
  }

  v9 = *(v10 + 68);
  if ((v9 & 2) != 0)
  {
    self->_csRxlevSub = v10[10];
    *&self->_has |= 2u;
    v9 = *(v10 + 68);
    if ((v9 & 4) == 0)
    {
LABEL_11:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_12;
      }

LABEL_22:
      self->_scellBand = v10[14];
      *&self->_has |= 0x20u;
      if ((v10[17] & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  else if ((v10[17] & 4) == 0)
  {
    goto LABEL_11;
  }

  self->_csRxqualSub = v10[11];
  *&self->_has |= 4u;
  v9 = *(v10 + 68);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v9 & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_23:
  self->_subsId = v10[16];
  *&self->_has |= 0x80u;
LABEL_13:
}

@end