@interface KCellularLteComponentCarrierInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCarrierInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPccBandwidth:(BOOL)bandwidth;
- (void)setHasPccEarfcn:(BOOL)earfcn;
- (void)setHasPccRfBand:(BOOL)band;
- (void)setHasScc0Bandwidth:(BOOL)bandwidth;
- (void)setHasScc0Earfcn:(BOOL)earfcn;
- (void)setHasScc0RfBand:(BOOL)band;
- (void)setHasScc1Bandwidth:(BOOL)bandwidth;
- (void)setHasScc1Earfcn:(BOOL)earfcn;
- (void)setHasScc1RfBand:(BOOL)band;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation KCellularLteComponentCarrierInfo

- (void)setHasPccEarfcn:(BOOL)earfcn
{
  if (earfcn)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasScc0Earfcn:(BOOL)earfcn
{
  if (earfcn)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasScc1Earfcn:(BOOL)earfcn
{
  if (earfcn)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasPccBandwidth:(BOOL)bandwidth
{
  if (bandwidth)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasScc0Bandwidth:(BOOL)bandwidth
{
  if (bandwidth)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasScc1Bandwidth:(BOOL)bandwidth
{
  if (bandwidth)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasPccRfBand:(BOOL)band
{
  if (band)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasScc0RfBand:(BOOL)band
{
  if (band)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasScc1RfBand:(BOOL)band
{
  if (band)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)addCarrierInfo:(id)info
{
  infoCopy = info;
  carrierInfos = self->_carrierInfos;
  v8 = infoCopy;
  if (!carrierInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_carrierInfos;
    self->_carrierInfos = v6;

    infoCopy = v8;
    carrierInfos = self->_carrierInfos;
  }

  [(NSMutableArray *)carrierInfos addObject:infoCopy];
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularLteComponentCarrierInfo;
  v3 = [(KCellularLteComponentCarrierInfo *)&v7 description];
  dictionaryRepresentation = [(KCellularLteComponentCarrierInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v15 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v15 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  v16 = [NSNumber numberWithUnsignedInt:self->_pccEarfcn];
  [v3 setObject:v16 forKey:@"pcc_earfcn"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = [NSNumber numberWithUnsignedInt:self->_scc0Earfcn];
  [v3 setObject:v17 forKey:@"scc0_earfcn"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v18 = [NSNumber numberWithUnsignedInt:self->_scc1Earfcn];
  [v3 setObject:v18 forKey:@"scc1_earfcn"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v19 = [NSNumber numberWithUnsignedInt:self->_pccBandwidth];
  [v3 setObject:v19 forKey:@"pcc_bandwidth"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v20 = [NSNumber numberWithUnsignedInt:self->_scc0Bandwidth];
  [v3 setObject:v20 forKey:@"scc0_bandwidth"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v21 = [NSNumber numberWithUnsignedInt:self->_scc1Bandwidth];
  [v3 setObject:v21 forKey:@"scc1_bandwidth"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v22 = [NSNumber numberWithUnsignedInt:self->_pccRfBand];
  [v3 setObject:v22 forKey:@"pcc_rf_band"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_34:
  v23 = [NSNumber numberWithUnsignedInt:self->_scc0RfBand];
  [v3 setObject:v23 forKey:@"scc0_rf_band"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v5 = [NSNumber numberWithUnsignedInt:self->_scc1RfBand];
    [v3 setObject:v5 forKey:@"scc1_rf_band"];
  }

LABEL_12:
  if ([(NSMutableArray *)self->_carrierInfos count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_carrierInfos, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = self->_carrierInfos;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"carrier_info"];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    v13 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v13 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  pccEarfcn = self->_pccEarfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  scc0Earfcn = self->_scc0Earfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  scc1Earfcn = self->_scc1Earfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  pccBandwidth = self->_pccBandwidth;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  scc0Bandwidth = self->_scc0Bandwidth;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  scc1Bandwidth = self->_scc1Bandwidth;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  pccRfBand = self->_pccRfBand;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_30:
  scc0RfBand = self->_scc0RfBand;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    scc1RfBand = self->_scc1RfBand;
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_carrierInfos;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 0x400) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 32) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 7) = self->_pccEarfcn;
  *(toCopy + 32) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(toCopy + 10) = self->_scc0Earfcn;
  *(toCopy + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 13) = self->_scc1Earfcn;
  *(toCopy + 32) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(toCopy + 6) = self->_pccBandwidth;
  *(toCopy + 32) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(toCopy + 9) = self->_scc0Bandwidth;
  *(toCopy + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(toCopy + 12) = self->_scc1Bandwidth;
  *(toCopy + 32) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_29:
    *(toCopy + 11) = self->_scc0RfBand;
    *(toCopy + 32) |= 0x40u;
    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_28:
  *(toCopy + 8) = self->_pccRfBand;
  *(toCopy + 32) |= 8u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  if ((has & 0x200) != 0)
  {
LABEL_11:
    *(toCopy + 14) = self->_scc1RfBand;
    *(toCopy + 32) |= 0x200u;
  }

LABEL_12:
  v10 = toCopy;
  if ([(KCellularLteComponentCarrierInfo *)self carrierInfosCount])
  {
    [v10 clearCarrierInfos];
    carrierInfosCount = [(KCellularLteComponentCarrierInfo *)self carrierInfosCount];
    if (carrierInfosCount)
    {
      v7 = carrierInfosCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(KCellularLteComponentCarrierInfo *)self carrierInfoAtIndex:i];
        [v10 addCarrierInfo:v9];
      }
    }
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(v10 + 15) = self->_subsId;
    *(v10 + 32) |= 0x400u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 32) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 7) = self->_pccEarfcn;
  *(v5 + 32) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 10) = self->_scc0Earfcn;
  *(v5 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 13) = self->_scc1Earfcn;
  *(v5 + 32) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 6) = self->_pccBandwidth;
  *(v5 + 32) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 9) = self->_scc0Bandwidth;
  *(v5 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 12) = self->_scc1Bandwidth;
  *(v5 + 32) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 8) = self->_pccRfBand;
  *(v5 + 32) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_30:
  *(v5 + 11) = self->_scc0RfBand;
  *(v5 + 32) |= 0x40u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    *(v5 + 14) = self->_scc1RfBand;
    *(v5 + 32) |= 0x200u;
  }

LABEL_12:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_carrierInfos;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{zone, v15}];
        [v6 addCarrierInfo:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(v6 + 15) = self->_subsId;
    *(v6 + 32) |= 0x400u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_60;
    }
  }

  else if (v6)
  {
    goto LABEL_60;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_pccEarfcn != *(equalCopy + 7))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_scc0Earfcn != *(equalCopy + 10))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 32) & 0x100) == 0 || self->_scc1Earfcn != *(equalCopy + 13))
    {
      goto LABEL_60;
    }
  }

  else if ((*(equalCopy + 32) & 0x100) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_pccBandwidth != *(equalCopy + 6))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_scc0Bandwidth != *(equalCopy + 9))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_scc1Bandwidth != *(equalCopy + 12))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_pccRfBand != *(equalCopy + 8))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_60;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_scc0RfBand != *(equalCopy + 11))
    {
      goto LABEL_60;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 32) & 0x200) == 0 || self->_scc1RfBand != *(equalCopy + 14))
    {
      goto LABEL_60;
    }
  }

  else if ((*(equalCopy + 32) & 0x200) != 0)
  {
    goto LABEL_60;
  }

  carrierInfos = self->_carrierInfos;
  if (carrierInfos | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)carrierInfos isEqual:?])
    {
LABEL_60:
      v8 = 0;
      goto LABEL_61;
    }

    has = self->_has;
  }

  if ((has & 0x400) != 0)
  {
    if ((*(equalCopy + 32) & 0x400) == 0 || self->_subsId != *(equalCopy + 15))
    {
      goto LABEL_60;
    }

    v8 = 1;
  }

  else
  {
    v8 = (*(equalCopy + 32) & 0x400) == 0;
  }

LABEL_61:

  return v8;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v16 = 2654435761u * self->_timestamp;
    if ((has & 4) != 0)
    {
LABEL_3:
      v15 = 2654435761 * self->_pccEarfcn;
      if ((has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_4:
    v14 = 2654435761 * self->_scc0Earfcn;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v14 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_scc1Earfcn;
    if ((has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((has & 2) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_pccBandwidth;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v6 = 2654435761 * self->_scc0Bandwidth;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_8:
    v7 = 2654435761 * self->_scc1Bandwidth;
    if ((has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((has & 8) != 0)
  {
LABEL_9:
    v8 = 2654435761 * self->_pccRfBand;
    if ((has & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v9 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  v8 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v9 = 2654435761 * self->_scc0RfBand;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v10 = 2654435761 * self->_scc1RfBand;
    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
LABEL_22:
  v11 = [(NSMutableArray *)self->_carrierInfos hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v12 = 2654435761 * self->_subsId;
  }

  else
  {
    v12 = 0;
  }

  return v15 ^ v16 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 32);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 32);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_pccEarfcn = *(fromCopy + 7);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_scc0Earfcn = *(fromCopy + 10);
  *&self->_has |= 0x20u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x100) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_scc1Earfcn = *(fromCopy + 13);
  *&self->_has |= 0x100u;
  v6 = *(fromCopy + 32);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_pccBandwidth = *(fromCopy + 6);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_scc0Bandwidth = *(fromCopy + 9);
  *&self->_has |= 0x10u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_scc1Bandwidth = *(fromCopy + 12);
  *&self->_has |= 0x80u;
  v6 = *(fromCopy + 32);
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_pccRfBand = *(fromCopy + 8);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 32);
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_30:
  self->_scc0RfBand = *(fromCopy + 11);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 32) & 0x200) != 0)
  {
LABEL_11:
    self->_scc1RfBand = *(fromCopy + 14);
    *&self->_has |= 0x200u;
  }

LABEL_12:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 2);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(KCellularLteComponentCarrierInfo *)self addCarrierInfo:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if ((v5[16] & 0x400) != 0)
  {
    self->_subsId = v5[15];
    *&self->_has |= 0x400u;
  }
}

@end