@interface KCellularLteTxPower
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLastPcellDlBw:(id)bw;
- (int)StringAsLastScellUlBw:(id)bw;
- (int)lastPcellDlBw;
- (int)lastScellUlBw;
- (unint64_t)hash;
- (void)addTxPowerInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLastPcellDlBand:(BOOL)band;
- (void)setHasLastPcellDlBw:(BOOL)bw;
- (void)setHasLastScellUlBand:(BOOL)band;
- (void)setHasLastScellUlBw:(BOOL)bw;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation KCellularLteTxPower

- (void)addTxPowerInfo:(id)info
{
  infoCopy = info;
  txPowerInfos = self->_txPowerInfos;
  v8 = infoCopy;
  if (!txPowerInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_txPowerInfos;
    self->_txPowerInfos = v6;

    infoCopy = v8;
    txPowerInfos = self->_txPowerInfos;
  }

  [(NSMutableArray *)txPowerInfos addObject:infoCopy];
}

- (void)setHasLastPcellDlBand:(BOOL)band
{
  if (band)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)lastPcellDlBw
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_lastPcellDlBw;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLastPcellDlBw:(BOOL)bw
{
  if (bw)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsLastPcellDlBw:(id)bw
{
  bwCopy = bw;
  if ([bwCopy isEqualToString:@"N6"])
  {
    v4 = 0;
  }

  else if ([bwCopy isEqualToString:@"N15"])
  {
    v4 = 1;
  }

  else if ([bwCopy isEqualToString:@"N25"])
  {
    v4 = 2;
  }

  else if ([bwCopy isEqualToString:@"N50"])
  {
    v4 = 3;
  }

  else if ([bwCopy isEqualToString:@"N75"])
  {
    v4 = 4;
  }

  else if ([bwCopy isEqualToString:@"N100"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLastScellUlBand:(BOOL)band
{
  if (band)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)lastScellUlBw
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_lastScellUlBw;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLastScellUlBw:(BOOL)bw
{
  if (bw)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsLastScellUlBw:(id)bw
{
  bwCopy = bw;
  if ([bwCopy isEqualToString:@"N6"])
  {
    v4 = 0;
  }

  else if ([bwCopy isEqualToString:@"N15"])
  {
    v4 = 1;
  }

  else if ([bwCopy isEqualToString:@"N25"])
  {
    v4 = 2;
  }

  else if ([bwCopy isEqualToString:@"N50"])
  {
    v4 = 3;
  }

  else if ([bwCopy isEqualToString:@"N75"])
  {
    v4 = 4;
  }

  else if ([bwCopy isEqualToString:@"N100"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularLteTxPower;
  v3 = [(KCellularLteTxPower *)&v7 description];
  dictionaryRepresentation = [(KCellularLteTxPower *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  if ([(NSMutableArray *)self->_txPowerInfos count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_txPowerInfos, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = self->_txPowerInfos;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"tx_power_info"];
  }

  volteCallId = self->_volteCallId;
  if (volteCallId)
  {
    [v3 setObject:volteCallId forKey:@"volte_call_id"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v16 = [NSNumber numberWithUnsignedInt:self->_lastPcellDlBand];
    [v3 setObject:v16 forKey:@"last_pcell_dl_band"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_16:
      if ((has & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_16;
  }

  lastPcellDlBw = self->_lastPcellDlBw;
  if (lastPcellDlBw >= 6)
  {
    v18 = [NSString stringWithFormat:@"(unknown: %i)", self->_lastPcellDlBw];
  }

  else
  {
    v18 = *(&off_100317AF8 + lastPcellDlBw);
  }

  [v3 setObject:v18 forKey:@"last_pcell_dl_bw"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_17:
    if ((has & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_28:
  v19 = [NSNumber numberWithUnsignedInt:self->_lastScellUlBand];
  [v3 setObject:v19 forKey:@"last_scell_ul_band"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_18:
    if ((has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_29:
  lastScellUlBw = self->_lastScellUlBw;
  if (lastScellUlBw >= 6)
  {
    v21 = [NSString stringWithFormat:@"(unknown: %i)", self->_lastScellUlBw];
  }

  else
  {
    v21 = *(&off_100317AF8 + lastScellUlBw);
  }

  [v3 setObject:v21 forKey:@"last_scell_ul_bw"];

  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  v14 = [NSNumber numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v14 forKey:@"subs_id"];

LABEL_20:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_txPowerInfos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if (self->_volteCallId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    lastPcellDlBand = self->_lastPcellDlBand;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_14:
      if ((has & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

  lastScellUlBand = self->_lastScellUlBand;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    lastScellUlBw = self->_lastScellUlBw;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_21:
  lastPcellDlBw = self->_lastPcellDlBw;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  if ((has & 0x20) != 0)
  {
LABEL_17:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 56) |= 1u;
  }

  v10 = toCopy;
  if ([(KCellularLteTxPower *)self txPowerInfosCount])
  {
    [v10 clearTxPowerInfos];
    txPowerInfosCount = [(KCellularLteTxPower *)self txPowerInfosCount];
    if (txPowerInfosCount)
    {
      v6 = txPowerInfosCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(KCellularLteTxPower *)self txPowerInfoAtIndex:i];
        [v10 addTxPowerInfo:v8];
      }
    }
  }

  if (self->_volteCallId)
  {
    [v10 setVolteCallId:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 4) = self->_lastPcellDlBand;
    *(v10 + 56) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  *(v10 + 6) = self->_lastScellUlBand;
  *(v10 + 56) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v10 + 5) = self->_lastPcellDlBw;
  *(v10 + 56) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_21:
  *(v10 + 7) = self->_lastScellUlBw;
  *(v10 + 56) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_14:
    *(v10 + 8) = self->_subsId;
    *(v10 + 56) |= 0x20u;
  }

LABEL_15:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 56) |= 1u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_txPowerInfos;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{zone, v17}];
        [v6 addTxPowerInfo:v12];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(NSString *)self->_volteCallId copyWithZone:zone];
  v14 = *(v6 + 6);
  *(v6 + 6) = v13;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 4) = self->_lastPcellDlBand;
    *(v6 + 56) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_12:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 6) = self->_lastScellUlBand;
  *(v6 + 56) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    *(v6 + 7) = self->_lastScellUlBw;
    *(v6 + 56) |= 0x10u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v6;
    }

    goto LABEL_15;
  }

LABEL_19:
  *(v6 + 5) = self->_lastPcellDlBw;
  *(v6 + 56) |= 4u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if ((has & 0x20) != 0)
  {
LABEL_15:
    *(v6 + 8) = self->_subsId;
    *(v6 + 56) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  v5 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_35:
    v8 = 0;
    goto LABEL_36;
  }

  txPowerInfos = self->_txPowerInfos;
  if (txPowerInfos | *(equalCopy + 5) && ![(NSMutableArray *)txPowerInfos isEqual:?])
  {
    goto LABEL_35;
  }

  volteCallId = self->_volteCallId;
  if (volteCallId | *(equalCopy + 6))
  {
    if (![(NSString *)volteCallId isEqual:?])
    {
      goto LABEL_35;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_lastPcellDlBand != *(equalCopy + 4))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_lastScellUlBand != *(equalCopy + 6))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 56) & 8) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_lastPcellDlBw != *(equalCopy + 5))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 56) & 0x10) == 0 || self->_lastScellUlBw != *(equalCopy + 7))
    {
      goto LABEL_35;
    }
  }

  else if ((*(equalCopy + 56) & 0x10) != 0)
  {
    goto LABEL_35;
  }

  v8 = (*(equalCopy + 56) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 56) & 0x20) == 0 || self->_subsId != *(equalCopy + 8))
    {
      goto LABEL_35;
    }

    v8 = 1;
  }

LABEL_36:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_txPowerInfos hash];
  v5 = [(NSString *)self->_volteCallId hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_lastPcellDlBand;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_lastScellUlBand;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_lastPcellDlBw;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v9 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_12:
  v8 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v9 = 2654435761 * self->_lastScellUlBw;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v10 = 2654435761 * self->_subsId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 56))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 5);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(KCellularLteTxPower *)self addTxPowerInfo:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (*(v5 + 6))
  {
    [(KCellularLteTxPower *)self setVolteCallId:?];
  }

  v11 = *(v5 + 56);
  if ((v11 & 2) != 0)
  {
    self->_lastPcellDlBand = *(v5 + 4);
    *&self->_has |= 2u;
    v11 = *(v5 + 56);
    if ((v11 & 8) == 0)
    {
LABEL_14:
      if ((v11 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else if ((*(v5 + 56) & 8) == 0)
  {
    goto LABEL_14;
  }

  self->_lastScellUlBand = *(v5 + 6);
  *&self->_has |= 8u;
  v11 = *(v5 + 56);
  if ((v11 & 4) == 0)
  {
LABEL_15:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    self->_lastScellUlBw = *(v5 + 7);
    *&self->_has |= 0x10u;
    if ((*(v5 + 56) & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_21:
  self->_lastPcellDlBw = *(v5 + 5);
  *&self->_has |= 4u;
  v11 = *(v5 + 56);
  if ((v11 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  if ((v11 & 0x20) != 0)
  {
LABEL_17:
    self->_subsId = *(v5 + 8);
    *&self->_has |= 0x20u;
  }

LABEL_18:
}

@end