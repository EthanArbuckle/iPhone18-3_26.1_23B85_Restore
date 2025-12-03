@interface ServingCellBeamInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)rxBeamIdAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCellPci:(BOOL)pci;
- (void)setHasCellRsrp:(BOOL)rsrp;
- (void)setHasCellRsrq:(BOOL)rsrq;
- (void)setHasNumDetectedTxBeams:(BOOL)beams;
- (void)setHasRasterArfcn:(BOOL)arfcn;
- (void)setHasRxBeamRsrp:(BOOL)rsrp;
- (void)setHasSsbIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation ServingCellBeamInfo

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = ServingCellBeamInfo;
  [(ServingCellBeamInfo *)&v3 dealloc];
}

- (void)setHasCellPci:(BOOL)pci
{
  if (pci)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSsbIndex:(BOOL)index
{
  if (index)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (unsigned)rxBeamIdAtIndex:(unint64_t)index
{
  p_rxBeamIds = &self->_rxBeamIds;
  count = self->_rxBeamIds.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_rxBeamIds->list[index];
}

- (void)setHasNumDetectedTxBeams:(BOOL)beams
{
  if (beams)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasCellRsrp:(BOOL)rsrp
{
  if (rsrp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCellRsrq:(BOOL)rsrq
{
  if (rsrq)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasRxBeamRsrp:(BOOL)rsrp
{
  if (rsrp)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasRasterArfcn:(BOOL)arfcn
{
  if (arfcn)
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
  v7.super_class = ServingCellBeamInfo;
  v3 = [(ServingCellBeamInfo *)&v7 description];
  dictionaryRepresentation = [(ServingCellBeamInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_cellPci];
    [v3 setObject:v5 forKey:@"cell_pci"];

    has = self->_has;
  }

  if (has < 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_ssbIndex];
    [v3 setObject:v6 forKey:@"ssb_index"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"rx_beam_id"];

  v8 = self->_has;
  if ((v8 & 0x10) != 0)
  {
    v11 = [NSNumber numberWithUnsignedInt:self->_numDetectedTxBeams];
    [v3 setObject:v11 forKey:@"num_detected_tx_beams"];

    v8 = self->_has;
    if ((v8 & 1) == 0)
    {
LABEL_7:
      if ((v8 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = [NSNumber numberWithUnsignedInt:self->_antennaPanelIndex];
  [v3 setObject:v12 forKey:@"antenna_panel_index"];

  v8 = self->_has;
  if ((v8 & 4) == 0)
  {
LABEL_8:
    if ((v8 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v13 = [NSNumber numberWithInt:self->_cellRsrp];
  [v3 setObject:v13 forKey:@"cell_rsrp"];

  v8 = self->_has;
  if ((v8 & 8) == 0)
  {
LABEL_9:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = [NSNumber numberWithInt:self->_cellRsrq];
  [v3 setObject:v14 forKey:@"cell_rsrq"];

  v8 = self->_has;
  if ((v8 & 0x40) == 0)
  {
LABEL_10:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  v15 = [NSNumber numberWithInt:self->_rxBeamRsrp];
  [v3 setObject:v15 forKey:@"rx_beam_rsrp"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    v9 = [NSNumber numberWithUnsignedInt:self->_rasterArfcn];
    [v3 setObject:v9 forKey:@"raster_arfcn"];
  }

LABEL_12:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v17 = toCopy;
  if ((has & 2) != 0)
  {
    cellPci = self->_cellPci;
    PBDataWriterWriteUint32Field();
    toCopy = v17;
    has = self->_has;
  }

  if (has < 0)
  {
    ssbIndex = self->_ssbIndex;
    PBDataWriterWriteUint32Field();
    toCopy = v17;
  }

  if (self->_rxBeamIds.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_rxBeamIds.list[v8];
      PBDataWriterWriteUint32Field();
      toCopy = v17;
      ++v8;
    }

    while (v8 < self->_rxBeamIds.count);
  }

  v10 = self->_has;
  if ((v10 & 0x10) != 0)
  {
    numDetectedTxBeams = self->_numDetectedTxBeams;
    PBDataWriterWriteUint32Field();
    toCopy = v17;
    v10 = self->_has;
    if ((v10 & 1) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

  antennaPanelIndex = self->_antennaPanelIndex;
  PBDataWriterWriteUint32Field();
  toCopy = v17;
  v10 = self->_has;
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  cellRsrp = self->_cellRsrp;
  PBDataWriterWriteInt32Field();
  toCopy = v17;
  v10 = self->_has;
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  cellRsrq = self->_cellRsrq;
  PBDataWriterWriteInt32Field();
  toCopy = v17;
  v10 = self->_has;
  if ((v10 & 0x40) == 0)
  {
LABEL_13:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_22:
  rxBeamRsrp = self->_rxBeamRsrp;
  PBDataWriterWriteInt32Field();
  toCopy = v17;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_14:
    rasterArfcn = self->_rasterArfcn;
    PBDataWriterWriteUint32Field();
    toCopy = v17;
  }

LABEL_15:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[9] = self->_cellPci;
    *(toCopy + 64) |= 2u;
    has = self->_has;
  }

  if (has < 0)
  {
    toCopy[15] = self->_ssbIndex;
    *(toCopy + 64) |= 0x80u;
  }

  v10 = toCopy;
  if ([(ServingCellBeamInfo *)self rxBeamIdsCount])
  {
    [v10 clearRxBeamIds];
    rxBeamIdsCount = [(ServingCellBeamInfo *)self rxBeamIdsCount];
    if (rxBeamIdsCount)
    {
      v7 = rxBeamIdsCount;
      for (i = 0; i != v7; ++i)
      {
        [v10 addRxBeamId:{-[ServingCellBeamInfo rxBeamIdAtIndex:](self, "rxBeamIdAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((v9 & 0x10) != 0)
  {
    *(v10 + 12) = self->_numDetectedTxBeams;
    *(v10 + 64) |= 0x10u;
    v9 = self->_has;
    if ((v9 & 1) == 0)
    {
LABEL_11:
      if ((v9 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  *(v10 + 8) = self->_antennaPanelIndex;
  *(v10 + 64) |= 1u;
  v9 = self->_has;
  if ((v9 & 4) == 0)
  {
LABEL_12:
    if ((v9 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v10 + 10) = self->_cellRsrp;
  *(v10 + 64) |= 4u;
  v9 = self->_has;
  if ((v9 & 8) == 0)
  {
LABEL_13:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v10 + 11) = self->_cellRsrq;
  *(v10 + 64) |= 8u;
  v9 = self->_has;
  if ((v9 & 0x40) == 0)
  {
LABEL_14:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  *(v10 + 14) = self->_rxBeamRsrp;
  *(v10 + 64) |= 0x40u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    *(v10 + 13) = self->_rasterArfcn;
    *(v10 + 64) |= 0x20u;
  }

LABEL_16:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[9] = self->_cellPci;
    *(v4 + 64) |= 2u;
    has = self->_has;
  }

  if (has < 0)
  {
    v4[15] = self->_ssbIndex;
    *(v4 + 64) |= 0x80u;
  }

  PBRepeatedUInt32Copy();
  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    v5[12] = self->_numDetectedTxBeams;
    *(v5 + 64) |= 0x10u;
    v7 = self->_has;
    if ((v7 & 1) == 0)
    {
LABEL_7:
      if ((v7 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  v5[8] = self->_antennaPanelIndex;
  *(v5 + 64) |= 1u;
  v7 = self->_has;
  if ((v7 & 4) == 0)
  {
LABEL_8:
    if ((v7 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5[10] = self->_cellRsrp;
  *(v5 + 64) |= 4u;
  v7 = self->_has;
  if ((v7 & 8) == 0)
  {
LABEL_9:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v5[14] = self->_rxBeamRsrp;
    *(v5 + 64) |= 0x40u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_16:
  v5[11] = self->_cellRsrq;
  *(v5 + 64) |= 8u;
  v7 = self->_has;
  if ((v7 & 0x40) != 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v7 & 0x20) != 0)
  {
LABEL_11:
    v5[13] = self->_rasterArfcn;
    *(v5 + 64) |= 0x20u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  v5 = *(equalCopy + 64);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_cellPci != *(equalCopy + 9))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(equalCopy + 64) & 0x80) == 0 || self->_ssbIndex != *(equalCopy + 15))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 64) & 0x80) != 0)
  {
LABEL_42:
    v6 = 0;
    goto LABEL_43;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 64) & 0x10) == 0 || self->_numDetectedTxBeams != *(equalCopy + 12))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 64) & 0x10) != 0)
  {
    goto LABEL_42;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_antennaPanelIndex != *(equalCopy + 8))
    {
      goto LABEL_42;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_cellRsrp != *(equalCopy + 10))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_cellRsrq != *(equalCopy + 11))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 64) & 0x40) == 0 || self->_rxBeamRsrp != *(equalCopy + 14))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 64) & 0x40) != 0)
  {
    goto LABEL_42;
  }

  v6 = (*(equalCopy + 64) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 64) & 0x20) == 0 || self->_rasterArfcn != *(equalCopy + 13))
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
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_cellPci;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_ssbIndex;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x10) != 0)
  {
    v6 = 2654435761 * self->_numDetectedTxBeams;
    if (*&self->_has)
    {
LABEL_8:
      v7 = 2654435761 * self->_antennaPanelIndex;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_8;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    v8 = 2654435761 * self->_cellRsrp;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    v9 = 2654435761 * self->_cellRsrq;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v10 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v11 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v5;
  }

LABEL_16:
  v9 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v10 = 2654435761 * self->_rxBeamRsrp;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v11 = 2654435761 * self->_rasterArfcn;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 64);
  if ((v5 & 2) != 0)
  {
    self->_cellPci = *(fromCopy + 9);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 64);
  }

  if (v5 < 0)
  {
    self->_ssbIndex = *(fromCopy + 15);
    *&self->_has |= 0x80u;
  }

  v10 = fromCopy;
  rxBeamIdsCount = [fromCopy rxBeamIdsCount];
  if (rxBeamIdsCount)
  {
    v7 = rxBeamIdsCount;
    for (i = 0; i != v7; ++i)
    {
      -[ServingCellBeamInfo addRxBeamId:](self, "addRxBeamId:", [v10 rxBeamIdAtIndex:i]);
    }
  }

  v9 = *(v10 + 64);
  if ((v9 & 0x10) != 0)
  {
    self->_numDetectedTxBeams = *(v10 + 12);
    *&self->_has |= 0x10u;
    v9 = *(v10 + 64);
    if ((v9 & 1) == 0)
    {
LABEL_10:
      if ((v9 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else if ((*(v10 + 64) & 1) == 0)
  {
    goto LABEL_10;
  }

  self->_antennaPanelIndex = *(v10 + 8);
  *&self->_has |= 1u;
  v9 = *(v10 + 64);
  if ((v9 & 4) == 0)
  {
LABEL_11:
    if ((v9 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_cellRsrp = *(v10 + 10);
  *&self->_has |= 4u;
  v9 = *(v10 + 64);
  if ((v9 & 8) == 0)
  {
LABEL_12:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_cellRsrq = *(v10 + 11);
  *&self->_has |= 8u;
  v9 = *(v10 + 64);
  if ((v9 & 0x40) == 0)
  {
LABEL_13:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_22:
  self->_rxBeamRsrp = *(v10 + 14);
  *&self->_has |= 0x40u;
  if ((*(v10 + 64) & 0x20) != 0)
  {
LABEL_14:
    self->_rasterArfcn = *(v10 + 13);
    *&self->_has |= 0x20u;
  }

LABEL_15:
}

@end